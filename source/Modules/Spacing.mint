module Spacing {
  const DEFAULT = 12
  const GRID_SECTION = 2.5

  fun default {
    DEFAULT
    |> Unit.pixels
  }

  fun gridSection {
    GRID_SECTION
    |> Unit.ems
  }
}
