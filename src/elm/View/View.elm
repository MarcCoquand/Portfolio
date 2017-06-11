
module View.View exposing (view)
import View.Profile exposing(..)
import View.ProjectList exposing(..)
import Html exposing(..)
import Model.Model exposing (..)


view : Model -> Html Msg
view model =
  div [ ]
  [ View.Profile.view model
  , View.ProjectList.view model
  ]
