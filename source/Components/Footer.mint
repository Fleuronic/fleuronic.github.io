component Footer {
  style base {
    padding: var(--padding);
    text-align: center;
  }

  fun render : Html {
    <div::base>
      "Copyright © #{Time.year(Time.now())} Fleuronic LLC. All " \
      "rights reserved."
    </div>
  }
}
