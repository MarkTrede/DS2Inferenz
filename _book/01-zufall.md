# Zufallsvorgänge

In diesem Kurs geht es um Zufall. Die Frage, was man denn unter Zufall eigentlich
zu verstehen hat, ist schwierig zu beantworten. Sie gehört eher in den Bereich der
Philosophie als den der Wirtschaftswissenschaften. Wir definieren in diesem Kurs
Zufall auf eine sehr pragmatische Art: Wir haben es mit einem **Zufallsvorgang**
zu tun, wenn wir nicht genau wissen, was passieren wird, aber wissen, was alles
passieren könnte. 

Mit Zufallsvorgängen hat man es also unentwegt zu tun. Wir wissen nicht, wie
sich der DAX-Index im Laufe des nächsten Monats entwickeln wird, aber wir
wissen, dass er einen Wert zwischen 0 und unendlich haben wird. Die
Entwicklung des DAX-Index ist also im Sinne unserer Definition zufällig. 
Wir wissen nicht, ob eine bestimmte Person im nächsten Jahr arbeitslos sein 
wird, aber wissen, dass sie es sein könnte oder auch nicht. Der
Arbeitslosigkeitsstatus dieser Person ist also ebenfalls zufällig im
Sinne unserer Defintion.

In den Wirtschaftswissenschaften betrachten wir oft Zufallsvorgänge, die
nicht unter identischen Bedingungen wiederholt werden können. In 
diesem Kurs werden wir aber zumindest am Beginn aus didaktischen
Gründen oft Zufallsvorgänge betrachten, die nichts mit wirtschaftlichen
Fragestellungen zu tun haben. Als Beispiele dienen oft Münzwürfe
oder Würfelwürfe. Solche Zufallsvorgänge, die sich unter praktisch
identischen Bedingungen wiederholen lassen, nennt man auch
Zufallsexperimente. 

Damit wir einen Zufallsvorgang präzise beschreiben können und vernünftig
mit ihm arbeiten können, brauchen wir einen formalen Rahmen. 
Die Wahrscheinlichkeitstheorie bietet einen solchen Rahmen. In
den folgenden Abschnitten lernen wir ihn kennen.

## Ergebnisraum

Um einen Zufallsvorgang formal zu erfassen, schreiben wir alle
möglichen Ergebnisse des Zufallsvorgangs in eine Menge. Dabei spielt
es keine Rolle, ob der Eintritt eines Ergebnisses als wahrscheinlich 
oder unwahrscheinlich angesehen wird. Alle Ergebnisse, die eintreten
können, werden in die Menge aufgenommen. 

Die Menge aller Ergebnisse nennen wir den **Ergebnisraum**. 
Der Ergebnisraum wird mit dem Symbol $\Omega$ (großes Omega) bezeichnet.
Die Elemente des Ergebnisraums werden allgemein als 
$\omega_1,\omega_2,\ldots$ (kleine Omegas) notiert.

**Beispiele:**

- Beim Werfen einer Münze kann es zu den beiden Ergebnissen "Kopf" (K)
oder "Zahl" (Z) kommen. Die Ergebnismenge hat also zwei Elemente:
$\Omega=\{K,Z\}$.

- Wenn die Münze zweimal geworfen wird (oder wenn zwei Münzen
geworfen werden), dann lautet die Ergebnismenge $\Omega=\{KK,KZ,ZK,ZZ\}$.

- Beim Werfen eines Würfels kann jede Augenzahl von 1 bis 6 auftreten,
die Ergebnismenge ist also $\Omega=\{1,2,3,4,5,6\}$.

- Der DAX-Index von morgen kann Werte zwischen 0 und unendlich annehmen.
Die Ergebnismenge ist in diesem Fall $\Omega=\mathbb{R}^+_0$ (die
Menge der nicht-negativen reellen Zahlen).




## Ereignisse
