module Text.Papahana exposing (..)
import Markdown
import Model.Model exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Style exposing (..)


image : String
image = "./src/static/video/papahana.mp4"

text : Html Msg
text = div [] [Markdown.toHtml [style headerStyle] ("""
### PAPAHANA """ ), Markdown.toHtml [ ] ("""

In today's world it is difficult to meet new people. Papahana is a proof of
concept social media that focuses on creating smaller events so that you can
easily meet new people. It was developed in Meteor which uses React, MongoDB and
node.js.

""")]
headerStyle : List Style
headerStyle =
  [ letterSpacing "0.2rem" ]
