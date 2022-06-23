#!/bin/bash

#export yagis=(18 19)
#export ports=(25004 25005 25006 25007 25008 25009 25010 25011 25012 25013 25014 25015 25016)
export yagis=(18 20 18 20)
export ports=(25004 25005 25006 25007 25008)

export pcts=(0.1 0.3 0.5 0.7 1.0) # lambda adv

count=0
flag=0
yagi=18

for((i=0;i<${#pcts[@]};i++)) do

    export pct=${pcts[i]}
    export port=${ports[i]}

    config=sss_${pct}_pretrain_cls_9_10_11

    bash akiu_train.sh $port $config $yagi
    echo submitted $config to $yagi port $port

    ((count++))
    if [ $(( $count % 2 )) = 0 ]
    then
        ((flag++))
        yagi=${yagis[flag]}
    fi

done;

echo submitted $count tasks
