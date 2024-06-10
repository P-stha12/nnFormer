#!/bin/bash


while getopts 'c:n:t:r:p' OPT; do
    case $OPT in
        c) cuda=$OPTARG;;
        n) name=$OPTARG;;
		t) task=$OPTARG;;
        r) train="true";;
        p) predict="true";;
        
    esac
done
echo $name	



	
cd /content/nnFormer/nnformer
CUDA_VISIBLE_DEVICES=${cuda} nnFormer_train ${name} ${task} 0





