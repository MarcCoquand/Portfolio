module Subscriptions.Subscriptions exposing (subscriptions)
import Model.Model as Model exposing (..)
import Animation exposing (subscription)


subscriptions : Model -> Sub Msg
subscriptions model = 
  Sub.none

