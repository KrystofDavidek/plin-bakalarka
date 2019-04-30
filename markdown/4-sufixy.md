\part{Praktická část}

# Zpracované slovotvorné sufixy

Cílem bakalářské práce bylo vytvořit elektronický slovník s definicemi založenými na derivačních rysech slovotvorně motivovaných slov ve formě mobilní aplikace, proto si v této kapitole praktické části popíšeme, jaké slovotvorné sufixy byly zpracovány a jakým způsobem probíhá proces tvoření slovotvorných definic. V druhé kapitole si pak rozebereme technickou část spolu s návrhem a implementací samotné mobilní aplikace.

Při výběru slovotvorných typů ke zpracování byl brán zřetel na jejich frekvenci a produktivitu ve spojitosti s derivací u substantiv -- takovým nejvýraznějším typem jsou substantiva označující názvy živých bytostí podle jejich činností zakončená na sufix *-tel*, a ta spadají do slovotvorné třídy činitelských jmen. \parencite[17]{dokulil67} V této fázi je v předkládané aplikaci zpracován právě tento slovotvorný typ i s jeho rodovou alternativou *-telka*, jež má obdobné charakteristiky.   

## Slovotvorný typ -tel

### Charakteristika

Pro účely této bylo důležité vybrat takový slovotvorný typ, u něhož se převážně shoduje slovotvorný a lexikální význam. Tato podmínka je zde splněna, protože z 1 129 zkoumaných lemmat zakončených sufixem *-tel* pouze u 3,03 % z nich strukturní význam neodpovídá významu lexikálnímu (to se týká neživotných substantiv typu *jmenovatel* anebo takových substantiv, u nichž je jejich slovesný základ sporný, např. *datel*) a celkově je u 4,42 % strukturní význam obecnější (např. *vnímatel*\footnote{Význam slova vnímatel je dle SSJČ „kdo uvědoměle vnímá umělecké dílo“ \parencite{ssjc}, došlo tedy k zúžení lexikálního významu.}). Tento lingvistický výzkum byl založen na datech z korpusu SYNv6 a jednotlivé typy významů byly porovnávány prostřednictvím výkladových slovníků.  \parencite{adri}

Jak bylo již naznačeno, obecný význam činitelských jmen je podle Dokulila definován jako „názvy osob a živých bytostí vůbec podle povahy a druhu jejich činností“ \parencite[17]{dokulil67}. Sufix *-tel* tak vyjadřuje, že takto odvozený pojem je subjektem děje základového slovesa s tím, že nejčastěji jde o aktivní\footnote{To neplatí u substantiv trpitel, truchlitel a bydlitel, která jsou odvozena ze stavových sloves. \parencite[17]{dokulil67}} účast subjektu na ději (např. subjekt označen slovem *učitel* vykonává takovou činnost, kterou vyjadřuje sloveso *učit*, z něhož je výraz odvozený). U tohoto slovotvorného typu se typicky jedná o mužská životná substantiva, nicméně se najdou i výjimky v podobě neživotných substantiv (viz výše). \parencite{simandl2016}

Nejčastěji jsou substantiva tohoto slovotvorného typu odvozena od sloves nedokonavých (imperfektiv), ze zkoumaných 1129 lemmat je jich takto derivováno přibližně 74,3 %, navíc se určitá část substantiv vzniklých ze sloves dokonavých (perfektiv) chová tak, jako by byla odvozena z imperfektiv. Jde typicky o názvy profesí (*zastoupit* --> *zastupitel*) a názvy osob, pro které je daná činnost typická, ale nejsou označovány za samostatné profese (*chovat* --> *chovatel*). Navíc je možné sledovat progresivní tendenci produktivní V. slovesné třídy, v níž vznikají vedle tvarů utvořených z perfektivních sloves (*zhotovitel*) i tvary ze sloves imperfektivních (*zhotovovatel*).  \parencite{adri}

### Slovníkové heslo

Heslo derivačního slovníku se skládá ze tří částí:

- z definice v obecném slova smyslu;
- derivační informace;
- morfologické informace.

Definice je tvořena částečnou slovotvornou analýzou (segmentace slova na slovotvornou bázi a formant/y, například *učitel* --> *učit-tel*) a samotnou slovotvornou definicí založenou na strukturním významu zadaného slova.

#### Slovotvorná definice

Slovotvorná definice je utvářena prostřednictvím dvou po sobě jdoucích kroků -- v prvním kroku dochází k odhalení verbálního aspektu fundujícího/motivující slovesa a ve druhém se pak vstupnímu řetězci přiřazuje jedna z předem vytvořených definic. 

\hypertarget{prvni-faze}{%
\paragraph*{První fáze -- odhalení slovesného vidu}\label{prvni-faze}} 

 Verbální aspekt lze do určité míry vyextrahovat z derivační sítě DeriNet -- a to analýzou slovotvorného řetězce:

 - sloveso je perfektum: pokud řetězec obsahuje tutéž slovesnou formu v neprefigované podobě ve dvou předchozích slovotvorných krocích. Mějme například řetězec *pracovat* (2. krok) --> ***z**pracovat* (1. krok) --> *zpracovatel* -- slovotvorná definice tak bude znít „ten, kdo zpracoval nebo zpracuje“;
 - sloveso je sekundární imperfektivum: pokud řetězec obsahuje rozdíl ve dvou předchozích slovotvorných krocích v rámci specifického sufixu u jedné slovesné formy, příkladem může být řetězec *pracovat* --> *zpracovat* (2. krok) --> *zpraco**vá**vat* (1. krok) --> *zpracovávatel* -- slovotvorná definice tak bude znít „ten, kdo zpracovává“;
 - sloveso je imperfektivum: pokud není perfektum a zároveň není sekundární imperfektivum, například *myslit* --> *myslitel* -- slovotvorná definice je „ten, kdo myslí“.

