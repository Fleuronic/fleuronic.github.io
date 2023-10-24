component Banner {
  style content {
    width: 1600px;
    padding: 32px;
  }

  fun render : Html {
    <div style={Ui.Flex:H}>
      <div::content style={Ui.Flex:V}>
        <Banner.Text/>
        <Banner.Buttons/>
      </div>

      <div style={Ui.Flex:V}>
        <img src={@asset(../../assets/apps.png)}/>
      </div>
    </div>
  }
}

component Banner.Text {
  fun render : Html {
    <>
      <h1>"Apps built to flourish."</h1>

      <{
        <<#MARKDOWN
        From startups to Fortune 500 companies, Fleuronic has a **proven track record**
        in mobile software development. We work with your team to deliver your dream,
        from start to finish and beyond.

        Take a look at what we’ve done so far.
        MARKDOWN
      }>
    </>
  }
}

component Banner.Buttons {
  style base {
    gap: var(--button-spacing);

    > button {
      color: var(--tint);
      border-color: var(--tint);
      border-width: var(--border-width);
      border-style: solid;
      background-color: transparent;

      &:hover {
        color: var(--primary-text);
        background-color: var(--tint-light);
      }
    }
  }

  fun render : Html {
    <div::base style={Ui.Flex:H}>
      <Ui.Button
        iconBefore={Ui.Icons:ORGANIZATION}
        label="Client Work"
        onClick={scrollToClientWork}/>

      <Ui.Button
        iconBefore={Ui.Icons:OCTOFACE}
        label="Open Source"
        onClick={scrollToOpenSource}/>
    </div>
  }
  
  fun scrollToClientWork (event : Html.Event) {
    `document.getElementById('client_work').scrollIntoView()`
  }

  fun scrollToOpenSource (event : Html.Event) {
    `document.getElementById('open_source').scrollIntoView()`
  }
}
