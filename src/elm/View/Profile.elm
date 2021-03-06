-- | PROFILE | --
module View.Profile exposing (view)
import Model.Model exposing (..)
import Style exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)

view : Model -> Html Msg
view model =
  div [style headerText] 
    [ img [src "static/img/profile.png", style profileImage] []
    , h1 [] [text "Hi, my name is Marc"]
    , text """I strive to make everything beautiful and valuable. I achieve this
    through focusing on the user's needs. I have a strong interest in UX,
    ethnography, programming and service design. Welcome to my portfolio,
    written in the beautiful functional programming language Elm!"""
    ]


-- CSS STYLES

headerText : List Style
headerText = 
  [ textAlign center
  , display "flex"
  , justifyContent "center"
  , flexDirection "column"
  , margin auto
  , marginTop "2rem"
  , fontFamily "Assistant"
  , minWidth "25rem"
  , maxWidth "35rem"
  , marginBottom "5rem"
  , fontSize "0.8rem"
  ]

profileImage : List Style
profileImage =
  [ Style.height "15rem"
  , Style.width "15rem"
  , display "flex"
  , justifyContent "center"
  , margin auto
  , marginTop "1rem"
  , borderRadius "50%"
  , textAlign center
  ]