\hypertarget{druha-faze}{%
\paragraph*{Druhá fáze -- přiřazení definice}\label{druha-faze}} 

Pro potřeby automatického zpracování jsme vytvářeli definice na základě vlastních podvzorů, které jsou popsány určitými regulárními výrazy, viz následující pravidla (dubletní varianty jsou označeny v kulatých závorkách):

 - [\^ch]\*ovatel\footnote{V tomto případě existují výjimky typu kl?ovatel, kdy zní definice u neprefigovaného slovesa „ten, kdo kl?ove (kl?ová)“ a u prefigovaného „ten, kdo .*kl?oval nebo .*kl?ove (.*kl?ová). Mezi tato slova patří .*snovatel, .*plovatel, .*kovatel a .*klovatel.} --> Je prefigované?
	-	ne --> „ten, kdo .\*uje“
	-	ano
		-	Existuje ve slovotvorném řetězci sloveso ve tvaru .\*ovat --> „ten, kdo .\*oval nebo .*uje“
		-	Existuje ve slovotvorném řetězci sloveso ve tvaru .\*it nebo .\*nout nebo .\*[aá]t? --> „ten, kdo .\*uje“
-	.\*chovatel --> Je prefigované?
	-	ne --> „ten, kdo .\*á“
	-	ano --> „ten, kdo .\*ten, kdo .\*al nebo .\*á“
- [\^o]\*\[iíyýaá\]vatel --> „ten, kdo .\*[íýá]vá“
- [\^o]\*ěvatel --> „ten, kdo .*ívá“
- .\*itel --> Je prefigované?
	-	ne
		-	Je sloveso ve tvaru .\*u.it? --> „ten, kdo .*u.í“
		-	Je sloveso ve tvaru  [\^u]\*[eěi]t? --> „ten, kdo .*í“
		-	Je sloveso ve tvaru  .\*u.ovat a existuje zároveň ve slovotvorném řetězci sloveso ve tvaru .\*ou.it? --> „ten, kdo .\*ou.il nebo .\*ou.í“
	- ano
		- Existuje ve slovotvorném řetězci sloveso ve tvaru .\*ou.it? --> „ten, kdo .\*ou.il nebo .\*ou.í“
		- Existuje ve slovotvorném řetězci sloveso ve tvaru .\*ovat a zároveň v řetězci neexistuje sloveso ve tvaru .\*it? --> „ten, kdo .\*oval“
		- Je sloveso ve tvaru .\*[eě]t? --> „ten, kdo .\*[eě]l nebo .\*í“
		- Je sloveso ve tvaru .\*[\^ou].\*it  --> „ten, kdo .\*il nebo .\*í“
- [\^zb]\*atel\footnote{Zde do výjimek u neprefigovaných podob spadají slova .*zobatel, .*hýbatel, .*kazatel a .*tazatel.} --> Je prefigované?
	- ne --> „ten, kdo .\*á“
	- ano --> „ten, kdo .\*al nebo .\*á“
- .\*zatel --> Je prefigované?
	- ne --> „ten, kdo .\*že“
	- ano --> ten, kdo .\*zal nebo .\*že“
- .\*batel --> Je prefigované?
	-  ne --> „ten, kdo .\*bá“ (.\*be)
	- ano --> „ten, kdo .\*bal nebo .\*bá“ (.\*be)
- p[ií]satel --> Je prefigované?
	- ne --> „ten, kdo píše“\footnote{U nejfrekventovanějších slovesných tvarů, u nichž v rámci jednoho slovotvorného kroku docházelo k výraznější hláskové alternaci, byla slovotvorná definice ručně specifikována -- jde například o sloveso přemoci, jehož derivátem je činitelské jméno přemožitel.}

Veškerá výše zmíněná pravidla jsou taktéž aplikovatelná na slovotvorný typ *-telka*, pro kterou je slovotvorná definice v obecné rovině: „ta, která .\*“. Pokud budeme mít například za vstup slovo *vybudovatelka*, tak jeho definice bude znít „ta, která vybudovala nebo vybuduje (vybudovat)“. Za definicí samotnou je v závorce uvedeno základové sloveso v infinitivním tvaru, z něhož bylo činitelské jméno derivováno.

Slovník vytváří slovotvorné definice i v anglickém jazyce, v rámci kterého je definice zobecněná na „someone who .\*“ s tím, že je na konci v závorce specifikováno, o jaký se jedná jedná rod. Příkladem může být znovu výraz *vybudovatelka* s anglickou definicí „someone who builds (feminine)“.

#### Derivační a morfologická informace

Kromě hlavní definice slovníkové heslo obsahuje ještě dodatečnou derivační a morfologickou informaci. První z nich obsahuje základové slovo, z něhož byl vstupní výraz odvozen, a typ derivačního procesu -- v případě tohoto slovotvorného typu se jedná o sufixaci.

Morfologická informace se pak skládá ze slovního druhu vstupního výrazu, z jeho rodu a z určitého morfologického paradigmatu, do něhož bylo slovo zařazeno.