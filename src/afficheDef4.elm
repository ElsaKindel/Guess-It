module DecodingJson exposing (main)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
import Http
import Json.Decode as Decode
    exposing
        ( Decoder
        , decodeString
        , field
        , at
        , int
        , list
        , map3
        , string
        )


type alias Mot =
    { word : String
    , meanings : List Meanings
    }

type alias Meanings =
    {partOfSpeech : List String
    , definitions : List String
    }


type alias Model =
    { mot : Mot
    , errorMessage : Maybe String
    }

type alias Definition =
    {def : String}

type alias PartOfSpeech =
    {pos : String}


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick SendHttpRequest ]
            [ text "Get data from server" ]
        , viewTout model.mot
        ]
            

viewTout : Mot -> Html Msg
viewTout mot = 
    div [] [text<|viewAddition<|mot.meanings ]

viewAddition : List Meanings -> String
viewAddition liste = case liste of
    []->"."
    (x::xs)-> viewMeanings x ++ (viewAddition<|xs)

viewMots : String -> String
viewMots mot =
    mot

viewMeanings : Meanings -> String
viewMeanings meanings =
    viewPartOfSpeech meanings.partOfSpeech ++ viewDefinitions meanings.definitions

viewDefinitions : List String-> String
viewDefinitions liste = case liste of
    []->"."
    (x::xs)-> viewMots x ++ (viewDefinitions<|xs)

viewPartOfSpeech : List String -> String
viewPartOfSpeech liste = case liste of
    []->"."
    (x::xs)-> viewMots x ++ (viewPartOfSpeech<|xs)

viewError : String -> Html Msg
viewError errorMessage =
    let
        errorHeading =
            "Couldn't fetch data at this time."
    in
    div []
        [ h3 [] [ text errorHeading ]
        , text ("Error: " ++ errorMessage)
        ]




type Msg
    = SendHttpRequest
    | DataReceived (Result Http.Error (List Mot))


motDecoder : Decoder Mot
motDecoder =
    Decode.map2 Mot
        (Decode.field  "word" Decode.string)
        (Decode.field "meanings"  <| Decode.list meaningsDecoder )

meaningsDecoder : Decoder Meanings
meaningsDecoder =
    Decode.map2 Meanings
        (Decode.field "partOfSpeech" <| Decode.list partOfSpeechDecoder)
        (Decode.field "definitions" <| Decode.list definitionsDecoder)

definitionsDecoder : Decoder Definition
definitionsDecoder =
    Decode.map Definition
        (Decode.field "definition" Decode.string)

partOfSpeechDecoder : Decoder PartOfSpeech
partOfSpeechDecoder =
    Decode.map PartOfSpeech
        (Decode.field "partOfSpeech" Decode.string)

    


httpCommand : Cmd Msg
httpCommand =
    Http.get
        { url = "https://api.dictionaryapi.dev/api/v2/entries/en/yard"
        , expect = Http.expectJson DataReceived (list motDecoder)
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SendHttpRequest ->
            ( model, httpCommand )

        DataReceived (Ok posts) ->
            ( { model
                | posts = posts
                , errorMessage = Nothing
              }
            , Cmd.none
            )

        DataReceived (Err httpError) ->
            ( { model
                | errorMessage = Just (buildErrorMessage httpError)
              }
            , Cmd.none
            )


buildErrorMessage : Http.Error -> String
buildErrorMessage httpError =
    case httpError of
        Http.BadUrl message ->
            message

        Http.Timeout ->
            "Server is taking too long to respond. Please try again later."

        Http.NetworkError ->
            "Unable to reach server."

        Http.BadStatus statusCode ->
            "Request failed with status code: " ++ String.fromInt statusCode

        Http.BadBody message ->
            message


init : () -> ( Model, Cmd Msg )
init _ =
    ( { mot = {word = "hello", meanings=[]}
      , errorMessage = Nothing
      }
    , Cmd.none
    )


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }