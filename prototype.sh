MYDIR=$(dirname $0)
PROT=$1-prototype.tar.gz

cp $MYDIR/prototypes/$PROT .
tar xzvf $PROT
mv $1 $2
rm $PROT
