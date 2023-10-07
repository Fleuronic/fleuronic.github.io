component Main {
  const TOKENS =
    [
      {["tint"], Colors.fleuronicBlue()},
      {["tint-light"], Colors.fleuronicBlue(light: true)},
      {["primary-text"], Colors.white()},
      {["background-text", "primary-color"], Colors.darkGray()},
      {["spacing"], Spacing.default()},
      {["border-width"], Border.Width.default()}
    ]
    |> Tokens.set

  fun render : Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={TOKENS}>

      <Header/>
      <Banner/>

    </Ui.Theme.Root>
  }
}
