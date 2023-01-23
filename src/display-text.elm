module Main exposing (main)

import Browser
import Html exposing (Html, div, text)

type alias Model =
    { rows : List String }

main : Html msg
main =
    view initialModel



initialModel : Model
initialModel =
    { rows =
    [ "a"
    , "anywhere"
    , "below"
    , "burn"
    , "climb"] }

rowItem: String -> Html msg
rowItem id =
    div []
        [ text id ]

view : Model -> Html msg
view model =
    div []
        (List.map rowItem model.rows)