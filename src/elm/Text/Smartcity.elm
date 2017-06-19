module Text.Smartcity exposing (..)
import Markdown
import Model.Model exposing (..)
import Html exposing (..)


image : String
image = "./src/static/img/smartcity.png"

text : Html Msg
text = Markdown.toHtml [] ("""
### NORRSKEN - SAFE SMART CITY

As part of a course in Interactivity in Smart Environments we looked at how the
future cities could become safer with the use of technology. This resulted in a
concept app where people could see which roads are most populated and then
choose them in order to feel safer when walking home at night.
""")
