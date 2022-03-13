module Util.Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


noSpaces : List (Attribute msg)
noSpaces =
    [ style "margin" "0"
    , style "padding" "0"
    ]


colorPrimary : String
colorPrimary =
    "#458588"


colorTextDark : String
colorTextDark =
    "#282828"


colorTextLight : String
colorTextLight =
    "#ebdbb2"
