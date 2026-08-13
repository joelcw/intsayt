CS="java -classpath ../../scripts/CS_2.003.04.jar csearch/CorpusSearch"

tempfile="temp.psd"
cp -f $1.psd $tempfile

echo ""
echo "Two subjects"
$CS ../../scripts/sanity_checks/2sbj.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Two objects with the same label"
$CS ../../scripts/sanity_checks/bad-double-obj1.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Two objects with the same label"
$CS ../../scripts/sanity_checks/bad-double-obj2.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Two finite verbs in the same IP"
$CS ../../scripts/sanity_checks/2finite.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Infinitive without IP-INF 1"
$CS ../../scripts/sanity_checks/bad-inf1.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Infinitive without IP-INF 2"
$CS ../../scripts/sanity_checks/bad-inf2.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing subject"
$CS ../../scripts/sanity_checks/missing-subject-2.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing Finite Verb"
$CS ../../scripts/sanity_checks/bad-finite-ip.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing Finite Verb"
$CS ../../scripts/sanity_checks/bad-finite-ip2.q $tempfile
mv -f $tempfile.out $tempfile

#the following query should run before the SPE queries

echo ""
echo "Missing C in embedded CP-QUE"
$CS ../../scripts/sanity_checks/missing-c-cpque.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Add missing SPE"
$CS ../../scripts/sanity_checks/add-spe.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing SPE"
$CS ../../scripts/sanity_checks/missing-spe.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Superfluous ADJP"
$CS ../../scripts/sanity_checks/superfluous-adjp.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing CP"
$CS ../../scripts/sanity_checks/missing-cp.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Add a Missing C automatically"
$CS ../../scripts/sanity_checks/add-c2.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing C"
$CS ../../scripts/sanity_checks/missing-c.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing P"
$CS ../../scripts/sanity_checks/missing-p.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing WXP"
$CS ../../scripts/sanity_checks/missing-wxp.q $tempfile
mv -f $tempfile.out $tempfile

#Bad IP-MAT must come after Missing C

echo ""
echo "Bad IP-MAT"
$CS ../../scripts/sanity_checks/bad-ipmat.q $tempfile
mv -f $tempfile.out $tempfile

#echo ""
#echo "Bad CONJ"
#$CS ../../scripts/sanity_checks/bad-conj.q $tempfile
#mv -f $tempfile.out $tempfile

#echo ""
#echo "Bad CONJ-2"
#$CS ../../scripts/sanity_checks/bad-conj-2.q $tempfile
#mv -f $tempfile.out $tempfile

#echo ""
#echo "Bad CONJ-3"
#$CS ../../scripts/sanity_checks/bad-conj-3.q $tempfile
#mv -f $tempfile.out $tempfile

echo ""
echo "Branching CONJ"
$CS ../../scripts/sanity_checks/branching-conj.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing NP-PRN"
$CS ../../scripts/sanity_checks/missing-np-prn.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bare ADJP at IP level"
$CS ../../scripts/sanity_checks/bad-bare-adjp-1.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bare NP-PRN at IP level"
$CS ../../scripts/sanity_checks/bad-npprn.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad IP daughter"
$CS ../../scripts/sanity_checks/bad-ip-daughter.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad ADV at IP level"
$CS ../../scripts/sanity_checks/bad-adv.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad argument"
$CS ../../scripts/sanity_checks/bad-argument.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Verb appearing at CP level"
$CS ../../scripts/sanity_checks/missing-ip.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad bare QP"
$CS ../../scripts/sanity_checks/bad-bare-qp.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad CP-FRL"
$CS ../../scripts/sanity_checks/bad-cp-frl-1.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad CP-THT-PRN"
$CS ../../scripts/sanity_checks/bad-cp-tht-prn.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad CP-ADV"
$CS ../../scripts/sanity_checks/bad-cp-adv.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad CP-REL"
$CS ../../scripts/sanity_checks/bad-cp-rel.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad Passive Participle"
$CS ../../scripts/sanity_checks/bad-passive.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "SMC with TO"
$CS ../../scripts/sanity_checks/smc-with-to.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "RSP no LFD"
$CS ../../scripts/sanity_checks/rsp-no-lfd.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Missing index"
$CS ../../scripts/sanity_checks/missing-index-3.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad *ICH* trace"
$CS ../../scripts/sanity_checks/bad-ich-trace.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad *T* trace"
$CS ../../scripts/sanity_checks/bad-t-trace.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad WPRO"
$CS ../../scripts/sanity_checks/bad-wpro.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad HVER"
$CS ../../scripts/sanity_checks/bad-hver.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad HVER2"
$CS ../../scripts/sanity_checks/bad-hver2.q $tempfile
mv -f $tempfile.out $tempfile

