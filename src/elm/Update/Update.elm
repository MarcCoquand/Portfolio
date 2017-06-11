--| UPDATE |--
module Update.Update exposing (update)
import Model.Model exposing (..)
import Animation exposing (update)


update : Msg -> Model -> ( Model, Cmd Msg  )
update msg model =
  case msg of
      NoOp -> (model, Cmd.none)
