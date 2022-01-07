# Zufallsvorgänge {#zufall}

Was bedeutet eigentlich Zufall? Wann ist ein Vorgang zufällig?
Solche Fragen sind schwierig zu beantworten. Sie gehören eher in den
Bereich der Philosophie als der Wirtschaftswissenschaften und
wir werden uns nicht tiefergehend damit befassen. In diesem Kurs verstehen wir 
Zufall schlicht und einfach ganz pragmatisch: 

> Ein **Zufallsvorgang** (engl. random experiment) liegt dann vor, wenn wir
> zwar wissen, was passieren kann, aber nicht sicher wissen, was passieren 
> wird.

Zufallsvorgänge sind allgegenwärtig. Natürlich gehören dazu Glücksspiele.
Wir wissen, wo die Roulette-Kugel landen kann, aber wir wissen vor dem
Spiel nicht, auf welchem Feld sie letztlich liegen bleibt. Roulette ist
also ein Zufallsvorgang. 

<img src="images/roulette.jpg" width="100%" />

Wir wissen, welche Augenzahlen ein Würfel anzeigen
kann, aber vor dem Wurf wissen wir noch nicht, welche Augenzahl tatsächlich
angezeigt werden wird. Wir wissen, dass eine Münze Kopf oder Zahl zeigen
kann, aber wir wissen nicht, ob es Kopf sein wird oder Zahl. Bei einem
Pferderennen wissen wir, dass eines der Pferde zuerst im Ziel einlaufen
wird, aber wir wissen nicht, welches Pferd das sein wird. Alle diese
Vorgänge sind also Zufallsvorgänge. 

In diesem Kurs werden wir häufig Beispiele mit Würfeln oder Münzen 
betrachten. Der Grund dafür ist nicht, dass diese Beispiele in den
Wirtschaftswissenschaften besonders wichtig sind, sondern dass sie 
relativ einfach zu untersuchen sind und darum beim Einstieg in das
Thema didaktisch hilfreich sein können. 

In den Wirtschaftswissenschaften haben wir es jedoch auch sehr oft
mit Zufallsvorgängen zu tun. 

- Wenn wir unter Studierenden eine Umfrage zur Wohnsituation durchführen, 
  wissen wir zwar, welche Antworten die Befragten geben können
  (z.B. bei den Eltern, in einer WG, eigene Wohnung, Wohnheim etc.), 
  aber wir wissen nicht, welche Antworten zufällig ausgewählte 
  Studierende tatsächlich geben werden. 

- Wir wissen, welche Rendite eine Aktie am kommenden Börsentag haben
  könnte, aber wir wissen nicht, wie die Aktie sich dann wirklich
  entwickelt.

- Wir wissen, wie lange eine Person, die gerade arbeitslos geworden ist,
  arbeitslos bleiben könnte, aber wir wissen nicht, wie lange sie
  tatsächlich arbeitslos sein wird.

- Wenn ein Kunde den Supermarkt betritt, wissen wir, welche Produkte
  er kaufen könnte, aber nicht, welche er wirklich kaufen wird.

- Wir wissen, wie hoch das Bruttoinlandsprodukt im kommenden Jahr sein
  könnte, aber wir wissen nicht, wie hoch die Wachstumsrate tatsächlich
  sein wird.

- Bei einer Qualitätskontrolle wird ein neu hergestelltes Werkstück
  ausgemessen. Jede Messung unterliegt einem mehr oder weniger großen
  Messfehler. Wie wissen zwar, wie groß der Fehler sein könnte, aber
  wie groß er tatsächlich ist, wissen wir nicht.

Diese Beispiele zeigen, dass der Zufall in den Wirtschaftswissenschaften
eine sehr wichtige Rolle spielt. Es fällt leicht sich weitere Beispiele
auszudenken. Es ist eher schwierig, sich Vorgänge zu überlegen, bei
denen der Zufall keine Rolle spielt. 

