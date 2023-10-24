module Colors {
  const WHITE = "white"
  const DARK_GRAY = "#555"
  const SHADOW = "#ddd"
  const FLEURONIC_BLUE = "#8cb1db"

  const LIGHT = 80

  fun white {
    WHITE
  }

  fun darkGray {
    DARK_GRAY
  }

  fun shadow {
    SHADOW
  }

  fun fleuronicBlue (light : Bool = false) {
    FLEURONIC_BLUE
    |> color(light)
  }

  fun color (value : String, light : Bool) {
    value + if light {
      "#{LIGHT}"
    }
  }
}
