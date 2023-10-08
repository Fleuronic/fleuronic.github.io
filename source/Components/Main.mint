component Main {
  connect Application exposing { page }
  
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

      case page {
        Page::Home => <Page.Home/>
        Page::About => <Page.About/>
        Page::Services => <Page.About/>
        Page::Blog => <Page.About/>
      }

    </Ui.Theme.Root>
  }
}
