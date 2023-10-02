component Main {
  const TOKENS = Array.concat([
    Ui:DEFAULT_TOKENS,
    [Ui.Token::Simple(
      name: "primary-color",
      value: Ui.Colors:FLEURONIC_BLUE)]])

  fun render: Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={TOKENS}>
      <Banner/>
    </Ui.Theme.Root>
  }
}
