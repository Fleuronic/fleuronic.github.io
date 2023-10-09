module Theme {
  const LIGHT =
    [
      {["tint"], Colors.fleuronicBlue()},
      {["tint-light"], Colors.fleuronicBlue(light: true)},
      {["primary-text"], Colors.white()},
      {["background-text", "primary-color"], Colors.darkGray()},
      {["spacing"], Spacing.default()},
      {["padding"], Inset.large()},
      {["border-width"], Border.Width.default()}
    ]
}
