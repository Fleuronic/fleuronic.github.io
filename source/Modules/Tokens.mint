module Tokens {
  fun set (tokens : Array(Tuple(Array(String), String))) {
    tokens
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
