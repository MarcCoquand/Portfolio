
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
  div [] [(img [style [Style.width "15rem", Style.height "auto"], src
  p.imgPath] [])]

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
        , ("box-sizing", "border-box", "border-box")
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
      div [style ([flexWrap "wrap"] ++ blockContainer)] [displayImage p, displayText p]
    Left ->
      div [style ([flexWrap "wrap-reverse"] ++ blockContainer)] [displayText p, displayImage p]
    


-- CSS

textButtonContainer : List Style
textButtonContainer =
  [ display "flex" 
  , margin "5rem"
  , maxWidth "25rem"
  , textAlign "left"
  , flexDirection "column"
  , alignItems "flex-start"
  , fontSize "0.8rem"
  ]

blockContainer : List Style
blockContainer = 
  [ marginBottom "6rem"
  , flexDirection "row"
  , justifyContent "center"
  , margin "0"
  , display "flex"
  ]

textStyle : List Style
textStyle =
  [ fontFamily "Assistant"
  ]

projImg : List Style
projImg = 
  [ Style.width "25rem"
  , Style.height "25rem"
  ]

buttonStyle : List Style
buttonStyle = 
  [ backgroundColor "white" 
  , ("box-sizing", "border-box")
  , border "none"
  , fontWeight "bold"
  , fontFamily "Assistant"
  , Style.width "9rem"
  , color "black"
  , textDecoration "none"
  ]
