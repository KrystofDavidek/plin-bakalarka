# Elektronický derivační slovník

V následující kapitole si představíme a následně popíšeme výsledek praktické části, a to nejprve v krátkosti po motivační stránce a posléze po stránce technické.

Derivační slovník je primárně koncipován jako edukační pomůcka pro cizince, kteří se učí češtinu jako druhý jazyk. Na rozdíl od rodilých mluvčí nedokáží cizinci podvědomě predikovat význam neznámých slov na základě slovotvorných morfému v určitých kontextech -- chybí jim tedy znalost významů určitých slovotvorných afixů, prostřednictvím kterých by si pak dokázali analogicky vyvodit význam slova neznámého.

Díky informacím z tohoto slovníku by tak studující mohli být schopni odhadnout významy například takových internacionalismů, které byly přejaty do slovotvorného systému českého jazyka pomocí sufixů. Taktéž se očekává intuitivnější chápání derivačních pravidel u cizinců, jejichž rodný jazyk patří do skupiny slovanských jazyků (z důvodu flektivního charakteru těchto jazyků).

## Požadavky na aplikaci

Primárním zadáním praktické části bylo vytvořit derivační slovník ve formě mobilní aplikace, který bude využívat slovotvorných informací z derivační sítě DeriNet. Dalším požadavkem, který vychází přímo z povahy samotného slovníku jakožto podpůrného nástroje pro výuku cizinců, bylo vyhledat a implementovat dvojjazyčný česko-anglický slovník, a to proto, aby byla celá aplikace včetně slovotvorných definic kompletně lokalizovaná v anglickém jazyce.

Požadavky na funkcionalitu slovníku jako takového můžeme ve stručnosti shrnout v několika bodech:

- funkce *insert word* --> vrátí se zadaného vstupu:
	- částečnou slovotvornou analýzu;
	- anglickou i českou definici založenou na strukturním významu slova (v případě že se takový ekvivalent bude nacházet ve vybraném česko-anglickém slovníku);
	- doplňující derivační a morfologické informace;
- heslář již zpracovaných slov ve formě rejstříku. 

Všechny funkcionality mobilní aplikace měly být kompletně funkční v offline režimu -- tím párem nebylo zapotřebí řešit autentifikaci uživatele\footnote{Nicméně je tato možnost stále v řešení, a to pro případ, kdybychom v aplikaci chtěli nabídnout možnost ukládání již naučených hesel do osobního adresáře atd.} či pracovat se vzdálenými uložištěmi.

## Návrh aplikace

Na začátku samotného vývoje si je zapotřebí určit několik věci, v našem případě jde primárně o:

- zvolení vhodných technologií včetně programovacího jazyka, kterými budeme nástroj implementovat; 
- výběr dat a jejich struktury, nad kterými budeme v rámci aplikace operovat;
- návrh jednotlivých obrazovek aplikace a navigaci mezi nimi (včetně konkrétních přechodů);
 
### Použité technologie

#### Hybridní mobilní aplikace

#### Webové technologie

#### Frameworky Ionic a Angular

### Volba dat

### Návrh obrazovek

## Implementace aplikace