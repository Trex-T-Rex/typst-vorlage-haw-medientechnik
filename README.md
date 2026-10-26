# Typst-Vorlage für wissenschaftliche Arbeiten

Ein persönlicher Nachbau der LaTeX-Abschlussarbeitsvorlage für den
Studiengang Medientechnik an der HAW Hamburg, Fakultät Design, Medien und
Information. Das Projekt überträgt ausgewählte Bestandteile in Typst und
demonstriert den Aufbau einer wissenschaftlichen Arbeit. Es ist ein
nicht-offizielles Beispielprojekt und keine von der Hochschule freigegebene
oder geprüfte Vorlage.

## Motivation

Ich bin Alexander und wollte eine Alternative zur LaTeX-Vorlage der
Hochschule ausprobieren, weil ich Typst als moderner und zugänglicher
empfinde. Das Projekt bildet ausgewählte Bestandteile der Vorlage mit Typst
nach und ordnet sie als Beispielprojekt neu.

Typst bietet viele Funktionen, die für wissenschaftliche Arbeiten praktisch
sind: Inhalte lassen sich in einzelne Dateien aufteilen, Verweise und
Verzeichnisse werden automatisch erstellt, und der Satz wird mit einem
einfachen Kommando ausgeführt. Der Funktionsumfang ist jedoch nicht identisch
mit LaTeX. Insbesondere für komplexe Diagramme und Grafiken ist Typst nicht
für jeden Anwendungsfall gleich gut geeignet; je nach Projekt können dafür
zusätzliche Werkzeuge oder eine andere Lösung nötig sein.

Gestalterisch soll sich diese Vorlage eher an der LaTeX-Vorlage als an der
Word-Vorlage orientieren. Das ist eine persönliche Zielsetzung und keine
Aussage über eine offizielle Qualitätsbewertung oder Gleichwertigkeit. Bitte
besprecht mit eurem betreuenden Professor oder eurer betreuenden Professorin,
ob ihr diese Vorlage für eure Arbeit verwenden dürft und welche Vorgaben
gelten. Prüft außerdem selbst, ob Aufbau und Formatierung den aktuellen
Anforderungen eures Studiengangs entsprechen.

## Was die Vorlage zeigt

Das Beispielprojekt demonstriert:

- Titelseite mit Metadaten und HAW-inspiriertem Layout
- deutsche Zusammenfassung und englisches Abstract
- getrennte Kapiteldateien und ein daraus zusammengesetztes Dokument
- Inhalts-, Abbildungs-, Tabellen- und Codeblockverzeichnis
- Überschriften, Absätze, Listen, Zitate, Fußnoten und Links
- Querverweise auf Abschnitte, Abbildungen, Tabellen, Formeln und Code
- Abbildungen mit dem austauschbaren Projektbild sowie Tabellen mit Beispielwerten
- Inline- und nummerierte mathematische Formeln
- beschriftete Codeblöcke
- Literaturverzeichnis, Beispielanhang und Eigenständigkeitserklärung

Die Texte sind Lorem Ipsum oder frei formulierte Demonstrationen. Namen,
Messreihen und fachliche Ergebnisse aus der ursprünglichen Beispielarbeit
wurden nicht als Beispielinhalte übernommen. Die Eigenständigkeitserklärung
ist ein Muster und muss für eine tatsächliche Arbeit durch die gültige
Erklärung eurer Hochschule ersetzt werden.

## Projektstruktur

```text
BA_Medientechnik_FormatV2/
├── main.typ                         # Metadaten und Zusammenstellung
├── lib.typ                          # Layout, Titelseite und Verzeichnisse
├── Kapitel/
│   ├── 1-Zusammenfassung.typ        # Deutsche Zusammenfassung
│   ├── 1.1-Abstract.typ             # Englisches Abstract
│   ├── 2-Grundlagen.typ             # Text, Gliederung, Listen und Zitate
│   ├── 3-Abbildungen-und-Tabellen.typ
│   ├── 4-Formeln-und-Code.typ
│   └── Anhang-Beispiel.typ          # Beispielinhalt im Anhang
├── Literatur/
│   └── Quellen.bib                  # Beispieldaten für Zitate
├── Abbildungen/
│   └── DinoBund.jpg                 # Aktuelles Bild für die Abbildungsbeispiele
└── .preset/Fonts/                   # Gebündelte Schriftdateien
```

