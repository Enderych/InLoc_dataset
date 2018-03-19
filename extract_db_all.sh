
# a. cutouts
cutouts_url=""
wget $cutouts_url database/
tar -zxvf database/cutouts.tar.gz -C database/

# b. scans
scans_url=""
wget $scans_url database/
tar -zxvf database/scans.tar.gz -C database/
tar -xvf database/scans/CSE3.tar -C database/scans
tar -xvf database/scans/CSE4.tar -C database/scans
tar -xvf database/scans/CSE5.tar -C database/scans
tar -xvf database/scans/DUC1.tar -C database/scans
tar -xvf database/scans/DUC2.tar -C database/scans

# c. alignments
src="database/alignments/zips"
dst="database/alignments"

for this_zip in `ls $src/*.zip`
do
this_dir=`basename ${this_zip%.zip}`
unzip -d $dst"/"$this_dir $this_zip
done