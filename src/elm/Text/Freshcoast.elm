module Text.Freshcoast exposing (..)
import Markdown
import Model.Model exposing (..)
import Html exposing (..)


image : String
image = "static/img/icecreamboats.png"

text : Html Msg
text = Markdown.toHtml [] ("""
### Glassbåtarna

Glassbåtarna (in english: Icecream boats) was an app by a team for
the company Freshcoast. Freshcoast is a company located in Gothenburg that sells
newspapers, bread, icecream and other stuff on the coast from boats. The goal of this app
was to make it easier for Freshcoast to find their customer by making an app
where the users could report their location and find where the boats are. This
app was developed in React native and is available for iOS and Android.

""")
