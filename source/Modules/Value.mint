module Value {
  fun for(value: String, key: String) {
    Map.empty() |> Map.set(key, value)
  }
  
  fun set(number: Number, key: String, unit: String) {
    "#{number}#{unit}" |> Value.for(key)
  }

  fun setMaybe(number: Maybe(Number), key: String, unit: String) {
    number
    |> Maybe.andThen((number: Number) { set(number, key, unit) |> Maybe.just })
    |> Maybe.withDefault(Map.empty())
  }
}
