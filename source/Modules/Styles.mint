module Ui.Styles {
  const INLINE = "inline-block"
    |> Value.for("display")
    |> Map.merge("height" |> Value.of(20, "px"))
  
  const FLEX = "flex"
    |> Value.for("display")
    |> Map.set("justify-content", "center")
    
  const ROW = FLEX
    |> Map.merge("gap" |> Value.of(Ui.Spacing:DEFAULT, "px"))

  fun flex(
    direction: Direction,
    width: Maybe(Number) = Maybe::Nothing,
    height: Maybe(Number) = Maybe::Nothing,
    padding: Maybe(Number) = Maybe::Nothing
  ) {
    FLEX
    |> Map.set("flex-direction", case direction {
      Direction::Horizontal => "row"
      Direction::Vertical => "column"})
    |> Map.set("align-items", case direction {
      Direction::Horizontal => "center"
      Direction::Vertical => "start"})
    |> Map.merge("width" |> Value.ofMaybe(width, "px"))
    |> Map.merge("height" |> Value.ofMaybe(height, "px"))
    |> Map.merge("padding" |> Value.ofMaybe(padding, "px"))
  }
}
