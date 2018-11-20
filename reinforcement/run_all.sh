
#git clone https://github.com/mlperf/reference.git

### Steps to run and time

#To run, this assumes you checked out the repo into $HOME, adjust paths as necessary.

    cd reference/reinforcement/tensorflow/
    IMAGE=`sudo docker build . | tail -n 1 | awk '{print $3}'`
    SEED=1
    NOW=`date "+%F-%T"`
    sudo docker run --runtime=nvidia -t -i $IMAGE "./run_and_time.sh" $SEED | tee benchmark-$NOW.log
    
