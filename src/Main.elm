module Main exposing (..)

import Browser
import Page.Login as LoginPage
import Util.Components as Components
import Util.Styles exposing (..)


type alias Model =
    String


type Msg
    = Login
    | Logout


main : Program () Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : () -> ( Model, Cmd Msg )
init _ =
    ( ""
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Login ->
            ( model, Cmd.none )

        Logout ->
            ( model, Cmd.none )


view : Model -> Browser.Document Msg
view _ =
    { title = Components.title
    , body =
        [ LoginPage.content
        ]
    }
