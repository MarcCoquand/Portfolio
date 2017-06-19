
-- | FOOTER | --
module View.Footer exposing (view)
import Model.Model exposing (..)
import Style exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import DynamicStyle exposing (..)

view : Model -> Html Msg
view model =
  div [style footerText] 
    [ h2 [] [text "Get in touch"]
    , text "Email: mcoquand@gmail.com"
  , a
    ( 
      [ target "_blank" 
      , href "https://www.linkedin.com/in/marc-coquand-7449b3123/"
      , style buttonStyle
      ] 
      ++
      hover
        [ ("border-bottom-width", "0px", "2px")
        , ("border-bottom-color", "black", "red")
        , ("border-bottom-style", "none", "solid")
        , ("box-sizing", "border-box", "border-box")
        , ("cursor", "", "pointer")
        , ("user-select", "none", "none")
        ]
    ) 
    [text "LinkedIn"]
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
  , fontSize "0.8rem"
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
  , Style.width "4.5rem"
  , color "black"
  , textDecoration "none"
  , display "flex"
  , maxWidth "15rem"
  , flexDirection "column"
  , alignSelf "stretch"
  ]
