import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Random



-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- NbrAleatoire

type alias NbrAleatoire =
  { nombre : Int
  }


init : () -> (NbrAleatoire, Cmd Msg)
init _ =
  ( NbrAleatoire 1
  , Cmd.none
  )



-- UPDATE


type Msg
  = Roll
  | NewFace Int


update : Msg -> NbrAleatoire -> (NbrAleatoire, Cmd Msg)
update msg nbrAleatoire =
  case msg of
    Roll ->
      ( nbrAleatoire
      , Random.generate NewFace (Random.int 0 999)
      )

    NewFace newFace ->
      ( NbrAleatoire newFace
      , Cmd.none
      )



-- SUBSCRIPTIONS


subscriptions : NbrAleatoire -> Sub Msg
subscriptions nbrAleatoire =
  Sub.none
-- VIEW


view : NbrAleatoire -> Html Msg
view nbrAleatoire =
  div []
    [ h1 [] [ text (String.fromInt nbrAleatoire.nombre) ]
    , button [ onClick Roll ] [ text "Roll" ]
    ]