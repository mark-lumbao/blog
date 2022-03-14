module Util.Components exposing (..)

import Html
import Html.Attributes exposing (style)
import Util.Styles exposing (..)


button : List (Html.Attribute msg) -> String -> Html.Html msg
button attr label =
    Html.button
        (attr
            ++ [ style "background" colorPrimary
               , style "color" colorTextLight
               , style "border" "0"
               , style "border-radius" "2px"
               , style "padding" "5px 20px"
               ]
        )
        [ Html.text label ]


title : String
title =
    "Dev-Blogs"


siteTitle : List (Html.Html msg)
siteTitle =
    [ Html.h1
        (noSpaces
            ++ [ style "color" colorPrimary
               ]
        )
        [ Html.text title ]
    , Html.p
        (noSpaces
            ++ [ style "padding-left" "0.5rem"
               , style "font-size" "15px"
               , style "font-style" "italic"
               , style "color" colorTextDark
               ]
        )
        [ Html.text "by Mark Anthony Lumbao" ]
    ]


paddedDiv : List (Html.Html msg) -> Html.Html msg
paddedDiv content =
    Html.div [ style "padding" "1rem" ]
        content
