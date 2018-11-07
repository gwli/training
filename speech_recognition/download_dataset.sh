# Script to download Librispeech Dataset
#for script testing, only fetch minimal, clean dataset
sudo pip install wget
python data/librispeech.py #--files_to_use train-clean-100.tar.gz,dev-clean.tar.gz,test-clean.tar.gz
