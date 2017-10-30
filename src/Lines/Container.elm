module Lines.Container exposing (Config, default)

import Svg exposing (Svg)
import Svg.Attributes exposing (style)
import Lines.Coordinate as Coordinate exposing (..)
import Lines.Attributes as Attributes


type alias Config msg =
  { frame : Coordinate.Frame
  , attributes : List (Attributes.Attribute msg)
  , defs : List (Svg msg)
  }


default : Config msg
default =
  { frame = Frame (Margin 40 150 90 150) (Size 650 400)
  , attributes = [ Attributes.custom <| style "font-family: monospace;" ] -- TODO: Maybe remove
  , defs = []
  }
