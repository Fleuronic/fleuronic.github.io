module Theme {
  const LIGHT =
    [
      {["tint", "primary-color"], Colors.fleuronicBlue()},
      {["tint-light"], Colors.fleuronicBlue(light: true)},
      {["primary-text"], Colors.white()},
      {["background-text"], Colors.darkGray()},
      {["content-color"], Colors.white()},
      {["shadow-color"], Colors.shadow()},
      {["button-spacing"], Spacing.default()},
      {["grid-section-spacing"], Spacing.gridSection()},
      {["padding"], Inset.large()},
      {["border-width"], Border.Width.default()}
    ]
}
