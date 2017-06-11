module Model.Model exposing (..)

import Style exposing (..)
import Animation exposing (px)
import Html exposing (..)

type alias Model = 
  { route: String
  }
  
type Msg 
  = NoOp

init : (Model, Cmd Msg)
init =
  ( { route = "/"
  }
  , Cmd.none
  )


type alias Project = 
  { imgPath: String
  , text : Html Msg
  , buttonText: String
  , buttonLink: String
  }

buttonStyle : List Style
buttonStyle = 
  [ backgroundColor "white" 
  , border "none"
  , fontWeight "bold"
  , fontFamily "Assistant"
  ]

type Direction = Left | Right
