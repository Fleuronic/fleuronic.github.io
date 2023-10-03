module Value {
  fun for(
    value: String,
    key: String 
  ) {
    Map.empty() |> Map.set(key, value)
  }
  
  fun of(
    key: String, 
    number: Number, 
    unit: String
  ) {
    "#{number}#{unit}" |> Value.for(key)
  }

  fun ofMaybe(
    key: String, 
    number: Maybe(Number), 
    unit: String
  ) {
    number
    |> Maybe.map((number: Number) { of(key, number, unit) })
    |> Maybe.withDefault(Map.empty())
  }
}
