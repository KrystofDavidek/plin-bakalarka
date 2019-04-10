
# Nástroje pro práci s derivací v českém prostředí

Na základě onomaziologické teorie Miloše Dokulila (a jeho následovníků) vzniklo nemalé množství počítačových programů, prostřednictvím kterých lze dosahovat různých výzkumných, edukačních či komerčních výsledků, proto si v první část této kapitoly popíšeme nejvýznamnější softwarové nástroje, které se využívají pro práci s derivací v českém prostředí. V druhé části si pak hlouběji představíme derivační síť Derinet, na níž je postaveno řešení praktické části této bakalářské práce.

## Přehled nástrojů

### Morfio

Webová aplikace Morfio je jedním z projektů Českého národního korpusu, která „slouží k odhadování rozsahu a produktivity slovotvorných modelů v češtině na základě korpusových dat“. Jde tedy o systém, který se snaží ve zvoleném korpusu najít takové n-tice slov, které se shodují určitým slovotvorným základem a liší se specifickým slovotvorným formantem (těch může být i více, navíc je zde reflektována problematika hláskových alternací.) Nástroj je tedy vhodný spíše jako výzkumná pomůcka než-li jako prostředek ke tvorbě relevantních lingvistických výstupů, protože při manipulaci s korpusovými daty, jež nejsou nijak sémanticky označkována, může docházet k chybám například z důvodu homonymie. \parencite{cvrcek13}

### Morfologické analyzátory Ajka

Dalším nástrojem je morfologický analyzátor Ajka, jehož hlavní složkou je analýza flektivní morfologie -- to znamená, že obsahuje rozsáhlý systém vzorů spolu se sadami určitých koncovek a morfologických značek. Ve webovém rozhraní je možnost vstupní text buď segmentovat na jednotlivé morfologické segmenty, analyzovat z pohledu určitého paradigmatu nebo vyhledat existující akcentovaný výraz (například vstup *blázen* a výstup *blažen*).  Nástroj nicméně akcentuje i složku derivační, a to ve formě hierarchického systému morfologických paradigmat, který slouží pro zachycení všech úrovní derivační morfologie. \parencite{ajka}

V průběhu času z potřeby efektivnějšího zpracování textu vznikl z morfologického analyzátoru Ajka nástroj Majka, který používá stejná jazyková data, ale kompletně proměnil jejich formát a stejně tak algoritmus, který nad nimi operuje -- tak bylo docíleno větší rychlosti zpracování. \parencite{majka}

### Deriv

### Derivancze

Prvním nástrojem, který zde uvádíme, je 
Něco hezkého \parencite[516]{pala15}

## Derivační síť Derinet
