
module View.View exposing (view)
import View.Profile exposing(..)
import View.ProjectList exposing(..)
import View.Footer exposing(..)
import Html exposing(..)
import Model.Model exposing (..)


view : Model -> Html Msg
view model =
  div [ ]
  [ View.Profile.view model
  , View.ProjectList.view 
  , View.Footer.view model
  ]
