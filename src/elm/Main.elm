module Main exposing (..)
import Model.Model as Model exposing (..)
import Subscriptions.Subscriptions as Subscriptions exposing (..)
import Update.Update as Update exposing (..) 
import View.View as View exposing (..) 
import Html exposing (..)


-- APP
main : Program Never Model Msg
main =
  Html.program 
    { init = Model.init
    , view = View.view 
    , update = Update.update
    , subscriptions = Subscriptions.subscriptions 
    }


