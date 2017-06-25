
-- | PROJECT LIST | --
module View.ProjectList exposing (view)

import Style exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import View.Project as Project exposing (..)
import Text.Freshcoast as Freshcoast exposing (..)
import Text.Smartcity as Smartcity exposing (..)
import Text.Papahana as Papahana exposing (..)
import Text.Courses as Courses exposing (..)
import Model.Model as Model exposing (..)
import List exposing (..)
import Color exposing (..)

renderProject : Int -> Project -> Html Msg
renderProject i p =
  if i % 2 == 0 then
    Project.view Left p
  else
    Project.view Right p

renderProjects : List Project -> Html Msg
renderProjects p =
  div [] (indexedMap renderProject p)

view : Html Msg
view = (div [style container] [
  h2 [style headerText] [Html.text "Projects I've worked on"]
  , renderProjects 
  [ {imgPath = Papahana.image, text = Papahana.text,
      buttonLink = "https://github.com/MarcCoquand/papahana", buttonText = "View on Github"}
  , {imgPath = Freshcoast.image, text = Freshcoast.text,
      buttonLink = "https://github.com/f95johansson/IceCreamBoats", buttonText = "View on Github"}
  , {imgPath = Courses.image, text = Courses.text,
      buttonLink = "https://github.com/Isakdl/IDportal", buttonText = "View on Github"}
  , {imgPath = Smartcity.image, text = Smartcity.text,
      buttonLink = "", buttonText = ""}
      
  ]])

-- CSS
headerText : List Style
headerText =
  [ fontFamily "Montserrat"
  , letterSpacing "0.2rem"
  , color "white"
  , maxWidth "50rem"
  , lineHeight "130%"
  , color (color_ (rgb 64 64 64))
  , justifyContent "center"
  , display "flex"
  , textAlign center
  , margin auto
  , marginBottom "4rem"
  ]

container : List Style
container = 
  [ display "flex"
  , flexDirection "column"
  , justifyContent "center"
  , margin auto
  , marginTop "3rem"
  ]
