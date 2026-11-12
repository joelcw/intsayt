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

4: {
	nar: (*.NAR.* inID)
    nar-trans: (*NAR-TRANS.* inID)
    nar-bio: (*NAR-BIO.* inID)
    nar-rel: (*NAR-REL.* inID)
    nar-fic: (*NAR-FIC.* inID)
    nar-folk: (*NAR-FOLK.* inID)
    oth-bio: (*OTH-BIO.* inID)
	rel: (*.REL.* inID)
	bio: (*BIO.* inID)
	sci: (*SCI.* inID)
	law: (*LAW.* inID)
    interv: (*.INT.* inID) // can't use int :)
	xxxgenre: ELSE
}


// Include which batch the data come from, in case I want to combine them in the same analysis

5: {
//    ourcorpus: ELSE
  ppchy: ELSE
}



// figure out adding years
// look at about files from Beatrice and add them to the brute force list; the same for OurCorpus
