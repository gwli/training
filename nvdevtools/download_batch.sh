TOP=`pwd`/..

#speech_recognition/download_data
sudo pip install wget

cd $TOP
for i in `find -iname download_data*`;
do 
echo $i;
dir=`dirname $i`
name=`basename $i`
cd $dir
sh $name
cd $TOP
done
