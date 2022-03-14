module Page.Login exposing (..)

import Html exposing (Html, div, input)
import Html.Attributes exposing (placeholder, style)
import Util.Components as Components
import Util.Styles exposing (..)


content : Html msg
content =
    Components.paddedDiv
        [ div
            [ style "margin-bottom" "0.3rem"
            , style "display" "flex"
            , style "gap" "0.3rem"
            ]
            [ input
                [ placeholder "Username" ]
                []
            , input
                [ placeholder "Password" ]
                []
            ]
        , Components.button [] "Login"
        ]
