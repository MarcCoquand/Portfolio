
-- | PROJECT | --
module View.Project exposing (view)
import Style exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model.Model as Model exposing (..)
import Animation exposing (render)
import DynamicStyle exposing (..)
import Utils.Functions exposing (dropWhile)
import Json.Encode as Encode
import Color exposing (..)

displayImage : Project -> Html Msg
displayImage p =
  div [] [(img [style projImg, src
  p.imgPath] [])]

muted : Bool -> Attribute msg
muted b =
  Html.Attributes.property "muted" (Encode.bool b)

displayVideo : Project -> Html Msg
displayVideo v =
  div [] [(video [autoplay True, muted True, style projImg, type_ "video/mp4", src
  v.imgPath] [])]

isVideo : String -> Bool
isVideo f = 
  if String.endsWith "mp4" f then True else False

displayMedia : Project -> Html Msg
displayMedia p =
  if isVideo p.imgPath then 
    displayVideo p 
  else 
    displayImage p

displayLink : Project -> String -> Html Msg
displayLink p buttonColor = 
  if p.buttonLink == "" then div [] [] 
  else 
    div [] 
    [ a
      ( 
        [ target "_blank" 
        , href p.buttonLink
        , style (buttonStyle ++ [color buttonColor])
        ] 
        ++
        hover
          [ ("border-bottom-width", "2px", "2px")
          , ("border-bottom-color", "transparent", buttonColor)
          , ("border-bottom-style", "solid", "solid")
          , ("box-sizing", "border-box", "border-box")
          , ("cursor", "", "pointer")
          , ("user-select", "none", "none")
          ]
      ) 
      [text p.buttonText]
    ]


displayText : Project -> String -> Html Msg
displayText p buttonColor =
  div [style textButtonContainer]
  [ div [style (textStyle ++ [color buttonColor])] [p.text]
  , displayLink p buttonColor
  ]


view : Direction -> Project -> Html Msg
view d p =  
  case d of 
    Right ->
      div [style ([flexWrap "wrap", backgroundColor
      (color_ (rgb 114 153 150)), color "white"] ++ blockContainer)] [displayMedia p,
      displayText p "white"]
    Left ->
      div [style ([flexWrap "wrap-reverse"] ++ blockContainer)]
      [displayText p (color_ (rgb 64 64 64)), displayMedia p]
    


-- CSS

textButtonContainer : List Style
textButtonContainer =
  [ display "flex" 
  , maxWidth "30rem"
  , textAlign "left"
  , flexDirection "column"
  , fontSize "0.9rem"
  , alignSelf "stretch"
  ]

blockContainer : List Style
blockContainer = 
  [ flexDirection "row"
  , justifyContent "center"
  , paddingLeft "1rem"
  , paddingRight "1rem"
  , margin "0"
  , paddingBottom "4rem"
  , paddingTop "4rem"
  , display "flex"
  , alignItems "flex-start"
  ]

textStyle : List Style
textStyle =
  [ fontFamily "Montserrat"
  , lineHeight "150%"
  ]

projImg : List Style
projImg = 
  [ Style.width "15rem"
  , Style.height "auto"
  , marginRight "5rem"
  , marginLeft "5rem"
  ]

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
  ]
