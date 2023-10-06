module Ui.Flex {
  const H = flex(direction: Direction::Horizontal)
  const V = flex(direction: Direction::Vertical)

  fun flex (direction : Direction) {
    Map.empty()
    |> Map.set("display", "flex")
    |> Map.set("justify-content", "center")
    |> Map.set("flex-direction", Direction.flexDirection(direction))
    |> Map.set("align-items", Direction.alignItems(direction))
  }
}
