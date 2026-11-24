// Looking for pronominal objects and RPs with non-finite verbs in IP-MAT, IP-SUB and IP-INF

node: IP*
//add_to_ignore: \**
define: manydefs12nov26.def
coding_query:


// Also added F variants for finite verbs to my local copy of the defs.
// Use all non-finite verbs, query for mainverbs first and then all nonfin verbs to catch the main verb uses (after V ones filtered out)
// Using double queries for the 2 relevant variables now to be safe; probably not needed given the filtering?

// Clausetype for the relevant instances
// The thing with the finite verb is causing problems here, because the search will not pick out coordinated structures where the main verb is elided....
1: {
    mat: (IP-MAT* idoms nonfin_mainverb) AND (IP-MAT* idoms object|RP|RP-H) AND (IP-MAT* idoms finite_aux) AND (finite_aux precedes object|RP|RP-H) AND (finite_aux precedes nonfin_mainverb)
    mat: (IP-MAT* idoms nonfin_verb) AND (IP-MAT* idoms object|RP|RP-H) AND (IP-MAT* idoms finite_aux) AND (finite_aux precedes object|RP|RP-H) AND (finite_aux precedes nonfin_verb)
    sub: (IP-SUB* idoms nonfin_mainverb) AND (IP-SUB* idoms object|RP|RP-H) AND (IP-SUB* idoms finite_aux) AND (finite_aux precedes object|RP|RP-H) AND (finite_aux precedes nonfin_mainverb)
    sub: (IP-SUB* idoms nonfin_verb) AND (IP-SUB* idoms object|RP|RP-H) AND (IP-SUB* idoms finite_aux) AND (finite_aux precedes object|RP|RP-H) AND (finite_aux precedes nonfin_verb)
    inf: (IP-INF* idoms nonfin_verb) AND (IP-INF* idoms object|RP|RP-H)
    ppl: (IP-PPL* idoms nonfin_verb) AND (IP-PPL* idoms object|RP|RP-H)
    z: ELSE

}

// Word order of object/RP and non-finite main verb
2: {
    badone: (IP* idoms object|RP|RP-H) AND (IP* idoms nonfin_verb) AND (object|RP|RP-H precedes nonfin_verb) AND (nonfin_verb precedes object|RP|RP-H)
    ov: (IP* idoms object|RP|RP-H) AND (IP* idoms nonfin_mainverb) AND (object|RP|RP-H precedes nonfin_mainverb)
    ov: (IP* idoms object|RP|RP-H) AND (IP* idoms nonfin_verb) AND (object|RP|RP-H precedes nonfin_verb)
    vo: (IP* idoms object|RP|RP-H) AND (IP* idoms nonfin_mainverb) AND (nonfin_mainverb precedes object|RP|RP-H)
    vo: (IP* idoms object|RP|RP-H) AND (IP* idoms nonfin_verb) AND (nonfin_verb precedes object|RP|RP-H)
    z: ELSE
}
// keep an eye on badones in case it picks up anything where the relevant thingies are between participle and inf



// Object vs RP status - also use this to get the right kinds of objects, as cannot define this with RP stuff together

3: {
    rp:  (IP* idoms object) AND (object idoms PRO*) AND (object idoms !D|ADJ*|N*|PP*|CONJ*) AND (IP* idoms RP|RP-H) AND (IP* idoms finite_aux) AND (pronoun precedes finite_aux)
    both: (IP* idoms object) AND (object idoms PRO*) AND (object idoms !D|ADJ*|N*|PP*|CONJ*) AND (IP* idoms RP|RP-H)
    object: (IP* idoms object) AND (object idoms PRO*) AND (object idoms !D|ADJ*|N*|PP*|CONJ*)
    rp: (IP* idoms RP|RP-H)
    z: ELSE
}
//not using idomsonly in case there are false starts inside the same constituent (e.g. z... zi), so trying to rule some other things out instead. Will this suffice?

// Added extra rp query at the start to filter out cases with pre-finite (topicalised?) pronominal objects that slip through with RPs.
// (without RP-H) without extra rp def: 280 OV:boths in PPCHY
// (without RP-H) with extra rp def: 196 OV:boths in PPCHY




//genre
// these are a bit messy, but can combine things later in R if needed

// 4: {
// 	nar: (*.NAR.* inID)
//    nar-trans: (*NAR-TRANS.* inID)
//    nar-bio: (*NAR-BIO.* inID)
//    nar-rel: (*NAR-REL.* inID)
//    nar-fic: (*NAR-FIC.* inID)
//    nar-folk: (*NAR-FOLK.* inID)
//    oth-bio: (*OTH-BIO.* inID)
// 	rel: (*.REL.* inID)
// 	bio: (*BIO.* inID)
// 	sci: (*SCI.* inID)
// 	law: (*LAW.* inID)
//    interv: (*.INT.* inID) // can't use int :)
// 	xxxgenre: ELSE
// }

// modality
// Since the genre stuff is a bit messy right now, I'll just add spoken vs written

4: {
    spoken: (*.INT.* inID)
    written: ELSE
}