#echo ""
#echo "Missing antecedent"
#$CS ../../scripts/sanity_checks/missing-antecedent.q $tempfile
#mv -f $tempfile.out $tempfile

# NP stuff

echo ""
echo "Nonbranching NP"
$CS ../../scripts/sanity_checks/nonbranching-np.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Case agreement error"
$CS ../../scripts/sanity_checks/case-agreement-error.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad NP-PRD"
$CS ../../scripts/sanity_checks/bad-np-prd.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad NP-VOC"
$CS ../../scripts/sanity_checks/bad-np-voc.q $tempfile
mv -f $tempfile.out $tempfile

# PP stuff

echo ""
echo "Bad PP complement"
$CS ../../scripts/sanity_checks/bad-pp-complement-1.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad PP case"
$CS ../../scripts/sanity_checks/bad-pp-case.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad PP case 2"
$CS ../../scripts/sanity_checks/bad-pp-case2.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Nonbranching PP"
$CS ../../scripts/sanity_checks/nonbranching-pp.q $tempfile
mv -f $tempfile.out $tempfile


echo ""
echo "Missing NP-POS"
$CS ../../scripts/sanity_checks/missing-np-pos.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "missing-genitive-under-np-pos"
$CS ../../scripts/sanity_checks/missing-genitive-under-np-pos.q $tempfile
mv -f $tempfile.out $tempfile

#echo ""
#echo "Verb iDoms not lemma ending with a"
#$CS ../../scripts/sanity_checks/v-idoms-ur.q $tempfile
#mv -f $tempfile.out $tempfile

echo ""
echo "wrong order of PRN and SPE"
$CS ../../scripts/sanity_checks/PRN-SPE-wrongly.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "IP-SMC iDominating verb"
$CS ../../scripts/sanity_checks/smc-with-verb.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad *T*-trace insed IP-INF"
$CS ../../scripts/sanity_checks/bad-ip-inf-t-trace.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "wrong order of LFD and SPE"
$CS ../../scripts/sanity_checks/LFD-SPE-wrongly.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad ADVP"
$CS ../../scripts/sanity_checks/bad-advp.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "Bad Passive2"
$CS ../../scripts/sanity_checks/bad-passive2.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "New Passive"
$CS ../../scripts/sanity_checks/new-passive.q $tempfile
mv -f $tempfile.out $tempfile

#echo ""
#echo "Bad NP-OB1-1"
#$CS ../../scripts/sanity_checks/bad-ob1-1.q $tempfile
#mv -f $tempfile.out $tempfile

echo ""
echo "Missing index2"
$CS ../../scripts/sanity_checks/missing-index-4.q $tempfile 
mv -f $tempfile.out $tempfile

echo ""
echo "Bad VB*"
$CS ../../scripts/sanity_checks/bad-vb.q $tempfile
mv -f $tempfile.out $tempfile

echo ""
echo "BAD NP-TMP CASE"
$CS ../../scripts/sanity_checks/bad-np-tmp.q $tempfile
mv -f $tempfile.out $tempfile

mv -f $tempfile $1.sanity.psd
