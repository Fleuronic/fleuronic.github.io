component Main {
  const TOKENS = [
    Ui.Token::Simple(
      name: "background-text",
      value: Ui.Colors:TEXT),
    Ui.Token::Simple(
      name: "primary-text",
      value: Ui.Colors:LABEL),
    Ui.Token::Simple(
      name: "primary-color",
      value: Ui.Colors:TEXT)]

  fun render: Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={TOKENS}>
      <Header/>
      <Banner/>
    </Ui.Theme.Root>
  }
}
