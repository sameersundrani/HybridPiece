;FLAVOR:Marlin
;TIME:80
;Filament used: 0.00951461m
;Layer height: 0.2
;Generated with Cura_SteamEngine 3.6.0
M104 S200
M105
M109 S200
M82 ;absolute extrusion mode
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G28 ;move XYZ to min endstops
G1 Z15.0 F9000 ;move the platform down 15mm
G1 F9000
;Put printing message on LCD screen
M117 Printing...
G92 E0
;LAYER_COUNT:26
;LAYER:0
M107
G0 F600 X0.591 Y-7.626 Z0.2
;TYPE:SKIRT
G1 F450 X1.234 Y-7.581 E0.0097
G1 X1.866 Y-7.457 E0.01939
G1 X2.454 Y-7.266 E0.0287
G1 X3.141 Y-6.996 E0.0398
G1 X3.725 Y-6.723 E0.0495
G1 X4.453 Y-6.244 E0.06262
G1 X5.024 Y-5.795 E0.07355
G1 X5.505 Y-5.365 E0.08326
G1 X5.955 Y-4.847 E0.09358
G1 X6.289 Y-4.406 E0.10191
G1 X6.646 Y-3.868 E0.11163
G1 X6.933 Y-3.291 E0.12132
G1 X7.058 Y-2.965 E0.12658
G1 X7.382 Y-2.028 E0.1415
G1 X7.555 Y-1.407 E0.1512
G1 X7.662 Y-.579 E0.16376
G1 X7.682 Y-.164 E0.17001
G1 X7.673 Y0.48 E0.17971
G1 X7.609 Y0.99 E0.18744
G1 X7.49 Y1.664 E0.19774
G1 X7.339 Y2.291 E0.20745
G1 X7.124 Y2.865 E0.21667
G1 X6.904 Y3.362 E0.22485
G1 X6.607 Y3.934 E0.23455
G1 X6.038 Y4.709 E0.24902
G1 X5.389 Y5.44 E0.26373
G1 X4.932 Y5.895 E0.27343
G1 X4.253 Y6.4 E0.28616
G1 X3.886 Y6.629 E0.29267
G1 X3.319 Y6.935 E0.30237
G1 X2.823 Y7.135 E0.31042
G1 X2.174 Y7.358 E0.32074
G1 X1.552 Y7.529 E0.33045
G1 X0.819 Y7.629 E0.34159
G1 X0.168 Y7.671 E0.3514
G1 X-.477 Y7.673 E0.36111
G1 X-1.367 Y7.542 E0.37465
G1 X-2.172 Y7.351 E0.3871
G1 X-2.789 Y7.163 E0.3968
G1 X-3.648 Y6.749 E0.41115
G1 X-4.251 Y6.387 E0.42174
G1 X-4.783 Y6.022 E0.43144
G1 X-5.264 Y5.594 E0.44113
G1 X-5.587 Y5.237 E0.44838
G1 X-6.207 Y4.485 E0.46305
G1 X-6.586 Y3.963 E0.47275
G1 X-6.897 Y3.398 E0.48246
G1 X-7.079 Y2.961 E0.48958
G1 X-7.315 Y2.315 E0.49993
G1 X-7.499 Y1.697 E0.50963
G1 X-7.609 Y1.012 E0.52007
G1 X-7.667 Y0.388 E0.52951
G1 X-7.686 Y-.256 E0.5392
G1 X-7.626 Y-.898 E0.5489
G1 X-7.522 Y-1.401 E0.55663
G1 X-7.254 Y-2.432 E0.57266
G1 X-7.053 Y-3.045 E0.58237
G1 X-6.778 Y-3.628 E0.59207
G1 X-6.309 Y-4.338 E0.60488
G1 X-5.706 Y-5.105 E0.61956
G1 X-5.277 Y-5.586 E0.62926
G1 X-4.633 Y-6.128 E0.64193
G1 X-4.276 Y-6.382 E0.64852
G1 X-3.728 Y-6.722 E0.65822
G1 X-3.164 Y-6.984 E0.66758
G1 X-2.429 Y-7.273 E0.67947
G1 X-1.815 Y-7.472 E0.68918
G1 X-1.182 Y-7.592 E0.69887
G1 X-.487 Y-7.634 E0.70935
G1 X0.591 Y-7.626 E0.72558
G0 F600 X0.588 Y-7.226
G1 F450 X1.205 Y-7.181 E0.73488
G1 X1.812 Y-7.058 E0.7442
G1 X2.308 Y-6.893 E0.75207
G1 X2.995 Y-6.623 E0.76318
G1 X3.555 Y-6.36 E0.77249
G1 X4.206 Y-5.929 E0.78424
G1 X4.777 Y-5.48 E0.79517
G1 X5.238 Y-5.067 E0.80448
G1 X5.636 Y-4.605 E0.81366
G1 X5.97 Y-4.164 E0.82198
G1 X6.312 Y-3.647 E0.83131
G1 X6.68 Y-2.835 E0.84473
G1 X7.004 Y-1.898 E0.85965
G1 X7.169 Y-1.3 E0.86898
G1 X7.262 Y-.56 E0.88021
G1 X7.282 Y-.145 E0.88646
G1 X7.272 Y0.474 E0.89578
G1 X7.215 Y0.921 E0.90256
G1 X7.096 Y1.595 E0.91286
G1 X6.949 Y2.196 E0.92217
G1 X6.758 Y2.703 E0.93032
G1 X6.538 Y3.2 E0.9385
G1 X6.251 Y3.749 E0.94782
G1 X5.738 Y4.444 E0.96082
G1 X5.089 Y5.175 E0.97553
G1 X4.649 Y5.61 E0.98484
G1 X4.041 Y6.06 E0.99622
G1 X3.674 Y6.289 E1.00273
G1 X3.128 Y6.583 E1.01207
G1 X2.693 Y6.756 E1.01911
G1 X2.044 Y6.979 E1.02944
G1 X1.446 Y7.143 E1.03877
G1 X0.793 Y7.23 E1.04868
G1 X0.142 Y7.272 E1.0585
G1 X-.477 Y7.272 E1.06781
G1 X-1.275 Y7.152 E1.07996
G1 X-2.08 Y6.961 E1.09241
G1 X-2.672 Y6.78 E1.10172
G1 X-3.443 Y6.406 E1.11462
G1 X-4.046 Y6.044 E1.1252
G1 X-4.555 Y5.692 E1.13452
G1 X-5.015 Y5.277 E1.14384
G1 X-5.279 Y4.982 E1.1498
G1 X-5.899 Y4.23 E1.16446
G1 X-6.261 Y3.728 E1.17378
G1 X-6.556 Y3.183 E1.1831
G1 X-6.704 Y2.824 E1.18895
G1 X-6.94 Y2.178 E1.1993
G1 X-7.114 Y1.584 E1.20861
G1 X-7.21 Y0.975 E1.21789
G1 X-7.268 Y0.351 E1.22732
G1 X-7.286 Y-.268 E1.23664
G1 X-7.223 Y-.884 E1.24596
G1 X-7.135 Y-1.301 E1.25237
G1 X-6.867 Y-2.332 E1.2684
G1 X-6.672 Y-2.92 E1.27772
G1 X-6.404 Y-3.478 E1.28704
G1 X-5.994 Y-4.091 E1.29814
G1 X-5.391 Y-4.858 E1.31282
G1 X-4.978 Y-5.319 E1.32213
G1 X-4.401 Y-5.802 E1.33346
G1 X-4.044 Y-6.056 E1.34005
G1 X-3.517 Y-6.382 E1.34937
G1 X-3.017 Y-6.612 E1.35766
G1 X-2.282 Y-6.901 E1.36954
G1 X-1.693 Y-7.09 E1.37885
G1 X-1.083 Y-7.202 E1.38818
G1 X-.49 Y-7.234 E1.39712
G1 X0.588 Y-7.226 E1.41334
G0 F600 X0.585 Y-6.826
G1 F450 X1.176 Y-6.782 E1.42226
G1 X1.756 Y-6.658 E1.43119
G1 X2.161 Y-6.521 E1.43762
G1 X2.848 Y-6.251 E1.44873
G1 X3.384 Y-5.998 E1.45765
G1 X3.959 Y-5.615 E1.46804
G1 X4.53 Y-5.166 E1.47897
G1 X4.97 Y-4.769 E1.48789
G1 X5.318 Y-4.364 E1.49593
G1 X5.652 Y-3.923 E1.50425
G1 X5.977 Y-3.427 E1.51318
G1 X6.302 Y-2.704 E1.52511
G1 X6.626 Y-1.767 E1.54002
G1 X6.782 Y-1.195 E1.54895
G1 X6.863 Y-.541 E1.55886
G1 X6.883 Y-.126 E1.56512
G1 X6.871 Y0.467 E1.57404
G1 X6.821 Y0.851 E1.57987
G1 X6.702 Y1.525 E1.59017
G1 X6.56 Y2.101 E1.5991
G1 X6.392 Y2.541 E1.60618
G1 X6.172 Y3.038 E1.61436
G1 X5.896 Y3.563 E1.62329
G1 X5.439 Y4.178 E1.63482
G1 X4.79 Y4.909 E1.64953
G1 X4.368 Y5.325 E1.65845
G1 X3.829 Y5.721 E1.66851
G1 X3.462 Y5.95 E1.67502
G1 X2.939 Y6.229 E1.68394
G1 X2.563 Y6.378 E1.69003
G1 X1.914 Y6.601 E1.70035
G1 X1.341 Y6.756 E1.70929
G1 X0.767 Y6.831 E1.718
G1 X0.116 Y6.873 E1.72781
G1 X-.477 Y6.871 E1.73674
G1 X-1.183 Y6.763 E1.74749
G1 X-1.988 Y6.572 E1.75994
G1 X-2.554 Y6.397 E1.76885
G1 X-3.237 Y6.063 E1.78029
G1 X-3.84 Y5.701 E1.79088
G1 X-4.326 Y5.363 E1.79979
G1 X-4.763 Y4.962 E1.80871
G1 X-4.97 Y4.728 E1.81341
G1 X-5.59 Y3.976 E1.82808
G1 X-5.935 Y3.494 E1.837
G1 X-6.213 Y2.97 E1.84592
G1 X-6.328 Y2.687 E1.85052
G1 X-6.564 Y2.041 E1.86087
G1 X-6.729 Y1.471 E1.8698
G1 X-6.812 Y0.938 E1.87792
G1 X-6.87 Y0.314 E1.88735
G1 X-6.885 Y-.279 E1.89628
G1 X-6.82 Y-.868 E1.90519
G1 X-6.747 Y-1.2 E1.91031
G1 X-6.479 Y-2.231 E1.92634
G1 X-6.292 Y-2.793 E1.93525
G1 X-6.031 Y-3.326 E1.94418
G1 X-5.68 Y-3.843 E1.95359
G1 X-5.077 Y-4.61 E1.96827
G1 X-4.68 Y-5.051 E1.9772
G1 X-4.169 Y-5.476 E1.9872
G1 X-3.812 Y-5.73 E1.99379
G1 X-3.307 Y-6.041 E2.00272
G1 X-2.871 Y-6.24 E2.00993
G1 X-2.136 Y-6.529 E2.02182
G1 X-1.571 Y-6.708 E2.03073
G1 X-.987 Y-6.81 E2.03966
G1 X-.493 Y-6.834 E2.0471
G1 X0.585 Y-6.826 E2.06332
G0 F600 X0.582 Y-6.426
G1 F450 X1.145 Y-6.382 E2.07182
G1 X1.697 Y-6.259 E2.08033
G1 X2.015 Y-6.149 E2.08539
G1 X2.702 Y-5.879 E2.0965
G1 X3.212 Y-5.635 E2.10501
G1 X3.712 Y-5.3 E2.11407
G1 X4.283 Y-4.851 E2.125
G1 X4.701 Y-4.471 E2.1335
G1 X4.999 Y-4.122 E2.1404
G1 X5.333 Y-3.681 E2.14873
G1 X5.641 Y-3.207 E2.15724
G1 X5.924 Y-2.573 E2.16768
G1 X6.248 Y-1.636 E2.1826
G1 X6.395 Y-1.09 E2.19111
G1 X6.463 Y-.522 E2.19972
G1 X6.483 Y-.107 E2.20597
G1 X6.471 Y0.459 E2.21449
G1 X6.427 Y0.781 E2.21938
G1 X6.308 Y1.455 E2.22968
G1 X6.171 Y2.004 E2.2382
G1 X6.027 Y2.379 E2.24424
G1 X5.807 Y2.876 E2.25242
G1 X5.542 Y3.376 E2.26094
G1 X5.14 Y3.913 E2.27103
G1 X4.491 Y4.644 E2.28574
G1 X4.087 Y5.039 E2.29424
G1 X3.618 Y5.382 E2.30299
G1 X3.251 Y5.611 E2.3095
G1 X2.751 Y5.875 E2.31801
G1 X2.433 Y6 E2.32315
G1 X1.784 Y6.223 E2.33348
G1 X1.238 Y6.368 E2.34198
G1 X0.742 Y6.432 E2.3495
G1 X0.091 Y6.474 E2.35932
G1 X-.475 Y6.47 E2.36784
G1 X-1.09 Y6.374 E2.3772
G1 X-1.895 Y6.183 E2.38965
G1 X-2.435 Y6.014 E2.39817
G1 X-3.031 Y5.72 E2.40817
G1 X-3.634 Y5.358 E2.41875
G1 X-4.097 Y5.034 E2.42726
G1 X-4.661 Y4.474 E2.43922
G1 X-5.281 Y3.722 E2.45388
G1 X-5.609 Y3.261 E2.4624
G1 X-5.952 Y2.55 E2.47428
G1 X-6.188 Y1.904 E2.48463
G1 X-6.344 Y1.36 E2.49314
G1 X-6.414 Y0.901 E2.50013
G1 X-6.472 Y0.277 E2.50956
G1 X-6.484 Y-.288 E2.51807
G1 X-6.36 Y-1.099 E2.53041
G1 X-6.092 Y-2.13 E2.54644
G1 X-5.912 Y-2.666 E2.55495
G1 X-5.658 Y-3.171 E2.56346
G1 X-5.366 Y-3.596 E2.57122
G1 X-4.763 Y-4.363 E2.5859
G1 X-4.383 Y-4.782 E2.59441
G1 X-3.937 Y-5.15 E2.60311
G1 X-3.58 Y-5.404 E2.60971
G1 X-3.097 Y-5.699 E2.61822
G1 X-2.725 Y-5.868 E2.62437
G1 X-1.99 Y-6.157 E2.63626
G1 X-1.45 Y-6.326 E2.64477
G1 X-.892 Y-6.417 E2.65328
G1 X-.496 Y-6.434 E2.65924
G1 X0.582 Y-6.426 E2.67547
G0 F600 X0.579 Y-6.026
G1 F450 X1.113 Y-5.982 E2.68353
G1 X1.869 Y-5.777 E2.69532
G1 X2.556 Y-5.507 E2.70643
G1 X3.039 Y-5.274 E2.7145
G1 X3.464 Y-4.986 E2.72222
G1 X4.035 Y-4.537 E2.73315
G1 X4.431 Y-4.175 E2.74123
G1 X4.68 Y-3.881 E2.74702
G1 X5.014 Y-3.44 E2.75535
G1 X5.305 Y-2.989 E2.76343
G1 X5.546 Y-2.442 E2.77242
G1 X5.87 Y-1.505 E2.78734
G1 X6.007 Y-.987 E2.7954
G1 X6.064 Y-.502 E2.80275
G1 X6.084 Y-0.087 E2.809
G1 X6.033 Y0.712 E2.82105
G1 X5.914 Y1.386 E2.83135
G1 X5.782 Y1.906 E2.83943
G1 X5.661 Y2.217 E2.84445
G1 X5.441 Y2.714 E2.85263
G1 X5.188 Y3.187 E2.8607
G1 X4.841 Y3.647 E2.86937
G1 X4.192 Y4.378 E2.88408
G1 X3.807 Y4.752 E2.89216
G1 X3.406 Y5.042 E2.8996
G1 X3.039 Y5.271 E2.90611
G1 X2.564 Y5.52 E2.91418
G1 X2.303 Y5.622 E2.9184
G1 X1.654 Y5.845 E2.92873
G1 X1.135 Y5.981 E2.9368
G1 X0.716 Y6.033 E2.94316
G1 X0.065 Y6.075 E2.95297
G1 X-.471 Y6.069 E2.96104
G1 X-.998 Y5.985 E2.96907
G1 X-1.803 Y5.794 E2.98152
G1 X-2.314 Y5.631 E2.98959
G1 X-2.825 Y5.378 E2.99817
G1 X-3.428 Y5.016 E3.00876
G1 X-3.866 Y4.706 E3.01683
G1 X-4.353 Y4.219 E3.0272
G1 X-4.973 Y3.467 E3.04186
G1 X-5.282 Y3.029 E3.04993
G1 X-5.576 Y2.412 E3.06021
G1 X-5.812 Y1.766 E3.07056
G1 X-5.958 Y1.25 E3.07863
G1 X-6.016 Y0.864 E3.08451
G1 X-6.074 Y0.24 E3.09394
G1 X-6.083 Y-.296 E3.10201
G1 X-5.973 Y-.999 E3.11271
G1 X-5.705 Y-2.03 E3.12874
G1 X-5.532 Y-2.537 E3.13681
G1 X-5.285 Y-3.013 E3.14488
G1 X-5.051 Y-3.349 E3.15104
G1 X-4.448 Y-4.116 E3.16572
G1 X-4.086 Y-4.512 E3.17379
G1 X-3.705 Y-4.824 E3.1812
G1 X-3.348 Y-5.078 E3.1878
G1 X-2.889 Y-5.356 E3.19587
G1 X-2.578 Y-5.495 E3.201
G1 X-1.843 Y-5.784 E3.21288
G1 X-1.331 Y-5.943 E3.22095
G1 X-.801 Y-6.023 E3.22902
G1 X-.499 Y-6.034 E3.23356
G1 X0.579 Y-6.026 E3.24979
G0 F600 X0.576 Y-5.626
G1 F450 X1.079 Y-5.582 E3.25739
G1 X1.722 Y-5.404 E3.26743
G1 X2.409 Y-5.134 E3.27853
G1 X2.864 Y-4.913 E3.28615
G1 X3.217 Y-4.671 E3.29259
G1 X3.788 Y-4.222 E3.30352
G1 X4.159 Y-3.88 E3.31111
G1 X4.361 Y-3.639 E3.31584
G1 X4.695 Y-3.198 E3.32417
G1 X4.967 Y-2.772 E3.33177
G1 X5.168 Y-2.312 E3.33933
G1 X5.492 Y-1.375 E3.35425
G1 X5.619 Y-.885 E3.36186
G1 X5.664 Y-.483 E3.36795
G1 X5.684 Y-0.068 E3.3742
G1 X5.639 Y0.642 E3.38491
G1 X5.52 Y1.316 E3.39521
G1 X5.393 Y1.806 E3.40283
G1 X5.295 Y2.055 E3.40685
G1 X5.075 Y2.552 E3.41503
G1 X4.835 Y2.997 E3.42264
G1 X4.542 Y3.382 E3.42992
G1 X3.893 Y4.113 E3.44463
G1 X3.529 Y4.463 E3.45223
G1 X3.194 Y4.703 E3.45843
G1 X2.827 Y4.932 E3.46494
G1 X2.173 Y5.243 E3.47584
G1 X1.524 Y5.466 E3.48617
G1 X1.034 Y5.592 E3.49378
G1 X0.69 Y5.633 E3.49899
G1 X0.039 Y5.675 E3.50881
G1 X-.466 Y5.668 E3.51641
G1 X-.906 Y5.596 E3.52312
G1 X-1.711 Y5.405 E3.53557
G1 X-2.192 Y5.249 E3.54318
G1 X-2.619 Y5.035 E3.55037
G1 X-3.222 Y4.673 E3.56095
G1 X-3.634 Y4.379 E3.56857
G1 X-4.044 Y3.965 E3.57734
G1 X-4.664 Y3.213 E3.592
G1 X-4.954 Y2.798 E3.59962
G1 X-5.201 Y2.275 E3.60833
G1 X-5.437 Y1.629 E3.61868
G1 X-5.572 Y1.142 E3.62628
G1 X-5.617 Y0.827 E3.63107
G1 X-5.675 Y0.203 E3.6405
G1 X-5.682 Y-.302 E3.6481
G1 X-5.586 Y-.898 E3.65718
G1 X-5.318 Y-1.929 E3.67321
G1 X-5.153 Y-2.407 E3.68082
G1 X-4.914 Y-2.853 E3.68844
G1 X-4.737 Y-3.102 E3.69304
G1 X-4.134 Y-3.869 E3.70772
G1 X-3.791 Y-4.24 E3.71532
G1 X-3.473 Y-4.498 E3.72148
G1 X-3.116 Y-4.752 E3.72808
G1 X-2.682 Y-5.012 E3.73569
G1 X-2.432 Y-5.123 E3.73981
G1 X-1.697 Y-5.412 E3.75169
G1 X-1.213 Y-5.559 E3.7593
G1 X-.502 Y-5.634 E3.77006
G1 X0.576 Y-5.626 E3.78629
;MESH:CylinderComplement.stl
G0 F600 X0.205 Y-3.157
G0 X0.126 Y-2.478
G0 X-1.2 Y-2.01
;TYPE:FILL
G1 F450 X-1.2 Y2.008 E3.84675
G1 X-1.092 Y2.069 E3.84862
G1 X-.932 Y2.146 E3.85129
G1 X-.803 Y2.199 E3.85339
G1 X-.651 Y2.248 E3.85579
G1 X-.362 Y2.31 E3.86024
G1 X-.196 Y2.33 E3.86275
G1 X-0.034 Y2.34 E3.8652
G1 X0.00 Y2.34 E3.86571
G1 X0.00 Y-2.339 E3.93612
G1 X0.128 Y-2.337 E3.93805
G1 X0.263 Y-2.326 E3.94008
G1 X0.435 Y-2.299 E3.9427
G1 X0.565 Y-2.271 E3.94471
G1 X0.726 Y-2.224 E3.94723
G1 X1.02 Y-2.105 E3.952
G1 X1.14 Y-2.044 E3.95403
G1 X1.2 Y-2.007 E3.95509
G1 X1.2 Y2.009 E4.01552
G0 F600 X1.076 Y1.802
;MESH:NONMESH
G0 X2.007 Y1.2
;TIME_ELAPSED:37.190835
;LAYER:1
M106 S255
;MESH:CylinderComplement.stl
G0 F900 X2.007 Y1.2 Z0.4
;TYPE:FILL
G1 F600 X-2.009 Y1.199 E4.07596
G0 F900 X2.01 Y1.196
G1 F600 X2.095 Y1.04 E4.07863
G1 X2.21 Y0.767 E4.08309
G1 X2.291 Y0.472 E4.08769
G1 X2.319 Y0.312 E4.09014
G1 X2.334 Y0.169 E4.0923
G1 X2.339 Y0.00 E4.09485
G1 X-2.339 Y0.00 E4.16524
G1 X-2.339 Y-0.088 E4.16657
G1 X-2.329 Y-.234 E4.16877
G1 X-2.274 Y-.551 E4.17361
G1 X-2.23 Y-.707 E4.17605
G1 X-2.124 Y-.983 E4.1805
G1 X-2.06 Y-1.111 E4.18265
G1 X-2.007 Y-1.2 E4.18421
G1 X2.008 Y-1.199 E4.24463
G0 F900 X1.804 Y-1.072
;MESH:NONMESH
G0 X1.2 Y2.007
;TIME_ELAPSED:39.290173
;LAYER:2
;MESH:CylinderComplement.stl
G0 F1200 X1.2 Y2.007 Z0.6
;TYPE:FILL
G1 F600 X1.2 Y-2.007 E4.30504
G1 X1.166 Y-2.028 E4.30564
G1 X1.022 Y-2.104 E4.30809
G1 X0.733 Y-2.223 E4.31279
G1 X0.588 Y-2.266 E4.31507
G1 X0.444 Y-2.298 E4.31729
G1 X0.277 Y-2.324 E4.31983
G1 X0.14 Y-2.336 E4.3219
G1 X0.00 Y-2.339 E4.32401
G1 X0.00 Y2.339 E4.3944
G1 X-0.044 Y2.339 E4.39506
G1 X-.211 Y2.328 E4.39758
G1 X-.371 Y2.309 E4.40001
G1 X-.508 Y2.283 E4.40211
G1 X-.659 Y2.245 E4.40445
G1 X-.81 Y2.195 E4.40684
G1 X-1.107 Y2.062 E4.41174
G1 X-1.2 Y2.007 E4.41337
G1 X-1.2 Y-2.008 E4.47379
G0 F1200 X-1.085 Y-1.796
;MESH:NONMESH
G0 X2.004 Y-1.199
;TIME_ELAPSED:41.066693
;LAYER:3
;MESH:CylinderComplement.stl
G0 X2.004 Y-1.199 Z0.8
;TYPE:FILL
G1 F600 X-2.005 Y-1.2 E4.53411
G1 X-2.055 Y-1.119 E4.53555
G1 X-2.117 Y-.996 E4.53762
G1 X-2.178 Y-.853 E4.53996
G1 X-2.235 Y-.691 E4.54254
G1 X-2.305 Y-.403 E4.547
G1 X-2.328 Y-.242 E4.54945
G1 X-2.338 Y-.112 E4.55141
G1 X-2.338 Y0.00 E4.5531
G1 X2.34 Y0.00 E4.6235
G1 X2.334 Y0.169 E4.62604
G1 X2.316 Y0.326 E4.62842
G1 X2.287 Y0.494 E4.63098
G1 X2.255 Y0.629 E4.63307
G1 X2.206 Y0.781 E4.63548
G1 X2.152 Y0.919 E4.63771
G1 X2.083 Y1.063 E4.64011
G1 X2.008 Y1.2 E4.64246
G1 X-2.009 Y1.199 E4.70291
G0 F1200 X-1.8 Y1.079
;MESH:NONMESH
G0 X1.2 Y2.007
;TIME_ELAPSED:42.842691
;LAYER:4
;MESH:CylinderComplement.stl
G0 X1.2 Y2.007 Z1
;TYPE:FILL
G1 F600 X1.2 Y-2.008 E4.76333
G1 X1.177 Y-2.023 E4.76374
G1 X1.042 Y-2.096 E4.76605
G1 X0.741 Y-2.22 E4.77095
G1 X0.613 Y-2.258 E4.77296
G1 X0.441 Y-2.297 E4.77561
G1 X0.301 Y-2.32 E4.77775
G1 X0.15 Y-2.335 E4.78003
G1 X0.00 Y-2.339 E4.78229
G1 X0.00 Y2.339 E4.85269
G1 X-0.055 Y2.339 E4.85351
G1 X-.231 Y2.327 E4.85617
G1 X-.377 Y2.309 E4.85838
G1 X-.525 Y2.28 E4.86065
G1 X-.81 Y2.194 E4.86513
G1 X-.974 Y2.126 E4.8678
G1 X-1.096 Y2.067 E4.86984
G1 X-1.2 Y2.006 E4.87166
G1 X-1.2 Y-2.009 E4.93208
G0 F1200 X-1.072 Y-1.804
;MESH:NONMESH
G0 X2.007 Y-1.199
;TIME_ELAPSED:44.618907
;LAYER:5
;MESH:CylinderComplement.stl
G0 X2.007 Y-1.199 Z1.2
;TYPE:FILL
G1 F600 X-2.006 Y-1.2 E4.99247
G1 X-2.04 Y-1.144 E4.99345
G1 X-2.113 Y-1.004 E4.99583
G1 X-2.174 Y-.864 E4.99813
G1 X-2.228 Y-.717 E5.00048
G1 X-2.272 Y-.559 E5.00295
G1 X-2.3 Y-.428 E5.00497
G1 X-2.327 Y-.252 E5.00765
G1 X-2.337 Y-.123 E5.00959
G1 X-2.338 Y0.00 E5.01144
G1 X2.34 Y0.00 E5.08184
G1 X2.34 Y0.021 E5.08216
G1 X2.332 Y0.184 E5.08461
G1 X2.315 Y0.339 E5.08696
G1 X2.288 Y0.49 E5.08927
G1 X2.25 Y0.641 E5.09161
G1 X2.205 Y0.781 E5.09382
G1 X2.149 Y0.923 E5.09612
G1 X2.072 Y1.085 E5.09882
G1 X2.008 Y1.199 E5.10079
G0 F1200 X2.007 Y1.2
G1 F600 X-2.009 Y1.199 E5.16122
G0 F1200 X-1.798 Y1.081
;MESH:NONMESH
G0 X1.2 Y2.007
;TIME_ELAPSED:46.395110
;LAYER:6
;MESH:CylinderComplement.stl
G0 X1.2 Y2.007 Z1.4
;TYPE:FILL
G1 F600 X1.2 Y-2.008 E5.22164
G0 F1200 X1.193 Y-2.013
G1 F600 X1.044 Y-2.093 E5.22419
G1 X0.761 Y-2.213 E5.22881
G1 X0.616 Y-2.258 E5.2311
G1 X0.308 Y-2.319 E5.23582
G1 X0.163 Y-2.334 E5.23801
G1 X0.00 Y-2.34 E5.24047
G1 X0.00 Y2.338 E5.31087
G1 X-0.067 Y2.338 E5.31187
G1 X-.24 Y2.326 E5.31448
G1 X-.392 Y2.306 E5.31679
G1 X-.544 Y2.276 E5.31912
G1 X-.678 Y2.24 E5.32121
G1 X-.985 Y2.121 E5.32617
G1 X-1.121 Y2.055 E5.32844
G1 X-1.2 Y2.004 E5.32986
G1 X-1.2 Y-2.009 E5.39024
G0 F1200 X-1.072 Y-1.804
;MESH:NONMESH
G0 X2.008 Y-1.199
;TIME_ELAPSED:48.171210
;LAYER:7
;MESH:CylinderComplement.stl
G0 X2.008 Y-1.199 Z1.6
;TYPE:FILL
G1 F600 X-2.005 Y-1.2 E5.45063
G1 X-2.035 Y-1.152 E5.45149
G1 X-2.111 Y-1.008 E5.45394
G1 X-2.22 Y-.737 E5.45833
G1 X-2.269 Y-.569 E5.46097
G1 X-2.3 Y-.431 E5.46309
G1 X-2.325 Y-.266 E5.4656
G1 X-2.337 Y-.135 E5.46758
G1 X-2.339 Y0.00 E5.46962
G1 X2.334 Y0.00 E5.53994
G1 X2.33 Y0.272 E5.54403
G1 X2.289 Y0.487 E5.54733
G1 X2.199 Y0.796 E5.55217
G1 X2.134 Y0.958 E5.5548
G1 X2.078 Y1.075 E5.55675
G1 X2.006 Y1.2 E5.55892
G1 X-2.009 Y1.199 E5.61934
G0 F1200 X-1.798 Y1.082
;MESH:NONMESH
G0 X1.2 Y-2.007
;TIME_ELAPSED:50.005243
;LAYER:8
;MESH:CylinderComplement.stl
G0 X1.2 Y-2.007 Z1.8
;TYPE:FILL
G1 F600 X1.2 Y2.008 E5.67976
G0 F1200 X1.193 Y-2.012
G1 F600 X1.056 Y-2.088 E5.68211
G1 X0.925 Y-2.148 E5.68428
G1 X0.77 Y-2.209 E5.68679
G1 X0.63 Y-2.253 E5.689
G1 X0.315 Y-2.318 E5.69384
G1 X0.175 Y-2.333 E5.69596
G1 X0.012 Y-2.34 E5.69841
G1 X0.00 Y-2.34 E5.69859
G1 X0.00 Y2.338 E5.76899
G1 X-0.092 Y2.338 E5.77037
G1 X-.244 Y2.327 E5.77267
G1 X-.394 Y2.306 E5.77495
G1 X-.551 Y2.275 E5.77735
G1 X-.7 Y2.233 E5.77968
G1 X-.995 Y2.118 E5.78445
G1 X-1.116 Y2.056 E5.78649
G1 X-1.2 Y2.006 E5.78797
G1 X-1.2 Y-2.009 E5.84839
G0 F1200 X-1.072 Y-1.804
;MESH:NONMESH
G0 X2.008 Y-1.199
;TIME_ELAPSED:51.982961
;LAYER:9
;MESH:CylinderComplement.stl
G0 X2.008 Y-1.199 Z2
;TYPE:FILL
G1 F600 X-2.006 Y-1.2 E5.90879
G1 X-2.03 Y-1.162 E5.90947
G1 X-2.099 Y-1.033 E5.91167
G1 X-2.22 Y-.739 E5.91645
G1 X-2.264 Y-.593 E5.91875
G1 X-2.297 Y-.447 E5.921
G1 X-2.336 Y-.135 E5.92573
G1 X-2.339 Y0.00 E5.92776
G1 X2.335 Y0.00 E5.9981
G1 X2.33 Y0.218 E6.00138
G1 X2.312 Y0.361 E6.00355
G1 X2.243 Y0.662 E6.0082
G1 X2.128 Y0.972 E6.01317
G1 X2.072 Y1.085 E6.01507
G1 X2.006 Y1.2 E6.01707
G1 X-2.009 Y1.199 E6.07748
G0 F1200 X-1.804 Y1.07
;MESH:NONMESH
G0 X1.2 Y2.004
;TIME_ELAPSED:53.759148
;LAYER:10
;MESH:CylinderComplement.stl
G0 X1.2 Y2.004 Z2.2
;TYPE:FILL
G1 F600 X1.2 Y-2.008 E6.13786
G0 F1200 X1.197 Y-2.01
G1 F600 X1.07 Y-2.08 E6.14004
G1 X0.929 Y-2.147 E6.14239
G1 X0.774 Y-2.208 E6.1449
G1 X0.648 Y-2.25 E6.1469
G1 X0.326 Y-2.316 E6.15184
G1 X0.032 Y-2.34 E6.15628
G1 X0.00 Y-2.34 E6.15676
G1 X0.00 Y2.339 E6.22717
G1 X-.105 Y2.337 E6.22875
G1 X-.259 Y2.325 E6.23108
G1 X-.402 Y2.304 E6.23325
G1 X-.574 Y2.268 E6.2359
G1 X-.699 Y2.234 E6.23785
G1 X-.848 Y2.18 E6.24023
G1 X-1.141 Y2.042 E6.24511
G1 X-1.2 Y2.006 E6.24615
G1 X-1.2 Y-2.008 E6.30655
G0 F1200 X-1.076 Y-1.802
;MESH:NONMESH
G0 X-2.008 Y1.199
;TIME_ELAPSED:55.535203
;LAYER:11
;MESH:CylinderComplement.stl
G0 X-2.008 Y1.199 Z2.4
;TYPE:FILL
G1 F600 X2.001 Y1.2 E6.36688
G1 X2.071 Y1.09 E6.36884
G1 X2.131 Y0.969 E6.37088
G1 X2.237 Y0.684 E6.37545
G1 X2.31 Y0.373 E6.38026
G1 X2.329 Y0.226 E6.38249
G1 X2.339 Y0.059 E6.38501
G1 X2.339 Y0.00 E6.38589
G1 X-2.339 Y0.00 E6.45629
G1 X-2.335 Y-.16 E6.4587
G1 X-2.322 Y-.292 E6.4607
G1 X-2.257 Y-.618 E6.4657
G1 X-2.223 Y-.733 E6.4675
G1 X-2.094 Y-1.041 E6.47253
G1 X-2.017 Y-1.184 E6.47497
G1 X-2.006 Y-1.2 E6.47526
G1 X2.008 Y-1.199 E6.53567
G0 F1200 X1.8 Y-1.079
;MESH:NONMESH
G0 X-1.2 Y-2.008
;TIME_ELAPSED:57.311134
;LAYER:12
;MESH:CylinderComplement.stl
G0 X-1.2 Y-2.008 Z2.6
;TYPE:FILL
G1 F600 X-1.2 Y2.007 E6.59609
G1 X-1.146 Y2.04 E6.59704
G1 X-1.021 Y2.105 E6.59916
G1 X-.716 Y2.227 E6.6041
G1 X-.562 Y2.272 E6.60652
G1 X-.43 Y2.301 E6.60855
G1 X-.263 Y2.326 E6.61109
G1 X-.125 Y2.337 E6.61318
G1 X0.00 Y2.339 E6.61506
G1 X0.00 Y-2.34 E6.68547
G1 X0.043 Y-2.34 E6.68612
G1 X0.349 Y-2.314 E6.69074
G1 X0.648 Y-2.249 E6.69534
G1 X0.794 Y-2.202 E6.69765
G1 X1.081 Y-2.075 E6.70237
G1 X1.2 Y-2.007 E6.70444
G1 X1.2 Y2.008 E6.76485
G0 F1200 X1.084 Y1.797
;MESH:NONMESH
G0 X2.007 Y-1.199
;TIME_ELAPSED:59.087286
;LAYER:13
;MESH:CylinderComplement.stl
G0 X2.007 Y-1.199 Z2.8
;TYPE:FILL
G1 F600 X-2.007 Y-1.2 E6.82526
G1 X-2.018 Y-1.183 E6.82556
G1 X-2.095 Y-1.04 E6.82801
G1 X-2.224 Y-.732 E6.83303
G1 X-2.258 Y-.617 E6.83484
G1 X-2.323 Y-.291 E6.83984
G1 X-2.336 Y-.161 E6.84181
G1 X-2.338 Y0.00 E6.84423
G1 X2.34 Y0.00 E6.91463
G1 X2.34 Y0.057 E6.91548
G1 X2.33 Y0.225 E6.91802
G1 X2.311 Y0.372 E6.92025
G1 X2.238 Y0.683 E6.92505
G1 X2.132 Y0.968 E6.92963
G1 X2.072 Y1.089 E6.93166
G1 X2.002 Y1.2 E6.93364
G1 X-2.008 Y1.199 E6.99398
G0 F1200 X-1.81 Y1.064
;MESH:NONMESH
G0 X1.2 Y2.003
;TIME_ELAPSED:60.863883
;LAYER:14
;MESH:CylinderComplement.stl
G0 X1.2 Y2.003 Z3
;TYPE:FILL
G1 F600 X1.2 Y-2.008 E7.05434
G0 F1200 X1.196 Y-2.011
G1 F600 X1.069 Y-2.081 E7.05652
G1 X0.928 Y-2.148 E7.05887
G1 X0.773 Y-2.209 E7.06138
G1 X0.649 Y-2.25 E7.06334
G1 X0.326 Y-2.317 E7.06831
G1 X0.183 Y-2.333 E7.07047
G1 X0.024 Y-2.34 E7.07287
G1 X0.00 Y-2.34 E7.07323
G1 X0.00 Y2.338 E7.14363
G1 X-.103 Y2.338 E7.14518
G1 X-.258 Y2.326 E7.14752
G1 X-.401 Y2.305 E7.14969
G1 X-.573 Y2.269 E7.15234
G1 X-.698 Y2.235 E7.15428
G1 X-.847 Y2.181 E7.15667
G1 X-1.14 Y2.043 E7.16154
G1 X-1.2 Y2.006 E7.1626
G1 X-1.2 Y-2.007 E7.22299
G0 F1200 X-1.077 Y-1.801
;MESH:NONMESH
G0 X2.008 Y-1.199
;TIME_ELAPSED:62.639720
;LAYER:15
;MESH:CylinderComplement.stl
G0 X2.008 Y-1.199 Z3.2
;TYPE:FILL
G1 F600 X-2.007 Y-1.2 E7.28341
G1 X-2.031 Y-1.161 E7.2841
G1 X-2.1 Y-1.032 E7.2863
G1 X-2.221 Y-.738 E7.29109
G1 X-2.265 Y-.592 E7.29338
G1 X-2.298 Y-.446 E7.29564
G1 X-2.337 Y-.134 E7.30037
G1 X-2.338 Y0.00 E7.30238
G1 X2.34 Y0.00 E7.37278
G1 X2.34 Y0.044 E7.37344
G1 X2.331 Y0.213 E7.37599
G1 X2.312 Y0.36 E7.37822
G1 X2.245 Y0.66 E7.38285
G1 X2.129 Y0.971 E7.38784
G1 X2.073 Y1.084 E7.38974
G1 X2.006 Y1.2 E7.39175
G1 X-2.009 Y1.199 E7.45217
G0 F1200 X-1.806 Y1.072
;MESH:NONMESH
G0 X-1.2 Y-2.008
;TIME_ELAPSED:64.415962
;LAYER:16
;MESH:CylinderComplement.stl
G0 X-1.2 Y-2.008 Z3.4
;TYPE:FILL
G1 F600 X-1.2 Y2.007 E7.51259
G1 X-1.115 Y2.057 E7.51408
G1 X-.994 Y2.119 E7.51612
G1 X-.699 Y2.234 E7.52089
G1 X-.55 Y2.276 E7.52322
G1 X-.393 Y2.307 E7.52563
G1 X-.244 Y2.328 E7.52789
G1 X-0.092 Y2.339 E7.53018
G1 X0.00 Y2.339 E7.53157
G1 X0.00 Y-2.34 E7.60198
G1 X0.014 Y-2.34 E7.60219
G1 X0.173 Y-2.334 E7.60458
G1 X0.314 Y-2.319 E7.60672
G1 X0.629 Y-2.254 E7.61156
G1 X0.769 Y-2.21 E7.61377
G1 X0.924 Y-2.149 E7.61627
G1 X1.055 Y-2.089 E7.61844
G1 X1.192 Y-2.013 E7.6208
G1 X1.2 Y-2.007 E7.62095
G1 X1.2 Y2.008 E7.68137
G0 F1200 X1.08 Y1.798
;MESH:NONMESH
G0 X2.007 Y-1.199
;TIME_ELAPSED:66.192333
;LAYER:17
;MESH:CylinderComplement.stl
G0 X2.007 Y-1.199 Z3.6
;TYPE:FILL
G1 F600 X-2.006 Y-1.2 E7.74176
G1 X-2.036 Y-1.151 E7.74262
G1 X-2.112 Y-1.007 E7.74507
G1 X-2.221 Y-.736 E7.74947
G1 X-2.27 Y-.568 E7.7521
G1 X-2.301 Y-.43 E7.75423
G1 X-2.326 Y-.265 E7.75674
G1 X-2.338 Y-.132 E7.75875
G1 X-2.338 Y0.00 E7.76074
G1 X2.34 Y0.00 E7.83113
G1 X2.34 Y0.033 E7.83163
G1 X2.33 Y0.278 E7.83532
G1 X2.29 Y0.486 E7.83851
G1 X2.2 Y0.795 E7.84335
G1 X2.135 Y0.957 E7.84598
G1 X2.079 Y1.074 E7.84793
G1 X2.007 Y1.2 E7.85011
G1 X-2.008 Y1.199 E7.91053
G0 F1200 X-1.797 Y1.083
;MESH:NONMESH
G0 X1.2 Y2.007
;TIME_ELAPSED:67.968401
;LAYER:18
;MESH:CylinderComplement.stl
G0 X1.2 Y2.007 Z3.8
;TYPE:FILL
G1 F600 X1.2 Y-2.008 E7.97095
G1 X1.183 Y-2.019 E7.97126
G1 X1.043 Y-2.094 E7.97365
G1 X0.76 Y-2.214 E7.97827
G1 X0.615 Y-2.259 E7.98056
G1 X0.307 Y-2.32 E7.98528
G1 X0.16 Y-2.335 E7.98751
G1 X0.00 Y-2.34 E7.98992
G1 X0.00 Y2.339 E8.06033
G1 X-0.067 Y2.339 E8.06134
G1 X-.239 Y2.327 E8.06393
G1 X-.391 Y2.307 E8.06624
G1 X-.543 Y2.277 E8.06857
G1 X-.677 Y2.241 E8.07066
G1 X-.984 Y2.122 E8.07561
G1 X-1.11 Y2.061 E8.07772
G1 X-1.2 Y2.004 E8.07932
G1 X-1.2 Y-2.008 E8.1397
G0 F1200 X-1.072 Y-1.804
;MESH:NONMESH
G0 X2.007 Y-1.199
;TIME_ELAPSED:69.744537
;LAYER:19
;MESH:CylinderComplement.stl
G0 X2.007 Y-1.199 Z4
;TYPE:FILL
G1 F600 X-2.006 Y-1.2 E8.20009
G1 X-2.041 Y-1.143 E8.20109
G1 X-2.114 Y-1.003 E8.20347
G1 X-2.175 Y-.863 E8.20577
G1 X-2.229 Y-.716 E8.20812
G1 X-2.273 Y-.558 E8.21059
G1 X-2.301 Y-.427 E8.21261
G1 X-2.328 Y-.251 E8.21529
G1 X-2.338 Y-.124 E8.2172
G1 X-2.338 Y0.00 E8.21907
G1 X2.34 Y0.00 E8.28947
G1 X2.34 Y0.022 E8.2898
G1 X2.334 Y0.181 E8.29219
G1 X2.316 Y0.339 E8.29458
G1 X2.289 Y0.49 E8.29689
G1 X2.251 Y0.641 E8.29924
G1 X2.206 Y0.78 E8.30143
G1 X2.15 Y0.922 E8.30373
G1 X2.074 Y1.082 E8.3064
G1 X2.009 Y1.198 E8.3084
G0 F1200 X2.007 Y1.2
G1 F600 X-2.009 Y1.199 E8.36883
G0 F1200 X-1.798 Y1.08
;MESH:NONMESH
G0 X1.2 Y2.007
;TIME_ELAPSED:71.520858
;LAYER:20
;MESH:CylinderComplement.stl
G0 X1.2 Y2.007 Z4.2
;TYPE:FILL
G1 F600 X1.2 Y-2.008 E8.42925
G1 X1.176 Y-2.024 E8.42969
G1 X1.041 Y-2.097 E8.432
G1 X0.74 Y-2.221 E8.4369
G1 X0.612 Y-2.259 E8.4389
G1 X0.44 Y-2.298 E8.44156
G1 X0.301 Y-2.321 E8.44368
G1 X0.148 Y-2.336 E8.44599
G1 X0.00 Y-2.339 E8.44822
G1 X0.00 Y2.339 E8.51862
G1 X-0.058 Y2.34 E8.51949
G1 X-.23 Y2.328 E8.52208
G1 X-.376 Y2.31 E8.5243
G1 X-.524 Y2.281 E8.52657
G1 X-.809 Y2.195 E8.53105
G1 X-.973 Y2.127 E8.53372
G1 X-1.095 Y2.068 E8.53576
G1 X-1.2 Y2.006 E8.53759
G1 X-1.2 Y-2.009 E8.59801
G0 F1200 X-1.071 Y-1.804
;MESH:NONMESH
G0 X2.003 Y-1.199
;TIME_ELAPSED:73.296930
;LAYER:21
;MESH:CylinderComplement.stl
G0 X2.003 Y-1.199 Z4.4
;TYPE:FILL
G1 F600 X-2.006 Y-1.2 E8.65834
G1 X-2.056 Y-1.118 E8.65979
G1 X-2.118 Y-.995 E8.66186
G1 X-2.179 Y-.852 E8.6642
G1 X-2.236 Y-.69 E8.66678
G1 X-2.306 Y-.402 E8.67124
G1 X-2.329 Y-.241 E8.67369
G1 X-2.339 Y-.112 E8.67564
G1 X-2.339 Y0.00 E8.67732
G1 X2.34 Y0.00 E8.74774
G1 X2.335 Y0.168 E8.75026
G1 X2.317 Y0.325 E8.75264
G1 X2.288 Y0.493 E8.75521
G1 X2.256 Y0.628 E8.7573
G1 X2.207 Y0.78 E8.7597
G1 X2.153 Y0.918 E8.76193
G1 X2.084 Y1.062 E8.76433
G1 X2.008 Y1.2 E8.7667
G1 X-2.008 Y1.199 E8.82714
G0 F1200 X-1.799 Y1.08
;MESH:NONMESH
G0 X1.2 Y2.006
;TIME_ELAPSED:75.072845
;LAYER:22
;MESH:CylinderComplement.stl
G0 X1.2 Y2.006 Z4.6
;TYPE:FILL
G1 F600 X1.2 Y-2.007 E8.88753
G1 X1.165 Y-2.029 E8.88815
G1 X1.021 Y-2.105 E8.8906
G1 X0.732 Y-2.224 E8.8953
G1 X0.587 Y-2.267 E8.89758
G1 X0.443 Y-2.299 E8.8998
G1 X0.276 Y-2.325 E8.90234
G1 X0.139 Y-2.337 E8.90441
G1 X0.00 Y-2.339 E8.9065
G1 X0.00 Y2.34 E8.97691
G1 X-0.046 Y2.34 E8.97761
G1 X-.209 Y2.329 E8.98007
G1 X-.37 Y2.31 E8.98251
G1 X-.507 Y2.284 E8.9846
G1 X-.658 Y2.246 E8.98695
G1 X-.809 Y2.196 E8.98934
G1 X-1.106 Y2.063 E8.99424
G1 X-1.2 Y2.007 E8.99588
G1 X-1.2 Y-2.008 E9.0563
G0 F1200 X-1.085 Y-1.796
;MESH:NONMESH
G0 X2.007 Y1.2
;TIME_ELAPSED:76.907399
;LAYER:23
;MESH:CylinderComplement.stl
G0 X2.007 Y1.2 Z4.8
;TYPE:FILL
G1 F600 X-2.009 Y1.199 E9.11674
G0 F1200 X2.011 Y1.195
G1 F600 X2.096 Y1.039 E9.11941
G1 X2.211 Y0.766 E9.12387
G1 X2.292 Y0.471 E9.12847
G1 X2.32 Y0.311 E9.13092
G1 X2.335 Y0.167 E9.1331
G1 X2.339 Y0.00 E9.13561
G1 X-2.339 Y0.00 E9.20601
G1 X-2.339 Y-0.074 E9.20712
G1 X-2.327 Y-.243 E9.20967
G1 X-2.275 Y-.55 E9.21436
G1 X-2.231 Y-.706 E9.21679
G1 X-2.125 Y-.982 E9.22124
G1 X-2.061 Y-1.11 E9.2234
G1 X-2.007 Y-1.2 E9.22498
G1 X2.008 Y-1.199 E9.2854
G0 F1200 X1.804 Y-1.072
;MESH:NONMESH
G0 X1.2 Y2.008
;TIME_ELAPSED:78.885335
;LAYER:24
;MESH:CylinderComplement.stl
G0 X1.2 Y2.008 Z5
;TYPE:FILL
G1 F600 X1.2 Y-2.007 E9.34582
G1 X1.139 Y-2.045 E9.3469
G1 X1.019 Y-2.106 E9.34892
G1 X0.725 Y-2.225 E9.3537
G1 X0.564 Y-2.272 E9.35622
G1 X0.432 Y-2.301 E9.35825
G1 X0.265 Y-2.326 E9.36079
G1 X0.127 Y-2.337 E9.36288
G1 X0.00 Y-2.339 E9.36479
G1 X0.00 Y2.34 E9.4352
G1 X-0.045 Y2.34 E9.43588
G1 X-.351 Y2.314 E9.4405
G1 X-.65 Y2.249 E9.4451
G1 X-.802 Y2.2 E9.44751
G1 X-.931 Y2.147 E9.44961
G1 X-1.091 Y2.07 E9.45228
G1 X-1.2 Y2.008 E9.45417
G1 X-1.2 Y-2.009 E9.51461
G0 F1200 X-1.083 Y-1.796
;TIME_ELAPSED:80.505061
M140 S0
M107
M104 S0 ;extruder heater off
M140 S0 ;heated bed heater off (if you have it)
G91 ;relative positioning
G1 E-1 F300  ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+0.5 E-5 X-20 Y-20 F9000 ;move Z up a bit and retract filament even more
G28 X0 Y0 ;move X/Y to min endstops, so the head is out of the way
M84 ;steppers off
G90 ;absolute positioning
M82 ;absolute extrusion mode
M104 S0
;End of Gcode
;SETTING_3 {"extruder_quality": ["[general]\\nversion = 4\\nname = Carolyn - PLA
;SETTING_3 \\ndefinition = fdmprinter\\n\\n[metadata]\\nsetting_version = 5\\nty
;SETTING_3 pe = quality_changes\\nquality_type = verydraft\\nposition = 0\\n\\n[
;SETTING_3 values]\\nbrim_width = 0\\ninfill_angles = [0,90]\\ninfill_line_dista
;SETTING_3 nce = 1.2\\ninfill_pattern = zigzag\\ninfill_sparse_density = 70\\nma
;SETTING_3 terial_flow = 120\\nretraction_enable = False\\nskirt_line_count = 1\
;SETTING_3 \nspeed_print = 15\\nspeed_travel = 20\\ntop_bottom_thickness = 0.0\\
;SETTING_3 nwall_thickness = 0.0\\n\\n"], "global_quality": "[general]\\nversion
;SETTING_3  = 4\\nname = Carolyn - PLA\\ndefinition = fdmprinter\\n\\n[metadata]
;SETTING_3 \\nsetting_version = 5\\ntype = quality_changes\\nquality_type = very
;SETTING_3 draft\\n\\n[values]\\nadhesion_type = skirt\\nlayer_height = 0.2\\nla
;SETTING_3 yer_height_0 = 0.2\\nmaterial_bed_temperature = 0\\n\\n"}