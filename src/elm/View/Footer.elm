
-- | FOOTER | --
module View.Footer exposing (view)
import Model.Model exposing (..)
import Style exposing (..)
import Color exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import DynamicStyle exposing (..)

view : Model -> Html Msg
view model =
  div [style footerText] 
    [ h2 [] [text "Get in touch"]
    , text "Email: mcoquand@gmail.com"
    , div [style buttonContainer] 
      [ a ( 
        [ target "_blank" 
        , href "https://www.linkedin.com/in/marc-coquand-7449b3123/"
        , style buttonStyle
        ] 
        ++
        hover
          [ ("border-bottom-width", "2px", "2px")
          , ("border-bottom-color", "transparent", "red")
          , ("border-bottom-style", "solid", "solid")
          , ("box-sizing", "border-box", "border-box")
          , ("cursor", "", "pointer")
          , ("user-select", "none", "none")
          ]) 
        [text "LinkedIn"]
      , a (
        [ target "_blank" 
        , href "https://medium.com/@marcteodorfrancoiscoquand"
        , style buttonStyle
        ] 
        ++
        hover
          [ ("border-bottom-width", "2px", "2px")
          , ("border-bottom-color", "transparent", "red")
          , ("border-bottom-style", "solid", "solid")
          , ("box-sizing", "border-box", "border-box")
          , ("cursor", "", "pointer")
          , ("user-select", "none", "none")
          ]) 
        [text "Medium"]
      , a (
        [ target "_blank" 
        , href "https://www.facebook.com/mcoquand"
        , style buttonStyle
        ] 
        ++
        hover
          [ ("border-bottom-width", "2px", "2px")
          , ("border-bottom-color", "transparent", "red")
          , ("border-bottom-style", "solid", "solid")
          , ("box-sizing", "border-box", "border-box")
          , ("cursor", "", "pointer")
          , ("user-select", "none", "none")
          ]) 
        [text "Facebook"]
      ]
    ]
      


-- CSS STYLES

footerText : List Style
footerText = 
  [ textAlign center
  , justifyContent "center"
  , margin auto
  , marginTop "2rem"
  , fontFamily "Montserrat"
  , minWidth "20rem"
  , maxWidth "35rem"
  , marginBottom "2rem"
  , display "flex"
  , flexDirection "column"
  , fontSize "0.8rem"
  , color (color_ (rgb 64 64 64))
  ]

buttonContainer : List Style
buttonContainer = 
  [ display "inline-block"
  , marginTop "0.5rem"
  ]

buttonStyle : List Style
buttonStyle = 
  [ backgroundColor "white" 
  , ("box-sizing", "border-box")
  , border "none"
  , fontWeight "bold"
  , fontFamily "Montserrat"
  , margin auto
  , marginTop "0.5rem"
  , Style.width "4.8rem"
  , marginRight "0.5rem"
  , marginLeft "0.5rem"
  , color "black"
  , textDecoration "none"
  , display "inlineBlock"
  , maxWidth "3rem"
  , flexBasis "0"
  , color (color_ (rgb 64 64 64))
  ]
