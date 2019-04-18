\part{Praktická část}

# Zpracované slovotvorné sufixy

Cílem bakalářské práce bylo vytvořit elektronický slovník s definicemi založenými na derivačních rysech slovotvorně motivovaných slov ve formě mobilní aplikace, proto si v této kapitole praktické části popíšeme, jaké slovotvorné sufixy byly zpracovány a jakým způsobem probíhá proces tvoření slovotvorných definic. V druhé kapitole si pak rozebereme technickou část spolu s použitými technologiemi a popisem implementace samotné mobilní aplikace.

Při výběru slovotvorných typů ke zpracování byl brán zřetel na jejich frekvenci a produktivitu ve spojitosti s derivací u substantiv -- takovým nejvýraznějším typem jsou substantiva označující názvy živých bytostí podle jejich činností zakončená na sufix *-tel*, a ta spadají do slovotvorné třídy činitelských jmen. \parencite[17]{dokulil67} V této fázi je v předkládané aplikaci zpracován právě tento slovotvorný typ i s jeho rodovou alternativou *-telka*, jež má obdobné charakteristiky.   

## Slovotvorný typ -tel

### Charakteristika

Pro naše účely bylo důležité vybrat takový slovotvorný typ, u něhož se převážně shoduje slovotvorný a lexikální význam. Tato podmínka je zde splněna, protože z výzkumné práce Adriany Válkové (To jsem šplhoun, co? XXX) vyplývá, že z 1 129 zkoumaných lemmat zakončených příponou *-tel* pouze u 3,03 % z nich lexikální význam nahrazuje význam strukturní (to se týká převážně neživotných substantiv typu *jmenovatel*, *dělitel* atd.) a celkově je u 4,42 % lexikální význam obecnější (např.*vnímatel*\footnote{Význam slova vnímatel je dle SSJČ \parencite{ssjc} „kdo uvědoměle vnímá umělecké dílo“, zde došlo prokazatelně k lexikalizaci slovotvorného významu.}). Tento lingvistický výzkum byl založen na datech z korpusu SYNv6 a jednotlivé typy významů byly porovnávány prostřednictvím výkladových slovníků. citace{Adri-XXX}

Jak bylo již naznačeno, obecný význam činitelských jmen je podle Dokulila definován jako „názvy osob a živých bytostí vůbec podle povahy a druhu jejich činností“ \parencite[17]{dokulil67}. Sufix *-tel* tak vyjadřuje, že takto odvozený pojem je subjektem děje základového slovesa, s tím že nejčastěji jde o aktivní\footnote{To neplatí u substantiv trpitel, truchlitel a bydlitel, která jsou odvozena ze stavových sloves. \parencite[17]{dokulil67}} účast subjektu na ději (např. subjekt označen slovem *učitel* vykonává takovou činnost, kterou vyjadřuje sloveso *učit*, z něhož je výraz odvozený). U tohoto slovotvorného typu se typicky jedná o mužská životná substantiva, nicméně se najdou i výjimky v podobě neživotných substantiv (viz předchozí odstavec). \parencite{simandl2016}

Nejčastěji jsou substantiva tohoto slovotvorného typu odvozena od sloves nedokonavých (imperfektiv), ze zkoumaných 1129 lemmat je jich takto derivováno přibližně 74,3 %, navíc se určitá část substantiv vzniklých ze sloves dokonavých (perfektiv) chová tak, jako by byla odvozena z imperfektiv, jde typicky o názvy profesí (*zastoupit* --> *zastupitel*) a názvy osob, pro které je daná činnost typická, ale nejsou označovány za samostatné profese. (*chovat* --> *chovatel*). citace{Adri-XXX} Nicméně je zapotřebí poznamenat, že některá substantiva se mohou objevit v obou vidových podobách (např. *pojistitel* a *pojišťovatel* nebo *zhotovitel* a *zhotovovatel*). \parencite{simandl2016}

### Slovotvorná definice

Heslo derivačního slovníku se skládá ze tří částí, a to z definice v obecném slova smyslu, derivační informace a morfologické informace. Definice je tvořena částečnou slovotvornou analýzou (segmentace slova na slovotvornou bázi a formant/y) a samotnou slovotvornou definicí založenou na strukturním významu zadaného slova (ta je i v anglickém jazyce).

Slovotvorná definice je tvořena dvěma kroky, první fází je určení slovesného vidu fundujícího/motivující slovesa. Ten lze do určité míry vyextrahovat z derivační sítě DeriNet -- 
a to analýzou slovotvorného řetězce:

 - sloveso je perfektum, pokud řetězec obsahuje tutéž slovesnou formu v neprefigované podobě ve dvou předchozích slovotvorných krocích, mějme například řetězec *pracovat* (2. krok) --> *zpracovat* (1. krok) --> *zpracovatel* -- slovotvorná definice tak bude znít „ten, kdo zpracoval nebo zpracuje“;
 - sloveso je sekundární imperfektivum, pokud řetězec obsahuje rozdíl ve dvou předchozích slovotvorných krocích v rámci specifického sufixu u jedné slovesné formy, příkladem může být řetězec *pracovat* --> *zpracovat* (2. krok) --> *zpracovávat* (1. krok) --> *zpracovávatel* -- slovotvorná definice tak bude znít „ten, kdo zpracovává“;
 - sloveso je imperfektivum, pokud není perfektum a zároveň není sekundární imperfektivum, například *myslit* --> *myslitel* -- slovotvorná definice bude znít „ten, kdo myslí“.

Druhá fáze je tvorba samotné slovotvorné definice napříč různými slovesnými třídami, pro potřeby automatického zpracování jsme vytvářeli definice na základě vlastních podvzorů, které jsou popsány určitým regulárním výrazem viz pravidla níže:

 - *[\^ch]ovatel* --> je prefigované?
	-	ne --> „ten, kdo .\*uje“
	-	ano --> existuje ve slovotvorném řetězci sloveso ve tvaru *.\*it* nebo *.\*nout* nebo *[aá]t*?
		-	ano --> „ten, kdo .\*uje“
		-	ne --> „ten, kdo .\*oval nebo .\*uje“
 - *[\^o][iíyýaáy]vatel*