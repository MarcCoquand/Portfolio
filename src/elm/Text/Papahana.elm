module Text.Papahana exposing (..)
import Markdown
import Model.Model exposing (..)
import Html exposing (..)


image : String
image = "static/img/papahana.png"

text : Html Msg
text = Markdown.toHtml [] ("""
### Papahana

In today's world it is difficult to meet new people. Papahana is a proof of
concept social media that focuses on creating smaller events so that you can
easily meet new people. It was developed in Meteor which uses React, MongoDB and
node.js.

""")
