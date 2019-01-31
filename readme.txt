========================================================================


========================================================================
Running on Matlab 

Input : A test image loaded in an array, Image distortion type parameter
        Image distortion type parameter: If the input image is a synthetically distorted image, input 1 as the second parameter
        Else, The input image is a theauthentically distorted image, ipnut 2 as the second parameter

Output: A quality score of the image. The score typically has a value
           between 0 and 100 (if evaluate the synthetic image: 0 represents the best quality, 100 the worst
                              if evaluate the authentic image: 0 represents the worst, 100 the best).
  
Usage:

Open the main.m

1. Load the image, for example

  img = imread('test.bmp');

2. Call this function to calculate the quality score:

    If The input image is a synthetically distorted image, 
    input 1 as the second parameter
         For example: score = pred_score(feats,1);
    Else, The input image is a theauthentically distorted image,
    ipnut 2 as the second parameter
         For example: score = pred_score(feats,2);

Dependencies: 

   Binaries: svm-predict.exe, svm-scale.exe (from LibSVM) - provided with release
   
   Image Files: test_aut(MOS=46.47).bmp, test_syn(DMOS=61.18).bmp ( Respectively from the LIVE IQA Database and the LIVE-C Database, neither of which is included in the training model)
   
   Data files: allmodel_aut, allmodel_syn, allrange_aut, allrange_syn (provided with release)

   MATLAB files: main.m, co_benford.m, co_energy_subband_ratio.m, co_frequency_varication.m, co_orientation1.m, co_orientation2.m, co_orientation3.m, ext_feats_DCT.m, param_asyggd.m, param_ggd.m, ext_feats_Spa.m, pred_score.m
   
=========================================================================