Aus Sicht der Ökonomik ist der Zufall nicht objektiv, sondern subjektiv.
Es kann durchaus passieren, dass ein und derselbe Vorgang für eine
Person ein Zufallsvorgang ist, für eine andere Person dagegen nicht.
Zum Beispiel weiß der Kunde, der den Supermarkt betritt, selber vielleicht
schon genau und sicher, was er einkaufen wird. Die Filialleitung, die das
Kundenverhalten beobachtet, weiß es dagegen nicht. Für die Filialleitung ist
der Kauf des Kunden also ein Zufallsvorgang, für den Kunden aber nicht.

Hinweis: In manchen Einführungen zur Wahrscheinlichkeitstheorie wird 
zusätzlich gefordert, dass der Zufallsvorgang unter identischen Bedingungen
beliebig oft wiederholt werden kann. Das ist bei den Glücksspielen
(z.B. einem Würfelwurf) keine schwerwiegende Annahme. In den 
Wirtschaftswissenschaften sind die Vorgänge dagegen im Allgemeinen
nicht unter identischen Bedingungen wiederholbar. Darum fordern wir
in unserer Definition von Zufallsvorgängen die Wiederholbarkeit
ausdrücklich nicht.

Damit man mit Zufallsvorgängen rational umgehen kann, ist es nützlich,
das Vorgehen zu vereinheitlichen und von den konkreten Anwendungen
zu abstrahieren. Das werden wir in den folgenden Abschnitten und Kapiteln
tun. Wenn die abstrakten Konzepte dann auf einfache konkrete Einzelfälle
angewendet werden, wirkt es manchmal etwas umständlich und kompliziert. 
Davon sollte man sich nicht irritieren lassen.

## Ergebnismenge

Wie wir bereits gesehen haben, ist bei einem Zufallsvorgang von vornherein
bekannt, was alles passieren kann bzw. welche möglichen Ergebnisse
eintreten können. Die möglichen Ergebnisse (engl. outcomes) werden zu einer 
Menge zusammengefasst, die "Ergebnismenge" genannt und mit dem
griechischen Buchstaben $\Omega$ (Groß-Omega) bezeichnet wird.

> Die **Ergebnismenge** $\Omega$ (engl. sample space) enthält alle möglichen 
> Ergebnisse des Zufallsvorgangs.

Wenn wir abstrakt über einzelne Elemente der Ergebnismenge schreiben oder
reden, nennen wir die Elemente $\omega_1, \omega_2, \ldots$ (das sind 
Klein-Omegas).

