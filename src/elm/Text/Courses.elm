module Text.Courses exposing (..)
import Markdown
import Model.Model exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Style exposing (..)


image : String
image = "./src/static/img/umu.png"

-- Excuse me father for I have sinned
text : Html Msg
text = div [] [Markdown.toHtml [style headerStyle] ("""
### ID PORTALEN """ ),  Markdown.toHtml [] ("""

At the Interaction and design programme there's a lot of courses to choose from.
ID portalen is a system developed in Meteor (React, MongoDB, Node.js) that
allows you to rate and comment courses at the programme to make it easier for
others to choose which courses to take.

""")]

headerStyle : List Style
headerStyle =
  [ letterSpacing "0.2rem" ]
