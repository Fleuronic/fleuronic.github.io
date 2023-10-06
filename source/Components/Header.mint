component Header {
  style base {
    color: var(--tint);
    text-transform: uppercase;
    padding: 18px 16px 24px 32px;
  }

  style brand {
    width: 16vw;
  }

  style button {
    > button {
      text-transform: inherit;
      background-color: var(--tint);
    }
  }

  get brand {
    <Ui.Brand
      icon={
        <div::brand>
          <img src={@asset(../../assets/icon_wordmark.png)}/>
        </div>
      }
      href="/"/>
  }

  get aboutItem {
    Ui.NavItem::Link(
      iconBefore: <{  }>,
      iconAfter: <{  }>,
      target: "",
      label: "About",
      href: "/about")
  }

  get servicesItem {
    Ui.NavItem::Link(
      iconBefore: <{  }>,
      iconAfter: <{  }>,
      target: "",
      label: "Services",
      href: "/services")
  }

  get blogItem {
    Ui.NavItem::Link(
      iconBefore: <{  }>,
      iconAfter: <{  }>,
      target: "",
      label: "Blog",
      href: "/blog")
  }

  get contactItem {
    Ui.NavItem::Html(
      <div::button>
        <Ui.Button label="Get in Touch"/>
      </div>)
  }

  fun render : Html {
    <div::base>
      <Ui.Header
        brand={brand}
        items={[aboutItem, servicesItem, blogItem, contactItem]}
        breakpoint={0}/>
    </div>
  }
}
