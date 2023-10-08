store Application {
  state page = Page::Home

  fun setPage (page : Page) : Promise(Void) {
    await case page {
      Page::Home => "Fleuronic"
      Page::About => "About"
      Page::Services => "Services"
      Page::Blog => "Blog"
    }
    |> Window.setTitle

    next { page: page }
  }
}
