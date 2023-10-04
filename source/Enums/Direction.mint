enum Direction {
  Horizontal
  Vertical
}

module Direction {
  fun flexDirection(direction: Direction) {
    case direction {
      Direction::Horizontal => "row"
      Direction::Vertical => "column"
    }
  }

  fun alignItems(direction: Direction) {
    case direction {
      Direction::Horizontal => "center"
      Direction::Vertical => "start"
    }
  }
}
