// Vorlagenfunktionen und Layoutregeln für das gesamte Dokument.

// HAW-Hausfarben, verwendet auf Titelblatt und in den Verzeichnissen.
#let haw-blue = rgb("#003CA0")
#let haw-light-blue = rgb("#0096D2")
#let haw-gray = rgb("#A0BEDC")

// Erzeugt die Titelei, Verzeichnisse, den Haupttext und den hinteren Teil.
#let project(
  doctype: "BEISPIELARBEIT",
  title: "",
  subtitle: "",
  author: "",
  examiner_first: "",
  examiner_sec: "",
  date: none,
  logo: none,
  abstract-de: "",
  abstract-en: "",
  appendix-content: none,
  body,
) = {
  // PDF-Metadaten werden aus den Angaben auf dem Titelblatt übernommen.
  set document(title: title, author: author)

  // Grundeinstellungen für Papier, Seitenzahlen und Fließtext.
  set page(
    paper: "a4",
    numbering: "1",
    number-align: center,
    margin: auto,
  )
  set text(font: "Libertinus Serif", size: 12pt, lang: "de")
  set par(leading: 0.65em, justify: true)

  // Quelltext erhält eine feste Schrift und hinterlegte Codeblöcke.
  show raw: set text(font: "Anonymous Pro", size: 10pt)
  show raw: set align(left)
  show raw.where(block: true): it => block(
    fill: luma(90%),
    inset: 5pt,
    radius: 2pt,
    width: 100%,
    text(fill: rgb("#a2aabc"), it),
  )

  // Links werden im PDF sichtbar und anklickbar dargestellt.
  show link: it => text(fill: blue, underline(it))

  // Überschriften folgen abgestuften Größen und Abständen.
  show heading.where(level: 1): it => block(
    above: 42pt * 120%,
    below: 42pt,
    text(size: 24.88pt, weight: "bold", it),
  )
  show heading.where(level: 2): it => block(
    above: 26pt * 120%,
    below: 26pt,
    text(size: 17.28pt, weight: "bold", it),
  )
  show heading.where(level: 3): it => block(
    above: 23pt * 120%,
    below: 23pt,
    text(size: 14.4pt, weight: "bold", it),
  )
  show heading.where(level: 4): it => block(
    above: 20pt * 120%,
    below: 20pt,
    text(size: 12pt, weight: "bold", it),
  )
  set heading(numbering: "1.1", supplement: [Abschnitt])

  // Tabellen- und Codebeschriftungen stehen oben, Bildbeschriftungen unten.
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: image): set figure.caption(position: bottom)
  show figure.where(kind: raw): set figure.caption(position: top)
  show figure.where(kind: raw): set figure(supplement: "Codeblock", gap: 10pt)
  show figure.where(kind: raw): it => {
    show figure.caption: set align(left)
    it
  }

  // Das Titelblatt nutzt eigene Ränder und die HAW-Schriften.
  page(numbering: none, margin: (left: 2cm, top: 7mm, right: 5mm, bottom: 1cm))[
    #set text(fill: haw-blue, font: "Open Sans", size: 10.95pt)
    #set par(leading: 0.6em)
    #align(right, image(logo, width: 7cm))

    #v(4.8cm)
    #text(font: "Open Sans", weight: "bold")[#doctype]

    #v(8mm)
    #block(width: 70%)[
      #set text(font: "Martel", size: 20.74pt)
      #par(leading: 0.65em + 0.5mm, justify: false)[
        #title #subtitle
      ]
      #line(length: 1.1cm, stroke: 1.2mm + haw-blue)
    ]

    #v(1cm)
    vorgelegt am #date \
    #author

    #v(1fr)
    #pad(left: 37mm)[
      Erstprüfer*in: #examiner_first \
      Zweitprüfer*in: #examiner_sec
      #v(1.5mm)
      #line(length: 0.9cm, stroke: 1mm + haw-blue)
      #v(3mm)

      *HOCHSCHULE FÜR ANGEWANDTE \
      WISSENSCHAFTEN HAMBURG* \
      Fakultät Design, Medien und Information \
      Studiengang Medientechnik \
      Finkenau 35 \
      22081 Hamburg
    ]
  ]

  // Zusammenfassungen stehen ohne Seitenzahl vor den Verzeichnissen.
  set page(numbering: none)
  heading(outlined: false, numbering: none, level: 2)[Zusammenfassung]
  abstract-de
  linebreak()
  linebreak()
  if abstract-en != "" and abstract-en != none [
    #heading(outlined: false, numbering: none, level: 2)[Abstract]
    #abstract-en
  ]
  pagebreak()

  // Die vorderen Verzeichnisse erhalten römische Seitenzahlen.
  show outline.entry.where(level: 1): it => {
    v(2em, weak: true)
    text(size: 12pt, fill: haw-blue, weight: "bold", it)
  }
  show outline.entry.where(level: 1): set outline.entry(
    fill: text(fill: white, repeat([. ], gap: 0.3em)),
  )
  show outline.entry.where(level: 2): it => text(size: 12pt, fill: haw-blue, it)
  show outline.entry.where(level: 3): it => text(size: 12pt, fill: haw-blue, it)
  show outline.entry.where(level: 4): it => text(size: 12pt, fill: haw-blue, it)
  counter(page).update(1)
  set page(numbering: "I")
  outline()
  pagebreak()

  // Abbildungs- und Tabellenverzeichnis werden automatisch aus den Elementen
  // mit Beschriftung zusammengestellt.
  show outline.entry.where(level: 1): set outline.entry(
    fill: text(fill: haw-blue, repeat([. ], gap: 0.3em)),
  )
  heading(level: 1, numbering: none, outlined: true)[Abbildungsverzeichnis]
  outline(title: none, target: figure.where(kind: image))
  pagebreak()
  heading(level: 1, numbering: none, outlined: true)[Tabellenverzeichnis]
  outline(title: none, target: figure.where(kind: table))
  pagebreak()
  heading(level: 1, numbering: none, outlined: true)[Codeblockverzeichnis]
  outline(title: none, target: figure.where(kind: raw))
  pagebreak()

  // Der Hauptteil beginnt mit arabischen Seitenzahlen ab Seite eins.
  counter(page).update(1)
  set page(numbering: "1")
  body

  // Literatur und Anhang folgen auf den Hauptteil.
  pagebreak()
  bibliography("Literatur/Quellen.bib", title: "Literatur", style: "apa")
  pagebreak()
  heading(level: 1, numbering: none, outlined: true)[Anhang]
  appendix-content

  // Die Erklärung ist eine Vorlage und muss vor einer Abgabe angepasst werden.
  pagebreak()
  heading(level: 2, numbering: none, outlined: false)[Eigenständigkeitserklärung]
  text()[
    Hiermit versichere ich, dass ich die vorliegende Arbeit selbstständig und
    nur mit den angegebenen Hilfsmitteln verfasst habe. Alle wörtlich oder
    sinngemäß übernommenen Inhalte sind als solche kenntlich gemacht.

    #v(3cm)
    Ort, Datum
    #v(2cm)
    Unterschrift
  ]
}
