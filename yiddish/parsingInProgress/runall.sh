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
echo "Fix lekh"
$CS ../../scripts/structure_building/fix-lekh.q $FILE > problemfile.txt
mv -f $FILE.out $FILE



mv -f $FILE $2

grep -a12 "WARNING" problemfile.txt

