component Main {
  connect Application exposing { page }

  fun render : Html {
    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={
        Theme:LIGHT
        |> Token.list
      }>

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
