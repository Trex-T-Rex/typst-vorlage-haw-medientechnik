// Dieses Kapitel zeigt Gliederung, Fließtext, Fußnoten, Links und Zitate.
= Grundlagen und Aufbau

#lorem(75)

Ein Fachbegriff kann mit einer Fußnote erläutert werden#footnote[Eine Fußnote ergänzt den Haupttext, ohne den Lesefluss zu unterbrechen.]. Quellen lassen sich direkt im Text referenzieren, zum Beispiel die offizielle #link("https://typst.app/docs/")[Typst-Dokumentation] @typst-docs.

== Aufbau des Dokuments

#lorem(65)

Die Gliederung wird aus den Überschriften erzeugt. Sie kann wie hier bis zu
mehrere Ebenen enthalten.

=== Unterabschnitt

#lorem(50)

==== Detailabschnitt

#lorem(40)

== Aufzählungen

Ungeordnete Listen eignen sich für gleichrangige Punkte:

- Ein erster Beispielpunkt mit #emph[betontem Text].
- Ein zweiter Punkt mit einem #strong[stark hervorgehobenen Begriff].
- Ein dritter Punkt mit einem Querverweis auf @fig-dino.

Eine nummerierte Liste zeigt eine feste Reihenfolge:

+ Quelldatei vorbereiten.
+ Inhalt und Formatierung ergänzen.
+ Dokument kompilieren und Ausgabe prüfen.

== Zitatbeispiel

#quote(block: true)[
  #lorem(30)
]

Das Zitat illustriert die Darstellung eines eingerückten Textabschnitts. Für
Quellenverweise im Fließtext wird die Literaturdatenbank verwendet @typst-docs.
