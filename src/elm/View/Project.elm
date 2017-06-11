
-- | PROJECT | --
module View.Project exposing (view)
import Style exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model.Model as Model exposing (..)
import Animation exposing (render)
import DynamicStyle exposing (..)

displayImage : Project -> Html Msg
displayImage p =
  img [style projImg, src p.imgPath] []

displayText : Project -> Html Msg
displayText p =
  div [style textButtonContainer]
  [ div [style textStyle] [p.text]
  , a
    ( 
      [ target "_blank" 
      , href p.buttonLink
      , style buttonStyle
      ] 
      ++
      hover
        [ ("border-bottom-width", "0px", "2px")
        , ("border-bottom-color", "black", "red")
        , ("border-bottom-style", "none", "solid")
        , ("cursor", "", "pointer")
        , ("user-select", "none", "none")
        ]
    ) 
    [text p.buttonText]
  ]


view : Model -> Direction -> Project -> Html Msg
view model d p =  
  case d of 
    Right ->
      div [style blockContainer] [displayImage p, displayText p]
    Left ->
      div [style blockContainer] [displayText p, displayImage p]
    


-- CSS

textButtonContainer : List Style
textButtonContainer =
  [ display "block" ]

blockContainer : List Style
blockContainer = 
  [ textAlign "left"
  , display "flex"
  , margin auto
  , marginBottom "6rem"
  , marginRight "4rem"
  
  ]

textStyle : List Style
textStyle =
  [ fontFamily "Assistant"
  ]

projImg : List Style
projImg = 
  [ Style.width "25rem"
  , Style.height "25rem"
  , float "left"
  , marginRight "4rem"
  ]

buttonStyle : List Style
buttonStyle = 
  [ backgroundColor "white" 
  , border "none"
  , fontWeight "bold"
  , fontFamily "Assistant"
  , display Style.inlineBlock
  , Style.width "9rem"
  , color "black"
  , textDecoration "none"
  ]
