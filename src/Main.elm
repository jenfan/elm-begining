module Main exposing (Flags, Model, Msg(..), init, main, subscriptions, update, view)

import Browser
import Html as H exposing (Html)
import Html.Attributes as HA



-- MODEL


type alias Model =
    {}


type alias Flags =
    {}


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( {}
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    H.div []
        [ H.text "asd by E.Kots"
        , H.div
            [ HA.style "text-align" "center" ]
            [ H.img [ HA.src "/img/elm.png", HA.width 200, HA.height 200 ] []
            , H.h1 [] [ H.text "Hello, world" ]
            ]
        ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
