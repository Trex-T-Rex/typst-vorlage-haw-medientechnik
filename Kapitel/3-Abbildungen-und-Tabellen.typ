// Dieses Kapitel demonstriert Bildbeschriftungen, Verweise, Raster und Tabellen.
#import "@preview/booktabs:0.0.4": toprule, midrule, bottomrule

= Abbildungen und Tabellen

Abbildungen erhalten eine Beschriftung und ein Label. So kann im Text darauf
verwiesen werden, ohne die Nummer manuell einzutragen: siehe @fig-dino.

#figure(
  image("../Abbildungen/DinoBund.jpg", width: 70%),
  caption: [Beispielabbildung mit dem Projektbild],
) <fig-dino>

Mehrere Abbildungen können in einem Raster angeordnet werden. Die Beschriftung
und das Label gehören jeweils direkt zur Abbildung.

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  align: center,
  figure(
    image("../Abbildungen/DinoBund.jpg", width: 90%),
    caption: [Beispielbild links],
  ),
  figure(
    image("../Abbildungen/DinoBund.jpg", width: 90%),
    caption: [Beispielbild rechts],
  ),
)

== Tabellen

Beschriftete Tabellen werden ebenfalls automatisch nummeriert und erscheinen
im Tabellenverzeichnis. In @tab-example stehen ausschließlich erfundene
Demonstrationswerte.

#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 8pt,
    align: center,
    toprule(),
    table.header([Kategorie], [Beispielwert], [Einheit]),
    midrule(),
    [Alpha], [12], [Punkte],
    [Beta], [24], [Punkte],
    [Gamma], [18], [Punkte],
    bottomrule(),
  ),
  caption: [Neutrale Beispieltabelle],
) <tab-example>
