module Ui.Styles {
  const INLINE = "inline-block"
    |> Value.for("display")

  const FLEX = "flex"
    |> Value.for("display")
    |> Map.set("justify-content", "center")

  fun flex(direction: Direction) {
    FLEX
    |> Map.set("flex-direction", Direction.flexDirection(direction))
    |> Map.set("align-items", Direction.alignItems(direction))
  }
}
