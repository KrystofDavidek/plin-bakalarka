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

Součástí zadání také bylo to, aby všechny funkcionality mobilní aplikace byly kompletně funkční bez připojení k internetu -- tím párem nebylo zapotřebí řešit autentifikaci uživatele\footnote{Nicméně je tato možnost stále v řešení, a to pro případ, kdybychom v aplikaci chtěli nabídnout možnost ukládání již naučených hesel do osobního adresáře atd.} či pracovat se vzdálenými uložištěmi.

## Návrh aplikace

Na začátku samotného vývoje si je zapotřebí určit několik věci, v našem případě jde primárně o:

- zvolení vhodných technologií včetně programovacího jazyka, kterými budeme nástroj implementovat; 
- výběr dat a jejich struktury, nad kterými budeme v rámci aplikace operovat;
- návrh jednotlivých obrazovek aplikace a navigaci mezi nimi (včetně konkrétních přechodů).
 
### Použité technologie

Tradiční způsob vývoje mobilních aplikací se obecně dělí na tři hlavní typy -- jde o takzvané webové, nativní a hybridní aplikace. Každý z těchto přístupů má svá vlastní pozitiva a negativa, a tedy si je zapotřebí na začátku každého vývoje určit, pro jaké účely má daná aplikace sloužit a jaké funkcionality splňovat.

Webové aplikace fungují typicky na všech platformách a jsou založeny na klasických webových technologiích, tzn. na HTML, CSS a na programovacím jazyce JavaScript (viz následující podkapitola), jedná se tedy o přizpůsobené webové stránky, z čehož vyplývá potřeba internetového připojení. Výhodou tohoto přístupu je kromě již zmíněné multiplatformní povahy ukládání dat na webových serverech, tyto aplikace tak nevyžadují velké množství paměti na lokálním uložišti. Za hlavní negativum je považována nižší kompatibilita s hardwarem a operačním systémem u daných mobilních zařízení.

Na druhou stranu nativní aplikace jsou vyvíjeny pouze pro jednu specifickou platformu, to znamená, že například aplikaci vytvořenou pro systém Android nelze spustit na systému iOS a naopak. Z tohoto přístupu vyplývají výhody ve formě maximálního využití daného operačního systému (větší výkon, kompatibilita, uživatelská zkušenosti, ...), ale i nevýhody týkající se nutnosti využívání specifických technologií určitého operačního systému (například pro operační systém iOS se využívá programovací jazyk Objective-C (nově Swift), pro Android je určen jazyk Java).

Posledním typem jsou pak hybridní aplikace, které kombinují oba předešlé přístupy -- vývoj probíhá ve specializovaném nástroji za použití webových technologií, v rámci kterého se testuje logika jednotlivých funkcionalit. Po jeho dokončení dochází ke kompilaci do vybraného operačního systému, v rámci kterého se již pracuje s klasickými nativními funkcemi (například s mikrofonem, fotoaparátem, lokálním uložištěm v telefonu atd.). Výhoda hybridních aplikací je v jednoduchosti vývoje, který je v porovnání s nativním rychlý a snadný, a to i z toho důvodu, že se u něj pracuje pouze s jedním zdrojem kódu, který je použitelný na větším počtu platforem. Negativním aspektem je pak pomalejší výpočetní výkon, který je spojen s využitím speciálních knihoven pro převod do výsledné podoby mobilní aplikace.

Jelikož se v našem případě pracuje s minimem nativních funkcí, aplikace by měla být nezávislá na internetovém připojení a jde nám spíše o rozšíření nástroje napříč různými platformami, zvolíme hybridní formu vývoje. 

#### Webové technologie

#### Frameworky Ionic a Angular

### Volba dat

### Návrh obrazovek

## Implementace aplikace