// Years
// Brute force this for now.

5: {
// our corpus
    \1900: (*1900* inID)
    \1916: (*1916* inID)
    \1918: (*1918* inID)
    \1922: (*1922* inID)
    \1925: (*1925* inID)
    \1926: (*1926* inID)
    \1927: (*1927* inID)
    \1928: (*1928* inID)
    \1967: (*1967* inID)
    \1995: (*1995* inID)
    \1996: (*1996* inID)
    \1997: (*1997* inID)
    \2000: (*2000* inID)

//ppchy
    // \1413: (*1413* inID)
    // \1440: (*1440* inID)
    // \1450: (*1450* inID)
    // \1460: (*1460* inID)
    // \1463: (*1463* inID)
    // \1465: (*1465* inID)
    // \1469: (*1469* inID)
    // \1478: (*1478* inID)
	// \1507: (*1507* inID)
	// \1518: (*1518* inID)
	// \1534: (*1534* inID)
	// \1550: (*1550* inID)
    // \1555: (*1555* inID)
    // \1558: (*1558* inID)
    // \1559: (*1559* inID)
    // \1560: (*1560* inID)
    // \1569: (*1569* inID)
    // \1572: (*1572* inID)
    // \1573: (*1573* inID)
	// \1579: (*1579* inID)
	// \1579: (*1579* inID)
	// \1588: (*1588* inID)
	// \1589: (*1589* inID)
	// \1589: (*1589* inID)
	// \1590: (*1590* inID)
    // \1593: (*1593* inID)
    // \1597: (*1597* inID)
	// \1600: (*1600* inID)
    // \1605: (*1605* inID)
    // \1610: (*1610* inID)
    // \1611: (*1611* inID)
    // \1612: (*1612* inID)
    // \1614: (*1614* inID)
    // \1616: (*1616* inID)
	// \1619: (*1619* inID)
	// \1620: (*1620* inID)
	// \1624: (*1624* inID)
    // \1627: (*1627* inID)
    // \1629: (*1629* inID)
    // \1630: (*1630* inID)
    // \1631: (*1631* inID)
    // \1632: (*1632* inID)
    // \1633: (*1633* inID)
    // \1637: (*1637* inID)
    // \1638: (*1638* inID)
    // \1639: (*1639* inID)
    // \1640: (*1640* inID)
    // \1641: (*1641* inID)
    // \1642: (*1642* inID)
    // \1647: (*1647* inID)
    // \1648: (*1648* inID)
    // \1649: (*1649* inID)
    // \1650: (*1650* inID)
    // \1651: (*1651* inID)
    // \1652: (*1652* inID)
    // \1654: (*1654* inID)
    // \1656: (*1656* inID)
    // \1658: (*1658* inID)
    // \1660: (*1660* inID)
    // \1664: (*1664* inID)
    // \1665: (*1665* inID)
	// \1666: (*1666* inID)
    // \1669: (*1669* inID)
    // \1670: (*1670* inID)
	// \1671: (*1671* inID)
	// \1675: (*1675* inID)
    // \1676: (*1676* inID)
	// \1677: (*1677* inID)
    // \1679: (*1679* inID)
    // \1680: (*1680* inID)
    // \1683: (*1683* inID)
    // \1686: (*1686* inID)
    // \1689: (*1689* inID)
    // \1690: (*1690* inID)
	// \1692: (*1692* inID)
    // \1694: (*1694* inID)
	// \1697: (*1697* inID)
	// \1704: (*1704* inID)
	// \1705: (*1705* inID)
	// \1712: (*1712* inID)
	// \1716: (*1716* inID)
	// \1717: (*1717* inID)
	// \1723: (*1723* inID)
	// \1740: (*1740* inID)
	// \1743: (*1743* inID)
	// \1750: (*1750* inID)
	// \1783: (*1783* inID)
	// \1792: (*1792* inID)
	// \1798: (*1798* inID)
	// \1800: (*1800* inID)
	// \1815: (*1815* inID)
	// \1818: (*1818* inID)
	// \1819: (*1819* inID)
	// \1819: (*1819* inID)
	// \1834: (*1834* inID)
	// \1834: (*1834* inID)
	// \1848: (*1848* inID)
	// \1910: (*1910* inID)
	// \1927: (*1927* inID)
	// \1927: (*1927* inID)
	// \1928: (*1928* inID)
	// \1928: (*1928* inID)
	// \1928: (*1928* inID)
	// \1929: (*1929* inID)
	// \1929: (*1929* inID)
	// \1929: (*1929* inID)
	// \1929: (*1929* inID)
	// \1929: (*1929* inID)
	// \1932: (*1932* inID)
	// \1944: (*1944* inID)
	// \1946: (*1946* inID)
	// \1947: (*1947* inID)
	// \1959: (*1959* inID)
	// \1959: (*19XX* inID) // the specific text (argentine) is from Chaim Grade's 1959 "Der mames Shabosim"

    z: ELSE

}


// Include which batch the data come from, in case I want to combine them in the same analysis

6: {
    ourcorpus: ELSE
//   ppchy: ELSE
}