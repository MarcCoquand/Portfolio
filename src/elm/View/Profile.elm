-- | PROFILE | --
module View.Profile exposing (view)
import Model.Model exposing (..)
import Style exposing (..)
import Html exposing (..)
import Color exposing (..)
import Html.Attributes exposing (..)
import Window exposing (..)
import DynamicStyle exposing (..)
import Dom.Scroll 

view : Model -> Html Msg
view model =
  div [style headerContainer]
  [ 
    div [] 
      [
      img [src "./src/static/img/profile2.jpeg", style profileImage] []
      , h1 [style titleText] [text "Hi, my name is Marc"]
      , div [style headerText] [text """I can help you research, prototype, develop and deploy
      your websites, services, apps and products. I have a strong interest in
      UX, service design, programming and ethnography."""]
      ]
  ]


-- CSS STYLES
buttonStyle : List Style
buttonStyle = 
  [  
    ("box-sizing", "border-box")
  , border "none"
  , fontWeight "bold"
  , fontFamily "Montserrat"
  , Style.width "7.0rem"
  , color "black"
  , textDecoration "none"
  , margin auto
  , marginTop "3rem"
  , display "flex"
  , justifyContent "center"
  ]
backgroundImage : List Style
backgroundImage = 
  [
    minWidth "100%"
  , minHeight "100%"
  , flexShrink "0"
  ]

headerContainer : List Style
headerContainer = 
  [
    display "flex"
  , justifyContent "center"
  , Style.backgroundImage (url "./src/static/img/bg3.png")
  , alignItems "center"
  , overflow "hidden"
  , textAlign center
  ]

titleText : List Style
titleText = 
  [ 
    fontFamily "Montserrat"
  , letterSpacing "0.2rem"
  , color "white"
  , fontSize "4rem"
  , maxWidth "50rem"
  , lineHeight "130%"
  ]


headerText : List Style
headerText = 
  [ 
    display "flex"
  , color "white"
  , justifyContent "center"
  , flexDirection "column"
  , margin auto
  , marginTop "4rem"
  , fontFamily "Montserrat"
  , minWidth "20rem"
  , maxWidth "35rem"
  , marginBottom "10rem"
  , paddingLeft "1rem"
  , paddingRight "1rem"
  , fontSize "0.9rem"
  , lineHeight "190%"
  , letterSpacing "0.1rem"
  ]

profileImage : List Style
profileImage =
  [ Style.height "10rem"
  , Style.width "10rem"
  , display "flex"
  , justifyContent "center"
  , margin auto
  , marginTop "3rem"
  , borderRadius "50%"
  , textAlign center
  ]

