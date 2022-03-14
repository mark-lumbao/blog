module Main exposing (..)

import Browser exposing (..)
import Html exposing (Html)
import Page.Login as LoginPage
import Util.Components as Components


type alias Model =
    String


type Msg
    = Login
    | Logout


main : Program () Model Msg
main =
    -- TODO: Use application instead of document to do page navigation
    document
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


view : Model -> Document Msg
view _ =
    { title = Components.title
    , body =
        [ Components.paddedDiv Components.siteTitle -- website header
        , page -- website page content
        ]
    }


page : Html Msg
page =
    -- TODO: Determine which page to display based on URL
    LoginPage.content
