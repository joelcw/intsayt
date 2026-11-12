CS="java -classpath $HOME/CS_2.003.04.jar csearch/CorpusSearch"

PPCHY="/home/nmk242/Corpora/penn-parsed-corpus-of-historical-yiddish/data/*.psd"
OURCORPUS="/home/nmk242/intsayt/yiddish/finished/*.psd"


rm outputs/marjuqueries.nodates.cod
$CS marjuqueries.c $PPCHY -out outputs/marjuqueries.nodates.cod
#$CS marjuqueries.c $OURCORPUS -out outputs/marjuqueries.nodates.cod
# comment out as appropriate; edit field 5 of query

echo "Added codes"

# TODO: fix the below (change file names if not doing the date and genre thing)

#If using dating script, edit the below (but might be easier with about files)
#mv outputs/marjuqueries.raw.cod outputs/marjuqueries.raw.cod.last
#$CS dateGenre.ice.c outputs/marjuqueries.nodates.cod -out outputs/marjuqueries.raw.cod

#echo "done with dating"


rm outputs/marjuqueries.nodates.cod.ooo #run without this if no file
$CS codes.q outputs/marjuqueries.nodates.cod

echo "Extracted codes"



python3 fixIdFormat.ice.py < outputs/marjuqueries.nodates.cod.ooo > outputs/marjuqueries.nodates.cod.ooo.tmp
mv outputs/marjuqueries.nodates.cod.ooo outputs/marjuqueries.nodates.cod.ooo.old
mv outputs/marjuqueries.nodates.cod.ooo.tmp outputs/marjuqueries.nodates.cod.ooo

echo "Fixed codes"

# then go and name the file based on what corpus I used