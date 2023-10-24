component Portfolio {
  style base {
    display: grid;
    align-content: start;
    background-color: #eee;
    padding: var(--padding);
    grid-gap: var(--grid-section-spacing);
    box-shadow: 0 0 0.625em var(--shadow-color) inset;
  }

  style section {
    grid-gap: 1em;
    display: grid;
  }

  fun render : Html {
    <div::base>
      <div::section id="client_work">
        <Ui.Content>
          <h2>"Client Work"</h2>
          <p>"Here are some projects we’ve developed for clients."</p>
        </Ui.Content>

        <Ui.Grid gap={Ui.Size::Em(2)}>
          <Ui.Card href="https://popvox.com">
            <Ui.Card.Image
              src={@asset(../../assets/elevator.png)}
              objectFit="contain"/>

            <Ui.Card.Container
              title=<{ "Elevator" }>
              subtitle=<{ "POPVOX" }>
              content=<{ "Digital orientation tool for new members of Congress" }>/>
          </Ui.Card>

          <Ui.Card href="https://popvox.com">
            <Ui.Card.Image
              src={@asset(../../assets/remote_vote.png)}
              objectFit="contain"/>

            <Ui.Card.Container
              title=<{ "RemoteVote" }>
              subtitle=<{ "POPVOX" }>
              content=<{ "Flexible, scalable, mobile voting for your organization" }>/>
          </Ui.Card>

          <Ui.Card href="https://hopper.com">
            <Ui.Card.Image
              src={@asset(../../assets/hopper.png)}
              objectFit="contain"/>

            <Ui.Card.Container
              title=<{ "Hopper for iPhone" }>
              subtitle=<{ "Hopper, Inc." }>
              content=<{ "Flexible, scalable, mobile voting for your organization" }>/>
          </Ui.Card>

        </Ui.Grid>
      </div>

      <div::section id="open_source">
        <Ui.Content>
          <h2>"Open Source"</h2>
          <p>"Explore our open source repositories."</p>
        </Ui.Content>

        <Ui.Grid gap={Ui.Size::Em(2)}>
          <Ui.Card href="https://github.com/Fleuronic/Skewer">
            <Ui.Card.Container
              title=<{ "Skewer" }>
              content=<{ "🍡 Automatic support for “kebab-case” in Swift JSON encoders and decoders" }>/>
          </Ui.Card>

          <Ui.Card href="https://github.com/Fleuronic/Cubby">
            <Ui.Card.Container
              title=<{ "Cubby" }>
              content=<{ "🗄 A Swift wrapper around the JSONbin.io API" }>/>
          </Ui.Card>

          <Ui.Card href="https://github.com/Fleuronic/WorkflowDemo">
            <Ui.Card.Container
              title=<{ "Workflow Demo" }>
              content=<{ "⛲ Simple demonstration of Square’s Workflow library, introducing Declarative UIKit" }>/>
          </Ui.Card>

          <Ui.Card href="https://github.com/Fleuronic/Coven">
            <Ui.Card.Container
              title=<{ "Coven" }>
              content=<{ "💬 Microblogging app for small, private groups, showing modularization and Workflow architecture" }>/>
          </Ui.Card>
        </Ui.Grid>
      </div>
    </div>
  }
}
