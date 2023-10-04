module Ui.Styles {
  const INLINE = "inline-block"
    |> Value.for("display")

  const FLEX = "flex"
    |> Value.for("display")
    |> Map.set("justify-content", "center")

  const ROW = FLEX
    |> Map.merge("gap" |> Value.of(Ui.Spacing:DEFAULT, "px"))

  fun flex (
    direction: Direction,
    width: Maybe(Number) = Maybe::Nothing,
    height: Maybe(Number) = Maybe::Nothing,
    padding: Maybe(Number) = Maybe::Nothing
  ) {
    FLEX
    |> Map.set("flex-direction", Direction.flexDirection(direction))
    |> Map.set("align-items", Direction.alignItems(direction))
    |> Map.merge("width" |> Value.ofMaybe(width, "px"))
    |> Map.merge("height" |> Value.ofMaybe(height, "px"))
    |> Map.merge("padding" |> Value.ofMaybe(padding, "px"))
  }
}
