component Footer {
  style base {
    padding: var(--padding);
    text-align: center;
  }

  get copyright {
    let year =
      Time.year(Time.now())

    "Copyright © #{year} Fleuronic LLC."
  }

  get rights {
    "All rights reserved."
  }

  fun render : Html {
    <div::base>
      "#{copyright} #{rights}"
    </div>
  }
}
