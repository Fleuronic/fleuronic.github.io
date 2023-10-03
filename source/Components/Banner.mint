component Banner {
  const HEIGHT = 600
  const PADDING = 20

  fun render: Html {
    <div style={Ui.Styles.flex(Direction::Horizontal)}>
      <div style={Ui.Styles.flex(
        Direction::Vertical,
        Maybe.just(2000),
        Maybe.just(HEIGHT),
        Maybe.just(PADDING))}>
        <Banner.Text/>
        <Banner.Buttons/>
      </div>
      <div style={Ui.Styles.flex(Direction::Vertical)}>
        <img src={@asset(../../assets/apps.png)}/>
      </div>
    </div>
  }
}

component Banner.Text {
  fun render: Html {
    <>
      <h1>
        "Apps built to flourish."
        <Ui.Icon
          icon={@svg(../../assets/logo.svg)}
          size={Ui.Size::Em(1)}/>
      </h1>
      <{<<#MARKDOWN
        From startups to Fortune 500 companies, Fleuronic has a **proven track record**
        in mobile software development. We work with your team to deliver your dream,
        from start to finish and beyond.
        
        Take a look at what we’ve done so far.
        MARKDOWN}>
    </>
  }
}

component Banner.Buttons {
  fun render: Html {
    <div style={Ui.Styles:ROW}>
      <Ui.Button 
        iconBefore={Ui.Icons:ORGANIZATION}
        label="Client Work"/>
      <Ui.Button 
        iconBefore={Ui.Icons:PACKAGE}
        label="Open Source"/>
    </div> 
  }
}