`main.typ` enthält die Metadaten und bindet die einzelnen Kapitel ein.
`lib.typ` erzeugt unter anderem Titelblatt, Verzeichnisse, Literaturteil und
Eigenständigkeitserklärung. Der Abschnitt **Anhang** ist der deutsche Begriff
für das englische *appendix*: Er enthält ergänzendes Material, das zum
Verständnis der Arbeit nützlich ist, aber den Haupttext unterbrechen würde.
Die Layoutdatei setzt die Überschrift **Anhang**; `Kapitel/Anhang-Beispiel.typ`
fügt darunter den konkreten Abschnitt **Beispielmaterial** ein. Es gibt also
nicht zwei verschiedene Anhänge. Die Beispieldaten für Literaturzitate liegen
separat in `Literatur/Quellen.bib`.

## Anpassen

Ändert Titel, Namen, Prüfende und Logo in `main.typ`. Ersetzt dann die
Platzhalter in den Dateien unter `Kapitel/` durch eigene Inhalte. Neue
Kapiteldateien können in `main.typ` mit `#include` an der gewünschten Stelle
eingefügt werden. Layout und Vorlagenfunktionen sind in `lib.typ`
zusammengefasst.

Typst-Überschriften beginnen mit `=`. Ein Label wie `<fig-dino>` markiert ein
Element, auf das im Text mit `@fig-dino` verwiesen werden kann. Eine
beschriftete Abbildung oder Tabelle wird automatisch in das entsprechende
Verzeichnis aufgenommen. Weitere Informationen zur Typst-Syntax stehen in
der [Typst-Dokumentation](https://typst.app/docs/).

## Entstehung und KI-Nutzung

### Herkunft der Vorlage

Ausgangspunkt ist die LaTeX-Abschlussarbeitsvorlage für den Studiengang
Medientechnik an der HAW Hamburg, Fakultät Design, Medien und Information.
Das vorliegende Repository ist ein eigenständiger, nicht offizieller Nachbau
ausgewählter Vorlagenfunktionen in Typst und keine vollständige oder
verbindliche Übertragung der ursprünglichen Vorlage. Die ursprüngliche Vorlage ist für Abschlussarbeiten in diesem
Studiengang gedacht. Der Typst-Nachbau übernimmt ausgewählte Layout- und
Dokumentfunktionen, ersetzt aber nicht die offizielle Vorlage oder die
aktuellen Vorgaben der Hochschule. Bitte stimmt die Verwendung mit eurer
betreuenden Person ab.

### Bearbeitung

Ich, Alexander, habe den Nachbau begonnen und das Projekt mit KI-Unterstützung
aufgeräumt und überarbeitet. Auch dieser README-Text und Teile der
Beispieltexte wurden mit KI erstellt. Das Bild für die Abbildungsbeispiele
wurde inzwischen ersetzt; die aktuelle Datei ist
`Abbildungen/DinoBund.jpg`. Bitte prüft Code, Texte und Bildrechte selbst,
bevor ihr etwas übernehmt oder veröffentlicht.

## Lizenz

Die von mir erstellten Typst-Quelldateien und README-Texte in diesem Projekt
stehen unter der **Creative Commons Namensnennung – Nicht kommerziell –
Weitergabe unter gleichen Bedingungen 4.0 International**
(**CC BY-NC-SA 4.0**). Die Lizenz erlaubt das Teilen und Bearbeiten dieser
Materialien für nicht kommerzielle Zwecke, sofern Alexander als Urheber
genannt, auf Änderungen hingewiesen und Bearbeitungen unter derselben Lizenz
weitergegeben werden.

- Lizenzkurzfassung: <https://creativecommons.org/licenses/by-nc-sa/4.0/>
- Rechtstext: <https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode>
- Lizenzkennung: `CC-BY-NC-SA-4.0`

Die Lizenz gilt **nicht** automatisch für Bestandteile Dritter. Insbesondere
sind das HAW-Logo, das Dino-Bild und die gebündelten Schriftdateien
ausgenommen, sofern bei der jeweiligen Datei keine abweichende Lizenz oder
ausdrückliche Freigabe angegeben ist. Prüft die jeweiligen Rechte, bevor ihr
diese Dateien weiterverwendet oder mit dem Repository veröffentlicht.

## Hinweise zu Marken, Schriften und Weiterverwendung

Das HAW-Layout und die HAW-Marke dienen hier der Demonstration. Dieses Projekt
ist nicht offiziell mit der HAW Hamburg verbunden und bedeutet keine
Empfehlung oder Freigabe durch die Hochschule. Klärt vor einer
Veröffentlichung oder Weiterverwendung, ob ihr die Rechte zur Verbreitung des
Logos und aller gebündelten Schriften habt; ersetzt oder entfernt Dateien,
für die euch keine entsprechenden Rechte vorliegen.

Die Lizenz für die eigenen Quelldateien hebt diese Einschränkungen für
Drittmaterial nicht auf. Eine Veröffentlichung auf GitHub macht Dateien nicht
automatisch frei von Rechten Dritter.
