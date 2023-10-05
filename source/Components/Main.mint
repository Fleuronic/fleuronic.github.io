component Main {
  fun render: Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={[
        {["tint"], Ui.Colors:FLEURONIC_BLUE},
        {["primary-text"], Ui.Colors:WHITE},
        {["background-text", "primary-color"], Ui.Colors:DARK_GRAY}] |> Tokens.set}>
      <Header/>
      <Banner/>
    </Ui.Theme.Root>
  }
}
