// Dieses Kapitel zeigt Inline- und Blockformeln sowie beschriftete Codeblöcke.
= Formeln und Quelltext

Formeln können im Fließtext stehen, zum Beispiel $a^2 + b^2 = c^2$. Für
abgesetzte und nummerierte Formeln wird eine eigene Gleichungsumgebung gesetzt.

#set math.equation(numbering: "1.")

$ integral_a^b f(x) dif x = F(b) - F(a) $ <eq-integral>

Wie in @eq-integral zu sehen ist, verknüpft ein Label die Formel mit einem
automatischen Querverweis.

== Codebeispiel

Quelltext lässt sich als Rohtextblock einfügen und wie eine Abbildung
beschriften. Das Beispiel ist bewusst kurz gehalten:

#figure(
  ```python
  def mittelwert(werte):
      """Gibt den arithmetischen Mittelwert einer Liste zurück."""
      return sum(werte) / len(werte)
  ```
  ,
  caption: [Kleine Python-Funktion als Codebeispiel],
) <lst-example>

Über @lst-example kann der Codeblock im Text referenziert werden.
