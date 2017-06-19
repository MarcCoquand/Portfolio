
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

displayImage : Project -> Html Msg
displayImage p =
  div [] [(img [style projImg, src
  p.imgPath] [])]

muted : Bool -> Attribute msg
muted b =
  property "muted" (Encode.bool b)

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


view : Direction -> Project -> Html Msg
view d p =  
  case d of 
    Right ->
      div [style ([flexWrap "wrap"] ++ blockContainer)] [displayMedia p, displayText p]
    Left ->
      div [style ([flexWrap "wrap-reverse"] ++ blockContainer)] [displayText p, displayImage p]
    


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
  , marginBottom "4rem"
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
  [ backgroundColor "white" 
  , ("box-sizing", "border-box")
  , border "none"
  , fontWeight "bold"
  , fontFamily "Montserrat"
  , Style.width "7.0rem"
  , color "black"
  , textDecoration "none"
  ]