In den meisten Fällen gibt es nur eine naheliegende natürliche Möglichkeit, die
Ergebnismenge aufzuschreiben. Das muss aber nicht so sein, manchmal gibt
es mehrere Möglichkeiten. Man sollte die Ergebnismenge immer so wählen,
dass es möglichst einfach ist, mit ihr zu arbeiten. Wir kommen darauf
an späterer Stelle (in Kapitel \@ref(wahrscheinlichkeit) noch einmal 
ausführlicher zurück.

**Beispiele:**

- Eine Münze wird geworfen. Sie kann Kopf (K) oder Zahl (Z) zeigen. Die 
  natürliche Ergebnismenge ist $\Omega=\{K, Z\}$. Es wäre zwar erlaubt, 
  in die Ergebnismenge auch Ergebnisse aufzunehmen, die gar nicht eintreten
  können, aber das wäre unnötig umständlich und sinnlos. 

- Ein Würfel wird geworfen. Die Ergebnismenge ist $\Omega=\{1,2,3,4,5,6\}$.

- Zwei gleich aussehende Würfel werden geworfen. Hier gibt es zwei 
  auf den ersten Blick naheliegende Möglichkeiten, die Ergebnismenge
  festzulegen. Zum einen (die beiden Ziffern sollen die beiden
  Augenzahlen anzeigen, beispielsweise ist mit "43" gemeint, dass
  der erste Würfel eine 4 und der zweite eine 3 zeigt)
$$
\begin{align*}
\Omega=\{&11,12,13,14,15,16,\\
&21,22,23,24,25,26,\\
&31,32,33,34,35,36,\\
&41,42,43,44,45,46,\\
&51,52,53,54,55,56,\\
&61,62,63,64,65,66\}
\end{align*}
$$
  Zum anderen könnte man argumentieren, dass die Würfel nicht unterscheidbar
  sind und dass darum "43" und "34" eigentlich gleich sind. Dann wäre die
  Ergebnismenge
$$
\begin{align*}
\Omega=\{
&11,12,13,14,15,16,\\
&22,23,24,25,26,\\
&33,34,35,36,\\
&44,45,46,\\
&55,56,\\
&66\}
\end{align*}
$$
  Wir werden später sehen, dass es viel einfacher und intuitiver ist, 
  Wahrscheinlichkeiten zu bestimmen, wenn man die erste Möglichkeit wählt.
  Das Beispiel zeigt dennoch, dass die Wahl der "richtigen" Ergebnismenge 
  nicht immer eindeutig klar ist.

- Bei einer Umfrage zur Wohnsituation von Studierenden enthält die
  Ergebnismenge $\Omega$ für eine befragte Person alle möglichen Antworten, 
  also z.B. "bei den Eltern", "in einer WG", "alleine in einer Wohnung", "mit 
  Partner/in" und "in einem Wohnheim".

- Die Rendite einer Aktie von heute auf morgen (in Prozent) ist zufällig. 
  Die Werte, die angenommen werden können, liegen alle zwischen $-100\%$ 
  (denn mehr als alles kann man bei Aktien wegen der Haftungsgrenze der Aktionäre 
  nicht verlieren) und unendlich, d.h. $\Omega=[-100, \infty]$. Es spielt
  hier keine Rolle, dass extreme Renditen von mehr als 10 Prozent Gewinn oder
  Verlust pro Tag sehr selten auftreten. Sie sind denkbar und
  gehören darum in die Ergebnismenge hinein.

## Ereignisse

Aussagen über Wahrscheinlichkeiten beziehen sich nicht immer nur auf 
einzelne Ergebnisse aus der Ergebnismenge, sondern oft auf mehrere
Ergebnisse. Zusammenfassungen von Ergebnissen nennt man Ereignisse
(engl. events). Sie werden meist mit großen lateinischen Buchstaben 
bezeichnet ($A, B, \ldots$).

> Teilmengen der Ergebnismenge $\Omega$ heißen **Ereignisse**.
> Ein Ereignis $A$ tritt ein, wenn das Ergebnis $\omega$ des 
> Zufallsvorgangs Element des Ereignisses ist, d.h.
> wenn $\omega\in A$.

Zu den Ereignissen gehören auch die leere Menge $\emptyset$ und
$\Omega$ selber. Das Ereignis $\emptyset$ nennt man das 
**unmögliche Ereignis**, weil es nie eintreten kann. Das Ereignis $\Omega$ 
nennt man das **sichere Ereignis**, weil es mit Sicherheit eintritt. Wenn ein
Ereignis nur ein einziges Ergebnis enthält (z.B. $A=\{\omega\}$),
dann spricht man von einem **Elementarereignis**.

Weil Ereignisse Mengen sind, lassen sie sich nach den normalen
Regeln der Mengenlehre verknüpfen:

- Vereinigungsmenge: Das Ereignis $A\cup B$ tritt ein, wenn $A$
  **oder** $B$ eintritt (oder beide).

- Schnittmenge: Das Ereignis $A\cap B$ tritt ein, wenn $A$ **und**
  $B$ eintreten.

- Komplementärmenge: Das Ereignis $\bar A$ tritt ein, wenn $A$ 
  **nicht** eintritt.

Bei einem Zufallsvorgang tritt immer nur ein Ergebnis ein, da aber dieses
Ergebnis Element mehrerer Ereignisse sein kann, können durchaus mehrere
Ereignisse eintreten. Die Unterscheidung zwischen Ergebnis und Ereignis
mag zunächst etwas haarspalterisch erscheinen, sie ist aber wichtig und
nützlich, denn sie erleichtert später den Umgang mit Wahrscheinlichkeiten.
Über Wahrscheinlichkeiten wurde bisher noch nichts gesagt, das folgt
direkt im nächsten Kapitel.

**Beispiele:**

- Wir betrachten einen Würfelwurf mit der Ergebnismenge 
  $\Omega=\{1,2,3,4,5,6\}$ und definieren die folgenden drei
  Ereignisse:
$$
\begin{align*}
A &= \{2,4,6\}\\
B &= \{1,2,3\}\\
C &= \{2\}
\end{align*}
$$
  Die Ereignisse lassen sich auch in Worten ausdrücken: $A$ ist das
  Ereignis "Eine gerade Zahl wird gewürfelt", $B$ ist "Eine Zahl kleiner
  als 4 wird gewürfelt" und $C$ ist "Eine 2 wird gewürfelt". Wenn bei dem
  Wurf nun eine 6 gewürfelt wird, dann tritt $A$ ein, $B$ und $C$ dagegen 
  nicht. Wenn eine 2 auftritt, dann treten alle drei Ereignisse ein. 

- Nun werden zwei Würfel geworfen. Die Ergebnismenge ist
$$
\begin{align*}
\Omega=\{&11,12,13,14,15,16,\\
&21,22,23,24,25,26,\\
&31,32,33,34,35,36,\\
&41,42,43,44,45,46,\\
&51,52,53,54,55,56,\\
&61,62,63,64,65,66\}
\end{align*}
$$
  Wir betrachten die drei Ereignisse 
$$
\begin{align*}
A &= \{11,12,13,14,15,16\}\\
B &= \{26,35,44,53,62\}\\
C &= \{11,22,33,44,55,66\}
\end{align*}
$$
  In Worten bedeutet $A$: "Der erste Würfel zeigt eine 1",
  $B$: "Die Augensumme beträgt 8" und $C$: "Es liegt ein Pasch vor" (d.h. auf
  beiden Würfel ist die gleiche Augenzahl zu sehen). Wenn nach dem Wurf das
  Ergebnis "44" auftritt, dann treten $B$ und $C$ ein, aber $A$ nicht. Bei
  dem Ergebnis "25" tritt keins der drei Ereignisse ein. Bei "15" tritt nur
  $A$ ein.

- Wir betrachten die Tagesrendite einer Aktie mit der Ergebnismenge
  $\Omega=[-100, \infty]$. Außerdem definieren wir die Ereignisse
$$
\begin{align*}
A &= [-100, -20]\\
B &= [-2,2]\\
C &= [-100,-10]\cup [10,\infty].
\end{align*}
$$
  In Worten könnte man diese Ereignisse so ausdrücken: $A$: "Ein katastrophaler
  Absturz der Aktie", $B$: "Eine normale Tagesrendite" und $C$: "Eine sehr
  starke Schwankung". Wenn die realisierte Tagesrendite dann 1 Prozent ist,
  tritt nur $B$ ein. Wenn der Kurs um 25 Prozent fällt, treten $A$ und $C$
  auf.

Die Kardinalität der Ergebnismenge bezeichnen wir mit $|\Omega|$. Wenn
$\Omega$ nur endlich viele Elemente hat, ist die Kardinalität schlicht und
einfach die Anzahl der Elemente. Es ist aber auch möglich (und in vielen
ökonomischen Anwendungen auch üblich), dass die Ergebnismenge unendlich
viele Elemente enthält. In solchen Fällen kann es zu einigen 
mathematisch-technischen Schwierigkeiten kommen, die wir in diesem Kurs
aber einfach ignorieren. Eine sorgfältigere Behandlung findet in dem
Wahlpflichtmodul "Advanced Statistics" statt. 
