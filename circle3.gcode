;FLAVOR:Marlin
;TIME:397
;Filament used: 0.0721246m
;Layer height: 0.8
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
G1 F1500 E-6.5
;LAYER_COUNT:8
;LAYER:0
M107
G0 F600 X11.871 Y-.43 Z0.1
;TYPE:SKIRT
G1 F1500 E0
G1 F150 X11.879 Y0.126 E0.00488
G1 X11.834 Y1.04 E0.01291
G1 X11.773 Y1.584 E0.01772
G1 X11.607 Y2.53 E0.02615
G1 X11.477 Y3.067 E0.031
G1 X11.203 Y3.955 E0.03916
G1 X11.01 Y4.468 E0.04397
G1 X10.621 Y5.33 E0.05227
G1 X10.357 Y5.827 E0.05721
G1 X9.87 Y6.618 E0.06537
G1 X9.558 Y7.06 E0.07012
G1 X8.953 Y7.816 E0.07861
G1 X8.571 Y8.235 E0.08359
G1 X7.907 Y8.875 E0.09169
G1 X7.485 Y9.233 E0.09655
G1 X6.626 Y9.874 E0.10595
G1 X5.887 Y10.32 E0.11353
G1 X4.321 Y11.066 E0.12876
G1 X3.587 Y11.339 E0.13563
G1 X2.663 Y11.591 E0.14404
G1 X2.116 Y11.703 E0.14894
G1 X1.182 Y11.834 E0.15722
G1 X0.638 Y11.876 E0.16201
G1 X-.281 Y11.89 E0.17008
G1 X-.828 Y11.865 E0.17488
G1 X-1.775 Y11.761 E0.18325
G1 X-2.327 Y11.664 E0.18817
G1 X-3.222 Y11.448 E0.19625
G1 X-3.751 Y11.285 E0.20111
G1 X-4.66 Y10.94 E0.20964
G1 X-5.171 Y10.708 E0.21457
G1 X-5.986 Y10.273 E0.22268
G1 X-6.446 Y9.99 E0.22742
G1 X-7.215 Y9.449 E0.23567
G1 X-7.651 Y9.098 E0.24059
G1 X-8.359 Y8.451 E0.24901
G1 X-8.749 Y8.047 E0.25394
G1 X-9.341 Y7.348 E0.26198
G1 X-9.665 Y6.912 E0.26675
G1 X-10.198 Y6.097 E0.27529
G1 X-10.476 Y5.607 E0.28024
G1 X-10.88 Y4.773 E0.28837
G1 X-11.086 Y4.27 E0.29315
G1 X-11.39 Y3.375 E0.30144
G1 X-11.533 Y2.85 E0.30622
G1 X-11.717 Y1.959 E0.31421
G1 X-11.795 Y1.41 E0.31907
G1 X-11.871 Y0.431 E0.32769
G1 X-11.879 Y-.126 E0.33258
G1 X-11.834 Y-1.04 E0.34062
G1 X-11.773 Y-1.584 E0.34542
G1 X-11.607 Y-2.53 E0.35385
G1 X-11.477 Y-3.067 E0.3587
G1 X-11.203 Y-3.955 E0.36686
G1 X-11.01 Y-4.468 E0.37167
G1 X-10.621 Y-5.33 E0.37997
G1 X-10.357 Y-5.827 E0.38491
G1 X-9.87 Y-6.618 E0.39307
G1 X-9.558 Y-7.06 E0.39782
G1 X-8.953 Y-7.816 E0.40632
G1 X-8.571 Y-8.235 E0.41129
G1 X-7.907 Y-8.875 E0.41939
G1 X-7.485 Y-9.233 E0.42425
G1 X-6.626 Y-9.874 E0.43366
G1 X-5.887 Y-10.32 E0.44123
G1 X-4.321 Y-11.066 E0.45646
G1 X-3.587 Y-11.339 E0.46333
G1 X-2.663 Y-11.591 E0.47174
G1 X-2.116 Y-11.703 E0.47664
G1 X-1.182 Y-11.834 E0.48492
G1 X-.638 Y-11.876 E0.48971
G1 X0.281 Y-11.89 E0.49778
G1 X0.828 Y-11.865 E0.50259
G1 X1.775 Y-11.761 E0.51095
G1 X2.327 Y-11.664 E0.51587
G1 X3.222 Y-11.448 E0.52395
G1 X3.75 Y-11.285 E0.5288
G1 X4.657 Y-10.941 E0.53732
G1 X5.169 Y-10.709 E0.54225
G1 X5.986 Y-10.273 E0.55038
G1 X6.446 Y-9.99 E0.55512
G1 X7.215 Y-9.449 E0.56338
G1 X7.651 Y-9.098 E0.56829
G1 X8.357 Y-8.453 E0.57668
G1 X8.746 Y-8.05 E0.5816
G1 X9.34 Y-7.349 E0.58967
G1 X9.665 Y-6.913 E0.59444
G1 X10.197 Y-6.1 E0.60297
G1 X10.475 Y-5.609 E0.60792
G1 X10.879 Y-4.775 E0.61606
G1 X11.085 Y-4.274 E0.62081
G1 X11.389 Y-3.38 E0.6291
G1 X11.531 Y-2.857 E0.63386
G1 X11.716 Y-1.965 E0.64185
G1 X11.795 Y-1.411 E0.64677
G1 X11.871 Y-.43 E0.6554
G0 F600 X11.472 Y-.399
G1 F150 X11.479 Y0.107 E0.65985
G1 X11.434 Y1.021 E0.66788
G1 X11.379 Y1.515 E0.67224
G1 X11.213 Y2.461 E0.68067
G1 X11.095 Y2.949 E0.68508
G1 X10.821 Y3.837 E0.69324
G1 X10.645 Y4.303 E0.69761
G1 X10.256 Y5.165 E0.70591
G1 X10.016 Y5.617 E0.71041
G1 X9.529 Y6.408 E0.71856
G1 X9.246 Y6.81 E0.72288
G1 X8.641 Y7.566 E0.73138
G1 X8.294 Y7.947 E0.7359
G1 X7.63 Y8.587 E0.74399
G1 X7.246 Y8.913 E0.74842
G1 X6.387 Y9.554 E0.75782
G1 X5.715 Y9.959 E0.76471
G1 X4.149 Y10.705 E0.77994
G1 X3.481 Y10.953 E0.78619
G1 X2.557 Y11.205 E0.7946
G1 X2.061 Y11.307 E0.79905
G1 X1.127 Y11.438 E0.80733
G1 X0.632 Y11.477 E0.81168
G1 X-.287 Y11.491 E0.81975
G1 X-.785 Y11.467 E0.82413
G1 X-1.732 Y11.363 E0.83249
G1 X-2.233 Y11.275 E0.83696
G1 X-3.128 Y11.059 E0.84504
G1 X-3.609 Y10.911 E0.84946
G1 X-4.518 Y10.566 E0.85799
G1 X-4.982 Y10.355 E0.86247
G1 X-5.797 Y9.92 E0.87058
G1 X-6.216 Y9.663 E0.87489
G1 X-6.985 Y9.122 E0.88314
G1 X-7.381 Y8.803 E0.88761
G1 X-8.089 Y8.156 E0.89603
G1 X-8.443 Y7.788 E0.90051
G1 X-9.035 Y7.089 E0.90855
G1 X-9.331 Y6.693 E0.91289
G1 X-9.864 Y5.878 E0.92144
G1 X-10.116 Y5.433 E0.92593
G1 X-10.52 Y4.599 E0.93406
G1 X-10.707 Y4.141 E0.93841
G1 X-11.011 Y3.246 E0.9467
G1 X-11.141 Y2.769 E0.95104
G1 X-11.325 Y1.878 E0.95903
G1 X-11.396 Y1.379 E0.96345
G1 X-11.472 Y0.4 E0.97207
G1 X-11.479 Y-.107 E0.97653
G1 X-11.434 Y-1.021 E0.98456
G1 X-11.379 Y-1.515 E0.98892
G1 X-11.213 Y-2.461 E0.99735
G1 X-11.095 Y-2.949 E1.00176
G1 X-10.821 Y-3.837 E1.00992
G1 X-10.645 Y-4.303 E1.01429
G1 X-10.256 Y-5.165 E1.02259
G1 X-10.016 Y-5.617 E1.02708
G1 X-9.529 Y-6.408 E1.03524
G1 X-9.246 Y-6.81 E1.03955
G1 X-8.641 Y-7.566 E1.04805
G1 X-8.294 Y-7.947 E1.05258
G1 X-7.63 Y-8.587 E1.06067
G1 X-7.246 Y-8.913 E1.06509
G1 X-6.387 Y-9.554 E1.0745
G1 X-5.715 Y-9.959 E1.08139
G1 X-4.149 Y-10.705 E1.09662
G1 X-3.481 Y-10.953 E1.10287
G1 X-2.557 Y-11.205 E1.11128
G1 X-2.061 Y-11.307 E1.11573
G1 X-1.127 Y-11.438 E1.124
G1 X-.632 Y-11.477 E1.12836
G1 X0.287 Y-11.491 E1.13643
G1 X0.785 Y-11.467 E1.14081
G1 X1.732 Y-11.363 E1.14917
G1 X2.233 Y-11.275 E1.15364
G1 X3.128 Y-11.059 E1.16172
G1 X3.608 Y-10.911 E1.16613
G1 X4.515 Y-10.567 E1.17464
G1 X4.98 Y-10.356 E1.17913
G1 X5.797 Y-9.92 E1.18725
G1 X6.216 Y-9.663 E1.19157
G1 X6.985 Y-9.122 E1.19982
G1 X7.381 Y-8.803 E1.20429
G1 X8.087 Y-8.158 E1.21268
G1 X8.441 Y-7.791 E1.21716
G1 X9.035 Y-7.09 E1.22522
G1 X9.33 Y-6.694 E1.22956
G1 X9.862 Y-5.881 E1.23809
G1 X10.115 Y-5.435 E1.24259
G1 X10.519 Y-4.601 E1.25072
G1 X10.706 Y-4.145 E1.25505
G1 X11.01 Y-3.251 E1.26334
G1 X11.14 Y-2.775 E1.26767
G1 X11.325 Y-1.883 E1.27567
G1 X11.396 Y-1.38 E1.28013
G1 X11.472 Y-.399 E1.28876
G0 F600 X11.073 Y-.368
G1 F150 X11.08 Y0.087 E1.29276
G1 X11.035 Y1.001 E1.30079
G1 X10.985 Y1.446 E1.30472
G1 X10.819 Y2.392 E1.31315
G1 X10.713 Y2.831 E1.31712
G1 X10.439 Y3.719 E1.32527
G1 X10.28 Y4.139 E1.32922
G1 X9.891 Y5.001 E1.33752
G1 X9.676 Y5.407 E1.34155
G1 X9.189 Y6.198 E1.34971
G1 X8.934 Y6.56 E1.35359
G1 X8.329 Y7.316 E1.36209
G1 X8.016 Y7.659 E1.36617
G1 X7.352 Y8.299 E1.37426
G1 X7.007 Y8.592 E1.37824
G1 X6.148 Y9.233 E1.38765
G1 X5.543 Y9.598 E1.39385
G1 X3.977 Y10.344 E1.40908
G1 X3.376 Y10.567 E1.4147
G1 X2.452 Y10.819 E1.42311
G1 X2.005 Y10.911 E1.42712
G1 X1.071 Y11.042 E1.43539
G1 X0.626 Y11.077 E1.43931
G1 X-.293 Y11.091 E1.44738
G1 X-.741 Y11.069 E1.45132
G1 X-1.688 Y10.965 E1.45968
G1 X-2.14 Y10.887 E1.46371
G1 X-3.035 Y10.671 E1.47179
G1 X-3.467 Y10.537 E1.47576
G1 X-4.376 Y10.192 E1.4843
G1 X-4.794 Y10.002 E1.48833
G1 X-5.609 Y9.567 E1.49644
G1 X-5.985 Y9.335 E1.50031
G1 X-6.754 Y8.794 E1.50857
G1 X-7.112 Y8.507 E1.5126
G1 X-7.82 Y7.86 E1.52101
G1 X-8.138 Y7.53 E1.52504
G1 X-8.73 Y6.831 E1.53308
G1 X-8.996 Y6.474 E1.53699
G1 X-9.529 Y5.659 E1.54554
G1 X-9.756 Y5.258 E1.54958
G1 X-10.16 Y4.424 E1.55772
G1 X-10.329 Y4.013 E1.56162
G1 X-10.633 Y3.118 E1.56991
G1 X-10.75 Y2.688 E1.57383
G1 X-10.934 Y1.797 E1.58181
G1 X-10.997 Y1.348 E1.58579
G1 X-11.073 Y0.369 E1.59441
G1 X-11.08 Y-0.087 E1.59841
G1 X-11.035 Y-1.001 E1.60645
G1 X-10.985 Y-1.446 E1.61038
G1 X-10.819 Y-2.392 E1.61881
G1 X-10.713 Y-2.831 E1.62277
G1 X-10.439 Y-3.719 E1.63093
G1 X-10.28 Y-4.139 E1.63487
G1 X-9.891 Y-5.001 E1.64318
G1 X-9.676 Y-5.407 E1.64721
G1 X-9.189 Y-6.198 E1.65536
G1 X-8.934 Y-6.56 E1.65925
G1 X-8.329 Y-7.316 E1.66775
G1 X-8.016 Y-7.659 E1.67183
G1 X-7.352 Y-8.299 E1.67992
G1 X-7.007 Y-8.592 E1.68389
G1 X-6.148 Y-9.233 E1.6933
G1 X-5.543 Y-9.598 E1.69951
G1 X-3.977 Y-10.344 E1.71473
G1 X-3.376 Y-10.567 E1.72036
G1 X-2.452 Y-10.819 E1.72877
G1 X-2.005 Y-10.911 E1.73277
G1 X-1.071 Y-11.042 E1.74105
G1 X-.626 Y-11.077 E1.74497
G1 X0.293 Y-11.091 E1.75304
G1 X0.741 Y-11.069 E1.75698
G1 X1.688 Y-10.965 E1.76534
G1 X2.14 Y-10.887 E1.76937
G1 X3.035 Y-10.671 E1.77745
G1 X3.467 Y-10.537 E1.78142
G1 X4.374 Y-10.193 E1.78993
G1 X4.792 Y-10.003 E1.79396
G1 X5.609 Y-9.567 E1.80209
G1 X5.985 Y-9.335 E1.80597
G1 X6.754 Y-8.794 E1.81423
G1 X7.111 Y-8.508 E1.81824
G1 X7.817 Y-7.863 E1.82664
G1 X8.136 Y-7.532 E1.83067
G1 X8.73 Y-6.831 E1.83874
G1 X8.995 Y-6.475 E1.84263
G1 X9.527 Y-5.662 E1.85116
G1 X9.755 Y-5.26 E1.85522
G1 X10.159 Y-4.426 E1.86335
G1 X10.327 Y-4.016 E1.86724
G1 X10.631 Y-3.122 E1.87553
G1 X10.748 Y-2.694 E1.87943
G1 X10.933 Y-1.802 E1.88742
G1 X10.997 Y-1.349 E1.89144
G1 X11.073 Y-.368 E1.90008
G0 F600 X10.674 Y-.337
G1 F150 X10.68 Y0.067 E1.90362
G1 X10.635 Y0.981 E1.91166
G1 X10.591 Y1.377 E1.91515
G1 X10.425 Y2.323 E1.92359
G1 X10.331 Y2.713 E1.92711
G1 X10.057 Y3.601 E1.93526
G1 X9.916 Y3.974 E1.93876
G1 X9.527 Y4.836 E1.94707
G1 X9.335 Y5.198 E1.95066
G1 X8.848 Y5.989 E1.95882
G1 X8.621 Y6.31 E1.96227
G1 X8.016 Y7.066 E1.97077
G1 X7.739 Y7.371 E1.97439
G1 X7.075 Y8.011 E1.98248
G1 X6.768 Y8.272 E1.98602
G1 X5.909 Y8.913 E1.99543
G1 X5.371 Y9.237 E2.00094
G1 X3.805 Y9.983 E2.01617
G1 X3.271 Y10.181 E2.02117
G1 X2.347 Y10.433 E2.02957
G1 X1.949 Y10.515 E2.03314
G1 X1.015 Y10.646 E2.04142
G1 X0.62 Y10.677 E2.0449
G1 X-.299 Y10.691 E2.05297
G1 X-.697 Y10.672 E2.05646
G1 X-1.644 Y10.568 E2.06483
G1 X-2.046 Y10.498 E2.06841
G1 X-2.941 Y10.282 E2.07649
G1 X-3.325 Y10.163 E2.08002
G1 X-4.234 Y9.818 E2.08855
G1 X-4.606 Y9.649 E2.09214
G1 X-5.421 Y9.214 E2.10025
G1 X-5.755 Y9.008 E2.1037
G1 X-6.524 Y8.467 E2.11195
G1 X-6.842 Y8.212 E2.11553
G1 X-7.55 Y7.565 E2.12395
G1 X-7.833 Y7.271 E2.12753
G1 X-8.425 Y6.572 E2.13557
G1 X-8.661 Y6.255 E2.13904
G1 X-9.194 Y5.44 E2.14759
G1 X-9.396 Y5.084 E2.15118
G1 X-9.8 Y4.25 E2.15932
G1 X-9.95 Y3.884 E2.16279
G1 X-10.254 Y2.989 E2.17108
G1 X-10.358 Y2.607 E2.17456
G1 X-10.542 Y1.716 E2.18255
G1 X-10.598 Y1.317 E2.18608
G1 X-10.674 Y0.338 E2.1947
G1 X-10.68 Y-0.067 E2.19826
G1 X-10.635 Y-.981 E2.20629
G1 X-10.591 Y-1.377 E2.20979
G1 X-10.425 Y-2.323 E2.21822
G1 X-10.331 Y-2.713 E2.22174
G1 X-10.057 Y-3.601 E2.2299
G1 X-9.916 Y-3.974 E2.2334
G1 X-9.527 Y-4.836 E2.2417
G1 X-9.335 Y-5.198 E2.2453
G1 X-8.848 Y-5.989 E2.25345
G1 X-8.621 Y-6.31 E2.2569
G1 X-8.016 Y-7.066 E2.2654
G1 X-7.739 Y-7.371 E2.26902
G1 X-7.075 Y-8.011 E2.27712
G1 X-6.768 Y-8.272 E2.28065
G1 X-5.909 Y-8.913 E2.29006
G1 X-5.371 Y-9.237 E2.29557
G1 X-3.805 Y-9.983 E2.3108
G1 X-3.271 Y-10.181 E2.3158
G1 X-2.347 Y-10.433 E2.32421
G1 X-1.949 Y-10.515 E2.32778
G1 X-1.015 Y-10.646 E2.33605
G1 X-.62 Y-10.677 E2.33953
G1 X0.299 Y-10.691 E2.3476
G1 X0.697 Y-10.672 E2.3511
G1 X1.644 Y-10.568 E2.35946
G1 X2.046 Y-10.498 E2.36304
G1 X2.941 Y-10.282 E2.37113
G1 X3.325 Y-10.163 E2.37465
G1 X4.232 Y-9.819 E2.38317
G1 X4.604 Y-9.65 E2.38676
G1 X5.421 Y-9.214 E2.39489
G1 X5.755 Y-9.008 E2.39833
G1 X6.524 Y-8.467 E2.40658
G1 X6.841 Y-8.213 E2.41015
G1 X7.547 Y-7.568 E2.41854
G1 X7.83 Y-7.274 E2.42213
G1 X8.424 Y-6.573 E2.43019
G1 X8.661 Y-6.256 E2.43367
G1 X9.193 Y-5.443 E2.4422
G1 X9.395 Y-5.086 E2.4458
G1 X9.799 Y-4.252 E2.45393
G1 X9.949 Y-3.887 E2.4574
G1 X10.253 Y-2.993 E2.46568
G1 X10.356 Y-2.613 E2.46914
G1 X10.541 Y-1.721 E2.47714
G1 X10.598 Y-1.318 E2.48071
G1 X10.674 Y-.337 E2.48935
G1 F1500 E-4.01065
;MESH:circle.stl
G0 F600 X8.152 Y-.183
G0 X7.489 Y-.144
G0 X7.2 Y-1.354
;TYPE:FILL
G1 F1500 E2.48935
G1 F150 X7.2 Y1.349 E2.51308
G1 X7.107 Y1.835 E2.51742
G1 X6.82 Y2.714 E2.52554
G1 X6.427 Y3.551 E2.53365
G1 X6 Y4.224 E2.54065
G1 X6 Y-4.225 E2.61482
G0 F600 X5.971 Y-4.27
G1 F150 X5.649 Y-4.672 E2.62091
G1 X5.077 Y-5.29 E2.63086
G0 F600 X4.8 Y-5.552
G1 F150 X4.8 Y5.55 E2.72832
G1 X4.668 Y5.674 E2.72991
G1 X3.92 Y6.217 E2.73802
G1 X3.6 Y6.393 E2.74123
G1 X3.6 Y-6.391 E2.85345
G1 X3.137 Y-6.647 E2.85809
G1 X2.4 Y-6.941 E2.86506
G1 X2.4 Y6.942 E2.98693
G1 X2.259 Y6.997 E2.98826
G0 F600 X1.81 Y7.111
G1 F150 X1.28 Y7.236 E2.99782
G0 F600 X1.2 Y7.247
G1 F150 X1.2 Y-7.245 E3.12503
G1 X0.472 Y-7.339 E3.13147
G1 X0.00 Y-7.339 E3.13562
G1 X0.00 Y7.339 E3.26446
G1 X-.472 Y7.339 E3.26861
G1 X-1.2 Y7.245 E3.27505
G1 X-1.2 Y-7.247 E3.40227
G0 F600 X-1.28 Y-7.236
G1 F150 X-1.81 Y-7.111 E3.40802
G1 X-2.329 Y-6.969 E3.41371
G0 F600 X-2.4 Y-6.942
G1 F150 X-2.4 Y6.941 E3.53558
G1 X-3.137 Y6.647 E3.54254
G1 X-3.6 Y6.391 E3.54719
G1 X-3.6 Y-6.393 E3.65941
G1 X-3.92 Y-6.217 E3.66261
G1 X-4.666 Y-5.675 E3.67071
G1 X-4.8 Y-5.55 E3.67232
G1 X-4.8 Y5.552 E3.76977
G1 X-5.355 Y5.028 E3.77647
G0 F600 X-5.649 Y4.672
G1 F150 X-5.971 Y4.27 E3.78552
G0 F600 X-6 Y4.225
G1 F150 X-6 Y-4.223 E3.85967
G1 X-6.427 Y-3.551 E3.86666
G1 X-6.82 Y-2.714 E3.87478
G1 X-7.107 Y-1.835 E3.8829
G1 X-7.2 Y-1.35 E3.88723
G1 X-7.2 Y1.352 E3.91095
G0 F600 X-6.963 Y1.308
;MESH:NONMESH
G0 X1.466 Y7.2
;TIME_ELAPSED:187.986655
;LAYER:1
M106 S255
;MESH:circle.stl
G0 F900 X1.466 Y7.2 Z0.9
;TYPE:FILL
G1 F225 X-1.467 Y7.2 E4.11692
G1 X-2.267 Y6.995 E4.17492
G1 X-3.132 Y6.651 E4.24029
G1 X-3.928 Y6.212 E4.30413
G1 X-4.22 Y6 E4.32947
G1 X4.219 Y6 E4.92211
G1 X4.678 Y5.666 E4.96197
G1 X5.354 Y5.03 E5.02715
G1 X5.544 Y4.8 E5.04811
G1 X-5.545 Y4.8 E5.82684
G1 X-5.935 Y4.328 E5.86984
G1 X-6.396 Y3.599 E5.93041
G1 X6.395 Y3.6 E6.82867
G1 X6.432 Y3.542 E6.83351
G1 X6.825 Y2.703 E6.89857
G1 X6.923 Y2.4 E6.92093
G1 X-6.925 Y2.399 E7.89342
G1 X-7.11 Y1.828 E7.93557
G1 X-7.23 Y1.199 E7.98054
G1 X7.229 Y1.2 E8.99594
G1 X7.28 Y0.931 E9.01517
G1 X7.338 Y0.00 E9.08068
G1 X-7.338 Y0.00 E10.11131
G1 X-7.28 Y-.931 E10.17682
G1 X-7.229 Y-1.2 E10.19605
G1 X7.23 Y-1.199 E11.21145
G1 X7.11 Y-1.828 E11.25642
G1 X6.925 Y-2.399 E11.29857
G1 X-6.923 Y-2.4 E12.27106
G1 X-6.825 Y-2.703 E12.29342
G1 X-6.432 Y-3.542 E12.35849
G1 X-6.395 Y-3.6 E12.36332
G1 X6.396 Y-3.599 E13.26158
G1 X5.935 Y-4.328 E13.32215
G1 X5.545 Y-4.8 E13.36515
G1 X-5.544 Y-4.8 E14.14389
G1 X-5.354 Y-5.03 E14.16484
G1 X-4.678 Y-5.666 E14.23002
G1 X-4.219 Y-6 E14.26988
G1 X4.22 Y-6 E14.86252
G1 X3.928 Y-6.212 E14.88786
G1 X3.132 Y-6.651 E14.9517
G1 X2.267 Y-6.995 E15.01707
G1 X1.467 Y-7.2 E15.07507
G1 X-1.466 Y-7.2 E15.28104
G0 F900 X-1.407 Y-6.969
;MESH:NONMESH
G0 X-7.2 Y1.354
;TIME_ELAPSED:232.062212
;LAYER:2
;MESH:circle.stl
G0 F1200 X-7.2 Y1.354 Z1.7
;TYPE:FILL
G1 F300 X-7.2 Y-1.355 E15.47128
G1 X-7.11 Y-1.829 E15.50516
G1 X-6.825 Y-2.704 E15.56979
G1 X-6.432 Y-3.543 E15.63485
G1 X-6 Y-4.226 E15.69161
G1 X-6 Y4.225 E16.28509
G1 X-5.935 Y4.328 E16.29364
G1 X-5.354 Y5.03 E16.35763
G1 X-4.8 Y5.551 E16.41104
G1 X-4.8 Y-5.552 E17.19076
G1 X-4.678 Y-5.666 E17.20249
G1 X-3.929 Y-6.212 E17.26758
G1 X-3.6 Y-6.394 E17.29398
G1 X-3.6 Y6.393 E18.19196
G1 X-3.133 Y6.651 E18.22943
G1 X-2.4 Y6.942 E18.28481
G1 X-2.4 Y-6.943 E19.2599
G1 X-2.268 Y-6.995 E19.26987
G1 X-1.37 Y-7.225 E19.33496
G1 X-1.2 Y-7.247 E19.347
G1 X-1.2 Y7.246 E20.36479
G1 X-.463 Y7.34 E20.41697
G1 X0.00 Y7.34 E20.44948
G1 X0.00 Y-7.34 E21.4804
G1 X0.463 Y-7.34 E21.51291
G1 X1.2 Y-7.246 E21.56509
G1 X1.2 Y7.247 E22.58288
G1 X1.37 Y7.225 E22.59491
G1 X2.268 Y6.995 E22.66001
G1 X2.4 Y6.943 E22.66998
G1 X2.4 Y-6.942 E23.64506
G1 X3.133 Y-6.651 E23.70045
G1 X3.6 Y-6.393 E23.73792
G1 X3.6 Y6.394 E24.6359
G1 X3.929 Y6.212 E24.6623
G1 X4.678 Y5.666 E24.72739
G1 X4.8 Y5.552 E24.73912
G1 X4.8 Y-5.551 E25.51884
G1 X5.354 Y-5.03 E25.57225
G1 X5.935 Y-4.328 E25.63624
G1 X6 Y-4.225 E25.64479
G1 X6 Y4.226 E26.23827
G1 X6.432 Y3.543 E26.29503
G1 X6.825 Y2.704 E26.36009
G1 X7.11 Y1.829 E26.42471
G1 X7.2 Y1.355 E26.4586
G1 X7.2 Y-1.354 E26.64884
G0 F1200 X6.963 Y-1.309
;MESH:NONMESH
G0 X1.466 Y7.2
;TIME_ELAPSED:265.164267
;LAYER:3
;MESH:circle.stl
G0 X1.466 Y7.2 Z2.5
;TYPE:FILL
G1 F300 X-1.467 Y7.2 E26.85481
G1 X-2.267 Y6.995 E26.91281
G1 X-3.132 Y6.651 E26.97818
G1 X-3.928 Y6.212 E27.04202
G1 X-4.22 Y6 E27.06736
G1 X4.219 Y6 E27.66
G1 X4.678 Y5.666 E27.69986
G1 X5.354 Y5.03 E27.76504
G1 X5.544 Y4.8 E27.78599
G1 X-5.545 Y4.8 E28.56473
G1 X-5.935 Y4.328 E28.60773
G1 X-6.396 Y3.599 E28.6683
G1 X6.395 Y3.6 E29.56656
G1 X6.432 Y3.542 E29.57139
G1 X6.825 Y2.703 E29.63646
G1 X6.923 Y2.4 E29.65882
G1 X-6.925 Y2.399 E30.63131
G1 X-7.11 Y1.828 E30.67346
G1 X-7.23 Y1.199 E30.71843
G1 X7.229 Y1.2 E31.73383
G1 X7.28 Y0.931 E31.75306
G1 X7.338 Y0.00 E31.81856
G1 X-7.338 Y0.00 E32.8492
G1 X-7.28 Y-.931 E32.91471
G1 X-7.229 Y-1.2 E32.93394
G1 X7.23 Y-1.199 E33.94933
G1 X7.11 Y-1.828 E33.9943
G1 X6.925 Y-2.399 E34.03646
G1 X-6.923 Y-2.4 E35.00895
G1 X-6.825 Y-2.703 E35.03131
G1 X-6.432 Y-3.542 E35.09637
G1 X-6.395 Y-3.6 E35.1012
G1 X6.396 Y-3.599 E35.99947
G1 X5.935 Y-4.328 E36.06004
G1 X5.545 Y-4.8 E36.10304
G1 X-5.544 Y-4.8 E36.88177
G1 X-5.354 Y-5.03 E36.90272
G1 X-4.678 Y-5.666 E36.9679
G1 X-4.219 Y-6 E37.00777
G1 X4.22 Y-6 E37.60041
G1 X3.928 Y-6.212 E37.62575
G1 X3.132 Y-6.651 E37.68958
G1 X2.267 Y-6.995 E37.75496
G1 X1.467 Y-7.2 E37.81295
G1 X-1.466 Y-7.2 E38.01893
G0 F1200 X-1.407 Y-6.969
;MESH:NONMESH
G0 X-7.2 Y1.354
;TIME_ELAPSED:298.273225
;LAYER:4
;MESH:circle.stl
G0 X-7.2 Y1.354 Z3.3
;TYPE:FILL
G1 F300 X-7.2 Y-1.355 E38.20917
G1 X-7.11 Y-1.829 E38.24305
G1 X-6.825 Y-2.704 E38.30768
G1 X-6.432 Y-3.543 E38.37274
G1 X-6 Y-4.226 E38.42949
G1 X-6 Y4.225 E39.02297
G1 X-5.935 Y4.328 E39.03153
G1 X-5.354 Y5.03 E39.09552
G1 X-4.8 Y5.551 E39.14893
G1 X-4.8 Y-5.552 E39.92865
G1 X-4.678 Y-5.666 E39.94037
G1 X-3.929 Y-6.212 E40.00546
G1 X-3.6 Y-6.394 E40.03187
G1 X-3.6 Y6.393 E40.92985
G1 X-3.133 Y6.651 E40.96732
G1 X-2.4 Y6.942 E41.0227
G1 X-2.4 Y-6.943 E41.99779
G1 X-2.268 Y-6.995 E42.00775
G1 X-1.37 Y-7.225 E42.07285
G1 X-1.2 Y-7.247 E42.08489
G1 X-1.2 Y7.246 E43.10268
G1 X-.463 Y7.34 E43.15485
G1 X0.00 Y7.34 E43.18737
G1 X0.00 Y-7.34 E44.21829
G1 X0.463 Y-7.34 E44.2508
G1 X1.2 Y-7.246 E44.30298
G1 X1.2 Y7.247 E45.32076
G1 X1.37 Y7.225 E45.3328
G1 X2.268 Y6.995 E45.3979
G1 X2.4 Y6.943 E45.40786
G1 X2.4 Y-6.942 E46.38295
G1 X3.133 Y-6.651 E46.43834
G1 X3.6 Y-6.393 E46.4758
G1 X3.6 Y6.394 E47.37378
G1 X3.929 Y6.212 E47.40019
G1 X4.678 Y5.666 E47.46528
G1 X4.8 Y5.552 E47.47701
G1 X4.8 Y-5.551 E48.25673
G1 X5.354 Y-5.03 E48.31013
G1 X5.935 Y-4.328 E48.37413
G1 X6 Y-4.225 E48.38268
G1 X6 Y4.226 E48.97616
G1 X6.432 Y3.543 E49.03291
G1 X6.825 Y2.704 E49.09798
G1 X7.11 Y1.829 E49.1626
G1 X7.2 Y1.355 E49.19648
G1 X7.2 Y-1.354 E49.38673
G0 F1200 X6.963 Y-1.309
;MESH:NONMESH
G0 X1.466 Y7.2
;TIME_ELAPSED:331.375280
;LAYER:5
;MESH:circle.stl
G0 X1.466 Y7.2 Z4.1
;TYPE:FILL
G1 F300 X-1.467 Y7.2 E49.5927
G1 X-2.267 Y6.995 E49.65069
G1 X-3.132 Y6.651 E49.71607
G1 X-3.928 Y6.212 E49.7799
G1 X-4.22 Y6 E49.80525
G1 X4.219 Y6 E50.39788
G1 X4.678 Y5.666 E50.43775
G1 X5.354 Y5.03 E50.50293
G1 X5.544 Y4.8 E50.52388
G1 X-5.545 Y4.8 E51.30262
G1 X-5.935 Y4.328 E51.34561
G1 X-6.396 Y3.599 E51.40619
G1 X6.395 Y3.6 E52.30445
G1 X6.432 Y3.542 E52.30928
G1 X6.825 Y2.703 E52.37434
G1 X6.923 Y2.4 E52.39671
G1 X-6.925 Y2.399 E53.3692
G1 X-7.11 Y1.828 E53.41135
G1 X-7.23 Y1.199 E53.45632
G1 X7.229 Y1.2 E54.47172
G1 X7.28 Y0.931 E54.49094
G1 X7.338 Y0.00 E54.55645
G1 X-7.338 Y0.00 E55.58709
G1 X-7.28 Y-.931 E55.6526
G1 X-7.229 Y-1.2 E55.67182
G1 X7.23 Y-1.199 E56.68722
G1 X7.11 Y-1.828 E56.73219
G1 X6.925 Y-2.399 E56.77434
G1 X-6.923 Y-2.4 E57.74683
G1 X-6.825 Y-2.703 E57.7692
G1 X-6.432 Y-3.542 E57.83426
G1 X-6.395 Y-3.6 E57.83909
G1 X6.396 Y-3.599 E58.73735
G1 X5.935 Y-4.328 E58.79792
G1 X5.545 Y-4.8 E58.84092
G1 X-5.544 Y-4.8 E59.61966
G1 X-5.354 Y-5.03 E59.64061
G1 X-4.678 Y-5.666 E59.70579
G1 X-4.219 Y-6 E59.74566
G1 X4.22 Y-6 E60.33829
G1 X3.928 Y-6.212 E60.36363
G1 X3.132 Y-6.651 E60.42747
G1 X2.267 Y-6.995 E60.49284
G1 X1.467 Y-7.2 E60.55084
G1 X-1.466 Y-7.2 E60.75681
G0 F1200 X-1.407 Y-6.969
;MESH:NONMESH
G0 X-7.2 Y1.354
;TIME_ELAPSED:364.484238
;LAYER:6
;MESH:circle.stl
G0 X-7.2 Y1.354 Z4.9
;TYPE:FILL
G1 F300 X-7.2 Y-1.355 E60.94706
G1 X-7.11 Y-1.829 E60.98094
G1 X-6.825 Y-2.704 E61.04556
G1 X-6.432 Y-3.543 E61.11063
G1 X-6 Y-4.226 E61.16738
G1 X-6 Y4.225 E61.76086
G1 X-5.935 Y4.328 E61.76941
G1 X-5.354 Y5.03 E61.83341
G1 X-4.8 Y5.551 E61.88681
G1 X-4.8 Y-5.552 E62.66653
G1 X-4.678 Y-5.666 E62.67826
G1 X-3.929 Y-6.212 E62.74335
G1 X-3.6 Y-6.394 E62.76976
G1 X-3.6 Y6.393 E63.66774
G1 X-3.133 Y6.651 E63.7052
G1 X-2.4 Y6.942 E63.76059
G1 X-2.4 Y-6.943 E64.73568
G1 X-2.268 Y-6.995 E64.74564
G1 X-1.37 Y-7.225 E64.81074
G1 X-1.2 Y-7.247 E64.82278
G1 X-1.2 Y7.246 E65.84056
G1 X-.463 Y7.34 E65.89274
G1 X0.00 Y7.34 E65.92525
G1 X0.00 Y-7.34 E66.95617
G1 X0.463 Y-7.34 E66.98869
G1 X1.2 Y-7.246 E67.04086
G1 X1.2 Y7.247 E68.05865
G1 X1.37 Y7.225 E68.07069
G1 X2.268 Y6.995 E68.13579
G1 X2.4 Y6.943 E68.14575
G1 X2.4 Y-6.942 E69.12084
G1 X3.133 Y-6.651 E69.17622
G1 X3.6 Y-6.393 E69.21369
G1 X3.6 Y6.394 E70.11167
G1 X3.929 Y6.212 E70.13807
G1 X4.678 Y5.666 E70.20317
G1 X4.8 Y5.552 E70.21489
G1 X4.8 Y-5.551 E70.99461
G1 X5.354 Y-5.03 E71.04802
G1 X5.935 Y-4.328 E71.11201
G1 X6 Y-4.225 E71.12057
G1 X6 Y4.226 E71.71405
G1 X6.432 Y3.543 E71.7708
G1 X6.825 Y2.704 E71.83586
G1 X7.11 Y1.829 E71.90049
G1 X7.2 Y1.355 E71.93437
G1 X7.2 Y-1.354 E72.12461
G0 F1200 X6.963 Y-1.309
;TIME_ELAPSED:397.079786
G1 F1500 E65.62461
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
;SETTING_3 {"global_quality": "[general]\\nversion = 4\\nname = Carolyn - PLA\\n
;SETTING_3 definition = fdmprinter\\n\\n[metadata]\\nsetting_version = 5\\ntype 
;SETTING_3 = quality_changes\\nquality_type = verydraft\\n\\n[values]\\nadhesion
;SETTING_3 _type = skirt\\nlayer_height = 0.8\\nlayer_height_0 = 0.1\\nmaterial_
;SETTING_3 bed_temperature = 0\\n\\n", "extruder_quality": ["[general]\\nversion
;SETTING_3  = 4\\nname = Carolyn - PLA\\ndefinition = fdmprinter\\n\\n[metadata]
;SETTING_3 \\nposition = 0\\nsetting_version = 5\\ntype = quality_changes\\nqual
;SETTING_3 ity_type = verydraft\\n\\n[values]\\nbrim_width = 0\\ninfill_angles =
;SETTING_3  [0,90]\\ninfill_line_distance = 1.2\\ninfill_pattern = zigzag\\ninfi
;SETTING_3 ll_sparse_density = 70\\nmaterial_flow = 140\\nskirt_line_count = 2\\
;SETTING_3 nspeed_print = 5\\nspeed_travel = 20\\ntop_bottom_thickness = 0.0\\nw
;SETTING_3 all_thickness = 0.0\\n\\n"]}