module Ui.Flex {
  const H = flex(direction: Direction::Horizontal)
  const V = flex(direction: Direction::Vertical)

  fun flex (direction : Direction) {
    let {flexDirection, alignItems} =
      case direction {
        Direction::Horizontal => {"row", "center"}
        Direction::Vertical => {"column", "start"}
      }

    Map.empty()
    |> Map.set("display", "flex")
    |> Map.set("justify-content", "center")
    |> Map.set("flex-direction", flexDirection)
    |> Map.set("align-items", alignItems)
  }
}
