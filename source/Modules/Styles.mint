module Ui.Styles {
  const INLINE = "inline-block"
    |> Value.for("display")
    |> Map.merge(20 |> Value.set("height", "px"))
  
  const FLEX = "flex"
    |> Value.for("display")
    |> Map.set("justify-content", "center")
    
  const ROW = FLEX
    |> Map.merge(Ui.Spacing:DEFAULT |> Value.set("gap", "px"))

  fun flex(
    direction: Direction,
    width: Maybe(Number) = Maybe::Nothing,
    height: Maybe(Number) = Maybe::Nothing,
    padding: Maybe(Number) = Maybe::Nothing
  ) {
    FLEX
    |> Map.merge(
      case direction {
        Direction::Horizontal => "row"
        Direction::Vertical => "column"
      } |> Value.for("flex-direction"))
    |> Map.merge(width |> Value.setMaybe("width", "px"))
    |> Map.merge(height |> Value.setMaybe("height", "px"))
    |> Map.merge(padding |> Value.setMaybe("padding", "px"))
    |> Map.set(
      "align-items",
      case direction {
        Direction::Horizontal => "center"
        Direction::Vertical => "start"
      }
    )
  }
}
