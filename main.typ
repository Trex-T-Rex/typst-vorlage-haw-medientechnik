// Hauptdatei: Metadaten setzen und die Kapitel zum Gesamtdokument verbinden.
#import "lib.typ": project

// Das Datum wird automatisch auf den Tag des Kompilierens gesetzt.
#let document-date = datetime.today().display("[day].[month].[year]")

// Die Vorlage erzeugt Titelseite, Zusammenfassungen, Verzeichnisse,
// Literaturverzeichnis und Erklärung. Der Inhalt wird weiter unten eingefügt.
#show: project.with(
  doctype: "BEISPIELARBEIT",
  title: "Titel der Abschlussarbeit",
  subtitle: "Ein Untertitel",
  author: "Vorname Nachname",
  examiner_first: "Vorname Nachname",
  examiner_sec: "Vorname Nachname",
  date: document-date,
  logo: "HAW_Marke_CMYK_Original.svg",
  abstract-de: include "Kapitel/1-Zusammenfassung.typ",
  abstract-en: include "Kapitel/1.1-Abstract.typ",
  appendix-content: include "Kapitel/Anhang-Beispiel.typ",
)

// Jedes Kapitel liegt in einer eigenen Quelldatei; die Ausgabe bleibt ein PDF.
#include "Kapitel/2-Grundlagen.typ"
#include "Kapitel/3-Abbildungen-und-Tabellen.typ"
#include "Kapitel/4-Formeln-und-Code.typ"
