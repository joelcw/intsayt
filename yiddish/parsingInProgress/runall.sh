CS="java -classpath ../../scripts/CS_2.003.04.jar csearch/CorpusSearch"

cp $1 temp.psd
FILE="temp.psd"
rm problemfile.txt

echo ""
echo "Fix Labels"
python ../../scripts/pycConversions.py < $FILE > $FILE.out
mv -f $FILE.out $FILE

echo ""
echo "Add Cs"
$CS ../../scripts/structure_building/add-c.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Add trace for CP-RELs"
$CS ../../scripts/structure_building/add-rel-trace.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix lekh"
$CS ../../scripts/structure_building/fix-lekh.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix zikh"
$CS ../../scripts/structure_building/fix-zikh.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix mer"
$CS ../../scripts/structure_building/fix-mer.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix do"
$CS ../../scripts/structure_building/fix-do.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix shoyn"
$CS ../../scripts/structure_building/fix-shoyn.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix vi"
$CS ../../scripts/structure_building/fix-vi.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Fix other diagn"
$CS ../../scripts/structure_building/fix-diagn.q $FILE > problemfile.txt
mv -f $FILE.out $FILE

echo ""
echo "Add PRD to NPs in copular clauses"
$CS ../../scripts/structure_building/add-prd.q $FILE > problemfile.txt
mv -f $FILE.out $FILE


mv -f $FILE $2

grep -a12 "WARNING" problemfile.txt

