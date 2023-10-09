module Token {
  fun list (theme : Array(Tuple(Array(String), String))) {
    theme
    |> Map.fromArray
    |> Map.map(
      (names : Array(String), value : String) {
        names
        |> Array.map(
          (name : String) {
            Ui.Token::Simple(name: name, value: value)
          })
      })
    |> Map.values
    |> Array.flatMap(
      (tokens : Array(Ui.Token)) {
        tokens
      })
  }
}
