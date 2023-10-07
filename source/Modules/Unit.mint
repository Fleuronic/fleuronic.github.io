enum Unit {
	Pixel
}

module Unit {
  fun pixels(value: Number) {
    "#{value}#{string(Unit::Pixel)}"
  }
  
  fun string(unit: Unit) {
    case unit {
      Unit::Pixel => "px"
    }
  }
}
