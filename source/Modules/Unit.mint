module Unit {
  fun ems (value : Number) {
    Ui.Size::Em(value)
    |> Ui.Size.toString
  }

  fun pixels (value : Number) {
    Ui.Size::Px(value)
    |> Ui.Size.toString
  }
}
