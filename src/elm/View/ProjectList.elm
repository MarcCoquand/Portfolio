
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

renderProject : Model -> Int -> Project -> Html Msg
renderProject model i p =
  if i % 2 == 0 then
    Project.view model Left p
  else
    Project.view model Right p

renderProjects : Model -> List Project -> Html Msg
renderProjects model p =
  div [style container] (indexedMap (renderProject model) p)

view : Model -> Html Msg
view model = (renderProjects model 
  [ {imgPath = Freshcoast.image, text = Freshcoast.text,
      buttonLink = "https://github.com/f95johansson/IceCreamBoats", buttonText = "View on Github"}
  , {imgPath = Papahana.image, text = Papahana.text,
      buttonLink = "https://github.com/MarcCoquand/papahana", buttonText = "View on Github"}
  , {imgPath = Courses.image, text = Courses.text,
      buttonLink = "https://github.com/Isakdl/IDportal", buttonText = "View on Github"}
  , {imgPath = Smartcity.image, text = Smartcity.text,
      buttonLink = "", buttonText = "View more"}
  ])

-- CSS
container : List Style
container = 
  [ display "flex"
  , flexDirection "column"
  , justifyContent "center"
  , margin auto
  , marginTop "3rem"
  ]
