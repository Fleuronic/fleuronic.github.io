component Main {
  const TOKENS = [
    {["tint"], Ui.Colors:FLEURONIC_BLUE},
    {["primary-text"], Ui.Colors:WHITE},
    {["background-text", "primary-color"], Ui.Colors:DARK_GRAY},
    {["spacing"], Ui.Spacing:DEFAULT}] |> Tokens.set
  
  fun render: Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={TOKENS}>
      <Header/>
      <Banner/>
    </Ui.Theme.Root>
  }
}
