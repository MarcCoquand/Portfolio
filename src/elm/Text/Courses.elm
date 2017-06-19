module Text.Courses exposing (..)
import Markdown
import Model.Model exposing (..)
import Html exposing (..)


image : String
image = "./src/static/img/umu.png"

text : Html Msg
text = Markdown.toHtml [] ("""
### ID PORTALEN 

At the Interaction and design programme there's a lot of courses to choose from.
ID portalen is a system developed in Meteor (React, MongoDB, Node.js) that
allows you to rate and comment courses at the programme to make it easier for
others to choose which courses to take.

""")
