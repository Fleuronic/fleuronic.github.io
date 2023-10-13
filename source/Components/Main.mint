component Main {
  connect Application exposing { page }

  fun render : Html {
    let tokens =
      Theme:LIGHT
      |> Token.list

    <Ui.Theme.Root
      fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION}
      tokens={tokens}>

      <Header/>

      case page {
        Page::Home => <Page.Home/>
        Page::About => <Page.About/>
        Page::Services => <Page.Services/>
        Page::Blog => <Page.Blog/>
      }

      <Footer/>

    </Ui.Theme.Root>
  }
}
