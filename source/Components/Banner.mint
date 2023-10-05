component Banner {
  style base {
    width: 2000px;
    height: 500px;
    padding: 32px;
  }
  
  fun render: Html {
    <div style={Ui.Styles.flex(Direction::Horizontal)}>
      <div::base style={Ui.Styles.flex(Direction::Vertical)}>
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
  style base {
    gap: 12px;
    
    > button {
      color: var(--tint);
      border-color: var(--tint);
      border-style: solid;
      border-width: 2px;
      background-color: transparent;
    }
  }
  
  fun render: Html {
    <div::base style={Ui.Styles:FLEX}>
      <Ui.Button
        iconBefore={Ui.Icons:ORGANIZATION}
        label="Client Work"/>
      <Ui.Button
        iconBefore={Ui.Icons:OCTOFACE}
        label="Open Source"/>
    </div> 
  }
}
