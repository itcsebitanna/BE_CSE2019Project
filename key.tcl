set cbr0_1 [attach-CBR-traffic $node_(0) $sink(1) 64 0.06]
$ns_ at 19.33 "$cbr0_1 start"
$ns_ at 19.43 "$cbr0_1 stop"
$ns_ at 19.33 "$node_(0) color maroon"
$ns_ at 19.355 "$ns_ trace-annotate \"node_ - 0 send the Hello message with key values to its neighbor - 1 \""
set cbr0_1 [attach-CBR-traffic $node_(1) $sink(0) 64 0.06]
$ns_ at 19.34 "$cbr0_1 start"
$ns_ at 19.44 "$cbr0_1 stop"
$ns_ at 19.365 "$ns_ trace-annotate \"node_ - 0 send the reply hello key message with session to its neighbor - 1 \""
set cbr0_1 [attach-CBR-traffic $node_(0) $sink(1) 64 0.06]
$ns_ at 19.35 "$cbr0_1 start"
$ns_ at 19.45 "$cbr0_1 stop"
$ns_ at 19.375 "$ns_ trace-annotate \"node_ - 0 send about the acceptance of session key with broadcast key to its neighbor - 1 \""
set cbr0_5 [attach-CBR-traffic $node_(0) $sink(5) 64 0.06]
$ns_ at 19.36 "$cbr0_5 start"
$ns_ at 19.46 "$cbr0_5 stop"
$ns_ at 19.36 "$node_(0) color maroon"
$ns_ at 19.385 "$ns_ trace-annotate \"node_ - 0 send the Hello message with key values to its neighbor - 5 \""
set cbr0_5 [attach-CBR-traffic $node_(5) $sink(0) 64 0.06]
$ns_ at 19.37 "$cbr0_5 start"
$ns_ at 19.47 "$cbr0_5 stop"
$ns_ at 19.395 "$ns_ trace-annotate \"node_ - 0 send the reply hello key message with session to its neighbor - 5 \""
set cbr0_5 [attach-CBR-traffic $node_(0) $sink(5) 64 0.06]
$ns_ at 19.38 "$cbr0_5 start"
$ns_ at 19.48 "$cbr0_5 stop"
$ns_ at 19.405 "$ns_ trace-annotate \"node_ - 0 send about the acceptance of session key with broadcast key to its neighbor - 5 \""
set cbr0_6 [attach-CBR-traffic $node_(0) $sink(6) 64 0.06]
$ns_ at 19.39 "$cbr0_6 start"
$ns_ at 19.49 "$cbr0_6 stop"
$ns_ at 19.39 "$node_(0) color maroon"
$ns_ at 19.415 "$ns_ trace-annotate \"node_ - 0 send the Hello message with key values to its neighbor - 6 \""
set cbr0_6 [attach-CBR-traffic $node_(6) $sink(0) 64 0.06]
$ns_ at 19.4 "$cbr0_6 start"
$ns_ at 19.5 "$cbr0_6 stop"
$ns_ at 19.425 "$ns_ trace-annotate \"node_ - 0 send the reply hello key message with session to its neighbor - 6 \""
set cbr0_6 [attach-CBR-traffic $node_(0) $sink(6) 64 0.06]
$ns_ at 19.41 "$cbr0_6 start"
$ns_ at 19.51 "$cbr0_6 stop"
$ns_ at 19.435 "$ns_ trace-annotate \"node_ - 0 send about the acceptance of session key with broadcast key to its neighbor - 6 \""
set cbr0_16 [attach-CBR-traffic $node_(0) $sink(16) 64 0.06]
$ns_ at 19.42 "$cbr0_16 start"
$ns_ at 19.52 "$cbr0_16 stop"
$ns_ at 19.42 "$node_(0) color maroon"
$ns_ at 19.445 "$ns_ trace-annotate \"node_ - 0 send the Hello message with key values to its neighbor - 16 \""
set cbr0_16 [attach-CBR-traffic $node_(16) $sink(0) 64 0.06]
$ns_ at 19.43 "$cbr0_16 start"
$ns_ at 19.53 "$cbr0_16 stop"
$ns_ at 19.455 "$ns_ trace-annotate \"node_ - 0 send the reply hello key message with session to its neighbor - 16 \""
set cbr0_16 [attach-CBR-traffic $node_(0) $sink(16) 64 0.06]
$ns_ at 19.44 "$cbr0_16 start"
$ns_ at 19.54 "$cbr0_16 stop"
$ns_ at 19.465 "$ns_ trace-annotate \"node_ - 0 send about the acceptance of session key with broadcast key to its neighbor - 16 \""
set cbr1_0 [attach-CBR-traffic $node_(1) $sink(0) 64 0.06]
$ns_ at 19.43 "$cbr1_0 start"
$ns_ at 19.53 "$cbr1_0 stop"
$ns_ at 19.43 "$node_(1) color maroon"
$ns_ at 19.455 "$ns_ trace-annotate \"node_ - 1 send the Hello message with key values to its neighbor - 0 \""
set cbr1_0 [attach-CBR-traffic $node_(0) $sink(1) 64 0.06]
$ns_ at 19.44 "$cbr1_0 start"
$ns_ at 19.54 "$cbr1_0 stop"
$ns_ at 19.465 "$ns_ trace-annotate \"node_ - 1 send the reply hello key message with session to its neighbor - 0 \""
set cbr1_0 [attach-CBR-traffic $node_(1) $sink(0) 64 0.06]
$ns_ at 19.45 "$cbr1_0 start"
$ns_ at 19.55 "$cbr1_0 stop"
$ns_ at 19.475 "$ns_ trace-annotate \"node_ - 1 send about the acceptance of session key with broadcast key to its neighbor - 0 \""
set cbr1_2 [attach-CBR-traffic $node_(1) $sink(2) 64 0.06]
$ns_ at 19.46 "$cbr1_2 start"
$ns_ at 19.56 "$cbr1_2 stop"
$ns_ at 19.46 "$node_(1) color maroon"
$ns_ at 19.485 "$ns_ trace-annotate \"node_ - 1 send the Hello message with key values to its neighbor - 2 \""
set cbr1_2 [attach-CBR-traffic $node_(2) $sink(1) 64 0.06]
$ns_ at 19.47 "$cbr1_2 start"
$ns_ at 19.57 "$cbr1_2 stop"
$ns_ at 19.495 "$ns_ trace-annotate \"node_ - 1 send the reply hello key message with session to its neighbor - 2 \""
set cbr1_2 [attach-CBR-traffic $node_(1) $sink(2) 64 0.06]
$ns_ at 19.48 "$cbr1_2 start"
$ns_ at 19.58 "$cbr1_2 stop"
$ns_ at 19.505 "$ns_ trace-annotate \"node_ - 1 send about the acceptance of session key with broadcast key to its neighbor - 2 \""
set cbr1_5 [attach-CBR-traffic $node_(1) $sink(5) 64 0.06]
$ns_ at 19.49 "$cbr1_5 start"
$ns_ at 19.59 "$cbr1_5 stop"
$ns_ at 19.49 "$node_(1) color maroon"
$ns_ at 19.515 "$ns_ trace-annotate \"node_ - 1 send the Hello message with key values to its neighbor - 5 \""
set cbr1_5 [attach-CBR-traffic $node_(5) $sink(1) 64 0.06]
$ns_ at 19.5 "$cbr1_5 start"
$ns_ at 19.6 "$cbr1_5 stop"
$ns_ at 19.525 "$ns_ trace-annotate \"node_ - 1 send the reply hello key message with session to its neighbor - 5 \""
set cbr1_5 [attach-CBR-traffic $node_(1) $sink(5) 64 0.06]
$ns_ at 19.51 "$cbr1_5 start"
$ns_ at 19.61 "$cbr1_5 stop"
$ns_ at 19.535 "$ns_ trace-annotate \"node_ - 1 send about the acceptance of session key with broadcast key to its neighbor - 5 \""
set cbr2_1 [attach-CBR-traffic $node_(2) $sink(1) 64 0.06]
$ns_ at 19.53 "$cbr2_1 start"
$ns_ at 19.63 "$cbr2_1 stop"
$ns_ at 19.53 "$node_(2) color maroon"
$ns_ at 19.555 "$ns_ trace-annotate \"node_ - 2 send the Hello message with key values to its neighbor - 1 \""
set cbr2_1 [attach-CBR-traffic $node_(1) $sink(2) 64 0.06]
$ns_ at 19.54 "$cbr2_1 start"
$ns_ at 19.64 "$cbr2_1 stop"
$ns_ at 19.565 "$ns_ trace-annotate \"node_ - 2 send the reply hello key message with session to its neighbor - 1 \""
set cbr2_1 [attach-CBR-traffic $node_(2) $sink(1) 64 0.06]
$ns_ at 19.55 "$cbr2_1 start"
$ns_ at 19.65 "$cbr2_1 stop"
$ns_ at 19.575 "$ns_ trace-annotate \"node_ - 2 send about the acceptance of session key with broadcast key to its neighbor - 1 \""
set cbr2_3 [attach-CBR-traffic $node_(2) $sink(3) 64 0.06]
$ns_ at 19.56 "$cbr2_3 start"
$ns_ at 19.66 "$cbr2_3 stop"
$ns_ at 19.56 "$node_(2) color maroon"
$ns_ at 19.585 "$ns_ trace-annotate \"node_ - 2 send the Hello message with key values to its neighbor - 3 \""
set cbr2_3 [attach-CBR-traffic $node_(3) $sink(2) 64 0.06]
$ns_ at 19.57 "$cbr2_3 start"
$ns_ at 19.67 "$cbr2_3 stop"
$ns_ at 19.595 "$ns_ trace-annotate \"node_ - 2 send the reply hello key message with session to its neighbor - 3 \""
set cbr2_3 [attach-CBR-traffic $node_(2) $sink(3) 64 0.06]
$ns_ at 19.58 "$cbr2_3 start"
$ns_ at 19.68 "$cbr2_3 stop"
$ns_ at 19.605 "$ns_ trace-annotate \"node_ - 2 send about the acceptance of session key with broadcast key to its neighbor - 3 \""
set cbr2_4 [attach-CBR-traffic $node_(2) $sink(4) 64 0.06]
$ns_ at 19.59 "$cbr2_4 start"
$ns_ at 19.69 "$cbr2_4 stop"
$ns_ at 19.59 "$node_(2) color maroon"
$ns_ at 19.615 "$ns_ trace-annotate \"node_ - 2 send the Hello message with key values to its neighbor - 4 \""
set cbr2_4 [attach-CBR-traffic $node_(4) $sink(2) 64 0.06]
$ns_ at 19.6 "$cbr2_4 start"
$ns_ at 19.7 "$cbr2_4 stop"
$ns_ at 19.625 "$ns_ trace-annotate \"node_ - 2 send the reply hello key message with session to its neighbor - 4 \""
set cbr2_4 [attach-CBR-traffic $node_(2) $sink(4) 64 0.06]
$ns_ at 19.61 "$cbr2_4 start"
$ns_ at 19.71 "$cbr2_4 stop"
$ns_ at 19.635 "$ns_ trace-annotate \"node_ - 2 send about the acceptance of session key with broadcast key to its neighbor - 4 \""
set cbr2_5 [attach-CBR-traffic $node_(2) $sink(5) 64 0.06]
$ns_ at 19.62 "$cbr2_5 start"
$ns_ at 19.72 "$cbr2_5 stop"
$ns_ at 19.62 "$node_(2) color maroon"
$ns_ at 19.645 "$ns_ trace-annotate \"node_ - 2 send the Hello message with key values to its neighbor - 5 \""
set cbr2_5 [attach-CBR-traffic $node_(5) $sink(2) 64 0.06]
$ns_ at 19.63 "$cbr2_5 start"
$ns_ at 19.73 "$cbr2_5 stop"
$ns_ at 19.655 "$ns_ trace-annotate \"node_ - 2 send the reply hello key message with session to its neighbor - 5 \""
set cbr2_5 [attach-CBR-traffic $node_(2) $sink(5) 64 0.06]
$ns_ at 19.64 "$cbr2_5 start"
$ns_ at 19.74 "$cbr2_5 stop"
$ns_ at 19.665 "$ns_ trace-annotate \"node_ - 2 send about the acceptance of session key with broadcast key to its neighbor - 5 \""
set cbr3_2 [attach-CBR-traffic $node_(3) $sink(2) 64 0.06]
$ns_ at 19.63 "$cbr3_2 start"
$ns_ at 19.73 "$cbr3_2 stop"
$ns_ at 19.63 "$node_(3) color maroon"
$ns_ at 19.655 "$ns_ trace-annotate \"node_ - 3 send the Hello message with key values to its neighbor - 2 \""
set cbr3_2 [attach-CBR-traffic $node_(2) $sink(3) 64 0.06]
$ns_ at 19.64 "$cbr3_2 start"
$ns_ at 19.74 "$cbr3_2 stop"
$ns_ at 19.665 "$ns_ trace-annotate \"node_ - 3 send the reply hello key message with session to its neighbor - 2 \""
set cbr3_2 [attach-CBR-traffic $node_(3) $sink(2) 64 0.06]
$ns_ at 19.65 "$cbr3_2 start"
$ns_ at 19.75 "$cbr3_2 stop"
$ns_ at 19.675 "$ns_ trace-annotate \"node_ - 3 send about the acceptance of session key with broadcast key to its neighbor - 2 \""
set cbr3_4 [attach-CBR-traffic $node_(3) $sink(4) 64 0.06]
$ns_ at 19.66 "$cbr3_4 start"
$ns_ at 19.76 "$cbr3_4 stop"
$ns_ at 19.66 "$node_(3) color maroon"
$ns_ at 19.685 "$ns_ trace-annotate \"node_ - 3 send the Hello message with key values to its neighbor - 4 \""
set cbr3_4 [attach-CBR-traffic $node_(4) $sink(3) 64 0.06]
$ns_ at 19.67 "$cbr3_4 start"
$ns_ at 19.77 "$cbr3_4 stop"
$ns_ at 19.695 "$ns_ trace-annotate \"node_ - 3 send the reply hello key message with session to its neighbor - 4 \""
set cbr3_4 [attach-CBR-traffic $node_(3) $sink(4) 64 0.06]
$ns_ at 19.68 "$cbr3_4 start"
$ns_ at 19.78 "$cbr3_4 stop"
$ns_ at 19.705 "$ns_ trace-annotate \"node_ - 3 send about the acceptance of session key with broadcast key to its neighbor - 4 \""
set cbr3_5 [attach-CBR-traffic $node_(3) $sink(5) 64 0.06]
$ns_ at 19.69 "$cbr3_5 start"
$ns_ at 19.79 "$cbr3_5 stop"
$ns_ at 19.69 "$node_(3) color maroon"
$ns_ at 19.715 "$ns_ trace-annotate \"node_ - 3 send the Hello message with key values to its neighbor - 5 \""
set cbr3_5 [attach-CBR-traffic $node_(5) $sink(3) 64 0.06]
$ns_ at 19.7 "$cbr3_5 start"
$ns_ at 19.8 "$cbr3_5 stop"
$ns_ at 19.725 "$ns_ trace-annotate \"node_ - 3 send the reply hello key message with session to its neighbor - 5 \""
set cbr3_5 [attach-CBR-traffic $node_(3) $sink(5) 64 0.06]
$ns_ at 19.71 "$cbr3_5 start"
$ns_ at 19.81 "$cbr3_5 stop"
$ns_ at 19.735 "$ns_ trace-annotate \"node_ - 3 send about the acceptance of session key with broadcast key to its neighbor - 5 \""
set cbr3_7 [attach-CBR-traffic $node_(3) $sink(7) 64 0.06]
$ns_ at 19.72 "$cbr3_7 start"
$ns_ at 19.82 "$cbr3_7 stop"
$ns_ at 19.72 "$node_(3) color maroon"
$ns_ at 19.745 "$ns_ trace-annotate \"node_ - 3 send the Hello message with key values to its neighbor - 7 \""
set cbr3_7 [attach-CBR-traffic $node_(7) $sink(3) 64 0.06]
$ns_ at 19.73 "$cbr3_7 start"
$ns_ at 19.83 "$cbr3_7 stop"
$ns_ at 19.755 "$ns_ trace-annotate \"node_ - 3 send the reply hello key message with session to its neighbor - 7 \""
set cbr3_7 [attach-CBR-traffic $node_(3) $sink(7) 64 0.06]
$ns_ at 19.74 "$cbr3_7 start"
$ns_ at 19.84 "$cbr3_7 stop"
$ns_ at 19.765 "$ns_ trace-annotate \"node_ - 3 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr3_8 [attach-CBR-traffic $node_(3) $sink(8) 64 0.06]
$ns_ at 19.75 "$cbr3_8 start"
$ns_ at 19.85 "$cbr3_8 stop"
$ns_ at 19.75 "$node_(3) color maroon"
$ns_ at 19.775 "$ns_ trace-annotate \"node_ - 3 send the Hello message with key values to its neighbor - 8 \""
set cbr3_8 [attach-CBR-traffic $node_(8) $sink(3) 64 0.06]
$ns_ at 19.76 "$cbr3_8 start"
$ns_ at 19.86 "$cbr3_8 stop"
$ns_ at 19.785 "$ns_ trace-annotate \"node_ - 3 send the reply hello key message with session to its neighbor - 8 \""
set cbr3_8 [attach-CBR-traffic $node_(3) $sink(8) 64 0.06]
$ns_ at 19.77 "$cbr3_8 start"
$ns_ at 19.87 "$cbr3_8 stop"
$ns_ at 19.795 "$ns_ trace-annotate \"node_ - 3 send about the acceptance of session key with broadcast key to its neighbor - 8 \""
set cbr4_2 [attach-CBR-traffic $node_(4) $sink(2) 64 0.06]
$ns_ at 19.73 "$cbr4_2 start"
$ns_ at 19.83 "$cbr4_2 stop"
$ns_ at 19.73 "$node_(4) color maroon"
$ns_ at 19.755 "$ns_ trace-annotate \"node_ - 4 send the Hello message with key values to its neighbor - 2 \""
set cbr4_2 [attach-CBR-traffic $node_(2) $sink(4) 64 0.06]
$ns_ at 19.74 "$cbr4_2 start"
$ns_ at 19.84 "$cbr4_2 stop"
$ns_ at 19.765 "$ns_ trace-annotate \"node_ - 4 send the reply hello key message with session to its neighbor - 2 \""
set cbr4_2 [attach-CBR-traffic $node_(4) $sink(2) 64 0.06]
$ns_ at 19.75 "$cbr4_2 start"
$ns_ at 19.85 "$cbr4_2 stop"
$ns_ at 19.775 "$ns_ trace-annotate \"node_ - 4 send about the acceptance of session key with broadcast key to its neighbor - 2 \""
set cbr4_3 [attach-CBR-traffic $node_(4) $sink(3) 64 0.06]
$ns_ at 19.76 "$cbr4_3 start"
$ns_ at 19.86 "$cbr4_3 stop"
$ns_ at 19.76 "$node_(4) color maroon"
$ns_ at 19.785 "$ns_ trace-annotate \"node_ - 4 send the Hello message with key values to its neighbor - 3 \""
set cbr4_3 [attach-CBR-traffic $node_(3) $sink(4) 64 0.06]
$ns_ at 19.77 "$cbr4_3 start"
$ns_ at 19.87 "$cbr4_3 stop"
$ns_ at 19.795 "$ns_ trace-annotate \"node_ - 4 send the reply hello key message with session to its neighbor - 3 \""
set cbr4_3 [attach-CBR-traffic $node_(4) $sink(3) 64 0.06]
$ns_ at 19.78 "$cbr4_3 start"
$ns_ at 19.88 "$cbr4_3 stop"
$ns_ at 19.805 "$ns_ trace-annotate \"node_ - 4 send about the acceptance of session key with broadcast key to its neighbor - 3 \""
set cbr4_8 [attach-CBR-traffic $node_(4) $sink(8) 64 0.06]
$ns_ at 19.79 "$cbr4_8 start"
$ns_ at 19.89 "$cbr4_8 stop"
$ns_ at 19.79 "$node_(4) color maroon"
$ns_ at 19.815 "$ns_ trace-annotate \"node_ - 4 send the Hello message with key values to its neighbor - 8 \""
set cbr4_8 [attach-CBR-traffic $node_(8) $sink(4) 64 0.06]
$ns_ at 19.8 "$cbr4_8 start"
$ns_ at 19.9 "$cbr4_8 stop"
$ns_ at 19.825 "$ns_ trace-annotate \"node_ - 4 send the reply hello key message with session to its neighbor - 8 \""
set cbr4_8 [attach-CBR-traffic $node_(4) $sink(8) 64 0.06]
$ns_ at 19.81 "$cbr4_8 start"
$ns_ at 19.91 "$cbr4_8 stop"
$ns_ at 19.835 "$ns_ trace-annotate \"node_ - 4 send about the acceptance of session key with broadcast key to its neighbor - 8 \""
set cbr4_9 [attach-CBR-traffic $node_(4) $sink(9) 64 0.06]
$ns_ at 19.82 "$cbr4_9 start"
$ns_ at 19.92 "$cbr4_9 stop"
$ns_ at 19.82 "$node_(4) color maroon"
$ns_ at 19.845 "$ns_ trace-annotate \"node_ - 4 send the Hello message with key values to its neighbor - 9 \""
set cbr4_9 [attach-CBR-traffic $node_(9) $sink(4) 64 0.06]
$ns_ at 19.83 "$cbr4_9 start"
$ns_ at 19.93 "$cbr4_9 stop"
$ns_ at 19.855 "$ns_ trace-annotate \"node_ - 4 send the reply hello key message with session to its neighbor - 9 \""
set cbr4_9 [attach-CBR-traffic $node_(4) $sink(9) 64 0.06]
$ns_ at 19.84 "$cbr4_9 start"
$ns_ at 19.94 "$cbr4_9 stop"
$ns_ at 19.865 "$ns_ trace-annotate \"node_ - 4 send about the acceptance of session key with broadcast key to its neighbor - 9 \""
set cbr5_0 [attach-CBR-traffic $node_(5) $sink(0) 64 0.06]
$ns_ at 19.83 "$cbr5_0 start"
$ns_ at 19.93 "$cbr5_0 stop"
$ns_ at 19.83 "$node_(5) color maroon"
$ns_ at 19.855 "$ns_ trace-annotate \"node_ - 5 send the Hello message with key values to its neighbor - 0 \""
set cbr5_0 [attach-CBR-traffic $node_(0) $sink(5) 64 0.06]
$ns_ at 19.84 "$cbr5_0 start"
$ns_ at 19.94 "$cbr5_0 stop"
$ns_ at 19.865 "$ns_ trace-annotate \"node_ - 5 send the reply hello key message with session to its neighbor - 0 \""
set cbr5_0 [attach-CBR-traffic $node_(5) $sink(0) 64 0.06]
$ns_ at 19.85 "$cbr5_0 start"
$ns_ at 19.95 "$cbr5_0 stop"
$ns_ at 19.875 "$ns_ trace-annotate \"node_ - 5 send about the acceptance of session key with broadcast key to its neighbor - 0 \""
set cbr5_1 [attach-CBR-traffic $node_(5) $sink(1) 64 0.06]
$ns_ at 19.86 "$cbr5_1 start"
$ns_ at 19.96 "$cbr5_1 stop"
$ns_ at 19.86 "$node_(5) color maroon"
$ns_ at 19.885 "$ns_ trace-annotate \"node_ - 5 send the Hello message with key values to its neighbor - 1 \""
set cbr5_1 [attach-CBR-traffic $node_(1) $sink(5) 64 0.06]
$ns_ at 19.87 "$cbr5_1 start"
$ns_ at 19.97 "$cbr5_1 stop"
$ns_ at 19.895 "$ns_ trace-annotate \"node_ - 5 send the reply hello key message with session to its neighbor - 1 \""
set cbr5_1 [attach-CBR-traffic $node_(5) $sink(1) 64 0.06]
$ns_ at 19.88 "$cbr5_1 start"
$ns_ at 19.98 "$cbr5_1 stop"
$ns_ at 19.905 "$ns_ trace-annotate \"node_ - 5 send about the acceptance of session key with broadcast key to its neighbor - 1 \""
set cbr5_2 [attach-CBR-traffic $node_(5) $sink(2) 64 0.06]
$ns_ at 19.89 "$cbr5_2 start"
$ns_ at 19.99 "$cbr5_2 stop"
$ns_ at 19.89 "$node_(5) color maroon"
$ns_ at 19.915 "$ns_ trace-annotate \"node_ - 5 send the Hello message with key values to its neighbor - 2 \""
set cbr5_2 [attach-CBR-traffic $node_(2) $sink(5) 64 0.06]
$ns_ at 19.9 "$cbr5_2 start"
$ns_ at 20 "$cbr5_2 stop"
$ns_ at 19.925 "$ns_ trace-annotate \"node_ - 5 send the reply hello key message with session to its neighbor - 2 \""
set cbr5_2 [attach-CBR-traffic $node_(5) $sink(2) 64 0.06]
$ns_ at 19.91 "$cbr5_2 start"
$ns_ at 20.01 "$cbr5_2 stop"
$ns_ at 19.935 "$ns_ trace-annotate \"node_ - 5 send about the acceptance of session key with broadcast key to its neighbor - 2 \""
set cbr5_3 [attach-CBR-traffic $node_(5) $sink(3) 64 0.06]
$ns_ at 19.92 "$cbr5_3 start"
$ns_ at 20.02 "$cbr5_3 stop"
$ns_ at 19.92 "$node_(5) color maroon"
$ns_ at 19.945 "$ns_ trace-annotate \"node_ - 5 send the Hello message with key values to its neighbor - 3 \""
set cbr5_3 [attach-CBR-traffic $node_(3) $sink(5) 64 0.06]
$ns_ at 19.93 "$cbr5_3 start"
$ns_ at 20.03 "$cbr5_3 stop"
$ns_ at 19.955 "$ns_ trace-annotate \"node_ - 5 send the reply hello key message with session to its neighbor - 3 \""
set cbr5_3 [attach-CBR-traffic $node_(5) $sink(3) 64 0.06]
$ns_ at 19.94 "$cbr5_3 start"
$ns_ at 20.04 "$cbr5_3 stop"
$ns_ at 19.965 "$ns_ trace-annotate \"node_ - 5 send about the acceptance of session key with broadcast key to its neighbor - 3 \""
set cbr5_6 [attach-CBR-traffic $node_(5) $sink(6) 64 0.06]
$ns_ at 19.95 "$cbr5_6 start"
$ns_ at 20.05 "$cbr5_6 stop"
$ns_ at 19.95 "$node_(5) color maroon"
$ns_ at 19.975 "$ns_ trace-annotate \"node_ - 5 send the Hello message with key values to its neighbor - 6 \""
set cbr5_6 [attach-CBR-traffic $node_(6) $sink(5) 64 0.06]
$ns_ at 19.96 "$cbr5_6 start"
$ns_ at 20.06 "$cbr5_6 stop"
$ns_ at 19.985 "$ns_ trace-annotate \"node_ - 5 send the reply hello key message with session to its neighbor - 6 \""
set cbr5_6 [attach-CBR-traffic $node_(5) $sink(6) 64 0.06]
$ns_ at 19.97 "$cbr5_6 start"
$ns_ at 20.07 "$cbr5_6 stop"
$ns_ at 19.995 "$ns_ trace-annotate \"node_ - 5 send about the acceptance of session key with broadcast key to its neighbor - 6 \""
set cbr5_7 [attach-CBR-traffic $node_(5) $sink(7) 64 0.06]
$ns_ at 19.98 "$cbr5_7 start"
$ns_ at 20.08 "$cbr5_7 stop"
$ns_ at 19.98 "$node_(5) color maroon"
$ns_ at 20.005 "$ns_ trace-annotate \"node_ - 5 send the Hello message with key values to its neighbor - 7 \""
set cbr5_7 [attach-CBR-traffic $node_(7) $sink(5) 64 0.06]
$ns_ at 19.99 "$cbr5_7 start"
$ns_ at 20.09 "$cbr5_7 stop"
$ns_ at 20.015 "$ns_ trace-annotate \"node_ - 5 send the reply hello key message with session to its neighbor - 7 \""
set cbr5_7 [attach-CBR-traffic $node_(5) $sink(7) 64 0.06]
$ns_ at 20 "$cbr5_7 start"
$ns_ at 20.1 "$cbr5_7 stop"
$ns_ at 20.025 "$ns_ trace-annotate \"node_ - 5 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr6_0 [attach-CBR-traffic $node_(6) $sink(0) 64 0.06]
$ns_ at 19.93 "$cbr6_0 start"
$ns_ at 20.03 "$cbr6_0 stop"
$ns_ at 19.93 "$node_(6) color maroon"
$ns_ at 19.955 "$ns_ trace-annotate \"node_ - 6 send the Hello message with key values to its neighbor - 0 \""
set cbr6_0 [attach-CBR-traffic $node_(0) $sink(6) 64 0.06]
$ns_ at 19.94 "$cbr6_0 start"
$ns_ at 20.04 "$cbr6_0 stop"
$ns_ at 19.965 "$ns_ trace-annotate \"node_ - 6 send the reply hello key message with session to its neighbor - 0 \""
set cbr6_0 [attach-CBR-traffic $node_(6) $sink(0) 64 0.06]
$ns_ at 19.95 "$cbr6_0 start"
$ns_ at 20.05 "$cbr6_0 stop"
$ns_ at 19.975 "$ns_ trace-annotate \"node_ - 6 send about the acceptance of session key with broadcast key to its neighbor - 0 \""
set cbr6_5 [attach-CBR-traffic $node_(6) $sink(5) 64 0.06]
$ns_ at 19.96 "$cbr6_5 start"
$ns_ at 20.06 "$cbr6_5 stop"
$ns_ at 19.96 "$node_(6) color maroon"
$ns_ at 19.985 "$ns_ trace-annotate \"node_ - 6 send the Hello message with key values to its neighbor - 5 \""
set cbr6_5 [attach-CBR-traffic $node_(5) $sink(6) 64 0.06]
$ns_ at 19.97 "$cbr6_5 start"
$ns_ at 20.07 "$cbr6_5 stop"
$ns_ at 19.995 "$ns_ trace-annotate \"node_ - 6 send the reply hello key message with session to its neighbor - 5 \""
set cbr6_5 [attach-CBR-traffic $node_(6) $sink(5) 64 0.06]
$ns_ at 19.98 "$cbr6_5 start"
$ns_ at 20.08 "$cbr6_5 stop"
$ns_ at 20.005 "$ns_ trace-annotate \"node_ - 6 send about the acceptance of session key with broadcast key to its neighbor - 5 \""
set cbr6_7 [attach-CBR-traffic $node_(6) $sink(7) 64 0.06]
$ns_ at 19.99 "$cbr6_7 start"
$ns_ at 20.09 "$cbr6_7 stop"
$ns_ at 19.99 "$node_(6) color maroon"
$ns_ at 20.015 "$ns_ trace-annotate \"node_ - 6 send the Hello message with key values to its neighbor - 7 \""
set cbr6_7 [attach-CBR-traffic $node_(7) $sink(6) 64 0.06]
$ns_ at 20 "$cbr6_7 start"
$ns_ at 20.1 "$cbr6_7 stop"
$ns_ at 20.025 "$ns_ trace-annotate \"node_ - 6 send the reply hello key message with session to its neighbor - 7 \""
set cbr6_7 [attach-CBR-traffic $node_(6) $sink(7) 64 0.06]
$ns_ at 20.01 "$cbr6_7 start"
$ns_ at 20.11 "$cbr6_7 stop"
$ns_ at 20.035 "$ns_ trace-annotate \"node_ - 6 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr6_14 [attach-CBR-traffic $node_(6) $sink(14) 64 0.06]
$ns_ at 20.02 "$cbr6_14 start"
$ns_ at 20.12 "$cbr6_14 stop"
$ns_ at 20.02 "$node_(6) color maroon"
$ns_ at 20.045 "$ns_ trace-annotate \"node_ - 6 send the Hello message with key values to its neighbor - 14 \""
set cbr6_14 [attach-CBR-traffic $node_(14) $sink(6) 64 0.06]
$ns_ at 20.03 "$cbr6_14 start"
$ns_ at 20.13 "$cbr6_14 stop"
$ns_ at 20.055 "$ns_ trace-annotate \"node_ - 6 send the reply hello key message with session to its neighbor - 14 \""
set cbr6_14 [attach-CBR-traffic $node_(6) $sink(14) 64 0.06]
$ns_ at 20.04 "$cbr6_14 start"
$ns_ at 20.14 "$cbr6_14 stop"
$ns_ at 20.065 "$ns_ trace-annotate \"node_ - 6 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr6_16 [attach-CBR-traffic $node_(6) $sink(16) 64 0.06]
$ns_ at 20.05 "$cbr6_16 start"
$ns_ at 20.15 "$cbr6_16 stop"
$ns_ at 20.05 "$node_(6) color maroon"
$ns_ at 20.075 "$ns_ trace-annotate \"node_ - 6 send the Hello message with key values to its neighbor - 16 \""
set cbr6_16 [attach-CBR-traffic $node_(16) $sink(6) 64 0.06]
$ns_ at 20.06 "$cbr6_16 start"
$ns_ at 20.16 "$cbr6_16 stop"
$ns_ at 20.085 "$ns_ trace-annotate \"node_ - 6 send the reply hello key message with session to its neighbor - 16 \""
set cbr6_16 [attach-CBR-traffic $node_(6) $sink(16) 64 0.06]
$ns_ at 20.07 "$cbr6_16 start"
$ns_ at 20.17 "$cbr6_16 stop"
$ns_ at 20.095 "$ns_ trace-annotate \"node_ - 6 send about the acceptance of session key with broadcast key to its neighbor - 16 \""
set cbr7_3 [attach-CBR-traffic $node_(7) $sink(3) 64 0.06]
$ns_ at 20.03 "$cbr7_3 start"
$ns_ at 20.13 "$cbr7_3 stop"
$ns_ at 20.03 "$node_(7) color maroon"
$ns_ at 20.055 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 3 \""
set cbr7_3 [attach-CBR-traffic $node_(3) $sink(7) 64 0.06]
$ns_ at 20.04 "$cbr7_3 start"
$ns_ at 20.14 "$cbr7_3 stop"
$ns_ at 20.065 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 3 \""
set cbr7_3 [attach-CBR-traffic $node_(7) $sink(3) 64 0.06]
$ns_ at 20.05 "$cbr7_3 start"
$ns_ at 20.15 "$cbr7_3 stop"
$ns_ at 20.075 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 3 \""
set cbr7_5 [attach-CBR-traffic $node_(7) $sink(5) 64 0.06]
$ns_ at 20.06 "$cbr7_5 start"
$ns_ at 20.16 "$cbr7_5 stop"
$ns_ at 20.06 "$node_(7) color maroon"
$ns_ at 20.085 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 5 \""
set cbr7_5 [attach-CBR-traffic $node_(5) $sink(7) 64 0.06]
$ns_ at 20.07 "$cbr7_5 start"
$ns_ at 20.17 "$cbr7_5 stop"
$ns_ at 20.095 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 5 \""
set cbr7_5 [attach-CBR-traffic $node_(7) $sink(5) 64 0.06]
$ns_ at 20.08 "$cbr7_5 start"
$ns_ at 20.18 "$cbr7_5 stop"
$ns_ at 20.105 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 5 \""
set cbr7_6 [attach-CBR-traffic $node_(7) $sink(6) 64 0.06]
$ns_ at 20.09 "$cbr7_6 start"
$ns_ at 20.19 "$cbr7_6 stop"
$ns_ at 20.09 "$node_(7) color maroon"
$ns_ at 20.115 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 6 \""
set cbr7_6 [attach-CBR-traffic $node_(6) $sink(7) 64 0.06]
$ns_ at 20.1 "$cbr7_6 start"
$ns_ at 20.2 "$cbr7_6 stop"
$ns_ at 20.125 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 6 \""
set cbr7_6 [attach-CBR-traffic $node_(7) $sink(6) 64 0.06]
$ns_ at 20.11 "$cbr7_6 start"
$ns_ at 20.21 "$cbr7_6 stop"
$ns_ at 20.135 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 6 \""
set cbr7_8 [attach-CBR-traffic $node_(7) $sink(8) 64 0.06]
$ns_ at 20.12 "$cbr7_8 start"
$ns_ at 20.22 "$cbr7_8 stop"
$ns_ at 20.12 "$node_(7) color maroon"
$ns_ at 20.145 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 8 \""
set cbr7_8 [attach-CBR-traffic $node_(8) $sink(7) 64 0.06]
$ns_ at 20.13 "$cbr7_8 start"
$ns_ at 20.23 "$cbr7_8 stop"
$ns_ at 20.155 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 8 \""
set cbr7_8 [attach-CBR-traffic $node_(7) $sink(8) 64 0.06]
$ns_ at 20.14 "$cbr7_8 start"
$ns_ at 20.24 "$cbr7_8 stop"
$ns_ at 20.165 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 8 \""
set cbr7_13 [attach-CBR-traffic $node_(7) $sink(13) 64 0.06]
$ns_ at 20.15 "$cbr7_13 start"
$ns_ at 20.25 "$cbr7_13 stop"
$ns_ at 20.15 "$node_(7) color maroon"
$ns_ at 20.175 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 13 \""
set cbr7_13 [attach-CBR-traffic $node_(13) $sink(7) 64 0.06]
$ns_ at 20.16 "$cbr7_13 start"
$ns_ at 20.26 "$cbr7_13 stop"
$ns_ at 20.185 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 13 \""
set cbr7_13 [attach-CBR-traffic $node_(7) $sink(13) 64 0.06]
$ns_ at 20.17 "$cbr7_13 start"
$ns_ at 20.27 "$cbr7_13 stop"
$ns_ at 20.195 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 13 \""
set cbr7_14 [attach-CBR-traffic $node_(7) $sink(14) 64 0.06]
$ns_ at 20.18 "$cbr7_14 start"
$ns_ at 20.28 "$cbr7_14 stop"
$ns_ at 20.18 "$node_(7) color maroon"
$ns_ at 20.205 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 14 \""
set cbr7_14 [attach-CBR-traffic $node_(14) $sink(7) 64 0.06]
$ns_ at 20.19 "$cbr7_14 start"
$ns_ at 20.29 "$cbr7_14 stop"
$ns_ at 20.215 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 14 \""
set cbr7_14 [attach-CBR-traffic $node_(7) $sink(14) 64 0.06]
$ns_ at 20.2 "$cbr7_14 start"
$ns_ at 20.3 "$cbr7_14 stop"
$ns_ at 20.225 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr7_15 [attach-CBR-traffic $node_(7) $sink(15) 64 0.06]
$ns_ at 20.21 "$cbr7_15 start"
$ns_ at 20.31 "$cbr7_15 stop"
$ns_ at 20.21 "$node_(7) color maroon"
$ns_ at 20.235 "$ns_ trace-annotate \"node_ - 7 send the Hello message with key values to its neighbor - 15 \""
set cbr7_15 [attach-CBR-traffic $node_(15) $sink(7) 64 0.06]
$ns_ at 20.22 "$cbr7_15 start"
$ns_ at 20.32 "$cbr7_15 stop"
$ns_ at 20.245 "$ns_ trace-annotate \"node_ - 7 send the reply hello key message with session to its neighbor - 15 \""
set cbr7_15 [attach-CBR-traffic $node_(7) $sink(15) 64 0.06]
$ns_ at 20.23 "$cbr7_15 start"
$ns_ at 20.33 "$cbr7_15 stop"
$ns_ at 20.255 "$ns_ trace-annotate \"node_ - 7 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr8_3 [attach-CBR-traffic $node_(8) $sink(3) 64 0.06]
$ns_ at 20.13 "$cbr8_3 start"
$ns_ at 20.23 "$cbr8_3 stop"
$ns_ at 20.13 "$node_(8) color maroon"
$ns_ at 20.155 "$ns_ trace-annotate \"node_ - 8 send the Hello message with key values to its neighbor - 3 \""
set cbr8_3 [attach-CBR-traffic $node_(3) $sink(8) 64 0.06]
$ns_ at 20.14 "$cbr8_3 start"
$ns_ at 20.24 "$cbr8_3 stop"
$ns_ at 20.165 "$ns_ trace-annotate \"node_ - 8 send the reply hello key message with session to its neighbor - 3 \""
set cbr8_3 [attach-CBR-traffic $node_(8) $sink(3) 64 0.06]
$ns_ at 20.15 "$cbr8_3 start"
$ns_ at 20.25 "$cbr8_3 stop"
$ns_ at 20.175 "$ns_ trace-annotate \"node_ - 8 send about the acceptance of session key with broadcast key to its neighbor - 3 \""
set cbr8_4 [attach-CBR-traffic $node_(8) $sink(4) 64 0.06]
$ns_ at 20.16 "$cbr8_4 start"
$ns_ at 20.26 "$cbr8_4 stop"
$ns_ at 20.16 "$node_(8) color maroon"
$ns_ at 20.185 "$ns_ trace-annotate \"node_ - 8 send the Hello message with key values to its neighbor - 4 \""
set cbr8_4 [attach-CBR-traffic $node_(4) $sink(8) 64 0.06]
$ns_ at 20.17 "$cbr8_4 start"
$ns_ at 20.27 "$cbr8_4 stop"
$ns_ at 20.195 "$ns_ trace-annotate \"node_ - 8 send the reply hello key message with session to its neighbor - 4 \""
set cbr8_4 [attach-CBR-traffic $node_(8) $sink(4) 64 0.06]
$ns_ at 20.18 "$cbr8_4 start"
$ns_ at 20.28 "$cbr8_4 stop"
$ns_ at 20.205 "$ns_ trace-annotate \"node_ - 8 send about the acceptance of session key with broadcast key to its neighbor - 4 \""
set cbr8_7 [attach-CBR-traffic $node_(8) $sink(7) 64 0.06]
$ns_ at 20.19 "$cbr8_7 start"
$ns_ at 20.29 "$cbr8_7 stop"
$ns_ at 20.19 "$node_(8) color maroon"
$ns_ at 20.215 "$ns_ trace-annotate \"node_ - 8 send the Hello message with key values to its neighbor - 7 \""
set cbr8_7 [attach-CBR-traffic $node_(7) $sink(8) 64 0.06]
$ns_ at 20.2 "$cbr8_7 start"
$ns_ at 20.3 "$cbr8_7 stop"
$ns_ at 20.225 "$ns_ trace-annotate \"node_ - 8 send the reply hello key message with session to its neighbor - 7 \""
set cbr8_7 [attach-CBR-traffic $node_(8) $sink(7) 64 0.06]
$ns_ at 20.21 "$cbr8_7 start"
$ns_ at 20.31 "$cbr8_7 stop"
$ns_ at 20.235 "$ns_ trace-annotate \"node_ - 8 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr8_9 [attach-CBR-traffic $node_(8) $sink(9) 64 0.06]
$ns_ at 20.22 "$cbr8_9 start"
$ns_ at 20.32 "$cbr8_9 stop"
$ns_ at 20.22 "$node_(8) color maroon"
$ns_ at 20.245 "$ns_ trace-annotate \"node_ - 8 send the Hello message with key values to its neighbor - 9 \""
set cbr8_9 [attach-CBR-traffic $node_(9) $sink(8) 64 0.06]
$ns_ at 20.23 "$cbr8_9 start"
$ns_ at 20.33 "$cbr8_9 stop"
$ns_ at 20.255 "$ns_ trace-annotate \"node_ - 8 send the reply hello key message with session to its neighbor - 9 \""
set cbr8_9 [attach-CBR-traffic $node_(8) $sink(9) 64 0.06]
$ns_ at 20.24 "$cbr8_9 start"
$ns_ at 20.34 "$cbr8_9 stop"
$ns_ at 20.265 "$ns_ trace-annotate \"node_ - 8 send about the acceptance of session key with broadcast key to its neighbor - 9 \""
set cbr8_12 [attach-CBR-traffic $node_(8) $sink(12) 64 0.06]
$ns_ at 20.25 "$cbr8_12 start"
$ns_ at 20.35 "$cbr8_12 stop"
$ns_ at 20.25 "$node_(8) color maroon"
$ns_ at 20.275 "$ns_ trace-annotate \"node_ - 8 send the Hello message with key values to its neighbor - 12 \""
set cbr8_12 [attach-CBR-traffic $node_(12) $sink(8) 64 0.06]
$ns_ at 20.26 "$cbr8_12 start"
$ns_ at 20.36 "$cbr8_12 stop"
$ns_ at 20.285 "$ns_ trace-annotate \"node_ - 8 send the reply hello key message with session to its neighbor - 12 \""
set cbr8_12 [attach-CBR-traffic $node_(8) $sink(12) 64 0.06]
$ns_ at 20.27 "$cbr8_12 start"
$ns_ at 20.37 "$cbr8_12 stop"
$ns_ at 20.295 "$ns_ trace-annotate \"node_ - 8 send about the acceptance of session key with broadcast key to its neighbor - 12 \""
set cbr8_13 [attach-CBR-traffic $node_(8) $sink(13) 64 0.06]
$ns_ at 20.28 "$cbr8_13 start"
$ns_ at 20.38 "$cbr8_13 stop"
$ns_ at 20.28 "$node_(8) color maroon"
$ns_ at 20.305 "$ns_ trace-annotate \"node_ - 8 send the Hello message with key values to its neighbor - 13 \""
set cbr8_13 [attach-CBR-traffic $node_(13) $sink(8) 64 0.06]
$ns_ at 20.29 "$cbr8_13 start"
$ns_ at 20.39 "$cbr8_13 stop"
$ns_ at 20.315 "$ns_ trace-annotate \"node_ - 8 send the reply hello key message with session to its neighbor - 13 \""
set cbr8_13 [attach-CBR-traffic $node_(8) $sink(13) 64 0.06]
$ns_ at 20.3 "$cbr8_13 start"
$ns_ at 20.4 "$cbr8_13 stop"
$ns_ at 20.325 "$ns_ trace-annotate \"node_ - 8 send about the acceptance of session key with broadcast key to its neighbor - 13 \""
set cbr9_4 [attach-CBR-traffic $node_(9) $sink(4) 64 0.06]
$ns_ at 20.23 "$cbr9_4 start"
$ns_ at 20.33 "$cbr9_4 stop"
$ns_ at 20.23 "$node_(9) color maroon"
$ns_ at 20.255 "$ns_ trace-annotate \"node_ - 9 send the Hello message with key values to its neighbor - 4 \""
set cbr9_4 [attach-CBR-traffic $node_(4) $sink(9) 64 0.06]
$ns_ at 20.24 "$cbr9_4 start"
$ns_ at 20.34 "$cbr9_4 stop"
$ns_ at 20.265 "$ns_ trace-annotate \"node_ - 9 send the reply hello key message with session to its neighbor - 4 \""
set cbr9_4 [attach-CBR-traffic $node_(9) $sink(4) 64 0.06]
$ns_ at 20.25 "$cbr9_4 start"
$ns_ at 20.35 "$cbr9_4 stop"
$ns_ at 20.275 "$ns_ trace-annotate \"node_ - 9 send about the acceptance of session key with broadcast key to its neighbor - 4 \""
set cbr9_8 [attach-CBR-traffic $node_(9) $sink(8) 64 0.06]
$ns_ at 20.26 "$cbr9_8 start"
$ns_ at 20.36 "$cbr9_8 stop"
$ns_ at 20.26 "$node_(9) color maroon"
$ns_ at 20.285 "$ns_ trace-annotate \"node_ - 9 send the Hello message with key values to its neighbor - 8 \""
set cbr9_8 [attach-CBR-traffic $node_(8) $sink(9) 64 0.06]
$ns_ at 20.27 "$cbr9_8 start"
$ns_ at 20.37 "$cbr9_8 stop"
$ns_ at 20.295 "$ns_ trace-annotate \"node_ - 9 send the reply hello key message with session to its neighbor - 8 \""
set cbr9_8 [attach-CBR-traffic $node_(9) $sink(8) 64 0.06]
$ns_ at 20.28 "$cbr9_8 start"
$ns_ at 20.38 "$cbr9_8 stop"
$ns_ at 20.305 "$ns_ trace-annotate \"node_ - 9 send about the acceptance of session key with broadcast key to its neighbor - 8 \""
set cbr9_10 [attach-CBR-traffic $node_(9) $sink(10) 64 0.06]
$ns_ at 20.29 "$cbr9_10 start"
$ns_ at 20.39 "$cbr9_10 stop"
$ns_ at 20.29 "$node_(9) color maroon"
$ns_ at 20.315 "$ns_ trace-annotate \"node_ - 9 send the Hello message with key values to its neighbor - 10 \""
set cbr9_10 [attach-CBR-traffic $node_(10) $sink(9) 64 0.06]
$ns_ at 20.3 "$cbr9_10 start"
$ns_ at 20.4 "$cbr9_10 stop"
$ns_ at 20.325 "$ns_ trace-annotate \"node_ - 9 send the reply hello key message with session to its neighbor - 10 \""
set cbr9_10 [attach-CBR-traffic $node_(9) $sink(10) 64 0.06]
$ns_ at 20.31 "$cbr9_10 start"
$ns_ at 20.41 "$cbr9_10 stop"
$ns_ at 20.335 "$ns_ trace-annotate \"node_ - 9 send about the acceptance of session key with broadcast key to its neighbor - 10 \""
set cbr9_11 [attach-CBR-traffic $node_(9) $sink(11) 64 0.06]
$ns_ at 20.32 "$cbr9_11 start"
$ns_ at 20.42 "$cbr9_11 stop"
$ns_ at 20.32 "$node_(9) color maroon"
$ns_ at 20.345 "$ns_ trace-annotate \"node_ - 9 send the Hello message with key values to its neighbor - 11 \""
set cbr9_11 [attach-CBR-traffic $node_(11) $sink(9) 64 0.06]
$ns_ at 20.33 "$cbr9_11 start"
$ns_ at 20.43 "$cbr9_11 stop"
$ns_ at 20.355 "$ns_ trace-annotate \"node_ - 9 send the reply hello key message with session to its neighbor - 11 \""
set cbr9_11 [attach-CBR-traffic $node_(9) $sink(11) 64 0.06]
$ns_ at 20.34 "$cbr9_11 start"
$ns_ at 20.44 "$cbr9_11 stop"
$ns_ at 20.365 "$ns_ trace-annotate \"node_ - 9 send about the acceptance of session key with broadcast key to its neighbor - 11 \""
set cbr9_12 [attach-CBR-traffic $node_(9) $sink(12) 64 0.06]
$ns_ at 20.35 "$cbr9_12 start"
$ns_ at 20.45 "$cbr9_12 stop"
$ns_ at 20.35 "$node_(9) color maroon"
$ns_ at 20.375 "$ns_ trace-annotate \"node_ - 9 send the Hello message with key values to its neighbor - 12 \""
set cbr9_12 [attach-CBR-traffic $node_(12) $sink(9) 64 0.06]
$ns_ at 20.36 "$cbr9_12 start"
$ns_ at 20.46 "$cbr9_12 stop"
$ns_ at 20.385 "$ns_ trace-annotate \"node_ - 9 send the reply hello key message with session to its neighbor - 12 \""
set cbr9_12 [attach-CBR-traffic $node_(9) $sink(12) 64 0.06]
$ns_ at 20.37 "$cbr9_12 start"
$ns_ at 20.47 "$cbr9_12 stop"
$ns_ at 20.395 "$ns_ trace-annotate \"node_ - 9 send about the acceptance of session key with broadcast key to its neighbor - 12 \""
set cbr10_9 [attach-CBR-traffic $node_(10) $sink(9) 64 0.06]
$ns_ at 20.33 "$cbr10_9 start"
$ns_ at 20.43 "$cbr10_9 stop"
$ns_ at 20.33 "$node_(10) color maroon"
$ns_ at 20.355 "$ns_ trace-annotate \"node_ - 10 send the Hello message with key values to its neighbor - 9 \""
set cbr10_9 [attach-CBR-traffic $node_(9) $sink(10) 64 0.06]
$ns_ at 20.34 "$cbr10_9 start"
$ns_ at 20.44 "$cbr10_9 stop"
$ns_ at 20.365 "$ns_ trace-annotate \"node_ - 10 send the reply hello key message with session to its neighbor - 9 \""
set cbr10_9 [attach-CBR-traffic $node_(10) $sink(9) 64 0.06]
$ns_ at 20.35 "$cbr10_9 start"
$ns_ at 20.45 "$cbr10_9 stop"
$ns_ at 20.375 "$ns_ trace-annotate \"node_ - 10 send about the acceptance of session key with broadcast key to its neighbor - 9 \""
set cbr10_11 [attach-CBR-traffic $node_(10) $sink(11) 64 0.06]
$ns_ at 20.36 "$cbr10_11 start"
$ns_ at 20.46 "$cbr10_11 stop"
$ns_ at 20.36 "$node_(10) color maroon"
$ns_ at 20.385 "$ns_ trace-annotate \"node_ - 10 send the Hello message with key values to its neighbor - 11 \""
set cbr10_11 [attach-CBR-traffic $node_(11) $sink(10) 64 0.06]
$ns_ at 20.37 "$cbr10_11 start"
$ns_ at 20.47 "$cbr10_11 stop"
$ns_ at 20.395 "$ns_ trace-annotate \"node_ - 10 send the reply hello key message with session to its neighbor - 11 \""
set cbr10_11 [attach-CBR-traffic $node_(10) $sink(11) 64 0.06]
$ns_ at 20.38 "$cbr10_11 start"
$ns_ at 20.48 "$cbr10_11 stop"
$ns_ at 20.405 "$ns_ trace-annotate \"node_ - 10 send about the acceptance of session key with broadcast key to its neighbor - 11 \""
set cbr10_12 [attach-CBR-traffic $node_(10) $sink(12) 64 0.06]
$ns_ at 20.39 "$cbr10_12 start"
$ns_ at 20.49 "$cbr10_12 stop"
$ns_ at 20.39 "$node_(10) color maroon"
$ns_ at 20.415 "$ns_ trace-annotate \"node_ - 10 send the Hello message with key values to its neighbor - 12 \""
set cbr10_12 [attach-CBR-traffic $node_(12) $sink(10) 64 0.06]
$ns_ at 20.4 "$cbr10_12 start"
$ns_ at 20.5 "$cbr10_12 stop"
$ns_ at 20.425 "$ns_ trace-annotate \"node_ - 10 send the reply hello key message with session to its neighbor - 12 \""
set cbr10_12 [attach-CBR-traffic $node_(10) $sink(12) 64 0.06]
$ns_ at 20.41 "$cbr10_12 start"
$ns_ at 20.51 "$cbr10_12 stop"
$ns_ at 20.435 "$ns_ trace-annotate \"node_ - 10 send about the acceptance of session key with broadcast key to its neighbor - 12 \""
set cbr10_25 [attach-CBR-traffic $node_(10) $sink(25) 64 0.06]
$ns_ at 20.42 "$cbr10_25 start"
$ns_ at 20.52 "$cbr10_25 stop"
$ns_ at 20.42 "$node_(10) color maroon"
$ns_ at 20.445 "$ns_ trace-annotate \"node_ - 10 send the Hello message with key values to its neighbor - 25 \""
set cbr10_25 [attach-CBR-traffic $node_(25) $sink(10) 64 0.06]
$ns_ at 20.43 "$cbr10_25 start"
$ns_ at 20.53 "$cbr10_25 stop"
$ns_ at 20.455 "$ns_ trace-annotate \"node_ - 10 send the reply hello key message with session to its neighbor - 25 \""
set cbr10_25 [attach-CBR-traffic $node_(10) $sink(25) 64 0.06]
$ns_ at 20.44 "$cbr10_25 start"
$ns_ at 20.54 "$cbr10_25 stop"
$ns_ at 20.465 "$ns_ trace-annotate \"node_ - 10 send about the acceptance of session key with broadcast key to its neighbor - 25 \""
set cbr10_26 [attach-CBR-traffic $node_(10) $sink(26) 64 0.06]
$ns_ at 20.45 "$cbr10_26 start"
$ns_ at 20.55 "$cbr10_26 stop"
$ns_ at 20.45 "$node_(10) color maroon"
$ns_ at 20.475 "$ns_ trace-annotate \"node_ - 10 send the Hello message with key values to its neighbor - 26 \""
set cbr10_26 [attach-CBR-traffic $node_(26) $sink(10) 64 0.06]
$ns_ at 20.46 "$cbr10_26 start"
$ns_ at 20.56 "$cbr10_26 stop"
$ns_ at 20.485 "$ns_ trace-annotate \"node_ - 10 send the reply hello key message with session to its neighbor - 26 \""
set cbr10_26 [attach-CBR-traffic $node_(10) $sink(26) 64 0.06]
$ns_ at 20.47 "$cbr10_26 start"
$ns_ at 20.57 "$cbr10_26 stop"
$ns_ at 20.495 "$ns_ trace-annotate \"node_ - 10 send about the acceptance of session key with broadcast key to its neighbor - 26 \""
set cbr10_27 [attach-CBR-traffic $node_(10) $sink(27) 64 0.06]
$ns_ at 20.48 "$cbr10_27 start"
$ns_ at 20.58 "$cbr10_27 stop"
$ns_ at 20.48 "$node_(10) color maroon"
$ns_ at 20.505 "$ns_ trace-annotate \"node_ - 10 send the Hello message with key values to its neighbor - 27 \""
set cbr10_27 [attach-CBR-traffic $node_(27) $sink(10) 64 0.06]
$ns_ at 20.49 "$cbr10_27 start"
$ns_ at 20.59 "$cbr10_27 stop"
$ns_ at 20.515 "$ns_ trace-annotate \"node_ - 10 send the reply hello key message with session to its neighbor - 27 \""
set cbr10_27 [attach-CBR-traffic $node_(10) $sink(27) 64 0.06]
$ns_ at 20.5 "$cbr10_27 start"
$ns_ at 20.6 "$cbr10_27 stop"
$ns_ at 20.525 "$ns_ trace-annotate \"node_ - 10 send about the acceptance of session key with broadcast key to its neighbor - 27 \""
set cbr11_9 [attach-CBR-traffic $node_(11) $sink(9) 64 0.06]
$ns_ at 20.43 "$cbr11_9 start"
$ns_ at 20.53 "$cbr11_9 stop"
$ns_ at 20.43 "$node_(11) color maroon"
$ns_ at 20.455 "$ns_ trace-annotate \"node_ - 11 send the Hello message with key values to its neighbor - 9 \""
set cbr11_9 [attach-CBR-traffic $node_(9) $sink(11) 64 0.06]
$ns_ at 20.44 "$cbr11_9 start"
$ns_ at 20.54 "$cbr11_9 stop"
$ns_ at 20.465 "$ns_ trace-annotate \"node_ - 11 send the reply hello key message with session to its neighbor - 9 \""
set cbr11_9 [attach-CBR-traffic $node_(11) $sink(9) 64 0.06]
$ns_ at 20.45 "$cbr11_9 start"
$ns_ at 20.55 "$cbr11_9 stop"
$ns_ at 20.475 "$ns_ trace-annotate \"node_ - 11 send about the acceptance of session key with broadcast key to its neighbor - 9 \""
set cbr11_10 [attach-CBR-traffic $node_(11) $sink(10) 64 0.06]
$ns_ at 20.46 "$cbr11_10 start"
$ns_ at 20.56 "$cbr11_10 stop"
$ns_ at 20.46 "$node_(11) color maroon"
$ns_ at 20.485 "$ns_ trace-annotate \"node_ - 11 send the Hello message with key values to its neighbor - 10 \""
set cbr11_10 [attach-CBR-traffic $node_(10) $sink(11) 64 0.06]
$ns_ at 20.47 "$cbr11_10 start"
$ns_ at 20.57 "$cbr11_10 stop"
$ns_ at 20.495 "$ns_ trace-annotate \"node_ - 11 send the reply hello key message with session to its neighbor - 10 \""
set cbr11_10 [attach-CBR-traffic $node_(11) $sink(10) 64 0.06]
$ns_ at 20.48 "$cbr11_10 start"
$ns_ at 20.58 "$cbr11_10 stop"
$ns_ at 20.505 "$ns_ trace-annotate \"node_ - 11 send about the acceptance of session key with broadcast key to its neighbor - 10 \""
set cbr11_27 [attach-CBR-traffic $node_(11) $sink(27) 64 0.06]
$ns_ at 20.49 "$cbr11_27 start"
$ns_ at 20.59 "$cbr11_27 stop"
$ns_ at 20.49 "$node_(11) color maroon"
$ns_ at 20.515 "$ns_ trace-annotate \"node_ - 11 send the Hello message with key values to its neighbor - 27 \""
set cbr11_27 [attach-CBR-traffic $node_(27) $sink(11) 64 0.06]
$ns_ at 20.5 "$cbr11_27 start"
$ns_ at 20.6 "$cbr11_27 stop"
$ns_ at 20.525 "$ns_ trace-annotate \"node_ - 11 send the reply hello key message with session to its neighbor - 27 \""
set cbr11_27 [attach-CBR-traffic $node_(11) $sink(27) 64 0.06]
$ns_ at 20.51 "$cbr11_27 start"
$ns_ at 20.61 "$cbr11_27 stop"
$ns_ at 20.535 "$ns_ trace-annotate \"node_ - 11 send about the acceptance of session key with broadcast key to its neighbor - 27 \""
set cbr12_8 [attach-CBR-traffic $node_(12) $sink(8) 64 0.06]
$ns_ at 20.53 "$cbr12_8 start"
$ns_ at 20.63 "$cbr12_8 stop"
$ns_ at 20.53 "$node_(12) color maroon"
$ns_ at 20.555 "$ns_ trace-annotate \"node_ - 12 send the Hello message with key values to its neighbor - 8 \""
set cbr12_8 [attach-CBR-traffic $node_(8) $sink(12) 64 0.06]
$ns_ at 20.54 "$cbr12_8 start"
$ns_ at 20.64 "$cbr12_8 stop"
$ns_ at 20.565 "$ns_ trace-annotate \"node_ - 12 send the reply hello key message with session to its neighbor - 8 \""
set cbr12_8 [attach-CBR-traffic $node_(12) $sink(8) 64 0.06]
$ns_ at 20.55 "$cbr12_8 start"
$ns_ at 20.65 "$cbr12_8 stop"
$ns_ at 20.575 "$ns_ trace-annotate \"node_ - 12 send about the acceptance of session key with broadcast key to its neighbor - 8 \""
set cbr12_9 [attach-CBR-traffic $node_(12) $sink(9) 64 0.06]
$ns_ at 20.56 "$cbr12_9 start"
$ns_ at 20.66 "$cbr12_9 stop"
$ns_ at 20.56 "$node_(12) color maroon"
$ns_ at 20.585 "$ns_ trace-annotate \"node_ - 12 send the Hello message with key values to its neighbor - 9 \""
set cbr12_9 [attach-CBR-traffic $node_(9) $sink(12) 64 0.06]
$ns_ at 20.57 "$cbr12_9 start"
$ns_ at 20.67 "$cbr12_9 stop"
$ns_ at 20.595 "$ns_ trace-annotate \"node_ - 12 send the reply hello key message with session to its neighbor - 9 \""
set cbr12_9 [attach-CBR-traffic $node_(12) $sink(9) 64 0.06]
$ns_ at 20.58 "$cbr12_9 start"
$ns_ at 20.68 "$cbr12_9 stop"
$ns_ at 20.605 "$ns_ trace-annotate \"node_ - 12 send about the acceptance of session key with broadcast key to its neighbor - 9 \""
set cbr12_10 [attach-CBR-traffic $node_(12) $sink(10) 64 0.06]
$ns_ at 20.59 "$cbr12_10 start"
$ns_ at 20.69 "$cbr12_10 stop"
$ns_ at 20.59 "$node_(12) color maroon"
$ns_ at 20.615 "$ns_ trace-annotate \"node_ - 12 send the Hello message with key values to its neighbor - 10 \""
set cbr12_10 [attach-CBR-traffic $node_(10) $sink(12) 64 0.06]
$ns_ at 20.6 "$cbr12_10 start"
$ns_ at 20.7 "$cbr12_10 stop"
$ns_ at 20.625 "$ns_ trace-annotate \"node_ - 12 send the reply hello key message with session to its neighbor - 10 \""
set cbr12_10 [attach-CBR-traffic $node_(12) $sink(10) 64 0.06]
$ns_ at 20.61 "$cbr12_10 start"
$ns_ at 20.71 "$cbr12_10 stop"
$ns_ at 20.635 "$ns_ trace-annotate \"node_ - 12 send about the acceptance of session key with broadcast key to its neighbor - 10 \""
set cbr12_13 [attach-CBR-traffic $node_(12) $sink(13) 64 0.06]
$ns_ at 20.62 "$cbr12_13 start"
$ns_ at 20.72 "$cbr12_13 stop"
$ns_ at 20.62 "$node_(12) color maroon"
$ns_ at 20.645 "$ns_ trace-annotate \"node_ - 12 send the Hello message with key values to its neighbor - 13 \""
set cbr12_13 [attach-CBR-traffic $node_(13) $sink(12) 64 0.06]
$ns_ at 20.63 "$cbr12_13 start"
$ns_ at 20.73 "$cbr12_13 stop"
$ns_ at 20.655 "$ns_ trace-annotate \"node_ - 12 send the reply hello key message with session to its neighbor - 13 \""
set cbr12_13 [attach-CBR-traffic $node_(12) $sink(13) 64 0.06]
$ns_ at 20.64 "$cbr12_13 start"
$ns_ at 20.74 "$cbr12_13 stop"
$ns_ at 20.665 "$ns_ trace-annotate \"node_ - 12 send about the acceptance of session key with broadcast key to its neighbor - 13 \""
set cbr12_24 [attach-CBR-traffic $node_(12) $sink(24) 64 0.06]
$ns_ at 20.65 "$cbr12_24 start"
$ns_ at 20.75 "$cbr12_24 stop"
$ns_ at 20.65 "$node_(12) color maroon"
$ns_ at 20.675 "$ns_ trace-annotate \"node_ - 12 send the Hello message with key values to its neighbor - 24 \""
set cbr12_24 [attach-CBR-traffic $node_(24) $sink(12) 64 0.06]
$ns_ at 20.66 "$cbr12_24 start"
$ns_ at 20.76 "$cbr12_24 stop"
$ns_ at 20.685 "$ns_ trace-annotate \"node_ - 12 send the reply hello key message with session to its neighbor - 24 \""
set cbr12_24 [attach-CBR-traffic $node_(12) $sink(24) 64 0.06]
$ns_ at 20.67 "$cbr12_24 start"
$ns_ at 20.77 "$cbr12_24 stop"
$ns_ at 20.695 "$ns_ trace-annotate \"node_ - 12 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr12_25 [attach-CBR-traffic $node_(12) $sink(25) 64 0.06]
$ns_ at 20.68 "$cbr12_25 start"
$ns_ at 20.78 "$cbr12_25 stop"
$ns_ at 20.68 "$node_(12) color maroon"
$ns_ at 20.705 "$ns_ trace-annotate \"node_ - 12 send the Hello message with key values to its neighbor - 25 \""
set cbr12_25 [attach-CBR-traffic $node_(25) $sink(12) 64 0.06]
$ns_ at 20.69 "$cbr12_25 start"
$ns_ at 20.79 "$cbr12_25 stop"
$ns_ at 20.715 "$ns_ trace-annotate \"node_ - 12 send the reply hello key message with session to its neighbor - 25 \""
set cbr12_25 [attach-CBR-traffic $node_(12) $sink(25) 64 0.06]
$ns_ at 20.7 "$cbr12_25 start"
$ns_ at 20.8 "$cbr12_25 stop"
$ns_ at 20.725 "$ns_ trace-annotate \"node_ - 12 send about the acceptance of session key with broadcast key to its neighbor - 25 \""
set cbr13_7 [attach-CBR-traffic $node_(13) $sink(7) 64 0.06]
$ns_ at 20.63 "$cbr13_7 start"
$ns_ at 20.73 "$cbr13_7 stop"
$ns_ at 20.63 "$node_(13) color maroon"
$ns_ at 20.655 "$ns_ trace-annotate \"node_ - 13 send the Hello message with key values to its neighbor - 7 \""
set cbr13_7 [attach-CBR-traffic $node_(7) $sink(13) 64 0.06]
$ns_ at 20.64 "$cbr13_7 start"
$ns_ at 20.74 "$cbr13_7 stop"
$ns_ at 20.665 "$ns_ trace-annotate \"node_ - 13 send the reply hello key message with session to its neighbor - 7 \""
set cbr13_7 [attach-CBR-traffic $node_(13) $sink(7) 64 0.06]
$ns_ at 20.65 "$cbr13_7 start"
$ns_ at 20.75 "$cbr13_7 stop"
$ns_ at 20.675 "$ns_ trace-annotate \"node_ - 13 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr13_8 [attach-CBR-traffic $node_(13) $sink(8) 64 0.06]
$ns_ at 20.66 "$cbr13_8 start"
$ns_ at 20.76 "$cbr13_8 stop"
$ns_ at 20.66 "$node_(13) color maroon"
$ns_ at 20.685 "$ns_ trace-annotate \"node_ - 13 send the Hello message with key values to its neighbor - 8 \""
set cbr13_8 [attach-CBR-traffic $node_(8) $sink(13) 64 0.06]
$ns_ at 20.67 "$cbr13_8 start"
$ns_ at 20.77 "$cbr13_8 stop"
$ns_ at 20.695 "$ns_ trace-annotate \"node_ - 13 send the reply hello key message with session to its neighbor - 8 \""
set cbr13_8 [attach-CBR-traffic $node_(13) $sink(8) 64 0.06]
$ns_ at 20.68 "$cbr13_8 start"
$ns_ at 20.78 "$cbr13_8 stop"
$ns_ at 20.705 "$ns_ trace-annotate \"node_ - 13 send about the acceptance of session key with broadcast key to its neighbor - 8 \""
set cbr13_12 [attach-CBR-traffic $node_(13) $sink(12) 64 0.06]
$ns_ at 20.69 "$cbr13_12 start"
$ns_ at 20.79 "$cbr13_12 stop"
$ns_ at 20.69 "$node_(13) color maroon"
$ns_ at 20.715 "$ns_ trace-annotate \"node_ - 13 send the Hello message with key values to its neighbor - 12 \""
set cbr13_12 [attach-CBR-traffic $node_(12) $sink(13) 64 0.06]
$ns_ at 20.7 "$cbr13_12 start"
$ns_ at 20.8 "$cbr13_12 stop"
$ns_ at 20.725 "$ns_ trace-annotate \"node_ - 13 send the reply hello key message with session to its neighbor - 12 \""
set cbr13_12 [attach-CBR-traffic $node_(13) $sink(12) 64 0.06]
$ns_ at 20.71 "$cbr13_12 start"
$ns_ at 20.81 "$cbr13_12 stop"
$ns_ at 20.735 "$ns_ trace-annotate \"node_ - 13 send about the acceptance of session key with broadcast key to its neighbor - 12 \""
set cbr13_14 [attach-CBR-traffic $node_(13) $sink(14) 64 0.06]
$ns_ at 20.72 "$cbr13_14 start"
$ns_ at 20.82 "$cbr13_14 stop"
$ns_ at 20.72 "$node_(13) color maroon"
$ns_ at 20.745 "$ns_ trace-annotate \"node_ - 13 send the Hello message with key values to its neighbor - 14 \""
set cbr13_14 [attach-CBR-traffic $node_(14) $sink(13) 64 0.06]
$ns_ at 20.73 "$cbr13_14 start"
$ns_ at 20.83 "$cbr13_14 stop"
$ns_ at 20.755 "$ns_ trace-annotate \"node_ - 13 send the reply hello key message with session to its neighbor - 14 \""
set cbr13_14 [attach-CBR-traffic $node_(13) $sink(14) 64 0.06]
$ns_ at 20.74 "$cbr13_14 start"
$ns_ at 20.84 "$cbr13_14 stop"
$ns_ at 20.765 "$ns_ trace-annotate \"node_ - 13 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr13_15 [attach-CBR-traffic $node_(13) $sink(15) 64 0.06]
$ns_ at 20.75 "$cbr13_15 start"
$ns_ at 20.85 "$cbr13_15 stop"
$ns_ at 20.75 "$node_(13) color maroon"
$ns_ at 20.775 "$ns_ trace-annotate \"node_ - 13 send the Hello message with key values to its neighbor - 15 \""
set cbr13_15 [attach-CBR-traffic $node_(15) $sink(13) 64 0.06]
$ns_ at 20.76 "$cbr13_15 start"
$ns_ at 20.86 "$cbr13_15 stop"
$ns_ at 20.785 "$ns_ trace-annotate \"node_ - 13 send the reply hello key message with session to its neighbor - 15 \""
set cbr13_15 [attach-CBR-traffic $node_(13) $sink(15) 64 0.06]
$ns_ at 20.77 "$cbr13_15 start"
$ns_ at 20.87 "$cbr13_15 stop"
$ns_ at 20.795 "$ns_ trace-annotate \"node_ - 13 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr13_24 [attach-CBR-traffic $node_(13) $sink(24) 64 0.06]
$ns_ at 20.78 "$cbr13_24 start"
$ns_ at 20.88 "$cbr13_24 stop"
$ns_ at 20.78 "$node_(13) color maroon"
$ns_ at 20.805 "$ns_ trace-annotate \"node_ - 13 send the Hello message with key values to its neighbor - 24 \""
set cbr13_24 [attach-CBR-traffic $node_(24) $sink(13) 64 0.06]
$ns_ at 20.79 "$cbr13_24 start"
$ns_ at 20.89 "$cbr13_24 stop"
$ns_ at 20.815 "$ns_ trace-annotate \"node_ - 13 send the reply hello key message with session to its neighbor - 24 \""
set cbr13_24 [attach-CBR-traffic $node_(13) $sink(24) 64 0.06]
$ns_ at 20.8 "$cbr13_24 start"
$ns_ at 20.9 "$cbr13_24 stop"
$ns_ at 20.825 "$ns_ trace-annotate \"node_ - 13 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr14_6 [attach-CBR-traffic $node_(14) $sink(6) 64 0.06]
$ns_ at 20.73 "$cbr14_6 start"
$ns_ at 20.83 "$cbr14_6 stop"
$ns_ at 20.73 "$node_(14) color maroon"
$ns_ at 20.755 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 6 \""
set cbr14_6 [attach-CBR-traffic $node_(6) $sink(14) 64 0.06]
$ns_ at 20.74 "$cbr14_6 start"
$ns_ at 20.84 "$cbr14_6 stop"
$ns_ at 20.765 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 6 \""
set cbr14_6 [attach-CBR-traffic $node_(14) $sink(6) 64 0.06]
$ns_ at 20.75 "$cbr14_6 start"
$ns_ at 20.85 "$cbr14_6 stop"
$ns_ at 20.775 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 6 \""
set cbr14_7 [attach-CBR-traffic $node_(14) $sink(7) 64 0.06]
$ns_ at 20.76 "$cbr14_7 start"
$ns_ at 20.86 "$cbr14_7 stop"
$ns_ at 20.76 "$node_(14) color maroon"
$ns_ at 20.785 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 7 \""
set cbr14_7 [attach-CBR-traffic $node_(7) $sink(14) 64 0.06]
$ns_ at 20.77 "$cbr14_7 start"
$ns_ at 20.87 "$cbr14_7 stop"
$ns_ at 20.795 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 7 \""
set cbr14_7 [attach-CBR-traffic $node_(14) $sink(7) 64 0.06]
$ns_ at 20.78 "$cbr14_7 start"
$ns_ at 20.88 "$cbr14_7 stop"
$ns_ at 20.805 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr14_13 [attach-CBR-traffic $node_(14) $sink(13) 64 0.06]
$ns_ at 20.79 "$cbr14_13 start"
$ns_ at 20.89 "$cbr14_13 stop"
$ns_ at 20.79 "$node_(14) color maroon"
$ns_ at 20.815 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 13 \""
set cbr14_13 [attach-CBR-traffic $node_(13) $sink(14) 64 0.06]
$ns_ at 20.8 "$cbr14_13 start"
$ns_ at 20.9 "$cbr14_13 stop"
$ns_ at 20.825 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 13 \""
set cbr14_13 [attach-CBR-traffic $node_(14) $sink(13) 64 0.06]
$ns_ at 20.81 "$cbr14_13 start"
$ns_ at 20.91 "$cbr14_13 stop"
$ns_ at 20.835 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 13 \""
set cbr14_15 [attach-CBR-traffic $node_(14) $sink(15) 64 0.06]
$ns_ at 20.82 "$cbr14_15 start"
$ns_ at 20.92 "$cbr14_15 stop"
$ns_ at 20.82 "$node_(14) color maroon"
$ns_ at 20.845 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 15 \""
set cbr14_15 [attach-CBR-traffic $node_(15) $sink(14) 64 0.06]
$ns_ at 20.83 "$cbr14_15 start"
$ns_ at 20.93 "$cbr14_15 stop"
$ns_ at 20.855 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 15 \""
set cbr14_15 [attach-CBR-traffic $node_(14) $sink(15) 64 0.06]
$ns_ at 20.84 "$cbr14_15 start"
$ns_ at 20.94 "$cbr14_15 stop"
$ns_ at 20.865 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr14_16 [attach-CBR-traffic $node_(14) $sink(16) 64 0.06]
$ns_ at 20.85 "$cbr14_16 start"
$ns_ at 20.95 "$cbr14_16 stop"
$ns_ at 20.85 "$node_(14) color maroon"
$ns_ at 20.875 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 16 \""
set cbr14_16 [attach-CBR-traffic $node_(16) $sink(14) 64 0.06]
$ns_ at 20.86 "$cbr14_16 start"
$ns_ at 20.96 "$cbr14_16 stop"
$ns_ at 20.885 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 16 \""
set cbr14_16 [attach-CBR-traffic $node_(14) $sink(16) 64 0.06]
$ns_ at 20.87 "$cbr14_16 start"
$ns_ at 20.97 "$cbr14_16 stop"
$ns_ at 20.895 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 16 \""
set cbr14_19 [attach-CBR-traffic $node_(14) $sink(19) 64 0.06]
$ns_ at 20.88 "$cbr14_19 start"
$ns_ at 20.98 "$cbr14_19 stop"
$ns_ at 20.88 "$node_(14) color maroon"
$ns_ at 20.905 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 19 \""
set cbr14_19 [attach-CBR-traffic $node_(19) $sink(14) 64 0.06]
$ns_ at 20.89 "$cbr14_19 start"
$ns_ at 20.99 "$cbr14_19 stop"
$ns_ at 20.915 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 19 \""
set cbr14_19 [attach-CBR-traffic $node_(14) $sink(19) 64 0.06]
$ns_ at 20.9 "$cbr14_19 start"
$ns_ at 21 "$cbr14_19 stop"
$ns_ at 20.925 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr14_21 [attach-CBR-traffic $node_(14) $sink(21) 64 0.06]
$ns_ at 20.91 "$cbr14_21 start"
$ns_ at 21.01 "$cbr14_21 stop"
$ns_ at 20.91 "$node_(14) color maroon"
$ns_ at 20.935 "$ns_ trace-annotate \"node_ - 14 send the Hello message with key values to its neighbor - 21 \""
set cbr14_21 [attach-CBR-traffic $node_(21) $sink(14) 64 0.06]
$ns_ at 20.92 "$cbr14_21 start"
$ns_ at 21.02 "$cbr14_21 stop"
$ns_ at 20.945 "$ns_ trace-annotate \"node_ - 14 send the reply hello key message with session to its neighbor - 21 \""
set cbr14_21 [attach-CBR-traffic $node_(14) $sink(21) 64 0.06]
$ns_ at 20.93 "$cbr14_21 start"
$ns_ at 21.03 "$cbr14_21 stop"
$ns_ at 20.955 "$ns_ trace-annotate \"node_ - 14 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr15_7 [attach-CBR-traffic $node_(15) $sink(7) 64 0.06]
$ns_ at 20.83 "$cbr15_7 start"
$ns_ at 20.93 "$cbr15_7 stop"
$ns_ at 20.83 "$node_(15) color maroon"
$ns_ at 20.855 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 7 \""
set cbr15_7 [attach-CBR-traffic $node_(7) $sink(15) 64 0.06]
$ns_ at 20.84 "$cbr15_7 start"
$ns_ at 20.94 "$cbr15_7 stop"
$ns_ at 20.865 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 7 \""
set cbr15_7 [attach-CBR-traffic $node_(15) $sink(7) 64 0.06]
$ns_ at 20.85 "$cbr15_7 start"
$ns_ at 20.95 "$cbr15_7 stop"
$ns_ at 20.875 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 7 \""
set cbr15_13 [attach-CBR-traffic $node_(15) $sink(13) 64 0.06]
$ns_ at 20.86 "$cbr15_13 start"
$ns_ at 20.96 "$cbr15_13 stop"
$ns_ at 20.86 "$node_(15) color maroon"
$ns_ at 20.885 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 13 \""
set cbr15_13 [attach-CBR-traffic $node_(13) $sink(15) 64 0.06]
$ns_ at 20.87 "$cbr15_13 start"
$ns_ at 20.97 "$cbr15_13 stop"
$ns_ at 20.895 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 13 \""
set cbr15_13 [attach-CBR-traffic $node_(15) $sink(13) 64 0.06]
$ns_ at 20.88 "$cbr15_13 start"
$ns_ at 20.98 "$cbr15_13 stop"
$ns_ at 20.905 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 13 \""
set cbr15_14 [attach-CBR-traffic $node_(15) $sink(14) 64 0.06]
$ns_ at 20.89 "$cbr15_14 start"
$ns_ at 20.99 "$cbr15_14 stop"
$ns_ at 20.89 "$node_(15) color maroon"
$ns_ at 20.915 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 14 \""
set cbr15_14 [attach-CBR-traffic $node_(14) $sink(15) 64 0.06]
$ns_ at 20.9 "$cbr15_14 start"
$ns_ at 21 "$cbr15_14 stop"
$ns_ at 20.925 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 14 \""
set cbr15_14 [attach-CBR-traffic $node_(15) $sink(14) 64 0.06]
$ns_ at 20.91 "$cbr15_14 start"
$ns_ at 21.01 "$cbr15_14 stop"
$ns_ at 20.935 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr15_19 [attach-CBR-traffic $node_(15) $sink(19) 64 0.06]
$ns_ at 20.92 "$cbr15_19 start"
$ns_ at 21.02 "$cbr15_19 stop"
$ns_ at 20.92 "$node_(15) color maroon"
$ns_ at 20.945 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 19 \""
set cbr15_19 [attach-CBR-traffic $node_(19) $sink(15) 64 0.06]
$ns_ at 20.93 "$cbr15_19 start"
$ns_ at 21.03 "$cbr15_19 stop"
$ns_ at 20.955 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 19 \""
set cbr15_19 [attach-CBR-traffic $node_(15) $sink(19) 64 0.06]
$ns_ at 20.94 "$cbr15_19 start"
$ns_ at 21.04 "$cbr15_19 stop"
$ns_ at 20.965 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr15_21 [attach-CBR-traffic $node_(15) $sink(21) 64 0.06]
$ns_ at 20.95 "$cbr15_21 start"
$ns_ at 21.05 "$cbr15_21 stop"
$ns_ at 20.95 "$node_(15) color maroon"
$ns_ at 20.975 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 21 \""
set cbr15_21 [attach-CBR-traffic $node_(21) $sink(15) 64 0.06]
$ns_ at 20.96 "$cbr15_21 start"
$ns_ at 21.06 "$cbr15_21 stop"
$ns_ at 20.985 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 21 \""
set cbr15_21 [attach-CBR-traffic $node_(15) $sink(21) 64 0.06]
$ns_ at 20.97 "$cbr15_21 start"
$ns_ at 21.07 "$cbr15_21 stop"
$ns_ at 20.995 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr15_22 [attach-CBR-traffic $node_(15) $sink(22) 64 0.06]
$ns_ at 20.98 "$cbr15_22 start"
$ns_ at 21.08 "$cbr15_22 stop"
$ns_ at 20.98 "$node_(15) color maroon"
$ns_ at 21.005 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 22 \""
set cbr15_22 [attach-CBR-traffic $node_(22) $sink(15) 64 0.06]
$ns_ at 20.99 "$cbr15_22 start"
$ns_ at 21.09 "$cbr15_22 stop"
$ns_ at 21.015 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 22 \""
set cbr15_22 [attach-CBR-traffic $node_(15) $sink(22) 64 0.06]
$ns_ at 21 "$cbr15_22 start"
$ns_ at 21.1 "$cbr15_22 stop"
$ns_ at 21.025 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 22 \""
set cbr15_24 [attach-CBR-traffic $node_(15) $sink(24) 64 0.06]
$ns_ at 21.01 "$cbr15_24 start"
$ns_ at 21.11 "$cbr15_24 stop"
$ns_ at 21.01 "$node_(15) color maroon"
$ns_ at 21.035 "$ns_ trace-annotate \"node_ - 15 send the Hello message with key values to its neighbor - 24 \""
set cbr15_24 [attach-CBR-traffic $node_(24) $sink(15) 64 0.06]
$ns_ at 21.02 "$cbr15_24 start"
$ns_ at 21.12 "$cbr15_24 stop"
$ns_ at 21.045 "$ns_ trace-annotate \"node_ - 15 send the reply hello key message with session to its neighbor - 24 \""
set cbr15_24 [attach-CBR-traffic $node_(15) $sink(24) 64 0.06]
$ns_ at 21.03 "$cbr15_24 start"
$ns_ at 21.13 "$cbr15_24 stop"
$ns_ at 21.055 "$ns_ trace-annotate \"node_ - 15 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr16_0 [attach-CBR-traffic $node_(16) $sink(0) 64 0.06]
$ns_ at 20.93 "$cbr16_0 start"
$ns_ at 21.03 "$cbr16_0 stop"
$ns_ at 20.93 "$node_(16) color maroon"
$ns_ at 20.955 "$ns_ trace-annotate \"node_ - 16 send the Hello message with key values to its neighbor - 0 \""
set cbr16_0 [attach-CBR-traffic $node_(0) $sink(16) 64 0.06]
$ns_ at 20.94 "$cbr16_0 start"
$ns_ at 21.04 "$cbr16_0 stop"
$ns_ at 20.965 "$ns_ trace-annotate \"node_ - 16 send the reply hello key message with session to its neighbor - 0 \""
set cbr16_0 [attach-CBR-traffic $node_(16) $sink(0) 64 0.06]
$ns_ at 20.95 "$cbr16_0 start"
$ns_ at 21.05 "$cbr16_0 stop"
$ns_ at 20.975 "$ns_ trace-annotate \"node_ - 16 send about the acceptance of session key with broadcast key to its neighbor - 0 \""
set cbr16_6 [attach-CBR-traffic $node_(16) $sink(6) 64 0.06]
$ns_ at 20.96 "$cbr16_6 start"
$ns_ at 21.06 "$cbr16_6 stop"
$ns_ at 20.96 "$node_(16) color maroon"
$ns_ at 20.985 "$ns_ trace-annotate \"node_ - 16 send the Hello message with key values to its neighbor - 6 \""
set cbr16_6 [attach-CBR-traffic $node_(6) $sink(16) 64 0.06]
$ns_ at 20.97 "$cbr16_6 start"
$ns_ at 21.07 "$cbr16_6 stop"
$ns_ at 20.995 "$ns_ trace-annotate \"node_ - 16 send the reply hello key message with session to its neighbor - 6 \""
set cbr16_6 [attach-CBR-traffic $node_(16) $sink(6) 64 0.06]
$ns_ at 20.98 "$cbr16_6 start"
$ns_ at 21.08 "$cbr16_6 stop"
$ns_ at 21.005 "$ns_ trace-annotate \"node_ - 16 send about the acceptance of session key with broadcast key to its neighbor - 6 \""
set cbr16_14 [attach-CBR-traffic $node_(16) $sink(14) 64 0.06]
$ns_ at 20.99 "$cbr16_14 start"
$ns_ at 21.09 "$cbr16_14 stop"
$ns_ at 20.99 "$node_(16) color maroon"
$ns_ at 21.015 "$ns_ trace-annotate \"node_ - 16 send the Hello message with key values to its neighbor - 14 \""
set cbr16_14 [attach-CBR-traffic $node_(14) $sink(16) 64 0.06]
$ns_ at 21 "$cbr16_14 start"
$ns_ at 21.1 "$cbr16_14 stop"
$ns_ at 21.025 "$ns_ trace-annotate \"node_ - 16 send the reply hello key message with session to its neighbor - 14 \""
set cbr16_14 [attach-CBR-traffic $node_(16) $sink(14) 64 0.06]
$ns_ at 21.01 "$cbr16_14 start"
$ns_ at 21.11 "$cbr16_14 stop"
$ns_ at 21.035 "$ns_ trace-annotate \"node_ - 16 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr16_17 [attach-CBR-traffic $node_(16) $sink(17) 64 0.06]
$ns_ at 21.02 "$cbr16_17 start"
$ns_ at 21.12 "$cbr16_17 stop"
$ns_ at 21.02 "$node_(16) color maroon"
$ns_ at 21.045 "$ns_ trace-annotate \"node_ - 16 send the Hello message with key values to its neighbor - 17 \""
set cbr16_17 [attach-CBR-traffic $node_(17) $sink(16) 64 0.06]
$ns_ at 21.03 "$cbr16_17 start"
$ns_ at 21.13 "$cbr16_17 stop"
$ns_ at 21.055 "$ns_ trace-annotate \"node_ - 16 send the reply hello key message with session to its neighbor - 17 \""
set cbr16_17 [attach-CBR-traffic $node_(16) $sink(17) 64 0.06]
$ns_ at 21.04 "$cbr16_17 start"
$ns_ at 21.14 "$cbr16_17 stop"
$ns_ at 21.065 "$ns_ trace-annotate \"node_ - 16 send about the acceptance of session key with broadcast key to its neighbor - 17 \""
set cbr16_19 [attach-CBR-traffic $node_(16) $sink(19) 64 0.06]
$ns_ at 21.05 "$cbr16_19 start"
$ns_ at 21.15 "$cbr16_19 stop"
$ns_ at 21.05 "$node_(16) color maroon"
$ns_ at 21.075 "$ns_ trace-annotate \"node_ - 16 send the Hello message with key values to its neighbor - 19 \""
set cbr16_19 [attach-CBR-traffic $node_(19) $sink(16) 64 0.06]
$ns_ at 21.06 "$cbr16_19 start"
$ns_ at 21.16 "$cbr16_19 stop"
$ns_ at 21.085 "$ns_ trace-annotate \"node_ - 16 send the reply hello key message with session to its neighbor - 19 \""
set cbr16_19 [attach-CBR-traffic $node_(16) $sink(19) 64 0.06]
$ns_ at 21.07 "$cbr16_19 start"
$ns_ at 21.17 "$cbr16_19 stop"
$ns_ at 21.095 "$ns_ trace-annotate \"node_ - 16 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr17_16 [attach-CBR-traffic $node_(17) $sink(16) 64 0.06]
$ns_ at 21.03 "$cbr17_16 start"
$ns_ at 21.13 "$cbr17_16 stop"
$ns_ at 21.03 "$node_(17) color maroon"
$ns_ at 21.055 "$ns_ trace-annotate \"node_ - 17 send the Hello message with key values to its neighbor - 16 \""
set cbr17_16 [attach-CBR-traffic $node_(16) $sink(17) 64 0.06]
$ns_ at 21.04 "$cbr17_16 start"
$ns_ at 21.14 "$cbr17_16 stop"
$ns_ at 21.065 "$ns_ trace-annotate \"node_ - 17 send the reply hello key message with session to its neighbor - 16 \""
set cbr17_16 [attach-CBR-traffic $node_(17) $sink(16) 64 0.06]
$ns_ at 21.05 "$cbr17_16 start"
$ns_ at 21.15 "$cbr17_16 stop"
$ns_ at 21.075 "$ns_ trace-annotate \"node_ - 17 send about the acceptance of session key with broadcast key to its neighbor - 16 \""
set cbr17_18 [attach-CBR-traffic $node_(17) $sink(18) 64 0.06]
$ns_ at 21.06 "$cbr17_18 start"
$ns_ at 21.16 "$cbr17_18 stop"
$ns_ at 21.06 "$node_(17) color maroon"
$ns_ at 21.085 "$ns_ trace-annotate \"node_ - 17 send the Hello message with key values to its neighbor - 18 \""
set cbr17_18 [attach-CBR-traffic $node_(18) $sink(17) 64 0.06]
$ns_ at 21.07 "$cbr17_18 start"
$ns_ at 21.17 "$cbr17_18 stop"
$ns_ at 21.095 "$ns_ trace-annotate \"node_ - 17 send the reply hello key message with session to its neighbor - 18 \""
set cbr17_18 [attach-CBR-traffic $node_(17) $sink(18) 64 0.06]
$ns_ at 21.08 "$cbr17_18 start"
$ns_ at 21.18 "$cbr17_18 stop"
$ns_ at 21.105 "$ns_ trace-annotate \"node_ - 17 send about the acceptance of session key with broadcast key to its neighbor - 18 \""
set cbr17_19 [attach-CBR-traffic $node_(17) $sink(19) 64 0.06]
$ns_ at 21.09 "$cbr17_19 start"
$ns_ at 21.19 "$cbr17_19 stop"
$ns_ at 21.09 "$node_(17) color maroon"
$ns_ at 21.115 "$ns_ trace-annotate \"node_ - 17 send the Hello message with key values to its neighbor - 19 \""
set cbr17_19 [attach-CBR-traffic $node_(19) $sink(17) 64 0.06]
$ns_ at 21.1 "$cbr17_19 start"
$ns_ at 21.2 "$cbr17_19 stop"
$ns_ at 21.125 "$ns_ trace-annotate \"node_ - 17 send the reply hello key message with session to its neighbor - 19 \""
set cbr17_19 [attach-CBR-traffic $node_(17) $sink(19) 64 0.06]
$ns_ at 21.11 "$cbr17_19 start"
$ns_ at 21.21 "$cbr17_19 stop"
$ns_ at 21.135 "$ns_ trace-annotate \"node_ - 17 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr18_17 [attach-CBR-traffic $node_(18) $sink(17) 64 0.06]
$ns_ at 21.13 "$cbr18_17 start"
$ns_ at 21.23 "$cbr18_17 stop"
$ns_ at 21.13 "$node_(18) color maroon"
$ns_ at 21.155 "$ns_ trace-annotate \"node_ - 18 send the Hello message with key values to its neighbor - 17 \""
set cbr18_17 [attach-CBR-traffic $node_(17) $sink(18) 64 0.06]
$ns_ at 21.14 "$cbr18_17 start"
$ns_ at 21.24 "$cbr18_17 stop"
$ns_ at 21.165 "$ns_ trace-annotate \"node_ - 18 send the reply hello key message with session to its neighbor - 17 \""
set cbr18_17 [attach-CBR-traffic $node_(18) $sink(17) 64 0.06]
$ns_ at 21.15 "$cbr18_17 start"
$ns_ at 21.25 "$cbr18_17 stop"
$ns_ at 21.175 "$ns_ trace-annotate \"node_ - 18 send about the acceptance of session key with broadcast key to its neighbor - 17 \""
set cbr18_19 [attach-CBR-traffic $node_(18) $sink(19) 64 0.06]
$ns_ at 21.16 "$cbr18_19 start"
$ns_ at 21.26 "$cbr18_19 stop"
$ns_ at 21.16 "$node_(18) color maroon"
$ns_ at 21.185 "$ns_ trace-annotate \"node_ - 18 send the Hello message with key values to its neighbor - 19 \""
set cbr18_19 [attach-CBR-traffic $node_(19) $sink(18) 64 0.06]
$ns_ at 21.17 "$cbr18_19 start"
$ns_ at 21.27 "$cbr18_19 stop"
$ns_ at 21.195 "$ns_ trace-annotate \"node_ - 18 send the reply hello key message with session to its neighbor - 19 \""
set cbr18_19 [attach-CBR-traffic $node_(18) $sink(19) 64 0.06]
$ns_ at 21.18 "$cbr18_19 start"
$ns_ at 21.28 "$cbr18_19 stop"
$ns_ at 21.205 "$ns_ trace-annotate \"node_ - 18 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr18_20 [attach-CBR-traffic $node_(18) $sink(20) 64 0.06]
$ns_ at 21.19 "$cbr18_20 start"
$ns_ at 21.29 "$cbr18_20 stop"
$ns_ at 21.19 "$node_(18) color maroon"
$ns_ at 21.215 "$ns_ trace-annotate \"node_ - 18 send the Hello message with key values to its neighbor - 20 \""
set cbr18_20 [attach-CBR-traffic $node_(20) $sink(18) 64 0.06]
$ns_ at 21.2 "$cbr18_20 start"
$ns_ at 21.3 "$cbr18_20 stop"
$ns_ at 21.225 "$ns_ trace-annotate \"node_ - 18 send the reply hello key message with session to its neighbor - 20 \""
set cbr18_20 [attach-CBR-traffic $node_(18) $sink(20) 64 0.06]
$ns_ at 21.21 "$cbr18_20 start"
$ns_ at 21.31 "$cbr18_20 stop"
$ns_ at 21.235 "$ns_ trace-annotate \"node_ - 18 send about the acceptance of session key with broadcast key to its neighbor - 20 \""
set cbr18_21 [attach-CBR-traffic $node_(18) $sink(21) 64 0.06]
$ns_ at 21.22 "$cbr18_21 start"
$ns_ at 21.32 "$cbr18_21 stop"
$ns_ at 21.22 "$node_(18) color maroon"
$ns_ at 21.245 "$ns_ trace-annotate \"node_ - 18 send the Hello message with key values to its neighbor - 21 \""
set cbr18_21 [attach-CBR-traffic $node_(21) $sink(18) 64 0.06]
$ns_ at 21.23 "$cbr18_21 start"
$ns_ at 21.33 "$cbr18_21 stop"
$ns_ at 21.255 "$ns_ trace-annotate \"node_ - 18 send the reply hello key message with session to its neighbor - 21 \""
set cbr18_21 [attach-CBR-traffic $node_(18) $sink(21) 64 0.06]
$ns_ at 21.24 "$cbr18_21 start"
$ns_ at 21.34 "$cbr18_21 stop"
$ns_ at 21.265 "$ns_ trace-annotate \"node_ - 18 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr19_14 [attach-CBR-traffic $node_(19) $sink(14) 64 0.06]
$ns_ at 21.23 "$cbr19_14 start"
$ns_ at 21.33 "$cbr19_14 stop"
$ns_ at 21.23 "$node_(19) color maroon"
$ns_ at 21.255 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 14 \""
set cbr19_14 [attach-CBR-traffic $node_(14) $sink(19) 64 0.06]
$ns_ at 21.24 "$cbr19_14 start"
$ns_ at 21.34 "$cbr19_14 stop"
$ns_ at 21.265 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 14 \""
set cbr19_14 [attach-CBR-traffic $node_(19) $sink(14) 64 0.06]
$ns_ at 21.25 "$cbr19_14 start"
$ns_ at 21.35 "$cbr19_14 stop"
$ns_ at 21.275 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr19_15 [attach-CBR-traffic $node_(19) $sink(15) 64 0.06]
$ns_ at 21.26 "$cbr19_15 start"
$ns_ at 21.36 "$cbr19_15 stop"
$ns_ at 21.26 "$node_(19) color maroon"
$ns_ at 21.285 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 15 \""
set cbr19_15 [attach-CBR-traffic $node_(15) $sink(19) 64 0.06]
$ns_ at 21.27 "$cbr19_15 start"
$ns_ at 21.37 "$cbr19_15 stop"
$ns_ at 21.295 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 15 \""
set cbr19_15 [attach-CBR-traffic $node_(19) $sink(15) 64 0.06]
$ns_ at 21.28 "$cbr19_15 start"
$ns_ at 21.38 "$cbr19_15 stop"
$ns_ at 21.305 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr19_16 [attach-CBR-traffic $node_(19) $sink(16) 64 0.06]
$ns_ at 21.29 "$cbr19_16 start"
$ns_ at 21.39 "$cbr19_16 stop"
$ns_ at 21.29 "$node_(19) color maroon"
$ns_ at 21.315 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 16 \""
set cbr19_16 [attach-CBR-traffic $node_(16) $sink(19) 64 0.06]
$ns_ at 21.3 "$cbr19_16 start"
$ns_ at 21.4 "$cbr19_16 stop"
$ns_ at 21.325 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 16 \""
set cbr19_16 [attach-CBR-traffic $node_(19) $sink(16) 64 0.06]
$ns_ at 21.31 "$cbr19_16 start"
$ns_ at 21.41 "$cbr19_16 stop"
$ns_ at 21.335 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 16 \""
set cbr19_17 [attach-CBR-traffic $node_(19) $sink(17) 64 0.06]
$ns_ at 21.32 "$cbr19_17 start"
$ns_ at 21.42 "$cbr19_17 stop"
$ns_ at 21.32 "$node_(19) color maroon"
$ns_ at 21.345 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 17 \""
set cbr19_17 [attach-CBR-traffic $node_(17) $sink(19) 64 0.06]
$ns_ at 21.33 "$cbr19_17 start"
$ns_ at 21.43 "$cbr19_17 stop"
$ns_ at 21.355 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 17 \""
set cbr19_17 [attach-CBR-traffic $node_(19) $sink(17) 64 0.06]
$ns_ at 21.34 "$cbr19_17 start"
$ns_ at 21.44 "$cbr19_17 stop"
$ns_ at 21.365 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 17 \""
set cbr19_18 [attach-CBR-traffic $node_(19) $sink(18) 64 0.06]
$ns_ at 21.35 "$cbr19_18 start"
$ns_ at 21.45 "$cbr19_18 stop"
$ns_ at 21.35 "$node_(19) color maroon"
$ns_ at 21.375 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 18 \""
set cbr19_18 [attach-CBR-traffic $node_(18) $sink(19) 64 0.06]
$ns_ at 21.36 "$cbr19_18 start"
$ns_ at 21.46 "$cbr19_18 stop"
$ns_ at 21.385 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 18 \""
set cbr19_18 [attach-CBR-traffic $node_(19) $sink(18) 64 0.06]
$ns_ at 21.37 "$cbr19_18 start"
$ns_ at 21.47 "$cbr19_18 stop"
$ns_ at 21.395 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 18 \""
set cbr19_20 [attach-CBR-traffic $node_(19) $sink(20) 64 0.06]
$ns_ at 21.38 "$cbr19_20 start"
$ns_ at 21.48 "$cbr19_20 stop"
$ns_ at 21.38 "$node_(19) color maroon"
$ns_ at 21.405 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 20 \""
set cbr19_20 [attach-CBR-traffic $node_(20) $sink(19) 64 0.06]
$ns_ at 21.39 "$cbr19_20 start"
$ns_ at 21.49 "$cbr19_20 stop"
$ns_ at 21.415 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 20 \""
set cbr19_20 [attach-CBR-traffic $node_(19) $sink(20) 64 0.06]
$ns_ at 21.4 "$cbr19_20 start"
$ns_ at 21.5 "$cbr19_20 stop"
$ns_ at 21.425 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 20 \""
set cbr19_21 [attach-CBR-traffic $node_(19) $sink(21) 64 0.06]
$ns_ at 21.41 "$cbr19_21 start"
$ns_ at 21.51 "$cbr19_21 stop"
$ns_ at 21.41 "$node_(19) color maroon"
$ns_ at 21.435 "$ns_ trace-annotate \"node_ - 19 send the Hello message with key values to its neighbor - 21 \""
set cbr19_21 [attach-CBR-traffic $node_(21) $sink(19) 64 0.06]
$ns_ at 21.42 "$cbr19_21 start"
$ns_ at 21.52 "$cbr19_21 stop"
$ns_ at 21.445 "$ns_ trace-annotate \"node_ - 19 send the reply hello key message with session to its neighbor - 21 \""
set cbr19_21 [attach-CBR-traffic $node_(19) $sink(21) 64 0.06]
$ns_ at 21.43 "$cbr19_21 start"
$ns_ at 21.53 "$cbr19_21 stop"
$ns_ at 21.455 "$ns_ trace-annotate \"node_ - 19 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr20_18 [attach-CBR-traffic $node_(20) $sink(18) 64 0.06]
$ns_ at 21.33 "$cbr20_18 start"
$ns_ at 21.43 "$cbr20_18 stop"
$ns_ at 21.33 "$node_(20) color maroon"
$ns_ at 21.355 "$ns_ trace-annotate \"node_ - 20 send the Hello message with key values to its neighbor - 18 \""
set cbr20_18 [attach-CBR-traffic $node_(18) $sink(20) 64 0.06]
$ns_ at 21.34 "$cbr20_18 start"
$ns_ at 21.44 "$cbr20_18 stop"
$ns_ at 21.365 "$ns_ trace-annotate \"node_ - 20 send the reply hello key message with session to its neighbor - 18 \""
set cbr20_18 [attach-CBR-traffic $node_(20) $sink(18) 64 0.06]
$ns_ at 21.35 "$cbr20_18 start"
$ns_ at 21.45 "$cbr20_18 stop"
$ns_ at 21.375 "$ns_ trace-annotate \"node_ - 20 send about the acceptance of session key with broadcast key to its neighbor - 18 \""
set cbr20_19 [attach-CBR-traffic $node_(20) $sink(19) 64 0.06]
$ns_ at 21.36 "$cbr20_19 start"
$ns_ at 21.46 "$cbr20_19 stop"
$ns_ at 21.36 "$node_(20) color maroon"
$ns_ at 21.385 "$ns_ trace-annotate \"node_ - 20 send the Hello message with key values to its neighbor - 19 \""
set cbr20_19 [attach-CBR-traffic $node_(19) $sink(20) 64 0.06]
$ns_ at 21.37 "$cbr20_19 start"
$ns_ at 21.47 "$cbr20_19 stop"
$ns_ at 21.395 "$ns_ trace-annotate \"node_ - 20 send the reply hello key message with session to its neighbor - 19 \""
set cbr20_19 [attach-CBR-traffic $node_(20) $sink(19) 64 0.06]
$ns_ at 21.38 "$cbr20_19 start"
$ns_ at 21.48 "$cbr20_19 stop"
$ns_ at 21.405 "$ns_ trace-annotate \"node_ - 20 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr20_21 [attach-CBR-traffic $node_(20) $sink(21) 64 0.06]
$ns_ at 21.39 "$cbr20_21 start"
$ns_ at 21.49 "$cbr20_21 stop"
$ns_ at 21.39 "$node_(20) color maroon"
$ns_ at 21.415 "$ns_ trace-annotate \"node_ - 20 send the Hello message with key values to its neighbor - 21 \""
set cbr20_21 [attach-CBR-traffic $node_(21) $sink(20) 64 0.06]
$ns_ at 21.4 "$cbr20_21 start"
$ns_ at 21.5 "$cbr20_21 stop"
$ns_ at 21.425 "$ns_ trace-annotate \"node_ - 20 send the reply hello key message with session to its neighbor - 21 \""
set cbr20_21 [attach-CBR-traffic $node_(20) $sink(21) 64 0.06]
$ns_ at 21.41 "$cbr20_21 start"
$ns_ at 21.51 "$cbr20_21 stop"
$ns_ at 21.435 "$ns_ trace-annotate \"node_ - 20 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr20_23 [attach-CBR-traffic $node_(20) $sink(23) 64 0.06]
$ns_ at 21.42 "$cbr20_23 start"
$ns_ at 21.52 "$cbr20_23 stop"
$ns_ at 21.42 "$node_(20) color maroon"
$ns_ at 21.445 "$ns_ trace-annotate \"node_ - 20 send the Hello message with key values to its neighbor - 23 \""
set cbr20_23 [attach-CBR-traffic $node_(23) $sink(20) 64 0.06]
$ns_ at 21.43 "$cbr20_23 start"
$ns_ at 21.53 "$cbr20_23 stop"
$ns_ at 21.455 "$ns_ trace-annotate \"node_ - 20 send the reply hello key message with session to its neighbor - 23 \""
set cbr20_23 [attach-CBR-traffic $node_(20) $sink(23) 64 0.06]
$ns_ at 21.44 "$cbr20_23 start"
$ns_ at 21.54 "$cbr20_23 stop"
$ns_ at 21.465 "$ns_ trace-annotate \"node_ - 20 send about the acceptance of session key with broadcast key to its neighbor - 23 \""
set cbr21_14 [attach-CBR-traffic $node_(21) $sink(14) 64 0.06]
$ns_ at 21.43 "$cbr21_14 start"
$ns_ at 21.53 "$cbr21_14 stop"
$ns_ at 21.43 "$node_(21) color maroon"
$ns_ at 21.455 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 14 \""
set cbr21_14 [attach-CBR-traffic $node_(14) $sink(21) 64 0.06]
$ns_ at 21.44 "$cbr21_14 start"
$ns_ at 21.54 "$cbr21_14 stop"
$ns_ at 21.465 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 14 \""
set cbr21_14 [attach-CBR-traffic $node_(21) $sink(14) 64 0.06]
$ns_ at 21.45 "$cbr21_14 start"
$ns_ at 21.55 "$cbr21_14 stop"
$ns_ at 21.475 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 14 \""
set cbr21_15 [attach-CBR-traffic $node_(21) $sink(15) 64 0.06]
$ns_ at 21.46 "$cbr21_15 start"
$ns_ at 21.56 "$cbr21_15 stop"
$ns_ at 21.46 "$node_(21) color maroon"
$ns_ at 21.485 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 15 \""
set cbr21_15 [attach-CBR-traffic $node_(15) $sink(21) 64 0.06]
$ns_ at 21.47 "$cbr21_15 start"
$ns_ at 21.57 "$cbr21_15 stop"
$ns_ at 21.495 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 15 \""
set cbr21_15 [attach-CBR-traffic $node_(21) $sink(15) 64 0.06]
$ns_ at 21.48 "$cbr21_15 start"
$ns_ at 21.58 "$cbr21_15 stop"
$ns_ at 21.505 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr21_18 [attach-CBR-traffic $node_(21) $sink(18) 64 0.06]
$ns_ at 21.49 "$cbr21_18 start"
$ns_ at 21.59 "$cbr21_18 stop"
$ns_ at 21.49 "$node_(21) color maroon"
$ns_ at 21.515 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 18 \""
set cbr21_18 [attach-CBR-traffic $node_(18) $sink(21) 64 0.06]
$ns_ at 21.5 "$cbr21_18 start"
$ns_ at 21.6 "$cbr21_18 stop"
$ns_ at 21.525 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 18 \""
set cbr21_18 [attach-CBR-traffic $node_(21) $sink(18) 64 0.06]
$ns_ at 21.51 "$cbr21_18 start"
$ns_ at 21.61 "$cbr21_18 stop"
$ns_ at 21.535 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 18 \""
set cbr21_19 [attach-CBR-traffic $node_(21) $sink(19) 64 0.06]
$ns_ at 21.52 "$cbr21_19 start"
$ns_ at 21.62 "$cbr21_19 stop"
$ns_ at 21.52 "$node_(21) color maroon"
$ns_ at 21.545 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 19 \""
set cbr21_19 [attach-CBR-traffic $node_(19) $sink(21) 64 0.06]
$ns_ at 21.53 "$cbr21_19 start"
$ns_ at 21.63 "$cbr21_19 stop"
$ns_ at 21.555 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 19 \""
set cbr21_19 [attach-CBR-traffic $node_(21) $sink(19) 64 0.06]
$ns_ at 21.54 "$cbr21_19 start"
$ns_ at 21.64 "$cbr21_19 stop"
$ns_ at 21.565 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 19 \""
set cbr21_20 [attach-CBR-traffic $node_(21) $sink(20) 64 0.06]
$ns_ at 21.55 "$cbr21_20 start"
$ns_ at 21.65 "$cbr21_20 stop"
$ns_ at 21.55 "$node_(21) color maroon"
$ns_ at 21.575 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 20 \""
set cbr21_20 [attach-CBR-traffic $node_(20) $sink(21) 64 0.06]
$ns_ at 21.56 "$cbr21_20 start"
$ns_ at 21.66 "$cbr21_20 stop"
$ns_ at 21.585 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 20 \""
set cbr21_20 [attach-CBR-traffic $node_(21) $sink(20) 64 0.06]
$ns_ at 21.57 "$cbr21_20 start"
$ns_ at 21.67 "$cbr21_20 stop"
$ns_ at 21.595 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 20 \""
set cbr21_22 [attach-CBR-traffic $node_(21) $sink(22) 64 0.06]
$ns_ at 21.58 "$cbr21_22 start"
$ns_ at 21.68 "$cbr21_22 stop"
$ns_ at 21.58 "$node_(21) color maroon"
$ns_ at 21.605 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 22 \""
set cbr21_22 [attach-CBR-traffic $node_(22) $sink(21) 64 0.06]
$ns_ at 21.59 "$cbr21_22 start"
$ns_ at 21.69 "$cbr21_22 stop"
$ns_ at 21.615 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 22 \""
set cbr21_22 [attach-CBR-traffic $node_(21) $sink(22) 64 0.06]
$ns_ at 21.6 "$cbr21_22 start"
$ns_ at 21.7 "$cbr21_22 stop"
$ns_ at 21.625 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 22 \""
set cbr21_23 [attach-CBR-traffic $node_(21) $sink(23) 64 0.06]
$ns_ at 21.61 "$cbr21_23 start"
$ns_ at 21.71 "$cbr21_23 stop"
$ns_ at 21.61 "$node_(21) color maroon"
$ns_ at 21.635 "$ns_ trace-annotate \"node_ - 21 send the Hello message with key values to its neighbor - 23 \""
set cbr21_23 [attach-CBR-traffic $node_(23) $sink(21) 64 0.06]
$ns_ at 21.62 "$cbr21_23 start"
$ns_ at 21.72 "$cbr21_23 stop"
$ns_ at 21.645 "$ns_ trace-annotate \"node_ - 21 send the reply hello key message with session to its neighbor - 23 \""
set cbr21_23 [attach-CBR-traffic $node_(21) $sink(23) 64 0.06]
$ns_ at 21.63 "$cbr21_23 start"
$ns_ at 21.73 "$cbr21_23 stop"
$ns_ at 21.655 "$ns_ trace-annotate \"node_ - 21 send about the acceptance of session key with broadcast key to its neighbor - 23 \""
set cbr22_15 [attach-CBR-traffic $node_(22) $sink(15) 64 0.06]
$ns_ at 21.53 "$cbr22_15 start"
$ns_ at 21.63 "$cbr22_15 stop"
$ns_ at 21.53 "$node_(22) color maroon"
$ns_ at 21.555 "$ns_ trace-annotate \"node_ - 22 send the Hello message with key values to its neighbor - 15 \""
set cbr22_15 [attach-CBR-traffic $node_(15) $sink(22) 64 0.06]
$ns_ at 21.54 "$cbr22_15 start"
$ns_ at 21.64 "$cbr22_15 stop"
$ns_ at 21.565 "$ns_ trace-annotate \"node_ - 22 send the reply hello key message with session to its neighbor - 15 \""
set cbr22_15 [attach-CBR-traffic $node_(22) $sink(15) 64 0.06]
$ns_ at 21.55 "$cbr22_15 start"
$ns_ at 21.65 "$cbr22_15 stop"
$ns_ at 21.575 "$ns_ trace-annotate \"node_ - 22 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr22_21 [attach-CBR-traffic $node_(22) $sink(21) 64 0.06]
$ns_ at 21.56 "$cbr22_21 start"
$ns_ at 21.66 "$cbr22_21 stop"
$ns_ at 21.56 "$node_(22) color maroon"
$ns_ at 21.585 "$ns_ trace-annotate \"node_ - 22 send the Hello message with key values to its neighbor - 21 \""
set cbr22_21 [attach-CBR-traffic $node_(21) $sink(22) 64 0.06]
$ns_ at 21.57 "$cbr22_21 start"
$ns_ at 21.67 "$cbr22_21 stop"
$ns_ at 21.595 "$ns_ trace-annotate \"node_ - 22 send the reply hello key message with session to its neighbor - 21 \""
set cbr22_21 [attach-CBR-traffic $node_(22) $sink(21) 64 0.06]
$ns_ at 21.58 "$cbr22_21 start"
$ns_ at 21.68 "$cbr22_21 stop"
$ns_ at 21.605 "$ns_ trace-annotate \"node_ - 22 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr22_23 [attach-CBR-traffic $node_(22) $sink(23) 64 0.06]
$ns_ at 21.59 "$cbr22_23 start"
$ns_ at 21.69 "$cbr22_23 stop"
$ns_ at 21.59 "$node_(22) color maroon"
$ns_ at 21.615 "$ns_ trace-annotate \"node_ - 22 send the Hello message with key values to its neighbor - 23 \""
set cbr22_23 [attach-CBR-traffic $node_(23) $sink(22) 64 0.06]
$ns_ at 21.6 "$cbr22_23 start"
$ns_ at 21.7 "$cbr22_23 stop"
$ns_ at 21.625 "$ns_ trace-annotate \"node_ - 22 send the reply hello key message with session to its neighbor - 23 \""
set cbr22_23 [attach-CBR-traffic $node_(22) $sink(23) 64 0.06]
$ns_ at 21.61 "$cbr22_23 start"
$ns_ at 21.71 "$cbr22_23 stop"
$ns_ at 21.635 "$ns_ trace-annotate \"node_ - 22 send about the acceptance of session key with broadcast key to its neighbor - 23 \""
set cbr22_24 [attach-CBR-traffic $node_(22) $sink(24) 64 0.06]
$ns_ at 21.62 "$cbr22_24 start"
$ns_ at 21.72 "$cbr22_24 stop"
$ns_ at 21.62 "$node_(22) color maroon"
$ns_ at 21.645 "$ns_ trace-annotate \"node_ - 22 send the Hello message with key values to its neighbor - 24 \""
set cbr22_24 [attach-CBR-traffic $node_(24) $sink(22) 64 0.06]
$ns_ at 21.63 "$cbr22_24 start"
$ns_ at 21.73 "$cbr22_24 stop"
$ns_ at 21.655 "$ns_ trace-annotate \"node_ - 22 send the reply hello key message with session to its neighbor - 24 \""
set cbr22_24 [attach-CBR-traffic $node_(22) $sink(24) 64 0.06]
$ns_ at 21.64 "$cbr22_24 start"
$ns_ at 21.74 "$cbr22_24 stop"
$ns_ at 21.665 "$ns_ trace-annotate \"node_ - 22 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr22_35 [attach-CBR-traffic $node_(22) $sink(35) 64 0.06]
$ns_ at 21.65 "$cbr22_35 start"
$ns_ at 21.75 "$cbr22_35 stop"
$ns_ at 21.65 "$node_(22) color maroon"
$ns_ at 21.675 "$ns_ trace-annotate \"node_ - 22 send the Hello message with key values to its neighbor - 35 \""
set cbr22_35 [attach-CBR-traffic $node_(35) $sink(22) 64 0.06]
$ns_ at 21.66 "$cbr22_35 start"
$ns_ at 21.76 "$cbr22_35 stop"
$ns_ at 21.685 "$ns_ trace-annotate \"node_ - 22 send the reply hello key message with session to its neighbor - 35 \""
set cbr22_35 [attach-CBR-traffic $node_(22) $sink(35) 64 0.06]
$ns_ at 21.67 "$cbr22_35 start"
$ns_ at 21.77 "$cbr22_35 stop"
$ns_ at 21.695 "$ns_ trace-annotate \"node_ - 22 send about the acceptance of session key with broadcast key to its neighbor - 35 \""
set cbr22_36 [attach-CBR-traffic $node_(22) $sink(36) 64 0.06]
$ns_ at 21.68 "$cbr22_36 start"
$ns_ at 21.78 "$cbr22_36 stop"
$ns_ at 21.68 "$node_(22) color maroon"
$ns_ at 21.705 "$ns_ trace-annotate \"node_ - 22 send the Hello message with key values to its neighbor - 36 \""
set cbr22_36 [attach-CBR-traffic $node_(36) $sink(22) 64 0.06]
$ns_ at 21.69 "$cbr22_36 start"
$ns_ at 21.79 "$cbr22_36 stop"
$ns_ at 21.715 "$ns_ trace-annotate \"node_ - 22 send the reply hello key message with session to its neighbor - 36 \""
set cbr22_36 [attach-CBR-traffic $node_(22) $sink(36) 64 0.06]
$ns_ at 21.7 "$cbr22_36 start"
$ns_ at 21.8 "$cbr22_36 stop"
$ns_ at 21.725 "$ns_ trace-annotate \"node_ - 22 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr23_20 [attach-CBR-traffic $node_(23) $sink(20) 64 0.06]
$ns_ at 21.63 "$cbr23_20 start"
$ns_ at 21.73 "$cbr23_20 stop"
$ns_ at 21.63 "$node_(23) color maroon"
$ns_ at 21.655 "$ns_ trace-annotate \"node_ - 23 send the Hello message with key values to its neighbor - 20 \""
set cbr23_20 [attach-CBR-traffic $node_(20) $sink(23) 64 0.06]
$ns_ at 21.64 "$cbr23_20 start"
$ns_ at 21.74 "$cbr23_20 stop"
$ns_ at 21.665 "$ns_ trace-annotate \"node_ - 23 send the reply hello key message with session to its neighbor - 20 \""
set cbr23_20 [attach-CBR-traffic $node_(23) $sink(20) 64 0.06]
$ns_ at 21.65 "$cbr23_20 start"
$ns_ at 21.75 "$cbr23_20 stop"
$ns_ at 21.675 "$ns_ trace-annotate \"node_ - 23 send about the acceptance of session key with broadcast key to its neighbor - 20 \""
set cbr23_21 [attach-CBR-traffic $node_(23) $sink(21) 64 0.06]
$ns_ at 21.66 "$cbr23_21 start"
$ns_ at 21.76 "$cbr23_21 stop"
$ns_ at 21.66 "$node_(23) color maroon"
$ns_ at 21.685 "$ns_ trace-annotate \"node_ - 23 send the Hello message with key values to its neighbor - 21 \""
set cbr23_21 [attach-CBR-traffic $node_(21) $sink(23) 64 0.06]
$ns_ at 21.67 "$cbr23_21 start"
$ns_ at 21.77 "$cbr23_21 stop"
$ns_ at 21.695 "$ns_ trace-annotate \"node_ - 23 send the reply hello key message with session to its neighbor - 21 \""
set cbr23_21 [attach-CBR-traffic $node_(23) $sink(21) 64 0.06]
$ns_ at 21.68 "$cbr23_21 start"
$ns_ at 21.78 "$cbr23_21 stop"
$ns_ at 21.705 "$ns_ trace-annotate \"node_ - 23 send about the acceptance of session key with broadcast key to its neighbor - 21 \""
set cbr23_22 [attach-CBR-traffic $node_(23) $sink(22) 64 0.06]
$ns_ at 21.69 "$cbr23_22 start"
$ns_ at 21.79 "$cbr23_22 stop"
$ns_ at 21.69 "$node_(23) color maroon"
$ns_ at 21.715 "$ns_ trace-annotate \"node_ - 23 send the Hello message with key values to its neighbor - 22 \""
set cbr23_22 [attach-CBR-traffic $node_(22) $sink(23) 64 0.06]
$ns_ at 21.7 "$cbr23_22 start"
$ns_ at 21.8 "$cbr23_22 stop"
$ns_ at 21.725 "$ns_ trace-annotate \"node_ - 23 send the reply hello key message with session to its neighbor - 22 \""
set cbr23_22 [attach-CBR-traffic $node_(23) $sink(22) 64 0.06]
$ns_ at 21.71 "$cbr23_22 start"
$ns_ at 21.81 "$cbr23_22 stop"
$ns_ at 21.735 "$ns_ trace-annotate \"node_ - 23 send about the acceptance of session key with broadcast key to its neighbor - 22 \""
set cbr23_35 [attach-CBR-traffic $node_(23) $sink(35) 64 0.06]
$ns_ at 21.72 "$cbr23_35 start"
$ns_ at 21.82 "$cbr23_35 stop"
$ns_ at 21.72 "$node_(23) color maroon"
$ns_ at 21.745 "$ns_ trace-annotate \"node_ - 23 send the Hello message with key values to its neighbor - 35 \""
set cbr23_35 [attach-CBR-traffic $node_(35) $sink(23) 64 0.06]
$ns_ at 21.73 "$cbr23_35 start"
$ns_ at 21.83 "$cbr23_35 stop"
$ns_ at 21.755 "$ns_ trace-annotate \"node_ - 23 send the reply hello key message with session to its neighbor - 35 \""
set cbr23_35 [attach-CBR-traffic $node_(23) $sink(35) 64 0.06]
$ns_ at 21.74 "$cbr23_35 start"
$ns_ at 21.84 "$cbr23_35 stop"
$ns_ at 21.765 "$ns_ trace-annotate \"node_ - 23 send about the acceptance of session key with broadcast key to its neighbor - 35 \""
set cbr23_36 [attach-CBR-traffic $node_(23) $sink(36) 64 0.06]
$ns_ at 21.75 "$cbr23_36 start"
$ns_ at 21.85 "$cbr23_36 stop"
$ns_ at 21.75 "$node_(23) color maroon"
$ns_ at 21.775 "$ns_ trace-annotate \"node_ - 23 send the Hello message with key values to its neighbor - 36 \""
set cbr23_36 [attach-CBR-traffic $node_(36) $sink(23) 64 0.06]
$ns_ at 21.76 "$cbr23_36 start"
$ns_ at 21.86 "$cbr23_36 stop"
$ns_ at 21.785 "$ns_ trace-annotate \"node_ - 23 send the reply hello key message with session to its neighbor - 36 \""
set cbr23_36 [attach-CBR-traffic $node_(23) $sink(36) 64 0.06]
$ns_ at 21.77 "$cbr23_36 start"
$ns_ at 21.87 "$cbr23_36 stop"
$ns_ at 21.795 "$ns_ trace-annotate \"node_ - 23 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr24_12 [attach-CBR-traffic $node_(24) $sink(12) 64 0.06]
$ns_ at 21.73 "$cbr24_12 start"
$ns_ at 21.83 "$cbr24_12 stop"
$ns_ at 21.73 "$node_(24) color maroon"
$ns_ at 21.755 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 12 \""
set cbr24_12 [attach-CBR-traffic $node_(12) $sink(24) 64 0.06]
$ns_ at 21.74 "$cbr24_12 start"
$ns_ at 21.84 "$cbr24_12 stop"
$ns_ at 21.765 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 12 \""
set cbr24_12 [attach-CBR-traffic $node_(24) $sink(12) 64 0.06]
$ns_ at 21.75 "$cbr24_12 start"
$ns_ at 21.85 "$cbr24_12 stop"
$ns_ at 21.775 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 12 \""
set cbr24_13 [attach-CBR-traffic $node_(24) $sink(13) 64 0.06]
$ns_ at 21.76 "$cbr24_13 start"
$ns_ at 21.86 "$cbr24_13 stop"
$ns_ at 21.76 "$node_(24) color maroon"
$ns_ at 21.785 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 13 \""
set cbr24_13 [attach-CBR-traffic $node_(13) $sink(24) 64 0.06]
$ns_ at 21.77 "$cbr24_13 start"
$ns_ at 21.87 "$cbr24_13 stop"
$ns_ at 21.795 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 13 \""
set cbr24_13 [attach-CBR-traffic $node_(24) $sink(13) 64 0.06]
$ns_ at 21.78 "$cbr24_13 start"
$ns_ at 21.88 "$cbr24_13 stop"
$ns_ at 21.805 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 13 \""
set cbr24_15 [attach-CBR-traffic $node_(24) $sink(15) 64 0.06]
$ns_ at 21.79 "$cbr24_15 start"
$ns_ at 21.89 "$cbr24_15 stop"
$ns_ at 21.79 "$node_(24) color maroon"
$ns_ at 21.815 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 15 \""
set cbr24_15 [attach-CBR-traffic $node_(15) $sink(24) 64 0.06]
$ns_ at 21.8 "$cbr24_15 start"
$ns_ at 21.9 "$cbr24_15 stop"
$ns_ at 21.825 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 15 \""
set cbr24_15 [attach-CBR-traffic $node_(24) $sink(15) 64 0.06]
$ns_ at 21.81 "$cbr24_15 start"
$ns_ at 21.91 "$cbr24_15 stop"
$ns_ at 21.835 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 15 \""
set cbr24_22 [attach-CBR-traffic $node_(24) $sink(22) 64 0.06]
$ns_ at 21.82 "$cbr24_22 start"
$ns_ at 21.92 "$cbr24_22 stop"
$ns_ at 21.82 "$node_(24) color maroon"
$ns_ at 21.845 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 22 \""
set cbr24_22 [attach-CBR-traffic $node_(22) $sink(24) 64 0.06]
$ns_ at 21.83 "$cbr24_22 start"
$ns_ at 21.93 "$cbr24_22 stop"
$ns_ at 21.855 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 22 \""
set cbr24_22 [attach-CBR-traffic $node_(24) $sink(22) 64 0.06]
$ns_ at 21.84 "$cbr24_22 start"
$ns_ at 21.94 "$cbr24_22 stop"
$ns_ at 21.865 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 22 \""
set cbr24_25 [attach-CBR-traffic $node_(24) $sink(25) 64 0.06]
$ns_ at 21.85 "$cbr24_25 start"
$ns_ at 21.95 "$cbr24_25 stop"
$ns_ at 21.85 "$node_(24) color maroon"
$ns_ at 21.875 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 25 \""
set cbr24_25 [attach-CBR-traffic $node_(25) $sink(24) 64 0.06]
$ns_ at 21.86 "$cbr24_25 start"
$ns_ at 21.96 "$cbr24_25 stop"
$ns_ at 21.885 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 25 \""
set cbr24_25 [attach-CBR-traffic $node_(24) $sink(25) 64 0.06]
$ns_ at 21.87 "$cbr24_25 start"
$ns_ at 21.97 "$cbr24_25 stop"
$ns_ at 21.895 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 25 \""
set cbr24_32 [attach-CBR-traffic $node_(24) $sink(32) 64 0.06]
$ns_ at 21.88 "$cbr24_32 start"
$ns_ at 21.98 "$cbr24_32 stop"
$ns_ at 21.88 "$node_(24) color maroon"
$ns_ at 21.905 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 32 \""
set cbr24_32 [attach-CBR-traffic $node_(32) $sink(24) 64 0.06]
$ns_ at 21.89 "$cbr24_32 start"
$ns_ at 21.99 "$cbr24_32 stop"
$ns_ at 21.915 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 32 \""
set cbr24_32 [attach-CBR-traffic $node_(24) $sink(32) 64 0.06]
$ns_ at 21.9 "$cbr24_32 start"
$ns_ at 22 "$cbr24_32 stop"
$ns_ at 21.925 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 32 \""
set cbr24_34 [attach-CBR-traffic $node_(24) $sink(34) 64 0.06]
$ns_ at 21.91 "$cbr24_34 start"
$ns_ at 22.01 "$cbr24_34 stop"
$ns_ at 21.91 "$node_(24) color maroon"
$ns_ at 21.935 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 34 \""
set cbr24_34 [attach-CBR-traffic $node_(34) $sink(24) 64 0.06]
$ns_ at 21.92 "$cbr24_34 start"
$ns_ at 22.02 "$cbr24_34 stop"
$ns_ at 21.945 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 34 \""
set cbr24_34 [attach-CBR-traffic $node_(24) $sink(34) 64 0.06]
$ns_ at 21.93 "$cbr24_34 start"
$ns_ at 22.03 "$cbr24_34 stop"
$ns_ at 21.955 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr24_36 [attach-CBR-traffic $node_(24) $sink(36) 64 0.06]
$ns_ at 21.94 "$cbr24_36 start"
$ns_ at 22.04 "$cbr24_36 stop"
$ns_ at 21.94 "$node_(24) color maroon"
$ns_ at 21.965 "$ns_ trace-annotate \"node_ - 24 send the Hello message with key values to its neighbor - 36 \""
set cbr24_36 [attach-CBR-traffic $node_(36) $sink(24) 64 0.06]
$ns_ at 21.95 "$cbr24_36 start"
$ns_ at 22.05 "$cbr24_36 stop"
$ns_ at 21.975 "$ns_ trace-annotate \"node_ - 24 send the reply hello key message with session to its neighbor - 36 \""
set cbr24_36 [attach-CBR-traffic $node_(24) $sink(36) 64 0.06]
$ns_ at 21.96 "$cbr24_36 start"
$ns_ at 22.06 "$cbr24_36 stop"
$ns_ at 21.985 "$ns_ trace-annotate \"node_ - 24 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr25_10 [attach-CBR-traffic $node_(25) $sink(10) 64 0.06]
$ns_ at 21.83 "$cbr25_10 start"
$ns_ at 21.93 "$cbr25_10 stop"
$ns_ at 21.83 "$node_(25) color maroon"
$ns_ at 21.855 "$ns_ trace-annotate \"node_ - 25 send the Hello message with key values to its neighbor - 10 \""
set cbr25_10 [attach-CBR-traffic $node_(10) $sink(25) 64 0.06]
$ns_ at 21.84 "$cbr25_10 start"
$ns_ at 21.94 "$cbr25_10 stop"
$ns_ at 21.865 "$ns_ trace-annotate \"node_ - 25 send the reply hello key message with session to its neighbor - 10 \""
set cbr25_10 [attach-CBR-traffic $node_(25) $sink(10) 64 0.06]
$ns_ at 21.85 "$cbr25_10 start"
$ns_ at 21.95 "$cbr25_10 stop"
$ns_ at 21.875 "$ns_ trace-annotate \"node_ - 25 send about the acceptance of session key with broadcast key to its neighbor - 10 \""
set cbr25_12 [attach-CBR-traffic $node_(25) $sink(12) 64 0.06]
$ns_ at 21.86 "$cbr25_12 start"
$ns_ at 21.96 "$cbr25_12 stop"
$ns_ at 21.86 "$node_(25) color maroon"
$ns_ at 21.885 "$ns_ trace-annotate \"node_ - 25 send the Hello message with key values to its neighbor - 12 \""
set cbr25_12 [attach-CBR-traffic $node_(12) $sink(25) 64 0.06]
$ns_ at 21.87 "$cbr25_12 start"
$ns_ at 21.97 "$cbr25_12 stop"
$ns_ at 21.895 "$ns_ trace-annotate \"node_ - 25 send the reply hello key message with session to its neighbor - 12 \""
set cbr25_12 [attach-CBR-traffic $node_(25) $sink(12) 64 0.06]
$ns_ at 21.88 "$cbr25_12 start"
$ns_ at 21.98 "$cbr25_12 stop"
$ns_ at 21.905 "$ns_ trace-annotate \"node_ - 25 send about the acceptance of session key with broadcast key to its neighbor - 12 \""
set cbr25_24 [attach-CBR-traffic $node_(25) $sink(24) 64 0.06]
$ns_ at 21.89 "$cbr25_24 start"
$ns_ at 21.99 "$cbr25_24 stop"
$ns_ at 21.89 "$node_(25) color maroon"
$ns_ at 21.915 "$ns_ trace-annotate \"node_ - 25 send the Hello message with key values to its neighbor - 24 \""
set cbr25_24 [attach-CBR-traffic $node_(24) $sink(25) 64 0.06]
$ns_ at 21.9 "$cbr25_24 start"
$ns_ at 22 "$cbr25_24 stop"
$ns_ at 21.925 "$ns_ trace-annotate \"node_ - 25 send the reply hello key message with session to its neighbor - 24 \""
set cbr25_24 [attach-CBR-traffic $node_(25) $sink(24) 64 0.06]
$ns_ at 21.91 "$cbr25_24 start"
$ns_ at 22.01 "$cbr25_24 stop"
$ns_ at 21.935 "$ns_ trace-annotate \"node_ - 25 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr25_26 [attach-CBR-traffic $node_(25) $sink(26) 64 0.06]
$ns_ at 21.92 "$cbr25_26 start"
$ns_ at 22.02 "$cbr25_26 stop"
$ns_ at 21.92 "$node_(25) color maroon"
$ns_ at 21.945 "$ns_ trace-annotate \"node_ - 25 send the Hello message with key values to its neighbor - 26 \""
set cbr25_26 [attach-CBR-traffic $node_(26) $sink(25) 64 0.06]
$ns_ at 21.93 "$cbr25_26 start"
$ns_ at 22.03 "$cbr25_26 stop"
$ns_ at 21.955 "$ns_ trace-annotate \"node_ - 25 send the reply hello key message with session to its neighbor - 26 \""
set cbr25_26 [attach-CBR-traffic $node_(25) $sink(26) 64 0.06]
$ns_ at 21.94 "$cbr25_26 start"
$ns_ at 22.04 "$cbr25_26 stop"
$ns_ at 21.965 "$ns_ trace-annotate \"node_ - 25 send about the acceptance of session key with broadcast key to its neighbor - 26 \""
set cbr25_30 [attach-CBR-traffic $node_(25) $sink(30) 64 0.06]
$ns_ at 21.95 "$cbr25_30 start"
$ns_ at 22.05 "$cbr25_30 stop"
$ns_ at 21.95 "$node_(25) color maroon"
$ns_ at 21.975 "$ns_ trace-annotate \"node_ - 25 send the Hello message with key values to its neighbor - 30 \""
set cbr25_30 [attach-CBR-traffic $node_(30) $sink(25) 64 0.06]
$ns_ at 21.96 "$cbr25_30 start"
$ns_ at 22.06 "$cbr25_30 stop"
$ns_ at 21.985 "$ns_ trace-annotate \"node_ - 25 send the reply hello key message with session to its neighbor - 30 \""
set cbr25_30 [attach-CBR-traffic $node_(25) $sink(30) 64 0.06]
$ns_ at 21.97 "$cbr25_30 start"
$ns_ at 22.07 "$cbr25_30 stop"
$ns_ at 21.995 "$ns_ trace-annotate \"node_ - 25 send about the acceptance of session key with broadcast key to its neighbor - 30 \""
set cbr25_32 [attach-CBR-traffic $node_(25) $sink(32) 64 0.06]
$ns_ at 21.98 "$cbr25_32 start"
$ns_ at 22.08 "$cbr25_32 stop"
$ns_ at 21.98 "$node_(25) color maroon"
$ns_ at 22.005 "$ns_ trace-annotate \"node_ - 25 send the Hello message with key values to its neighbor - 32 \""
set cbr25_32 [attach-CBR-traffic $node_(32) $sink(25) 64 0.06]
$ns_ at 21.99 "$cbr25_32 start"
$ns_ at 22.09 "$cbr25_32 stop"
$ns_ at 22.015 "$ns_ trace-annotate \"node_ - 25 send the reply hello key message with session to its neighbor - 32 \""
set cbr25_32 [attach-CBR-traffic $node_(25) $sink(32) 64 0.06]
$ns_ at 22 "$cbr25_32 start"
$ns_ at 22.1 "$cbr25_32 stop"
$ns_ at 22.025 "$ns_ trace-annotate \"node_ - 25 send about the acceptance of session key with broadcast key to its neighbor - 32 \""
set cbr26_10 [attach-CBR-traffic $node_(26) $sink(10) 64 0.06]
$ns_ at 21.93 "$cbr26_10 start"
$ns_ at 22.03 "$cbr26_10 stop"
$ns_ at 21.93 "$node_(26) color maroon"
$ns_ at 21.955 "$ns_ trace-annotate \"node_ - 26 send the Hello message with key values to its neighbor - 10 \""
set cbr26_10 [attach-CBR-traffic $node_(10) $sink(26) 64 0.06]
$ns_ at 21.94 "$cbr26_10 start"
$ns_ at 22.04 "$cbr26_10 stop"
$ns_ at 21.965 "$ns_ trace-annotate \"node_ - 26 send the reply hello key message with session to its neighbor - 10 \""
set cbr26_10 [attach-CBR-traffic $node_(26) $sink(10) 64 0.06]
$ns_ at 21.95 "$cbr26_10 start"
$ns_ at 22.05 "$cbr26_10 stop"
$ns_ at 21.975 "$ns_ trace-annotate \"node_ - 26 send about the acceptance of session key with broadcast key to its neighbor - 10 \""
set cbr26_25 [attach-CBR-traffic $node_(26) $sink(25) 64 0.06]
$ns_ at 21.96 "$cbr26_25 start"
$ns_ at 22.06 "$cbr26_25 stop"
$ns_ at 21.96 "$node_(26) color maroon"
$ns_ at 21.985 "$ns_ trace-annotate \"node_ - 26 send the Hello message with key values to its neighbor - 25 \""
set cbr26_25 [attach-CBR-traffic $node_(25) $sink(26) 64 0.06]
$ns_ at 21.97 "$cbr26_25 start"
$ns_ at 22.07 "$cbr26_25 stop"
$ns_ at 21.995 "$ns_ trace-annotate \"node_ - 26 send the reply hello key message with session to its neighbor - 25 \""
set cbr26_25 [attach-CBR-traffic $node_(26) $sink(25) 64 0.06]
$ns_ at 21.98 "$cbr26_25 start"
$ns_ at 22.08 "$cbr26_25 stop"
$ns_ at 22.005 "$ns_ trace-annotate \"node_ - 26 send about the acceptance of session key with broadcast key to its neighbor - 25 \""
set cbr26_27 [attach-CBR-traffic $node_(26) $sink(27) 64 0.06]
$ns_ at 21.99 "$cbr26_27 start"
$ns_ at 22.09 "$cbr26_27 stop"
$ns_ at 21.99 "$node_(26) color maroon"
$ns_ at 22.015 "$ns_ trace-annotate \"node_ - 26 send the Hello message with key values to its neighbor - 27 \""
set cbr26_27 [attach-CBR-traffic $node_(27) $sink(26) 64 0.06]
$ns_ at 22 "$cbr26_27 start"
$ns_ at 22.1 "$cbr26_27 stop"
$ns_ at 22.025 "$ns_ trace-annotate \"node_ - 26 send the reply hello key message with session to its neighbor - 27 \""
set cbr26_27 [attach-CBR-traffic $node_(26) $sink(27) 64 0.06]
$ns_ at 22.01 "$cbr26_27 start"
$ns_ at 22.11 "$cbr26_27 stop"
$ns_ at 22.035 "$ns_ trace-annotate \"node_ - 26 send about the acceptance of session key with broadcast key to its neighbor - 27 \""
set cbr26_28 [attach-CBR-traffic $node_(26) $sink(28) 64 0.06]
$ns_ at 22.02 "$cbr26_28 start"
$ns_ at 22.12 "$cbr26_28 stop"
$ns_ at 22.02 "$node_(26) color maroon"
$ns_ at 22.045 "$ns_ trace-annotate \"node_ - 26 send the Hello message with key values to its neighbor - 28 \""
set cbr26_28 [attach-CBR-traffic $node_(28) $sink(26) 64 0.06]
$ns_ at 22.03 "$cbr26_28 start"
$ns_ at 22.13 "$cbr26_28 stop"
$ns_ at 22.055 "$ns_ trace-annotate \"node_ - 26 send the reply hello key message with session to its neighbor - 28 \""
set cbr26_28 [attach-CBR-traffic $node_(26) $sink(28) 64 0.06]
$ns_ at 22.04 "$cbr26_28 start"
$ns_ at 22.14 "$cbr26_28 stop"
$ns_ at 22.065 "$ns_ trace-annotate \"node_ - 26 send about the acceptance of session key with broadcast key to its neighbor - 28 \""
set cbr26_29 [attach-CBR-traffic $node_(26) $sink(29) 64 0.06]
$ns_ at 22.05 "$cbr26_29 start"
$ns_ at 22.15 "$cbr26_29 stop"
$ns_ at 22.05 "$node_(26) color maroon"
$ns_ at 22.075 "$ns_ trace-annotate \"node_ - 26 send the Hello message with key values to its neighbor - 29 \""
set cbr26_29 [attach-CBR-traffic $node_(29) $sink(26) 64 0.06]
$ns_ at 22.06 "$cbr26_29 start"
$ns_ at 22.16 "$cbr26_29 stop"
$ns_ at 22.085 "$ns_ trace-annotate \"node_ - 26 send the reply hello key message with session to its neighbor - 29 \""
set cbr26_29 [attach-CBR-traffic $node_(26) $sink(29) 64 0.06]
$ns_ at 22.07 "$cbr26_29 start"
$ns_ at 22.17 "$cbr26_29 stop"
$ns_ at 22.095 "$ns_ trace-annotate \"node_ - 26 send about the acceptance of session key with broadcast key to its neighbor - 29 \""
set cbr26_30 [attach-CBR-traffic $node_(26) $sink(30) 64 0.06]
$ns_ at 22.08 "$cbr26_30 start"
$ns_ at 22.18 "$cbr26_30 stop"
$ns_ at 22.08 "$node_(26) color maroon"
$ns_ at 22.105 "$ns_ trace-annotate \"node_ - 26 send the Hello message with key values to its neighbor - 30 \""
set cbr26_30 [attach-CBR-traffic $node_(30) $sink(26) 64 0.06]
$ns_ at 22.09 "$cbr26_30 start"
$ns_ at 22.19 "$cbr26_30 stop"
$ns_ at 22.115 "$ns_ trace-annotate \"node_ - 26 send the reply hello key message with session to its neighbor - 30 \""
set cbr26_30 [attach-CBR-traffic $node_(26) $sink(30) 64 0.06]
$ns_ at 22.1 "$cbr26_30 start"
$ns_ at 22.2 "$cbr26_30 stop"
$ns_ at 22.125 "$ns_ trace-annotate \"node_ - 26 send about the acceptance of session key with broadcast key to its neighbor - 30 \""
set cbr27_10 [attach-CBR-traffic $node_(27) $sink(10) 64 0.06]
$ns_ at 22.03 "$cbr27_10 start"
$ns_ at 22.13 "$cbr27_10 stop"
$ns_ at 22.03 "$node_(27) color maroon"
$ns_ at 22.055 "$ns_ trace-annotate \"node_ - 27 send the Hello message with key values to its neighbor - 10 \""
set cbr27_10 [attach-CBR-traffic $node_(10) $sink(27) 64 0.06]
$ns_ at 22.04 "$cbr27_10 start"
$ns_ at 22.14 "$cbr27_10 stop"
$ns_ at 22.065 "$ns_ trace-annotate \"node_ - 27 send the reply hello key message with session to its neighbor - 10 \""
set cbr27_10 [attach-CBR-traffic $node_(27) $sink(10) 64 0.06]
$ns_ at 22.05 "$cbr27_10 start"
$ns_ at 22.15 "$cbr27_10 stop"
$ns_ at 22.075 "$ns_ trace-annotate \"node_ - 27 send about the acceptance of session key with broadcast key to its neighbor - 10 \""
set cbr27_11 [attach-CBR-traffic $node_(27) $sink(11) 64 0.06]
$ns_ at 22.06 "$cbr27_11 start"
$ns_ at 22.16 "$cbr27_11 stop"
$ns_ at 22.06 "$node_(27) color maroon"
$ns_ at 22.085 "$ns_ trace-annotate \"node_ - 27 send the Hello message with key values to its neighbor - 11 \""
set cbr27_11 [attach-CBR-traffic $node_(11) $sink(27) 64 0.06]
$ns_ at 22.07 "$cbr27_11 start"
$ns_ at 22.17 "$cbr27_11 stop"
$ns_ at 22.095 "$ns_ trace-annotate \"node_ - 27 send the reply hello key message with session to its neighbor - 11 \""
set cbr27_11 [attach-CBR-traffic $node_(27) $sink(11) 64 0.06]
$ns_ at 22.08 "$cbr27_11 start"
$ns_ at 22.18 "$cbr27_11 stop"
$ns_ at 22.105 "$ns_ trace-annotate \"node_ - 27 send about the acceptance of session key with broadcast key to its neighbor - 11 \""
set cbr27_26 [attach-CBR-traffic $node_(27) $sink(26) 64 0.06]
$ns_ at 22.09 "$cbr27_26 start"
$ns_ at 22.19 "$cbr27_26 stop"
$ns_ at 22.09 "$node_(27) color maroon"
$ns_ at 22.115 "$ns_ trace-annotate \"node_ - 27 send the Hello message with key values to its neighbor - 26 \""
set cbr27_26 [attach-CBR-traffic $node_(26) $sink(27) 64 0.06]
$ns_ at 22.1 "$cbr27_26 start"
$ns_ at 22.2 "$cbr27_26 stop"
$ns_ at 22.125 "$ns_ trace-annotate \"node_ - 27 send the reply hello key message with session to its neighbor - 26 \""
set cbr27_26 [attach-CBR-traffic $node_(27) $sink(26) 64 0.06]
$ns_ at 22.11 "$cbr27_26 start"
$ns_ at 22.21 "$cbr27_26 stop"
$ns_ at 22.135 "$ns_ trace-annotate \"node_ - 27 send about the acceptance of session key with broadcast key to its neighbor - 26 \""
set cbr27_28 [attach-CBR-traffic $node_(27) $sink(28) 64 0.06]
$ns_ at 22.12 "$cbr27_28 start"
$ns_ at 22.22 "$cbr27_28 stop"
$ns_ at 22.12 "$node_(27) color maroon"
$ns_ at 22.145 "$ns_ trace-annotate \"node_ - 27 send the Hello message with key values to its neighbor - 28 \""
set cbr27_28 [attach-CBR-traffic $node_(28) $sink(27) 64 0.06]
$ns_ at 22.13 "$cbr27_28 start"
$ns_ at 22.23 "$cbr27_28 stop"
$ns_ at 22.155 "$ns_ trace-annotate \"node_ - 27 send the reply hello key message with session to its neighbor - 28 \""
set cbr27_28 [attach-CBR-traffic $node_(27) $sink(28) 64 0.06]
$ns_ at 22.14 "$cbr27_28 start"
$ns_ at 22.24 "$cbr27_28 stop"
$ns_ at 22.165 "$ns_ trace-annotate \"node_ - 27 send about the acceptance of session key with broadcast key to its neighbor - 28 \""
set cbr28_26 [attach-CBR-traffic $node_(28) $sink(26) 64 0.06]
$ns_ at 22.13 "$cbr28_26 start"
$ns_ at 22.23 "$cbr28_26 stop"
$ns_ at 22.13 "$node_(28) color maroon"
$ns_ at 22.155 "$ns_ trace-annotate \"node_ - 28 send the Hello message with key values to its neighbor - 26 \""
set cbr28_26 [attach-CBR-traffic $node_(26) $sink(28) 64 0.06]
$ns_ at 22.14 "$cbr28_26 start"
$ns_ at 22.24 "$cbr28_26 stop"
$ns_ at 22.165 "$ns_ trace-annotate \"node_ - 28 send the reply hello key message with session to its neighbor - 26 \""
set cbr28_26 [attach-CBR-traffic $node_(28) $sink(26) 64 0.06]
$ns_ at 22.15 "$cbr28_26 start"
$ns_ at 22.25 "$cbr28_26 stop"
$ns_ at 22.175 "$ns_ trace-annotate \"node_ - 28 send about the acceptance of session key with broadcast key to its neighbor - 26 \""
set cbr28_27 [attach-CBR-traffic $node_(28) $sink(27) 64 0.06]
$ns_ at 22.16 "$cbr28_27 start"
$ns_ at 22.26 "$cbr28_27 stop"
$ns_ at 22.16 "$node_(28) color maroon"
$ns_ at 22.185 "$ns_ trace-annotate \"node_ - 28 send the Hello message with key values to its neighbor - 27 \""
set cbr28_27 [attach-CBR-traffic $node_(27) $sink(28) 64 0.06]
$ns_ at 22.17 "$cbr28_27 start"
$ns_ at 22.27 "$cbr28_27 stop"
$ns_ at 22.195 "$ns_ trace-annotate \"node_ - 28 send the reply hello key message with session to its neighbor - 27 \""
set cbr28_27 [attach-CBR-traffic $node_(28) $sink(27) 64 0.06]
$ns_ at 22.18 "$cbr28_27 start"
$ns_ at 22.28 "$cbr28_27 stop"
$ns_ at 22.205 "$ns_ trace-annotate \"node_ - 28 send about the acceptance of session key with broadcast key to its neighbor - 27 \""
set cbr28_29 [attach-CBR-traffic $node_(28) $sink(29) 64 0.06]
$ns_ at 22.19 "$cbr28_29 start"
$ns_ at 22.29 "$cbr28_29 stop"
$ns_ at 22.19 "$node_(28) color maroon"
$ns_ at 22.215 "$ns_ trace-annotate \"node_ - 28 send the Hello message with key values to its neighbor - 29 \""
set cbr28_29 [attach-CBR-traffic $node_(29) $sink(28) 64 0.06]
$ns_ at 22.2 "$cbr28_29 start"
$ns_ at 22.3 "$cbr28_29 stop"
$ns_ at 22.225 "$ns_ trace-annotate \"node_ - 28 send the reply hello key message with session to its neighbor - 29 \""
set cbr28_29 [attach-CBR-traffic $node_(28) $sink(29) 64 0.06]
$ns_ at 22.21 "$cbr28_29 start"
$ns_ at 22.31 "$cbr28_29 stop"
$ns_ at 22.235 "$ns_ trace-annotate \"node_ - 28 send about the acceptance of session key with broadcast key to its neighbor - 29 \""
set cbr28_42 [attach-CBR-traffic $node_(28) $sink(42) 64 0.06]
$ns_ at 22.22 "$cbr28_42 start"
$ns_ at 22.32 "$cbr28_42 stop"
$ns_ at 22.22 "$node_(28) color maroon"
$ns_ at 22.245 "$ns_ trace-annotate \"node_ - 28 send the Hello message with key values to its neighbor - 42 \""
set cbr28_42 [attach-CBR-traffic $node_(42) $sink(28) 64 0.06]
$ns_ at 22.23 "$cbr28_42 start"
$ns_ at 22.33 "$cbr28_42 stop"
$ns_ at 22.255 "$ns_ trace-annotate \"node_ - 28 send the reply hello key message with session to its neighbor - 42 \""
set cbr28_42 [attach-CBR-traffic $node_(28) $sink(42) 64 0.06]
$ns_ at 22.24 "$cbr28_42 start"
$ns_ at 22.34 "$cbr28_42 stop"
$ns_ at 22.265 "$ns_ trace-annotate \"node_ - 28 send about the acceptance of session key with broadcast key to its neighbor - 42 \""
set cbr28_43 [attach-CBR-traffic $node_(28) $sink(43) 64 0.06]
$ns_ at 22.25 "$cbr28_43 start"
$ns_ at 22.35 "$cbr28_43 stop"
$ns_ at 22.25 "$node_(28) color maroon"
$ns_ at 22.275 "$ns_ trace-annotate \"node_ - 28 send the Hello message with key values to its neighbor - 43 \""
set cbr28_43 [attach-CBR-traffic $node_(43) $sink(28) 64 0.06]
$ns_ at 22.26 "$cbr28_43 start"
$ns_ at 22.36 "$cbr28_43 stop"
$ns_ at 22.285 "$ns_ trace-annotate \"node_ - 28 send the reply hello key message with session to its neighbor - 43 \""
set cbr28_43 [attach-CBR-traffic $node_(28) $sink(43) 64 0.06]
$ns_ at 22.27 "$cbr28_43 start"
$ns_ at 22.37 "$cbr28_43 stop"
$ns_ at 22.295 "$ns_ trace-annotate \"node_ - 28 send about the acceptance of session key with broadcast key to its neighbor - 43 \""
set cbr28_44 [attach-CBR-traffic $node_(28) $sink(44) 64 0.06]
$ns_ at 22.28 "$cbr28_44 start"
$ns_ at 22.38 "$cbr28_44 stop"
$ns_ at 22.28 "$node_(28) color maroon"
$ns_ at 22.305 "$ns_ trace-annotate \"node_ - 28 send the Hello message with key values to its neighbor - 44 \""
set cbr28_44 [attach-CBR-traffic $node_(44) $sink(28) 64 0.06]
$ns_ at 22.29 "$cbr28_44 start"
$ns_ at 22.39 "$cbr28_44 stop"
$ns_ at 22.315 "$ns_ trace-annotate \"node_ - 28 send the reply hello key message with session to its neighbor - 44 \""
set cbr28_44 [attach-CBR-traffic $node_(28) $sink(44) 64 0.06]
$ns_ at 22.3 "$cbr28_44 start"
$ns_ at 22.4 "$cbr28_44 stop"
$ns_ at 22.325 "$ns_ trace-annotate \"node_ - 28 send about the acceptance of session key with broadcast key to its neighbor - 44 \""
set cbr29_26 [attach-CBR-traffic $node_(29) $sink(26) 64 0.06]
$ns_ at 22.23 "$cbr29_26 start"
$ns_ at 22.33 "$cbr29_26 stop"
$ns_ at 22.23 "$node_(29) color maroon"
$ns_ at 22.255 "$ns_ trace-annotate \"node_ - 29 send the Hello message with key values to its neighbor - 26 \""
set cbr29_26 [attach-CBR-traffic $node_(26) $sink(29) 64 0.06]
$ns_ at 22.24 "$cbr29_26 start"
$ns_ at 22.34 "$cbr29_26 stop"
$ns_ at 22.265 "$ns_ trace-annotate \"node_ - 29 send the reply hello key message with session to its neighbor - 26 \""
set cbr29_26 [attach-CBR-traffic $node_(29) $sink(26) 64 0.06]
$ns_ at 22.25 "$cbr29_26 start"
$ns_ at 22.35 "$cbr29_26 stop"
$ns_ at 22.275 "$ns_ trace-annotate \"node_ - 29 send about the acceptance of session key with broadcast key to its neighbor - 26 \""
set cbr29_28 [attach-CBR-traffic $node_(29) $sink(28) 64 0.06]
$ns_ at 22.26 "$cbr29_28 start"
$ns_ at 22.36 "$cbr29_28 stop"
$ns_ at 22.26 "$node_(29) color maroon"
$ns_ at 22.285 "$ns_ trace-annotate \"node_ - 29 send the Hello message with key values to its neighbor - 28 \""
set cbr29_28 [attach-CBR-traffic $node_(28) $sink(29) 64 0.06]
$ns_ at 22.27 "$cbr29_28 start"
$ns_ at 22.37 "$cbr29_28 stop"
$ns_ at 22.295 "$ns_ trace-annotate \"node_ - 29 send the reply hello key message with session to its neighbor - 28 \""
set cbr29_28 [attach-CBR-traffic $node_(29) $sink(28) 64 0.06]
$ns_ at 22.28 "$cbr29_28 start"
$ns_ at 22.38 "$cbr29_28 stop"
$ns_ at 22.305 "$ns_ trace-annotate \"node_ - 29 send about the acceptance of session key with broadcast key to its neighbor - 28 \""
set cbr29_30 [attach-CBR-traffic $node_(29) $sink(30) 64 0.06]
$ns_ at 22.29 "$cbr29_30 start"
$ns_ at 22.39 "$cbr29_30 stop"
$ns_ at 22.29 "$node_(29) color maroon"
$ns_ at 22.315 "$ns_ trace-annotate \"node_ - 29 send the Hello message with key values to its neighbor - 30 \""
set cbr29_30 [attach-CBR-traffic $node_(30) $sink(29) 64 0.06]
$ns_ at 22.3 "$cbr29_30 start"
$ns_ at 22.4 "$cbr29_30 stop"
$ns_ at 22.325 "$ns_ trace-annotate \"node_ - 29 send the reply hello key message with session to its neighbor - 30 \""
set cbr29_30 [attach-CBR-traffic $node_(29) $sink(30) 64 0.06]
$ns_ at 22.31 "$cbr29_30 start"
$ns_ at 22.41 "$cbr29_30 stop"
$ns_ at 22.335 "$ns_ trace-annotate \"node_ - 29 send about the acceptance of session key with broadcast key to its neighbor - 30 \""
set cbr29_31 [attach-CBR-traffic $node_(29) $sink(31) 64 0.06]
$ns_ at 22.32 "$cbr29_31 start"
$ns_ at 22.42 "$cbr29_31 stop"
$ns_ at 22.32 "$node_(29) color maroon"
$ns_ at 22.345 "$ns_ trace-annotate \"node_ - 29 send the Hello message with key values to its neighbor - 31 \""
set cbr29_31 [attach-CBR-traffic $node_(31) $sink(29) 64 0.06]
$ns_ at 22.33 "$cbr29_31 start"
$ns_ at 22.43 "$cbr29_31 stop"
$ns_ at 22.355 "$ns_ trace-annotate \"node_ - 29 send the reply hello key message with session to its neighbor - 31 \""
set cbr29_31 [attach-CBR-traffic $node_(29) $sink(31) 64 0.06]
$ns_ at 22.34 "$cbr29_31 start"
$ns_ at 22.44 "$cbr29_31 stop"
$ns_ at 22.365 "$ns_ trace-annotate \"node_ - 29 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr29_41 [attach-CBR-traffic $node_(29) $sink(41) 64 0.06]
$ns_ at 22.35 "$cbr29_41 start"
$ns_ at 22.45 "$cbr29_41 stop"
$ns_ at 22.35 "$node_(29) color maroon"
$ns_ at 22.375 "$ns_ trace-annotate \"node_ - 29 send the Hello message with key values to its neighbor - 41 \""
set cbr29_41 [attach-CBR-traffic $node_(41) $sink(29) 64 0.06]
$ns_ at 22.36 "$cbr29_41 start"
$ns_ at 22.46 "$cbr29_41 stop"
$ns_ at 22.385 "$ns_ trace-annotate \"node_ - 29 send the reply hello key message with session to its neighbor - 41 \""
set cbr29_41 [attach-CBR-traffic $node_(29) $sink(41) 64 0.06]
$ns_ at 22.37 "$cbr29_41 start"
$ns_ at 22.47 "$cbr29_41 stop"
$ns_ at 22.395 "$ns_ trace-annotate \"node_ - 29 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr29_42 [attach-CBR-traffic $node_(29) $sink(42) 64 0.06]
$ns_ at 22.38 "$cbr29_42 start"
$ns_ at 22.48 "$cbr29_42 stop"
$ns_ at 22.38 "$node_(29) color maroon"
$ns_ at 22.405 "$ns_ trace-annotate \"node_ - 29 send the Hello message with key values to its neighbor - 42 \""
set cbr29_42 [attach-CBR-traffic $node_(42) $sink(29) 64 0.06]
$ns_ at 22.39 "$cbr29_42 start"
$ns_ at 22.49 "$cbr29_42 stop"
$ns_ at 22.415 "$ns_ trace-annotate \"node_ - 29 send the reply hello key message with session to its neighbor - 42 \""
set cbr29_42 [attach-CBR-traffic $node_(29) $sink(42) 64 0.06]
$ns_ at 22.4 "$cbr29_42 start"
$ns_ at 22.5 "$cbr29_42 stop"
$ns_ at 22.425 "$ns_ trace-annotate \"node_ - 29 send about the acceptance of session key with broadcast key to its neighbor - 42 \""
set cbr30_25 [attach-CBR-traffic $node_(30) $sink(25) 64 0.06]
$ns_ at 22.33 "$cbr30_25 start"
$ns_ at 22.43 "$cbr30_25 stop"
$ns_ at 22.33 "$node_(30) color maroon"
$ns_ at 22.355 "$ns_ trace-annotate \"node_ - 30 send the Hello message with key values to its neighbor - 25 \""
set cbr30_25 [attach-CBR-traffic $node_(25) $sink(30) 64 0.06]
$ns_ at 22.34 "$cbr30_25 start"
$ns_ at 22.44 "$cbr30_25 stop"
$ns_ at 22.365 "$ns_ trace-annotate \"node_ - 30 send the reply hello key message with session to its neighbor - 25 \""
set cbr30_25 [attach-CBR-traffic $node_(30) $sink(25) 64 0.06]
$ns_ at 22.35 "$cbr30_25 start"
$ns_ at 22.45 "$cbr30_25 stop"
$ns_ at 22.375 "$ns_ trace-annotate \"node_ - 30 send about the acceptance of session key with broadcast key to its neighbor - 25 \""
set cbr30_26 [attach-CBR-traffic $node_(30) $sink(26) 64 0.06]
$ns_ at 22.36 "$cbr30_26 start"
$ns_ at 22.46 "$cbr30_26 stop"
$ns_ at 22.36 "$node_(30) color maroon"
$ns_ at 22.385 "$ns_ trace-annotate \"node_ - 30 send the Hello message with key values to its neighbor - 26 \""
set cbr30_26 [attach-CBR-traffic $node_(26) $sink(30) 64 0.06]
$ns_ at 22.37 "$cbr30_26 start"
$ns_ at 22.47 "$cbr30_26 stop"
$ns_ at 22.395 "$ns_ trace-annotate \"node_ - 30 send the reply hello key message with session to its neighbor - 26 \""
set cbr30_26 [attach-CBR-traffic $node_(30) $sink(26) 64 0.06]
$ns_ at 22.38 "$cbr30_26 start"
$ns_ at 22.48 "$cbr30_26 stop"
$ns_ at 22.405 "$ns_ trace-annotate \"node_ - 30 send about the acceptance of session key with broadcast key to its neighbor - 26 \""
set cbr30_29 [attach-CBR-traffic $node_(30) $sink(29) 64 0.06]
$ns_ at 22.39 "$cbr30_29 start"
$ns_ at 22.49 "$cbr30_29 stop"
$ns_ at 22.39 "$node_(30) color maroon"
$ns_ at 22.415 "$ns_ trace-annotate \"node_ - 30 send the Hello message with key values to its neighbor - 29 \""
set cbr30_29 [attach-CBR-traffic $node_(29) $sink(30) 64 0.06]
$ns_ at 22.4 "$cbr30_29 start"
$ns_ at 22.5 "$cbr30_29 stop"
$ns_ at 22.425 "$ns_ trace-annotate \"node_ - 30 send the reply hello key message with session to its neighbor - 29 \""
set cbr30_29 [attach-CBR-traffic $node_(30) $sink(29) 64 0.06]
$ns_ at 22.41 "$cbr30_29 start"
$ns_ at 22.51 "$cbr30_29 stop"
$ns_ at 22.435 "$ns_ trace-annotate \"node_ - 30 send about the acceptance of session key with broadcast key to its neighbor - 29 \""
set cbr30_31 [attach-CBR-traffic $node_(30) $sink(31) 64 0.06]
$ns_ at 22.42 "$cbr30_31 start"
$ns_ at 22.52 "$cbr30_31 stop"
$ns_ at 22.42 "$node_(30) color maroon"
$ns_ at 22.445 "$ns_ trace-annotate \"node_ - 30 send the Hello message with key values to its neighbor - 31 \""
set cbr30_31 [attach-CBR-traffic $node_(31) $sink(30) 64 0.06]
$ns_ at 22.43 "$cbr30_31 start"
$ns_ at 22.53 "$cbr30_31 stop"
$ns_ at 22.455 "$ns_ trace-annotate \"node_ - 30 send the reply hello key message with session to its neighbor - 31 \""
set cbr30_31 [attach-CBR-traffic $node_(30) $sink(31) 64 0.06]
$ns_ at 22.44 "$cbr30_31 start"
$ns_ at 22.54 "$cbr30_31 stop"
$ns_ at 22.465 "$ns_ trace-annotate \"node_ - 30 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr30_32 [attach-CBR-traffic $node_(30) $sink(32) 64 0.06]
$ns_ at 22.45 "$cbr30_32 start"
$ns_ at 22.55 "$cbr30_32 stop"
$ns_ at 22.45 "$node_(30) color maroon"
$ns_ at 22.475 "$ns_ trace-annotate \"node_ - 30 send the Hello message with key values to its neighbor - 32 \""
set cbr30_32 [attach-CBR-traffic $node_(32) $sink(30) 64 0.06]
$ns_ at 22.46 "$cbr30_32 start"
$ns_ at 22.56 "$cbr30_32 stop"
$ns_ at 22.485 "$ns_ trace-annotate \"node_ - 30 send the reply hello key message with session to its neighbor - 32 \""
set cbr30_32 [attach-CBR-traffic $node_(30) $sink(32) 64 0.06]
$ns_ at 22.47 "$cbr30_32 start"
$ns_ at 22.57 "$cbr30_32 stop"
$ns_ at 22.495 "$ns_ trace-annotate \"node_ - 30 send about the acceptance of session key with broadcast key to its neighbor - 32 \""
set cbr30_33 [attach-CBR-traffic $node_(30) $sink(33) 64 0.06]
$ns_ at 22.48 "$cbr30_33 start"
$ns_ at 22.58 "$cbr30_33 stop"
$ns_ at 22.48 "$node_(30) color maroon"
$ns_ at 22.505 "$ns_ trace-annotate \"node_ - 30 send the Hello message with key values to its neighbor - 33 \""
set cbr30_33 [attach-CBR-traffic $node_(33) $sink(30) 64 0.06]
$ns_ at 22.49 "$cbr30_33 start"
$ns_ at 22.59 "$cbr30_33 stop"
$ns_ at 22.515 "$ns_ trace-annotate \"node_ - 30 send the reply hello key message with session to its neighbor - 33 \""
set cbr30_33 [attach-CBR-traffic $node_(30) $sink(33) 64 0.06]
$ns_ at 22.5 "$cbr30_33 start"
$ns_ at 22.6 "$cbr30_33 stop"
$ns_ at 22.525 "$ns_ trace-annotate \"node_ - 30 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr31_29 [attach-CBR-traffic $node_(31) $sink(29) 64 0.06]
$ns_ at 22.43 "$cbr31_29 start"
$ns_ at 22.53 "$cbr31_29 stop"
$ns_ at 22.43 "$node_(31) color maroon"
$ns_ at 22.455 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 29 \""
set cbr31_29 [attach-CBR-traffic $node_(29) $sink(31) 64 0.06]
$ns_ at 22.44 "$cbr31_29 start"
$ns_ at 22.54 "$cbr31_29 stop"
$ns_ at 22.465 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 29 \""
set cbr31_29 [attach-CBR-traffic $node_(31) $sink(29) 64 0.06]
$ns_ at 22.45 "$cbr31_29 start"
$ns_ at 22.55 "$cbr31_29 stop"
$ns_ at 22.475 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 29 \""
set cbr31_30 [attach-CBR-traffic $node_(31) $sink(30) 64 0.06]
$ns_ at 22.46 "$cbr31_30 start"
$ns_ at 22.56 "$cbr31_30 stop"
$ns_ at 22.46 "$node_(31) color maroon"
$ns_ at 22.485 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 30 \""
set cbr31_30 [attach-CBR-traffic $node_(30) $sink(31) 64 0.06]
$ns_ at 22.47 "$cbr31_30 start"
$ns_ at 22.57 "$cbr31_30 stop"
$ns_ at 22.495 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 30 \""
set cbr31_30 [attach-CBR-traffic $node_(31) $sink(30) 64 0.06]
$ns_ at 22.48 "$cbr31_30 start"
$ns_ at 22.58 "$cbr31_30 stop"
$ns_ at 22.505 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 30 \""
set cbr31_33 [attach-CBR-traffic $node_(31) $sink(33) 64 0.06]
$ns_ at 22.49 "$cbr31_33 start"
$ns_ at 22.59 "$cbr31_33 stop"
$ns_ at 22.49 "$node_(31) color maroon"
$ns_ at 22.515 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 33 \""
set cbr31_33 [attach-CBR-traffic $node_(33) $sink(31) 64 0.06]
$ns_ at 22.5 "$cbr31_33 start"
$ns_ at 22.6 "$cbr31_33 stop"
$ns_ at 22.525 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 33 \""
set cbr31_33 [attach-CBR-traffic $node_(31) $sink(33) 64 0.06]
$ns_ at 22.51 "$cbr31_33 start"
$ns_ at 22.61 "$cbr31_33 stop"
$ns_ at 22.535 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr31_39 [attach-CBR-traffic $node_(31) $sink(39) 64 0.06]
$ns_ at 22.52 "$cbr31_39 start"
$ns_ at 22.62 "$cbr31_39 stop"
$ns_ at 22.52 "$node_(31) color maroon"
$ns_ at 22.545 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 39 \""
set cbr31_39 [attach-CBR-traffic $node_(39) $sink(31) 64 0.06]
$ns_ at 22.53 "$cbr31_39 start"
$ns_ at 22.63 "$cbr31_39 stop"
$ns_ at 22.555 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 39 \""
set cbr31_39 [attach-CBR-traffic $node_(31) $sink(39) 64 0.06]
$ns_ at 22.54 "$cbr31_39 start"
$ns_ at 22.64 "$cbr31_39 stop"
$ns_ at 22.565 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr31_40 [attach-CBR-traffic $node_(31) $sink(40) 64 0.06]
$ns_ at 22.55 "$cbr31_40 start"
$ns_ at 22.65 "$cbr31_40 stop"
$ns_ at 22.55 "$node_(31) color maroon"
$ns_ at 22.575 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 40 \""
set cbr31_40 [attach-CBR-traffic $node_(40) $sink(31) 64 0.06]
$ns_ at 22.56 "$cbr31_40 start"
$ns_ at 22.66 "$cbr31_40 stop"
$ns_ at 22.585 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 40 \""
set cbr31_40 [attach-CBR-traffic $node_(31) $sink(40) 64 0.06]
$ns_ at 22.57 "$cbr31_40 start"
$ns_ at 22.67 "$cbr31_40 stop"
$ns_ at 22.595 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 40 \""
set cbr31_41 [attach-CBR-traffic $node_(31) $sink(41) 64 0.06]
$ns_ at 22.58 "$cbr31_41 start"
$ns_ at 22.68 "$cbr31_41 stop"
$ns_ at 22.58 "$node_(31) color maroon"
$ns_ at 22.605 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 41 \""
set cbr31_41 [attach-CBR-traffic $node_(41) $sink(31) 64 0.06]
$ns_ at 22.59 "$cbr31_41 start"
$ns_ at 22.69 "$cbr31_41 stop"
$ns_ at 22.615 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 41 \""
set cbr31_41 [attach-CBR-traffic $node_(31) $sink(41) 64 0.06]
$ns_ at 22.6 "$cbr31_41 start"
$ns_ at 22.7 "$cbr31_41 stop"
$ns_ at 22.625 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr31_46 [attach-CBR-traffic $node_(31) $sink(46) 64 0.06]
$ns_ at 22.61 "$cbr31_46 start"
$ns_ at 22.71 "$cbr31_46 stop"
$ns_ at 22.61 "$node_(31) color maroon"
$ns_ at 22.635 "$ns_ trace-annotate \"node_ - 31 send the Hello message with key values to its neighbor - 46 \""
set cbr31_46 [attach-CBR-traffic $node_(46) $sink(31) 64 0.06]
$ns_ at 22.62 "$cbr31_46 start"
$ns_ at 22.72 "$cbr31_46 stop"
$ns_ at 22.645 "$ns_ trace-annotate \"node_ - 31 send the reply hello key message with session to its neighbor - 46 \""
set cbr31_46 [attach-CBR-traffic $node_(31) $sink(46) 64 0.06]
$ns_ at 22.63 "$cbr31_46 start"
$ns_ at 22.73 "$cbr31_46 stop"
$ns_ at 22.655 "$ns_ trace-annotate \"node_ - 31 send about the acceptance of session key with broadcast key to its neighbor - 46 \""
set cbr32_24 [attach-CBR-traffic $node_(32) $sink(24) 64 0.06]
$ns_ at 22.53 "$cbr32_24 start"
$ns_ at 22.63 "$cbr32_24 stop"
$ns_ at 22.53 "$node_(32) color maroon"
$ns_ at 22.555 "$ns_ trace-annotate \"node_ - 32 send the Hello message with key values to its neighbor - 24 \""
set cbr32_24 [attach-CBR-traffic $node_(24) $sink(32) 64 0.06]
$ns_ at 22.54 "$cbr32_24 start"
$ns_ at 22.64 "$cbr32_24 stop"
$ns_ at 22.565 "$ns_ trace-annotate \"node_ - 32 send the reply hello key message with session to its neighbor - 24 \""
set cbr32_24 [attach-CBR-traffic $node_(32) $sink(24) 64 0.06]
$ns_ at 22.55 "$cbr32_24 start"
$ns_ at 22.65 "$cbr32_24 stop"
$ns_ at 22.575 "$ns_ trace-annotate \"node_ - 32 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr32_25 [attach-CBR-traffic $node_(32) $sink(25) 64 0.06]
$ns_ at 22.56 "$cbr32_25 start"
$ns_ at 22.66 "$cbr32_25 stop"
$ns_ at 22.56 "$node_(32) color maroon"
$ns_ at 22.585 "$ns_ trace-annotate \"node_ - 32 send the Hello message with key values to its neighbor - 25 \""
set cbr32_25 [attach-CBR-traffic $node_(25) $sink(32) 64 0.06]
$ns_ at 22.57 "$cbr32_25 start"
$ns_ at 22.67 "$cbr32_25 stop"
$ns_ at 22.595 "$ns_ trace-annotate \"node_ - 32 send the reply hello key message with session to its neighbor - 25 \""
set cbr32_25 [attach-CBR-traffic $node_(32) $sink(25) 64 0.06]
$ns_ at 22.58 "$cbr32_25 start"
$ns_ at 22.68 "$cbr32_25 stop"
$ns_ at 22.605 "$ns_ trace-annotate \"node_ - 32 send about the acceptance of session key with broadcast key to its neighbor - 25 \""
set cbr32_30 [attach-CBR-traffic $node_(32) $sink(30) 64 0.06]
$ns_ at 22.59 "$cbr32_30 start"
$ns_ at 22.69 "$cbr32_30 stop"
$ns_ at 22.59 "$node_(32) color maroon"
$ns_ at 22.615 "$ns_ trace-annotate \"node_ - 32 send the Hello message with key values to its neighbor - 30 \""
set cbr32_30 [attach-CBR-traffic $node_(30) $sink(32) 64 0.06]
$ns_ at 22.6 "$cbr32_30 start"
$ns_ at 22.7 "$cbr32_30 stop"
$ns_ at 22.625 "$ns_ trace-annotate \"node_ - 32 send the reply hello key message with session to its neighbor - 30 \""
set cbr32_30 [attach-CBR-traffic $node_(32) $sink(30) 64 0.06]
$ns_ at 22.61 "$cbr32_30 start"
$ns_ at 22.71 "$cbr32_30 stop"
$ns_ at 22.635 "$ns_ trace-annotate \"node_ - 32 send about the acceptance of session key with broadcast key to its neighbor - 30 \""
set cbr32_33 [attach-CBR-traffic $node_(32) $sink(33) 64 0.06]
$ns_ at 22.62 "$cbr32_33 start"
$ns_ at 22.72 "$cbr32_33 stop"
$ns_ at 22.62 "$node_(32) color maroon"
$ns_ at 22.645 "$ns_ trace-annotate \"node_ - 32 send the Hello message with key values to its neighbor - 33 \""
set cbr32_33 [attach-CBR-traffic $node_(33) $sink(32) 64 0.06]
$ns_ at 22.63 "$cbr32_33 start"
$ns_ at 22.73 "$cbr32_33 stop"
$ns_ at 22.655 "$ns_ trace-annotate \"node_ - 32 send the reply hello key message with session to its neighbor - 33 \""
set cbr32_33 [attach-CBR-traffic $node_(32) $sink(33) 64 0.06]
$ns_ at 22.64 "$cbr32_33 start"
$ns_ at 22.74 "$cbr32_33 stop"
$ns_ at 22.665 "$ns_ trace-annotate \"node_ - 32 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr32_34 [attach-CBR-traffic $node_(32) $sink(34) 64 0.06]
$ns_ at 22.65 "$cbr32_34 start"
$ns_ at 22.75 "$cbr32_34 stop"
$ns_ at 22.65 "$node_(32) color maroon"
$ns_ at 22.675 "$ns_ trace-annotate \"node_ - 32 send the Hello message with key values to its neighbor - 34 \""
set cbr32_34 [attach-CBR-traffic $node_(34) $sink(32) 64 0.06]
$ns_ at 22.66 "$cbr32_34 start"
$ns_ at 22.76 "$cbr32_34 stop"
$ns_ at 22.685 "$ns_ trace-annotate \"node_ - 32 send the reply hello key message with session to its neighbor - 34 \""
set cbr32_34 [attach-CBR-traffic $node_(32) $sink(34) 64 0.06]
$ns_ at 22.67 "$cbr32_34 start"
$ns_ at 22.77 "$cbr32_34 stop"
$ns_ at 22.695 "$ns_ trace-annotate \"node_ - 32 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr32_36 [attach-CBR-traffic $node_(32) $sink(36) 64 0.06]
$ns_ at 22.68 "$cbr32_36 start"
$ns_ at 22.78 "$cbr32_36 stop"
$ns_ at 22.68 "$node_(32) color maroon"
$ns_ at 22.705 "$ns_ trace-annotate \"node_ - 32 send the Hello message with key values to its neighbor - 36 \""
set cbr32_36 [attach-CBR-traffic $node_(36) $sink(32) 64 0.06]
$ns_ at 22.69 "$cbr32_36 start"
$ns_ at 22.79 "$cbr32_36 stop"
$ns_ at 22.715 "$ns_ trace-annotate \"node_ - 32 send the reply hello key message with session to its neighbor - 36 \""
set cbr32_36 [attach-CBR-traffic $node_(32) $sink(36) 64 0.06]
$ns_ at 22.7 "$cbr32_36 start"
$ns_ at 22.8 "$cbr32_36 stop"
$ns_ at 22.725 "$ns_ trace-annotate \"node_ - 32 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr33_30 [attach-CBR-traffic $node_(33) $sink(30) 64 0.06]
$ns_ at 22.63 "$cbr33_30 start"
$ns_ at 22.73 "$cbr33_30 stop"
$ns_ at 22.63 "$node_(33) color maroon"
$ns_ at 22.655 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 30 \""
set cbr33_30 [attach-CBR-traffic $node_(30) $sink(33) 64 0.06]
$ns_ at 22.64 "$cbr33_30 start"
$ns_ at 22.74 "$cbr33_30 stop"
$ns_ at 22.665 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 30 \""
set cbr33_30 [attach-CBR-traffic $node_(33) $sink(30) 64 0.06]
$ns_ at 22.65 "$cbr33_30 start"
$ns_ at 22.75 "$cbr33_30 stop"
$ns_ at 22.675 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 30 \""
set cbr33_31 [attach-CBR-traffic $node_(33) $sink(31) 64 0.06]
$ns_ at 22.66 "$cbr33_31 start"
$ns_ at 22.76 "$cbr33_31 stop"
$ns_ at 22.66 "$node_(33) color maroon"
$ns_ at 22.685 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 31 \""
set cbr33_31 [attach-CBR-traffic $node_(31) $sink(33) 64 0.06]
$ns_ at 22.67 "$cbr33_31 start"
$ns_ at 22.77 "$cbr33_31 stop"
$ns_ at 22.695 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 31 \""
set cbr33_31 [attach-CBR-traffic $node_(33) $sink(31) 64 0.06]
$ns_ at 22.68 "$cbr33_31 start"
$ns_ at 22.78 "$cbr33_31 stop"
$ns_ at 22.705 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr33_32 [attach-CBR-traffic $node_(33) $sink(32) 64 0.06]
$ns_ at 22.69 "$cbr33_32 start"
$ns_ at 22.79 "$cbr33_32 stop"
$ns_ at 22.69 "$node_(33) color maroon"
$ns_ at 22.715 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 32 \""
set cbr33_32 [attach-CBR-traffic $node_(32) $sink(33) 64 0.06]
$ns_ at 22.7 "$cbr33_32 start"
$ns_ at 22.8 "$cbr33_32 stop"
$ns_ at 22.725 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 32 \""
set cbr33_32 [attach-CBR-traffic $node_(33) $sink(32) 64 0.06]
$ns_ at 22.71 "$cbr33_32 start"
$ns_ at 22.81 "$cbr33_32 stop"
$ns_ at 22.735 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 32 \""
set cbr33_34 [attach-CBR-traffic $node_(33) $sink(34) 64 0.06]
$ns_ at 22.72 "$cbr33_34 start"
$ns_ at 22.82 "$cbr33_34 stop"
$ns_ at 22.72 "$node_(33) color maroon"
$ns_ at 22.745 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 34 \""
set cbr33_34 [attach-CBR-traffic $node_(34) $sink(33) 64 0.06]
$ns_ at 22.73 "$cbr33_34 start"
$ns_ at 22.83 "$cbr33_34 stop"
$ns_ at 22.755 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 34 \""
set cbr33_34 [attach-CBR-traffic $node_(33) $sink(34) 64 0.06]
$ns_ at 22.74 "$cbr33_34 start"
$ns_ at 22.84 "$cbr33_34 stop"
$ns_ at 22.765 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr33_38 [attach-CBR-traffic $node_(33) $sink(38) 64 0.06]
$ns_ at 22.75 "$cbr33_38 start"
$ns_ at 22.85 "$cbr33_38 stop"
$ns_ at 22.75 "$node_(33) color maroon"
$ns_ at 22.775 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 38 \""
set cbr33_38 [attach-CBR-traffic $node_(38) $sink(33) 64 0.06]
$ns_ at 22.76 "$cbr33_38 start"
$ns_ at 22.86 "$cbr33_38 stop"
$ns_ at 22.785 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 38 \""
set cbr33_38 [attach-CBR-traffic $node_(33) $sink(38) 64 0.06]
$ns_ at 22.77 "$cbr33_38 start"
$ns_ at 22.87 "$cbr33_38 stop"
$ns_ at 22.795 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 38 \""
set cbr33_39 [attach-CBR-traffic $node_(33) $sink(39) 64 0.06]
$ns_ at 22.78 "$cbr33_39 start"
$ns_ at 22.88 "$cbr33_39 stop"
$ns_ at 22.78 "$node_(33) color maroon"
$ns_ at 22.805 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 39 \""
set cbr33_39 [attach-CBR-traffic $node_(39) $sink(33) 64 0.06]
$ns_ at 22.79 "$cbr33_39 start"
$ns_ at 22.89 "$cbr33_39 stop"
$ns_ at 22.815 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 39 \""
set cbr33_39 [attach-CBR-traffic $node_(33) $sink(39) 64 0.06]
$ns_ at 22.8 "$cbr33_39 start"
$ns_ at 22.9 "$cbr33_39 stop"
$ns_ at 22.825 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr33_40 [attach-CBR-traffic $node_(33) $sink(40) 64 0.06]
$ns_ at 22.81 "$cbr33_40 start"
$ns_ at 22.91 "$cbr33_40 stop"
$ns_ at 22.81 "$node_(33) color maroon"
$ns_ at 22.835 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 40 \""
set cbr33_40 [attach-CBR-traffic $node_(40) $sink(33) 64 0.06]
$ns_ at 22.82 "$cbr33_40 start"
$ns_ at 22.92 "$cbr33_40 stop"
$ns_ at 22.845 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 40 \""
set cbr33_40 [attach-CBR-traffic $node_(33) $sink(40) 64 0.06]
$ns_ at 22.83 "$cbr33_40 start"
$ns_ at 22.93 "$cbr33_40 stop"
$ns_ at 22.855 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 40 \""
set cbr33_49 [attach-CBR-traffic $node_(33) $sink(49) 64 0.06]
$ns_ at 22.84 "$cbr33_49 start"
$ns_ at 22.94 "$cbr33_49 stop"
$ns_ at 22.84 "$node_(33) color maroon"
$ns_ at 22.865 "$ns_ trace-annotate \"node_ - 33 send the Hello message with key values to its neighbor - 49 \""
set cbr33_49 [attach-CBR-traffic $node_(49) $sink(33) 64 0.06]
$ns_ at 22.85 "$cbr33_49 start"
$ns_ at 22.95 "$cbr33_49 stop"
$ns_ at 22.875 "$ns_ trace-annotate \"node_ - 33 send the reply hello key message with session to its neighbor - 49 \""
set cbr33_49 [attach-CBR-traffic $node_(33) $sink(49) 64 0.06]
$ns_ at 22.86 "$cbr33_49 start"
$ns_ at 22.96 "$cbr33_49 stop"
$ns_ at 22.885 "$ns_ trace-annotate \"node_ - 33 send about the acceptance of session key with broadcast key to its neighbor - 49 \""
set cbr34_24 [attach-CBR-traffic $node_(34) $sink(24) 64 0.06]
$ns_ at 22.73 "$cbr34_24 start"
$ns_ at 22.83 "$cbr34_24 stop"
$ns_ at 22.73 "$node_(34) color maroon"
$ns_ at 22.755 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 24 \""
set cbr34_24 [attach-CBR-traffic $node_(24) $sink(34) 64 0.06]
$ns_ at 22.74 "$cbr34_24 start"
$ns_ at 22.84 "$cbr34_24 stop"
$ns_ at 22.765 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 24 \""
set cbr34_24 [attach-CBR-traffic $node_(34) $sink(24) 64 0.06]
$ns_ at 22.75 "$cbr34_24 start"
$ns_ at 22.85 "$cbr34_24 stop"
$ns_ at 22.775 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr34_32 [attach-CBR-traffic $node_(34) $sink(32) 64 0.06]
$ns_ at 22.76 "$cbr34_32 start"
$ns_ at 22.86 "$cbr34_32 stop"
$ns_ at 22.76 "$node_(34) color maroon"
$ns_ at 22.785 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 32 \""
set cbr34_32 [attach-CBR-traffic $node_(32) $sink(34) 64 0.06]
$ns_ at 22.77 "$cbr34_32 start"
$ns_ at 22.87 "$cbr34_32 stop"
$ns_ at 22.795 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 32 \""
set cbr34_32 [attach-CBR-traffic $node_(34) $sink(32) 64 0.06]
$ns_ at 22.78 "$cbr34_32 start"
$ns_ at 22.88 "$cbr34_32 stop"
$ns_ at 22.805 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 32 \""
set cbr34_33 [attach-CBR-traffic $node_(34) $sink(33) 64 0.06]
$ns_ at 22.79 "$cbr34_33 start"
$ns_ at 22.89 "$cbr34_33 stop"
$ns_ at 22.79 "$node_(34) color maroon"
$ns_ at 22.815 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 33 \""
set cbr34_33 [attach-CBR-traffic $node_(33) $sink(34) 64 0.06]
$ns_ at 22.8 "$cbr34_33 start"
$ns_ at 22.9 "$cbr34_33 stop"
$ns_ at 22.825 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 33 \""
set cbr34_33 [attach-CBR-traffic $node_(34) $sink(33) 64 0.06]
$ns_ at 22.81 "$cbr34_33 start"
$ns_ at 22.91 "$cbr34_33 stop"
$ns_ at 22.835 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr34_35 [attach-CBR-traffic $node_(34) $sink(35) 64 0.06]
$ns_ at 22.82 "$cbr34_35 start"
$ns_ at 22.92 "$cbr34_35 stop"
$ns_ at 22.82 "$node_(34) color maroon"
$ns_ at 22.845 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 35 \""
set cbr34_35 [attach-CBR-traffic $node_(35) $sink(34) 64 0.06]
$ns_ at 22.83 "$cbr34_35 start"
$ns_ at 22.93 "$cbr34_35 stop"
$ns_ at 22.855 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 35 \""
set cbr34_35 [attach-CBR-traffic $node_(34) $sink(35) 64 0.06]
$ns_ at 22.84 "$cbr34_35 start"
$ns_ at 22.94 "$cbr34_35 stop"
$ns_ at 22.865 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 35 \""
set cbr34_36 [attach-CBR-traffic $node_(34) $sink(36) 64 0.06]
$ns_ at 22.85 "$cbr34_36 start"
$ns_ at 22.95 "$cbr34_36 stop"
$ns_ at 22.85 "$node_(34) color maroon"
$ns_ at 22.875 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 36 \""
set cbr34_36 [attach-CBR-traffic $node_(36) $sink(34) 64 0.06]
$ns_ at 22.86 "$cbr34_36 start"
$ns_ at 22.96 "$cbr34_36 stop"
$ns_ at 22.885 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 36 \""
set cbr34_36 [attach-CBR-traffic $node_(34) $sink(36) 64 0.06]
$ns_ at 22.87 "$cbr34_36 start"
$ns_ at 22.97 "$cbr34_36 stop"
$ns_ at 22.895 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr34_37 [attach-CBR-traffic $node_(34) $sink(37) 64 0.06]
$ns_ at 22.88 "$cbr34_37 start"
$ns_ at 22.98 "$cbr34_37 stop"
$ns_ at 22.88 "$node_(34) color maroon"
$ns_ at 22.905 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 37 \""
set cbr34_37 [attach-CBR-traffic $node_(37) $sink(34) 64 0.06]
$ns_ at 22.89 "$cbr34_37 start"
$ns_ at 22.99 "$cbr34_37 stop"
$ns_ at 22.915 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 37 \""
set cbr34_37 [attach-CBR-traffic $node_(34) $sink(37) 64 0.06]
$ns_ at 22.9 "$cbr34_37 start"
$ns_ at 23 "$cbr34_37 stop"
$ns_ at 22.925 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 37 \""
set cbr34_38 [attach-CBR-traffic $node_(34) $sink(38) 64 0.06]
$ns_ at 22.91 "$cbr34_38 start"
$ns_ at 23.01 "$cbr34_38 stop"
$ns_ at 22.91 "$node_(34) color maroon"
$ns_ at 22.935 "$ns_ trace-annotate \"node_ - 34 send the Hello message with key values to its neighbor - 38 \""
set cbr34_38 [attach-CBR-traffic $node_(38) $sink(34) 64 0.06]
$ns_ at 22.92 "$cbr34_38 start"
$ns_ at 23.02 "$cbr34_38 stop"
$ns_ at 22.945 "$ns_ trace-annotate \"node_ - 34 send the reply hello key message with session to its neighbor - 38 \""
set cbr34_38 [attach-CBR-traffic $node_(34) $sink(38) 64 0.06]
$ns_ at 22.93 "$cbr34_38 start"
$ns_ at 23.03 "$cbr34_38 stop"
$ns_ at 22.955 "$ns_ trace-annotate \"node_ - 34 send about the acceptance of session key with broadcast key to its neighbor - 38 \""
set cbr35_22 [attach-CBR-traffic $node_(35) $sink(22) 64 0.06]
$ns_ at 22.83 "$cbr35_22 start"
$ns_ at 22.93 "$cbr35_22 stop"
$ns_ at 22.83 "$node_(35) color maroon"
$ns_ at 22.855 "$ns_ trace-annotate \"node_ - 35 send the Hello message with key values to its neighbor - 22 \""
set cbr35_22 [attach-CBR-traffic $node_(22) $sink(35) 64 0.06]
$ns_ at 22.84 "$cbr35_22 start"
$ns_ at 22.94 "$cbr35_22 stop"
$ns_ at 22.865 "$ns_ trace-annotate \"node_ - 35 send the reply hello key message with session to its neighbor - 22 \""
set cbr35_22 [attach-CBR-traffic $node_(35) $sink(22) 64 0.06]
$ns_ at 22.85 "$cbr35_22 start"
$ns_ at 22.95 "$cbr35_22 stop"
$ns_ at 22.875 "$ns_ trace-annotate \"node_ - 35 send about the acceptance of session key with broadcast key to its neighbor - 22 \""
set cbr35_23 [attach-CBR-traffic $node_(35) $sink(23) 64 0.06]
$ns_ at 22.86 "$cbr35_23 start"
$ns_ at 22.96 "$cbr35_23 stop"
$ns_ at 22.86 "$node_(35) color maroon"
$ns_ at 22.885 "$ns_ trace-annotate \"node_ - 35 send the Hello message with key values to its neighbor - 23 \""
set cbr35_23 [attach-CBR-traffic $node_(23) $sink(35) 64 0.06]
$ns_ at 22.87 "$cbr35_23 start"
$ns_ at 22.97 "$cbr35_23 stop"
$ns_ at 22.895 "$ns_ trace-annotate \"node_ - 35 send the reply hello key message with session to its neighbor - 23 \""
set cbr35_23 [attach-CBR-traffic $node_(35) $sink(23) 64 0.06]
$ns_ at 22.88 "$cbr35_23 start"
$ns_ at 22.98 "$cbr35_23 stop"
$ns_ at 22.905 "$ns_ trace-annotate \"node_ - 35 send about the acceptance of session key with broadcast key to its neighbor - 23 \""
set cbr35_34 [attach-CBR-traffic $node_(35) $sink(34) 64 0.06]
$ns_ at 22.89 "$cbr35_34 start"
$ns_ at 22.99 "$cbr35_34 stop"
$ns_ at 22.89 "$node_(35) color maroon"
$ns_ at 22.915 "$ns_ trace-annotate \"node_ - 35 send the Hello message with key values to its neighbor - 34 \""
set cbr35_34 [attach-CBR-traffic $node_(34) $sink(35) 64 0.06]
$ns_ at 22.9 "$cbr35_34 start"
$ns_ at 23 "$cbr35_34 stop"
$ns_ at 22.925 "$ns_ trace-annotate \"node_ - 35 send the reply hello key message with session to its neighbor - 34 \""
set cbr35_34 [attach-CBR-traffic $node_(35) $sink(34) 64 0.06]
$ns_ at 22.91 "$cbr35_34 start"
$ns_ at 23.01 "$cbr35_34 stop"
$ns_ at 22.935 "$ns_ trace-annotate \"node_ - 35 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr35_36 [attach-CBR-traffic $node_(35) $sink(36) 64 0.06]
$ns_ at 22.92 "$cbr35_36 start"
$ns_ at 23.02 "$cbr35_36 stop"
$ns_ at 22.92 "$node_(35) color maroon"
$ns_ at 22.945 "$ns_ trace-annotate \"node_ - 35 send the Hello message with key values to its neighbor - 36 \""
set cbr35_36 [attach-CBR-traffic $node_(36) $sink(35) 64 0.06]
$ns_ at 22.93 "$cbr35_36 start"
$ns_ at 23.03 "$cbr35_36 stop"
$ns_ at 22.955 "$ns_ trace-annotate \"node_ - 35 send the reply hello key message with session to its neighbor - 36 \""
set cbr35_36 [attach-CBR-traffic $node_(35) $sink(36) 64 0.06]
$ns_ at 22.94 "$cbr35_36 start"
$ns_ at 23.04 "$cbr35_36 stop"
$ns_ at 22.965 "$ns_ trace-annotate \"node_ - 35 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr35_37 [attach-CBR-traffic $node_(35) $sink(37) 64 0.06]
$ns_ at 22.95 "$cbr35_37 start"
$ns_ at 23.05 "$cbr35_37 stop"
$ns_ at 22.95 "$node_(35) color maroon"
$ns_ at 22.975 "$ns_ trace-annotate \"node_ - 35 send the Hello message with key values to its neighbor - 37 \""
set cbr35_37 [attach-CBR-traffic $node_(37) $sink(35) 64 0.06]
$ns_ at 22.96 "$cbr35_37 start"
$ns_ at 23.06 "$cbr35_37 stop"
$ns_ at 22.985 "$ns_ trace-annotate \"node_ - 35 send the reply hello key message with session to its neighbor - 37 \""
set cbr35_37 [attach-CBR-traffic $node_(35) $sink(37) 64 0.06]
$ns_ at 22.97 "$cbr35_37 start"
$ns_ at 23.07 "$cbr35_37 stop"
$ns_ at 22.995 "$ns_ trace-annotate \"node_ - 35 send about the acceptance of session key with broadcast key to its neighbor - 37 \""
set cbr36_22 [attach-CBR-traffic $node_(36) $sink(22) 64 0.06]
$ns_ at 22.93 "$cbr36_22 start"
$ns_ at 23.03 "$cbr36_22 stop"
$ns_ at 22.93 "$node_(36) color maroon"
$ns_ at 22.955 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 22 \""
set cbr36_22 [attach-CBR-traffic $node_(22) $sink(36) 64 0.06]
$ns_ at 22.94 "$cbr36_22 start"
$ns_ at 23.04 "$cbr36_22 stop"
$ns_ at 22.965 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 22 \""
set cbr36_22 [attach-CBR-traffic $node_(36) $sink(22) 64 0.06]
$ns_ at 22.95 "$cbr36_22 start"
$ns_ at 23.05 "$cbr36_22 stop"
$ns_ at 22.975 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 22 \""
set cbr36_23 [attach-CBR-traffic $node_(36) $sink(23) 64 0.06]
$ns_ at 22.96 "$cbr36_23 start"
$ns_ at 23.06 "$cbr36_23 stop"
$ns_ at 22.96 "$node_(36) color maroon"
$ns_ at 22.985 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 23 \""
set cbr36_23 [attach-CBR-traffic $node_(23) $sink(36) 64 0.06]
$ns_ at 22.97 "$cbr36_23 start"
$ns_ at 23.07 "$cbr36_23 stop"
$ns_ at 22.995 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 23 \""
set cbr36_23 [attach-CBR-traffic $node_(36) $sink(23) 64 0.06]
$ns_ at 22.98 "$cbr36_23 start"
$ns_ at 23.08 "$cbr36_23 stop"
$ns_ at 23.005 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 23 \""
set cbr36_24 [attach-CBR-traffic $node_(36) $sink(24) 64 0.06]
$ns_ at 22.99 "$cbr36_24 start"
$ns_ at 23.09 "$cbr36_24 stop"
$ns_ at 22.99 "$node_(36) color maroon"
$ns_ at 23.015 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 24 \""
set cbr36_24 [attach-CBR-traffic $node_(24) $sink(36) 64 0.06]
$ns_ at 23 "$cbr36_24 start"
$ns_ at 23.1 "$cbr36_24 stop"
$ns_ at 23.025 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 24 \""
set cbr36_24 [attach-CBR-traffic $node_(36) $sink(24) 64 0.06]
$ns_ at 23.01 "$cbr36_24 start"
$ns_ at 23.11 "$cbr36_24 stop"
$ns_ at 23.035 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 24 \""
set cbr36_32 [attach-CBR-traffic $node_(36) $sink(32) 64 0.06]
$ns_ at 23.02 "$cbr36_32 start"
$ns_ at 23.12 "$cbr36_32 stop"
$ns_ at 23.02 "$node_(36) color maroon"
$ns_ at 23.045 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 32 \""
set cbr36_32 [attach-CBR-traffic $node_(32) $sink(36) 64 0.06]
$ns_ at 23.03 "$cbr36_32 start"
$ns_ at 23.13 "$cbr36_32 stop"
$ns_ at 23.055 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 32 \""
set cbr36_32 [attach-CBR-traffic $node_(36) $sink(32) 64 0.06]
$ns_ at 23.04 "$cbr36_32 start"
$ns_ at 23.14 "$cbr36_32 stop"
$ns_ at 23.065 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 32 \""
set cbr36_34 [attach-CBR-traffic $node_(36) $sink(34) 64 0.06]
$ns_ at 23.05 "$cbr36_34 start"
$ns_ at 23.15 "$cbr36_34 stop"
$ns_ at 23.05 "$node_(36) color maroon"
$ns_ at 23.075 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 34 \""
set cbr36_34 [attach-CBR-traffic $node_(34) $sink(36) 64 0.06]
$ns_ at 23.06 "$cbr36_34 start"
$ns_ at 23.16 "$cbr36_34 stop"
$ns_ at 23.085 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 34 \""
set cbr36_34 [attach-CBR-traffic $node_(36) $sink(34) 64 0.06]
$ns_ at 23.07 "$cbr36_34 start"
$ns_ at 23.17 "$cbr36_34 stop"
$ns_ at 23.095 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr36_35 [attach-CBR-traffic $node_(36) $sink(35) 64 0.06]
$ns_ at 23.08 "$cbr36_35 start"
$ns_ at 23.18 "$cbr36_35 stop"
$ns_ at 23.08 "$node_(36) color maroon"
$ns_ at 23.105 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 35 \""
set cbr36_35 [attach-CBR-traffic $node_(35) $sink(36) 64 0.06]
$ns_ at 23.09 "$cbr36_35 start"
$ns_ at 23.19 "$cbr36_35 stop"
$ns_ at 23.115 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 35 \""
set cbr36_35 [attach-CBR-traffic $node_(36) $sink(35) 64 0.06]
$ns_ at 23.1 "$cbr36_35 start"
$ns_ at 23.2 "$cbr36_35 stop"
$ns_ at 23.125 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 35 \""
set cbr36_37 [attach-CBR-traffic $node_(36) $sink(37) 64 0.06]
$ns_ at 23.11 "$cbr36_37 start"
$ns_ at 23.21 "$cbr36_37 stop"
$ns_ at 23.11 "$node_(36) color maroon"
$ns_ at 23.135 "$ns_ trace-annotate \"node_ - 36 send the Hello message with key values to its neighbor - 37 \""
set cbr36_37 [attach-CBR-traffic $node_(37) $sink(36) 64 0.06]
$ns_ at 23.12 "$cbr36_37 start"
$ns_ at 23.22 "$cbr36_37 stop"
$ns_ at 23.145 "$ns_ trace-annotate \"node_ - 36 send the reply hello key message with session to its neighbor - 37 \""
set cbr36_37 [attach-CBR-traffic $node_(36) $sink(37) 64 0.06]
$ns_ at 23.13 "$cbr36_37 start"
$ns_ at 23.23 "$cbr36_37 stop"
$ns_ at 23.155 "$ns_ trace-annotate \"node_ - 36 send about the acceptance of session key with broadcast key to its neighbor - 37 \""
set cbr37_34 [attach-CBR-traffic $node_(37) $sink(34) 64 0.06]
$ns_ at 23.03 "$cbr37_34 start"
$ns_ at 23.13 "$cbr37_34 stop"
$ns_ at 23.03 "$node_(37) color maroon"
$ns_ at 23.055 "$ns_ trace-annotate \"node_ - 37 send the Hello message with key values to its neighbor - 34 \""
set cbr37_34 [attach-CBR-traffic $node_(34) $sink(37) 64 0.06]
$ns_ at 23.04 "$cbr37_34 start"
$ns_ at 23.14 "$cbr37_34 stop"
$ns_ at 23.065 "$ns_ trace-annotate \"node_ - 37 send the reply hello key message with session to its neighbor - 34 \""
set cbr37_34 [attach-CBR-traffic $node_(37) $sink(34) 64 0.06]
$ns_ at 23.05 "$cbr37_34 start"
$ns_ at 23.15 "$cbr37_34 stop"
$ns_ at 23.075 "$ns_ trace-annotate \"node_ - 37 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr37_35 [attach-CBR-traffic $node_(37) $sink(35) 64 0.06]
$ns_ at 23.06 "$cbr37_35 start"
$ns_ at 23.16 "$cbr37_35 stop"
$ns_ at 23.06 "$node_(37) color maroon"
$ns_ at 23.085 "$ns_ trace-annotate \"node_ - 37 send the Hello message with key values to its neighbor - 35 \""
set cbr37_35 [attach-CBR-traffic $node_(35) $sink(37) 64 0.06]
$ns_ at 23.07 "$cbr37_35 start"
$ns_ at 23.17 "$cbr37_35 stop"
$ns_ at 23.095 "$ns_ trace-annotate \"node_ - 37 send the reply hello key message with session to its neighbor - 35 \""
set cbr37_35 [attach-CBR-traffic $node_(37) $sink(35) 64 0.06]
$ns_ at 23.08 "$cbr37_35 start"
$ns_ at 23.18 "$cbr37_35 stop"
$ns_ at 23.105 "$ns_ trace-annotate \"node_ - 37 send about the acceptance of session key with broadcast key to its neighbor - 35 \""
set cbr37_36 [attach-CBR-traffic $node_(37) $sink(36) 64 0.06]
$ns_ at 23.09 "$cbr37_36 start"
$ns_ at 23.19 "$cbr37_36 stop"
$ns_ at 23.09 "$node_(37) color maroon"
$ns_ at 23.115 "$ns_ trace-annotate \"node_ - 37 send the Hello message with key values to its neighbor - 36 \""
set cbr37_36 [attach-CBR-traffic $node_(36) $sink(37) 64 0.06]
$ns_ at 23.1 "$cbr37_36 start"
$ns_ at 23.2 "$cbr37_36 stop"
$ns_ at 23.125 "$ns_ trace-annotate \"node_ - 37 send the reply hello key message with session to its neighbor - 36 \""
set cbr37_36 [attach-CBR-traffic $node_(37) $sink(36) 64 0.06]
$ns_ at 23.11 "$cbr37_36 start"
$ns_ at 23.21 "$cbr37_36 stop"
$ns_ at 23.135 "$ns_ trace-annotate \"node_ - 37 send about the acceptance of session key with broadcast key to its neighbor - 36 \""
set cbr37_38 [attach-CBR-traffic $node_(37) $sink(38) 64 0.06]
$ns_ at 23.12 "$cbr37_38 start"
$ns_ at 23.22 "$cbr37_38 stop"
$ns_ at 23.12 "$node_(37) color maroon"
$ns_ at 23.145 "$ns_ trace-annotate \"node_ - 37 send the Hello message with key values to its neighbor - 38 \""
set cbr37_38 [attach-CBR-traffic $node_(38) $sink(37) 64 0.06]
$ns_ at 23.13 "$cbr37_38 start"
$ns_ at 23.23 "$cbr37_38 stop"
$ns_ at 23.155 "$ns_ trace-annotate \"node_ - 37 send the reply hello key message with session to its neighbor - 38 \""
set cbr37_38 [attach-CBR-traffic $node_(37) $sink(38) 64 0.06]
$ns_ at 23.14 "$cbr37_38 start"
$ns_ at 23.24 "$cbr37_38 stop"
$ns_ at 23.165 "$ns_ trace-annotate \"node_ - 37 send about the acceptance of session key with broadcast key to its neighbor - 38 \""
set cbr38_33 [attach-CBR-traffic $node_(38) $sink(33) 64 0.06]
$ns_ at 23.13 "$cbr38_33 start"
$ns_ at 23.23 "$cbr38_33 stop"
$ns_ at 23.13 "$node_(38) color maroon"
$ns_ at 23.155 "$ns_ trace-annotate \"node_ - 38 send the Hello message with key values to its neighbor - 33 \""
set cbr38_33 [attach-CBR-traffic $node_(33) $sink(38) 64 0.06]
$ns_ at 23.14 "$cbr38_33 start"
$ns_ at 23.24 "$cbr38_33 stop"
$ns_ at 23.165 "$ns_ trace-annotate \"node_ - 38 send the reply hello key message with session to its neighbor - 33 \""
set cbr38_33 [attach-CBR-traffic $node_(38) $sink(33) 64 0.06]
$ns_ at 23.15 "$cbr38_33 start"
$ns_ at 23.25 "$cbr38_33 stop"
$ns_ at 23.175 "$ns_ trace-annotate \"node_ - 38 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr38_34 [attach-CBR-traffic $node_(38) $sink(34) 64 0.06]
$ns_ at 23.16 "$cbr38_34 start"
$ns_ at 23.26 "$cbr38_34 stop"
$ns_ at 23.16 "$node_(38) color maroon"
$ns_ at 23.185 "$ns_ trace-annotate \"node_ - 38 send the Hello message with key values to its neighbor - 34 \""
set cbr38_34 [attach-CBR-traffic $node_(34) $sink(38) 64 0.06]
$ns_ at 23.17 "$cbr38_34 start"
$ns_ at 23.27 "$cbr38_34 stop"
$ns_ at 23.195 "$ns_ trace-annotate \"node_ - 38 send the reply hello key message with session to its neighbor - 34 \""
set cbr38_34 [attach-CBR-traffic $node_(38) $sink(34) 64 0.06]
$ns_ at 23.18 "$cbr38_34 start"
$ns_ at 23.28 "$cbr38_34 stop"
$ns_ at 23.205 "$ns_ trace-annotate \"node_ - 38 send about the acceptance of session key with broadcast key to its neighbor - 34 \""
set cbr38_37 [attach-CBR-traffic $node_(38) $sink(37) 64 0.06]
$ns_ at 23.19 "$cbr38_37 start"
$ns_ at 23.29 "$cbr38_37 stop"
$ns_ at 23.19 "$node_(38) color maroon"
$ns_ at 23.215 "$ns_ trace-annotate \"node_ - 38 send the Hello message with key values to its neighbor - 37 \""
set cbr38_37 [attach-CBR-traffic $node_(37) $sink(38) 64 0.06]
$ns_ at 23.2 "$cbr38_37 start"
$ns_ at 23.3 "$cbr38_37 stop"
$ns_ at 23.225 "$ns_ trace-annotate \"node_ - 38 send the reply hello key message with session to its neighbor - 37 \""
set cbr38_37 [attach-CBR-traffic $node_(38) $sink(37) 64 0.06]
$ns_ at 23.21 "$cbr38_37 start"
$ns_ at 23.31 "$cbr38_37 stop"
$ns_ at 23.235 "$ns_ trace-annotate \"node_ - 38 send about the acceptance of session key with broadcast key to its neighbor - 37 \""
set cbr38_39 [attach-CBR-traffic $node_(38) $sink(39) 64 0.06]
$ns_ at 23.22 "$cbr38_39 start"
$ns_ at 23.32 "$cbr38_39 stop"
$ns_ at 23.22 "$node_(38) color maroon"
$ns_ at 23.245 "$ns_ trace-annotate \"node_ - 38 send the Hello message with key values to its neighbor - 39 \""
set cbr38_39 [attach-CBR-traffic $node_(39) $sink(38) 64 0.06]
$ns_ at 23.23 "$cbr38_39 start"
$ns_ at 23.33 "$cbr38_39 stop"
$ns_ at 23.255 "$ns_ trace-annotate \"node_ - 38 send the reply hello key message with session to its neighbor - 39 \""
set cbr38_39 [attach-CBR-traffic $node_(38) $sink(39) 64 0.06]
$ns_ at 23.24 "$cbr38_39 start"
$ns_ at 23.34 "$cbr38_39 stop"
$ns_ at 23.265 "$ns_ trace-annotate \"node_ - 38 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr38_48 [attach-CBR-traffic $node_(38) $sink(48) 64 0.06]
$ns_ at 23.25 "$cbr38_48 start"
$ns_ at 23.35 "$cbr38_48 stop"
$ns_ at 23.25 "$node_(38) color maroon"
$ns_ at 23.275 "$ns_ trace-annotate \"node_ - 38 send the Hello message with key values to its neighbor - 48 \""
set cbr38_48 [attach-CBR-traffic $node_(48) $sink(38) 64 0.06]
$ns_ at 23.26 "$cbr38_48 start"
$ns_ at 23.36 "$cbr38_48 stop"
$ns_ at 23.285 "$ns_ trace-annotate \"node_ - 38 send the reply hello key message with session to its neighbor - 48 \""
set cbr38_48 [attach-CBR-traffic $node_(38) $sink(48) 64 0.06]
$ns_ at 23.27 "$cbr38_48 start"
$ns_ at 23.37 "$cbr38_48 stop"
$ns_ at 23.295 "$ns_ trace-annotate \"node_ - 38 send about the acceptance of session key with broadcast key to its neighbor - 48 \""
set cbr38_49 [attach-CBR-traffic $node_(38) $sink(49) 64 0.06]
$ns_ at 23.28 "$cbr38_49 start"
$ns_ at 23.38 "$cbr38_49 stop"
$ns_ at 23.28 "$node_(38) color maroon"
$ns_ at 23.305 "$ns_ trace-annotate \"node_ - 38 send the Hello message with key values to its neighbor - 49 \""
set cbr38_49 [attach-CBR-traffic $node_(49) $sink(38) 64 0.06]
$ns_ at 23.29 "$cbr38_49 start"
$ns_ at 23.39 "$cbr38_49 stop"
$ns_ at 23.315 "$ns_ trace-annotate \"node_ - 38 send the reply hello key message with session to its neighbor - 49 \""
set cbr38_49 [attach-CBR-traffic $node_(38) $sink(49) 64 0.06]
$ns_ at 23.3 "$cbr38_49 start"
$ns_ at 23.4 "$cbr38_49 stop"
$ns_ at 23.325 "$ns_ trace-annotate \"node_ - 38 send about the acceptance of session key with broadcast key to its neighbor - 49 \""
set cbr39_31 [attach-CBR-traffic $node_(39) $sink(31) 64 0.06]
$ns_ at 23.23 "$cbr39_31 start"
$ns_ at 23.33 "$cbr39_31 stop"
$ns_ at 23.23 "$node_(39) color maroon"
$ns_ at 23.255 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 31 \""
set cbr39_31 [attach-CBR-traffic $node_(31) $sink(39) 64 0.06]
$ns_ at 23.24 "$cbr39_31 start"
$ns_ at 23.34 "$cbr39_31 stop"
$ns_ at 23.265 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 31 \""
set cbr39_31 [attach-CBR-traffic $node_(39) $sink(31) 64 0.06]
$ns_ at 23.25 "$cbr39_31 start"
$ns_ at 23.35 "$cbr39_31 stop"
$ns_ at 23.275 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr39_33 [attach-CBR-traffic $node_(39) $sink(33) 64 0.06]
$ns_ at 23.26 "$cbr39_33 start"
$ns_ at 23.36 "$cbr39_33 stop"
$ns_ at 23.26 "$node_(39) color maroon"
$ns_ at 23.285 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 33 \""
set cbr39_33 [attach-CBR-traffic $node_(33) $sink(39) 64 0.06]
$ns_ at 23.27 "$cbr39_33 start"
$ns_ at 23.37 "$cbr39_33 stop"
$ns_ at 23.295 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 33 \""
set cbr39_33 [attach-CBR-traffic $node_(39) $sink(33) 64 0.06]
$ns_ at 23.28 "$cbr39_33 start"
$ns_ at 23.38 "$cbr39_33 stop"
$ns_ at 23.305 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr39_38 [attach-CBR-traffic $node_(39) $sink(38) 64 0.06]
$ns_ at 23.29 "$cbr39_38 start"
$ns_ at 23.39 "$cbr39_38 stop"
$ns_ at 23.29 "$node_(39) color maroon"
$ns_ at 23.315 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 38 \""
set cbr39_38 [attach-CBR-traffic $node_(38) $sink(39) 64 0.06]
$ns_ at 23.3 "$cbr39_38 start"
$ns_ at 23.4 "$cbr39_38 stop"
$ns_ at 23.325 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 38 \""
set cbr39_38 [attach-CBR-traffic $node_(39) $sink(38) 64 0.06]
$ns_ at 23.31 "$cbr39_38 start"
$ns_ at 23.41 "$cbr39_38 stop"
$ns_ at 23.335 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 38 \""
set cbr39_40 [attach-CBR-traffic $node_(39) $sink(40) 64 0.06]
$ns_ at 23.32 "$cbr39_40 start"
$ns_ at 23.42 "$cbr39_40 stop"
$ns_ at 23.32 "$node_(39) color maroon"
$ns_ at 23.345 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 40 \""
set cbr39_40 [attach-CBR-traffic $node_(40) $sink(39) 64 0.06]
$ns_ at 23.33 "$cbr39_40 start"
$ns_ at 23.43 "$cbr39_40 stop"
$ns_ at 23.355 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 40 \""
set cbr39_40 [attach-CBR-traffic $node_(39) $sink(40) 64 0.06]
$ns_ at 23.34 "$cbr39_40 start"
$ns_ at 23.44 "$cbr39_40 stop"
$ns_ at 23.365 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 40 \""
set cbr39_47 [attach-CBR-traffic $node_(39) $sink(47) 64 0.06]
$ns_ at 23.35 "$cbr39_47 start"
$ns_ at 23.45 "$cbr39_47 stop"
$ns_ at 23.35 "$node_(39) color maroon"
$ns_ at 23.375 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 47 \""
set cbr39_47 [attach-CBR-traffic $node_(47) $sink(39) 64 0.06]
$ns_ at 23.36 "$cbr39_47 start"
$ns_ at 23.46 "$cbr39_47 stop"
$ns_ at 23.385 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 47 \""
set cbr39_47 [attach-CBR-traffic $node_(39) $sink(47) 64 0.06]
$ns_ at 23.37 "$cbr39_47 start"
$ns_ at 23.47 "$cbr39_47 stop"
$ns_ at 23.395 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 47 \""
set cbr39_48 [attach-CBR-traffic $node_(39) $sink(48) 64 0.06]
$ns_ at 23.38 "$cbr39_48 start"
$ns_ at 23.48 "$cbr39_48 stop"
$ns_ at 23.38 "$node_(39) color maroon"
$ns_ at 23.405 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 48 \""
set cbr39_48 [attach-CBR-traffic $node_(48) $sink(39) 64 0.06]
$ns_ at 23.39 "$cbr39_48 start"
$ns_ at 23.49 "$cbr39_48 stop"
$ns_ at 23.415 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 48 \""
set cbr39_48 [attach-CBR-traffic $node_(39) $sink(48) 64 0.06]
$ns_ at 23.4 "$cbr39_48 start"
$ns_ at 23.5 "$cbr39_48 stop"
$ns_ at 23.425 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 48 \""
set cbr39_49 [attach-CBR-traffic $node_(39) $sink(49) 64 0.06]
$ns_ at 23.41 "$cbr39_49 start"
$ns_ at 23.51 "$cbr39_49 stop"
$ns_ at 23.41 "$node_(39) color maroon"
$ns_ at 23.435 "$ns_ trace-annotate \"node_ - 39 send the Hello message with key values to its neighbor - 49 \""
set cbr39_49 [attach-CBR-traffic $node_(49) $sink(39) 64 0.06]
$ns_ at 23.42 "$cbr39_49 start"
$ns_ at 23.52 "$cbr39_49 stop"
$ns_ at 23.445 "$ns_ trace-annotate \"node_ - 39 send the reply hello key message with session to its neighbor - 49 \""
set cbr39_49 [attach-CBR-traffic $node_(39) $sink(49) 64 0.06]
$ns_ at 23.43 "$cbr39_49 start"
$ns_ at 23.53 "$cbr39_49 stop"
$ns_ at 23.455 "$ns_ trace-annotate \"node_ - 39 send about the acceptance of session key with broadcast key to its neighbor - 49 \""
set cbr40_31 [attach-CBR-traffic $node_(40) $sink(31) 64 0.06]
$ns_ at 23.33 "$cbr40_31 start"
$ns_ at 23.43 "$cbr40_31 stop"
$ns_ at 23.33 "$node_(40) color maroon"
$ns_ at 23.355 "$ns_ trace-annotate \"node_ - 40 send the Hello message with key values to its neighbor - 31 \""
set cbr40_31 [attach-CBR-traffic $node_(31) $sink(40) 64 0.06]
$ns_ at 23.34 "$cbr40_31 start"
$ns_ at 23.44 "$cbr40_31 stop"
$ns_ at 23.365 "$ns_ trace-annotate \"node_ - 40 send the reply hello key message with session to its neighbor - 31 \""
set cbr40_31 [attach-CBR-traffic $node_(40) $sink(31) 64 0.06]
$ns_ at 23.35 "$cbr40_31 start"
$ns_ at 23.45 "$cbr40_31 stop"
$ns_ at 23.375 "$ns_ trace-annotate \"node_ - 40 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr40_33 [attach-CBR-traffic $node_(40) $sink(33) 64 0.06]
$ns_ at 23.36 "$cbr40_33 start"
$ns_ at 23.46 "$cbr40_33 stop"
$ns_ at 23.36 "$node_(40) color maroon"
$ns_ at 23.385 "$ns_ trace-annotate \"node_ - 40 send the Hello message with key values to its neighbor - 33 \""
set cbr40_33 [attach-CBR-traffic $node_(33) $sink(40) 64 0.06]
$ns_ at 23.37 "$cbr40_33 start"
$ns_ at 23.47 "$cbr40_33 stop"
$ns_ at 23.395 "$ns_ trace-annotate \"node_ - 40 send the reply hello key message with session to its neighbor - 33 \""
set cbr40_33 [attach-CBR-traffic $node_(40) $sink(33) 64 0.06]
$ns_ at 23.38 "$cbr40_33 start"
$ns_ at 23.48 "$cbr40_33 stop"
$ns_ at 23.405 "$ns_ trace-annotate \"node_ - 40 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr40_39 [attach-CBR-traffic $node_(40) $sink(39) 64 0.06]
$ns_ at 23.39 "$cbr40_39 start"
$ns_ at 23.49 "$cbr40_39 stop"
$ns_ at 23.39 "$node_(40) color maroon"
$ns_ at 23.415 "$ns_ trace-annotate \"node_ - 40 send the Hello message with key values to its neighbor - 39 \""
set cbr40_39 [attach-CBR-traffic $node_(39) $sink(40) 64 0.06]
$ns_ at 23.4 "$cbr40_39 start"
$ns_ at 23.5 "$cbr40_39 stop"
$ns_ at 23.425 "$ns_ trace-annotate \"node_ - 40 send the reply hello key message with session to its neighbor - 39 \""
set cbr40_39 [attach-CBR-traffic $node_(40) $sink(39) 64 0.06]
$ns_ at 23.41 "$cbr40_39 start"
$ns_ at 23.51 "$cbr40_39 stop"
$ns_ at 23.435 "$ns_ trace-annotate \"node_ - 40 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr40_41 [attach-CBR-traffic $node_(40) $sink(41) 64 0.06]
$ns_ at 23.42 "$cbr40_41 start"
$ns_ at 23.52 "$cbr40_41 stop"
$ns_ at 23.42 "$node_(40) color maroon"
$ns_ at 23.445 "$ns_ trace-annotate \"node_ - 40 send the Hello message with key values to its neighbor - 41 \""
set cbr40_41 [attach-CBR-traffic $node_(41) $sink(40) 64 0.06]
$ns_ at 23.43 "$cbr40_41 start"
$ns_ at 23.53 "$cbr40_41 stop"
$ns_ at 23.455 "$ns_ trace-annotate \"node_ - 40 send the reply hello key message with session to its neighbor - 41 \""
set cbr40_41 [attach-CBR-traffic $node_(40) $sink(41) 64 0.06]
$ns_ at 23.44 "$cbr40_41 start"
$ns_ at 23.54 "$cbr40_41 stop"
$ns_ at 23.465 "$ns_ trace-annotate \"node_ - 40 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr40_46 [attach-CBR-traffic $node_(40) $sink(46) 64 0.06]
$ns_ at 23.45 "$cbr40_46 start"
$ns_ at 23.55 "$cbr40_46 stop"
$ns_ at 23.45 "$node_(40) color maroon"
$ns_ at 23.475 "$ns_ trace-annotate \"node_ - 40 send the Hello message with key values to its neighbor - 46 \""
set cbr40_46 [attach-CBR-traffic $node_(46) $sink(40) 64 0.06]
$ns_ at 23.46 "$cbr40_46 start"
$ns_ at 23.56 "$cbr40_46 stop"
$ns_ at 23.485 "$ns_ trace-annotate \"node_ - 40 send the reply hello key message with session to its neighbor - 46 \""
set cbr40_46 [attach-CBR-traffic $node_(40) $sink(46) 64 0.06]
$ns_ at 23.47 "$cbr40_46 start"
$ns_ at 23.57 "$cbr40_46 stop"
$ns_ at 23.495 "$ns_ trace-annotate \"node_ - 40 send about the acceptance of session key with broadcast key to its neighbor - 46 \""
set cbr40_47 [attach-CBR-traffic $node_(40) $sink(47) 64 0.06]
$ns_ at 23.48 "$cbr40_47 start"
$ns_ at 23.58 "$cbr40_47 stop"
$ns_ at 23.48 "$node_(40) color maroon"
$ns_ at 23.505 "$ns_ trace-annotate \"node_ - 40 send the Hello message with key values to its neighbor - 47 \""
set cbr40_47 [attach-CBR-traffic $node_(47) $sink(40) 64 0.06]
$ns_ at 23.49 "$cbr40_47 start"
$ns_ at 23.59 "$cbr40_47 stop"
$ns_ at 23.515 "$ns_ trace-annotate \"node_ - 40 send the reply hello key message with session to its neighbor - 47 \""
set cbr40_47 [attach-CBR-traffic $node_(40) $sink(47) 64 0.06]
$ns_ at 23.5 "$cbr40_47 start"
$ns_ at 23.6 "$cbr40_47 stop"
$ns_ at 23.525 "$ns_ trace-annotate \"node_ - 40 send about the acceptance of session key with broadcast key to its neighbor - 47 \""
set cbr41_29 [attach-CBR-traffic $node_(41) $sink(29) 64 0.06]
$ns_ at 23.43 "$cbr41_29 start"
$ns_ at 23.53 "$cbr41_29 stop"
$ns_ at 23.43 "$node_(41) color maroon"
$ns_ at 23.455 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 29 \""
set cbr41_29 [attach-CBR-traffic $node_(29) $sink(41) 64 0.06]
$ns_ at 23.44 "$cbr41_29 start"
$ns_ at 23.54 "$cbr41_29 stop"
$ns_ at 23.465 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 29 \""
set cbr41_29 [attach-CBR-traffic $node_(41) $sink(29) 64 0.06]
$ns_ at 23.45 "$cbr41_29 start"
$ns_ at 23.55 "$cbr41_29 stop"
$ns_ at 23.475 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 29 \""
set cbr41_31 [attach-CBR-traffic $node_(41) $sink(31) 64 0.06]
$ns_ at 23.46 "$cbr41_31 start"
$ns_ at 23.56 "$cbr41_31 stop"
$ns_ at 23.46 "$node_(41) color maroon"
$ns_ at 23.485 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 31 \""
set cbr41_31 [attach-CBR-traffic $node_(31) $sink(41) 64 0.06]
$ns_ at 23.47 "$cbr41_31 start"
$ns_ at 23.57 "$cbr41_31 stop"
$ns_ at 23.495 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 31 \""
set cbr41_31 [attach-CBR-traffic $node_(41) $sink(31) 64 0.06]
$ns_ at 23.48 "$cbr41_31 start"
$ns_ at 23.58 "$cbr41_31 stop"
$ns_ at 23.505 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr41_40 [attach-CBR-traffic $node_(41) $sink(40) 64 0.06]
$ns_ at 23.49 "$cbr41_40 start"
$ns_ at 23.59 "$cbr41_40 stop"
$ns_ at 23.49 "$node_(41) color maroon"
$ns_ at 23.515 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 40 \""
set cbr41_40 [attach-CBR-traffic $node_(40) $sink(41) 64 0.06]
$ns_ at 23.5 "$cbr41_40 start"
$ns_ at 23.6 "$cbr41_40 stop"
$ns_ at 23.525 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 40 \""
set cbr41_40 [attach-CBR-traffic $node_(41) $sink(40) 64 0.06]
$ns_ at 23.51 "$cbr41_40 start"
$ns_ at 23.61 "$cbr41_40 stop"
$ns_ at 23.535 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 40 \""
set cbr41_42 [attach-CBR-traffic $node_(41) $sink(42) 64 0.06]
$ns_ at 23.52 "$cbr41_42 start"
$ns_ at 23.62 "$cbr41_42 stop"
$ns_ at 23.52 "$node_(41) color maroon"
$ns_ at 23.545 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 42 \""
set cbr41_42 [attach-CBR-traffic $node_(42) $sink(41) 64 0.06]
$ns_ at 23.53 "$cbr41_42 start"
$ns_ at 23.63 "$cbr41_42 stop"
$ns_ at 23.555 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 42 \""
set cbr41_42 [attach-CBR-traffic $node_(41) $sink(42) 64 0.06]
$ns_ at 23.54 "$cbr41_42 start"
$ns_ at 23.64 "$cbr41_42 stop"
$ns_ at 23.565 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 42 \""
set cbr41_43 [attach-CBR-traffic $node_(41) $sink(43) 64 0.06]
$ns_ at 23.55 "$cbr41_43 start"
$ns_ at 23.65 "$cbr41_43 stop"
$ns_ at 23.55 "$node_(41) color maroon"
$ns_ at 23.575 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 43 \""
set cbr41_43 [attach-CBR-traffic $node_(43) $sink(41) 64 0.06]
$ns_ at 23.56 "$cbr41_43 start"
$ns_ at 23.66 "$cbr41_43 stop"
$ns_ at 23.585 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 43 \""
set cbr41_43 [attach-CBR-traffic $node_(41) $sink(43) 64 0.06]
$ns_ at 23.57 "$cbr41_43 start"
$ns_ at 23.67 "$cbr41_43 stop"
$ns_ at 23.595 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 43 \""
set cbr41_45 [attach-CBR-traffic $node_(41) $sink(45) 64 0.06]
$ns_ at 23.58 "$cbr41_45 start"
$ns_ at 23.68 "$cbr41_45 stop"
$ns_ at 23.58 "$node_(41) color maroon"
$ns_ at 23.605 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 45 \""
set cbr41_45 [attach-CBR-traffic $node_(45) $sink(41) 64 0.06]
$ns_ at 23.59 "$cbr41_45 start"
$ns_ at 23.69 "$cbr41_45 stop"
$ns_ at 23.615 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 45 \""
set cbr41_45 [attach-CBR-traffic $node_(41) $sink(45) 64 0.06]
$ns_ at 23.6 "$cbr41_45 start"
$ns_ at 23.7 "$cbr41_45 stop"
$ns_ at 23.625 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 45 \""
set cbr41_46 [attach-CBR-traffic $node_(41) $sink(46) 64 0.06]
$ns_ at 23.61 "$cbr41_46 start"
$ns_ at 23.71 "$cbr41_46 stop"
$ns_ at 23.61 "$node_(41) color maroon"
$ns_ at 23.635 "$ns_ trace-annotate \"node_ - 41 send the Hello message with key values to its neighbor - 46 \""
set cbr41_46 [attach-CBR-traffic $node_(46) $sink(41) 64 0.06]
$ns_ at 23.62 "$cbr41_46 start"
$ns_ at 23.72 "$cbr41_46 stop"
$ns_ at 23.645 "$ns_ trace-annotate \"node_ - 41 send the reply hello key message with session to its neighbor - 46 \""
set cbr41_46 [attach-CBR-traffic $node_(41) $sink(46) 64 0.06]
$ns_ at 23.63 "$cbr41_46 start"
$ns_ at 23.73 "$cbr41_46 stop"
$ns_ at 23.655 "$ns_ trace-annotate \"node_ - 41 send about the acceptance of session key with broadcast key to its neighbor - 46 \""
set cbr42_28 [attach-CBR-traffic $node_(42) $sink(28) 64 0.06]
$ns_ at 23.53 "$cbr42_28 start"
$ns_ at 23.63 "$cbr42_28 stop"
$ns_ at 23.53 "$node_(42) color maroon"
$ns_ at 23.555 "$ns_ trace-annotate \"node_ - 42 send the Hello message with key values to its neighbor - 28 \""
set cbr42_28 [attach-CBR-traffic $node_(28) $sink(42) 64 0.06]
$ns_ at 23.54 "$cbr42_28 start"
$ns_ at 23.64 "$cbr42_28 stop"
$ns_ at 23.565 "$ns_ trace-annotate \"node_ - 42 send the reply hello key message with session to its neighbor - 28 \""
set cbr42_28 [attach-CBR-traffic $node_(42) $sink(28) 64 0.06]
$ns_ at 23.55 "$cbr42_28 start"
$ns_ at 23.65 "$cbr42_28 stop"
$ns_ at 23.575 "$ns_ trace-annotate \"node_ - 42 send about the acceptance of session key with broadcast key to its neighbor - 28 \""
set cbr42_29 [attach-CBR-traffic $node_(42) $sink(29) 64 0.06]
$ns_ at 23.56 "$cbr42_29 start"
$ns_ at 23.66 "$cbr42_29 stop"
$ns_ at 23.56 "$node_(42) color maroon"
$ns_ at 23.585 "$ns_ trace-annotate \"node_ - 42 send the Hello message with key values to its neighbor - 29 \""
set cbr42_29 [attach-CBR-traffic $node_(29) $sink(42) 64 0.06]
$ns_ at 23.57 "$cbr42_29 start"
$ns_ at 23.67 "$cbr42_29 stop"
$ns_ at 23.595 "$ns_ trace-annotate \"node_ - 42 send the reply hello key message with session to its neighbor - 29 \""
set cbr42_29 [attach-CBR-traffic $node_(42) $sink(29) 64 0.06]
$ns_ at 23.58 "$cbr42_29 start"
$ns_ at 23.68 "$cbr42_29 stop"
$ns_ at 23.605 "$ns_ trace-annotate \"node_ - 42 send about the acceptance of session key with broadcast key to its neighbor - 29 \""
set cbr42_41 [attach-CBR-traffic $node_(42) $sink(41) 64 0.06]
$ns_ at 23.59 "$cbr42_41 start"
$ns_ at 23.69 "$cbr42_41 stop"
$ns_ at 23.59 "$node_(42) color maroon"
$ns_ at 23.615 "$ns_ trace-annotate \"node_ - 42 send the Hello message with key values to its neighbor - 41 \""
set cbr42_41 [attach-CBR-traffic $node_(41) $sink(42) 64 0.06]
$ns_ at 23.6 "$cbr42_41 start"
$ns_ at 23.7 "$cbr42_41 stop"
$ns_ at 23.625 "$ns_ trace-annotate \"node_ - 42 send the reply hello key message with session to its neighbor - 41 \""
set cbr42_41 [attach-CBR-traffic $node_(42) $sink(41) 64 0.06]
$ns_ at 23.61 "$cbr42_41 start"
$ns_ at 23.71 "$cbr42_41 stop"
$ns_ at 23.635 "$ns_ trace-annotate \"node_ - 42 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr42_43 [attach-CBR-traffic $node_(42) $sink(43) 64 0.06]
$ns_ at 23.62 "$cbr42_43 start"
$ns_ at 23.72 "$cbr42_43 stop"
$ns_ at 23.62 "$node_(42) color maroon"
$ns_ at 23.645 "$ns_ trace-annotate \"node_ - 42 send the Hello message with key values to its neighbor - 43 \""
set cbr42_43 [attach-CBR-traffic $node_(43) $sink(42) 64 0.06]
$ns_ at 23.63 "$cbr42_43 start"
$ns_ at 23.73 "$cbr42_43 stop"
$ns_ at 23.655 "$ns_ trace-annotate \"node_ - 42 send the reply hello key message with session to its neighbor - 43 \""
set cbr42_43 [attach-CBR-traffic $node_(42) $sink(43) 64 0.06]
$ns_ at 23.64 "$cbr42_43 start"
$ns_ at 23.74 "$cbr42_43 stop"
$ns_ at 23.665 "$ns_ trace-annotate \"node_ - 42 send about the acceptance of session key with broadcast key to its neighbor - 43 \""
set cbr42_44 [attach-CBR-traffic $node_(42) $sink(44) 64 0.06]
$ns_ at 23.65 "$cbr42_44 start"
$ns_ at 23.75 "$cbr42_44 stop"
$ns_ at 23.65 "$node_(42) color maroon"
$ns_ at 23.675 "$ns_ trace-annotate \"node_ - 42 send the Hello message with key values to its neighbor - 44 \""
set cbr42_44 [attach-CBR-traffic $node_(44) $sink(42) 64 0.06]
$ns_ at 23.66 "$cbr42_44 start"
$ns_ at 23.76 "$cbr42_44 stop"
$ns_ at 23.685 "$ns_ trace-annotate \"node_ - 42 send the reply hello key message with session to its neighbor - 44 \""
set cbr42_44 [attach-CBR-traffic $node_(42) $sink(44) 64 0.06]
$ns_ at 23.67 "$cbr42_44 start"
$ns_ at 23.77 "$cbr42_44 stop"
$ns_ at 23.695 "$ns_ trace-annotate \"node_ - 42 send about the acceptance of session key with broadcast key to its neighbor - 44 \""
set cbr42_45 [attach-CBR-traffic $node_(42) $sink(45) 64 0.06]
$ns_ at 23.68 "$cbr42_45 start"
$ns_ at 23.78 "$cbr42_45 stop"
$ns_ at 23.68 "$node_(42) color maroon"
$ns_ at 23.705 "$ns_ trace-annotate \"node_ - 42 send the Hello message with key values to its neighbor - 45 \""
set cbr42_45 [attach-CBR-traffic $node_(45) $sink(42) 64 0.06]
$ns_ at 23.69 "$cbr42_45 start"
$ns_ at 23.79 "$cbr42_45 stop"
$ns_ at 23.715 "$ns_ trace-annotate \"node_ - 42 send the reply hello key message with session to its neighbor - 45 \""
set cbr42_45 [attach-CBR-traffic $node_(42) $sink(45) 64 0.06]
$ns_ at 23.7 "$cbr42_45 start"
$ns_ at 23.8 "$cbr42_45 stop"
$ns_ at 23.725 "$ns_ trace-annotate \"node_ - 42 send about the acceptance of session key with broadcast key to its neighbor - 45 \""
set cbr43_28 [attach-CBR-traffic $node_(43) $sink(28) 64 0.06]
$ns_ at 23.63 "$cbr43_28 start"
$ns_ at 23.73 "$cbr43_28 stop"
$ns_ at 23.63 "$node_(43) color maroon"
$ns_ at 23.655 "$ns_ trace-annotate \"node_ - 43 send the Hello message with key values to its neighbor - 28 \""
set cbr43_28 [attach-CBR-traffic $node_(28) $sink(43) 64 0.06]
$ns_ at 23.64 "$cbr43_28 start"
$ns_ at 23.74 "$cbr43_28 stop"
$ns_ at 23.665 "$ns_ trace-annotate \"node_ - 43 send the reply hello key message with session to its neighbor - 28 \""
set cbr43_28 [attach-CBR-traffic $node_(43) $sink(28) 64 0.06]
$ns_ at 23.65 "$cbr43_28 start"
$ns_ at 23.75 "$cbr43_28 stop"
$ns_ at 23.675 "$ns_ trace-annotate \"node_ - 43 send about the acceptance of session key with broadcast key to its neighbor - 28 \""
set cbr43_41 [attach-CBR-traffic $node_(43) $sink(41) 64 0.06]
$ns_ at 23.66 "$cbr43_41 start"
$ns_ at 23.76 "$cbr43_41 stop"
$ns_ at 23.66 "$node_(43) color maroon"
$ns_ at 23.685 "$ns_ trace-annotate \"node_ - 43 send the Hello message with key values to its neighbor - 41 \""
set cbr43_41 [attach-CBR-traffic $node_(41) $sink(43) 64 0.06]
$ns_ at 23.67 "$cbr43_41 start"
$ns_ at 23.77 "$cbr43_41 stop"
$ns_ at 23.695 "$ns_ trace-annotate \"node_ - 43 send the reply hello key message with session to its neighbor - 41 \""
set cbr43_41 [attach-CBR-traffic $node_(43) $sink(41) 64 0.06]
$ns_ at 23.68 "$cbr43_41 start"
$ns_ at 23.78 "$cbr43_41 stop"
$ns_ at 23.705 "$ns_ trace-annotate \"node_ - 43 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr43_42 [attach-CBR-traffic $node_(43) $sink(42) 64 0.06]
$ns_ at 23.69 "$cbr43_42 start"
$ns_ at 23.79 "$cbr43_42 stop"
$ns_ at 23.69 "$node_(43) color maroon"
$ns_ at 23.715 "$ns_ trace-annotate \"node_ - 43 send the Hello message with key values to its neighbor - 42 \""
set cbr43_42 [attach-CBR-traffic $node_(42) $sink(43) 64 0.06]
$ns_ at 23.7 "$cbr43_42 start"
$ns_ at 23.8 "$cbr43_42 stop"
$ns_ at 23.725 "$ns_ trace-annotate \"node_ - 43 send the reply hello key message with session to its neighbor - 42 \""
set cbr43_42 [attach-CBR-traffic $node_(43) $sink(42) 64 0.06]
$ns_ at 23.71 "$cbr43_42 start"
$ns_ at 23.81 "$cbr43_42 stop"
$ns_ at 23.735 "$ns_ trace-annotate \"node_ - 43 send about the acceptance of session key with broadcast key to its neighbor - 42 \""
set cbr43_44 [attach-CBR-traffic $node_(43) $sink(44) 64 0.06]
$ns_ at 23.72 "$cbr43_44 start"
$ns_ at 23.82 "$cbr43_44 stop"
$ns_ at 23.72 "$node_(43) color maroon"
$ns_ at 23.745 "$ns_ trace-annotate \"node_ - 43 send the Hello message with key values to its neighbor - 44 \""
set cbr43_44 [attach-CBR-traffic $node_(44) $sink(43) 64 0.06]
$ns_ at 23.73 "$cbr43_44 start"
$ns_ at 23.83 "$cbr43_44 stop"
$ns_ at 23.755 "$ns_ trace-annotate \"node_ - 43 send the reply hello key message with session to its neighbor - 44 \""
set cbr43_44 [attach-CBR-traffic $node_(43) $sink(44) 64 0.06]
$ns_ at 23.74 "$cbr43_44 start"
$ns_ at 23.84 "$cbr43_44 stop"
$ns_ at 23.765 "$ns_ trace-annotate \"node_ - 43 send about the acceptance of session key with broadcast key to its neighbor - 44 \""
set cbr43_45 [attach-CBR-traffic $node_(43) $sink(45) 64 0.06]
$ns_ at 23.75 "$cbr43_45 start"
$ns_ at 23.85 "$cbr43_45 stop"
$ns_ at 23.75 "$node_(43) color maroon"
$ns_ at 23.775 "$ns_ trace-annotate \"node_ - 43 send the Hello message with key values to its neighbor - 45 \""
set cbr43_45 [attach-CBR-traffic $node_(45) $sink(43) 64 0.06]
$ns_ at 23.76 "$cbr43_45 start"
$ns_ at 23.86 "$cbr43_45 stop"
$ns_ at 23.785 "$ns_ trace-annotate \"node_ - 43 send the reply hello key message with session to its neighbor - 45 \""
set cbr43_45 [attach-CBR-traffic $node_(43) $sink(45) 64 0.06]
$ns_ at 23.77 "$cbr43_45 start"
$ns_ at 23.87 "$cbr43_45 stop"
$ns_ at 23.795 "$ns_ trace-annotate \"node_ - 43 send about the acceptance of session key with broadcast key to its neighbor - 45 \""
set cbr44_28 [attach-CBR-traffic $node_(44) $sink(28) 64 0.06]
$ns_ at 23.73 "$cbr44_28 start"
$ns_ at 23.83 "$cbr44_28 stop"
$ns_ at 23.73 "$node_(44) color maroon"
$ns_ at 23.755 "$ns_ trace-annotate \"node_ - 44 send the Hello message with key values to its neighbor - 28 \""
set cbr44_28 [attach-CBR-traffic $node_(28) $sink(44) 64 0.06]
$ns_ at 23.74 "$cbr44_28 start"
$ns_ at 23.84 "$cbr44_28 stop"
$ns_ at 23.765 "$ns_ trace-annotate \"node_ - 44 send the reply hello key message with session to its neighbor - 28 \""
set cbr44_28 [attach-CBR-traffic $node_(44) $sink(28) 64 0.06]
$ns_ at 23.75 "$cbr44_28 start"
$ns_ at 23.85 "$cbr44_28 stop"
$ns_ at 23.775 "$ns_ trace-annotate \"node_ - 44 send about the acceptance of session key with broadcast key to its neighbor - 28 \""
set cbr44_42 [attach-CBR-traffic $node_(44) $sink(42) 64 0.06]
$ns_ at 23.76 "$cbr44_42 start"
$ns_ at 23.86 "$cbr44_42 stop"
$ns_ at 23.76 "$node_(44) color maroon"
$ns_ at 23.785 "$ns_ trace-annotate \"node_ - 44 send the Hello message with key values to its neighbor - 42 \""
set cbr44_42 [attach-CBR-traffic $node_(42) $sink(44) 64 0.06]
$ns_ at 23.77 "$cbr44_42 start"
$ns_ at 23.87 "$cbr44_42 stop"
$ns_ at 23.795 "$ns_ trace-annotate \"node_ - 44 send the reply hello key message with session to its neighbor - 42 \""
set cbr44_42 [attach-CBR-traffic $node_(44) $sink(42) 64 0.06]
$ns_ at 23.78 "$cbr44_42 start"
$ns_ at 23.88 "$cbr44_42 stop"
$ns_ at 23.805 "$ns_ trace-annotate \"node_ - 44 send about the acceptance of session key with broadcast key to its neighbor - 42 \""
set cbr44_43 [attach-CBR-traffic $node_(44) $sink(43) 64 0.06]
$ns_ at 23.79 "$cbr44_43 start"
$ns_ at 23.89 "$cbr44_43 stop"
$ns_ at 23.79 "$node_(44) color maroon"
$ns_ at 23.815 "$ns_ trace-annotate \"node_ - 44 send the Hello message with key values to its neighbor - 43 \""
set cbr44_43 [attach-CBR-traffic $node_(43) $sink(44) 64 0.06]
$ns_ at 23.8 "$cbr44_43 start"
$ns_ at 23.9 "$cbr44_43 stop"
$ns_ at 23.825 "$ns_ trace-annotate \"node_ - 44 send the reply hello key message with session to its neighbor - 43 \""
set cbr44_43 [attach-CBR-traffic $node_(44) $sink(43) 64 0.06]
$ns_ at 23.81 "$cbr44_43 start"
$ns_ at 23.91 "$cbr44_43 stop"
$ns_ at 23.835 "$ns_ trace-annotate \"node_ - 44 send about the acceptance of session key with broadcast key to its neighbor - 43 \""
set cbr45_41 [attach-CBR-traffic $node_(45) $sink(41) 64 0.06]
$ns_ at 23.83 "$cbr45_41 start"
$ns_ at 23.93 "$cbr45_41 stop"
$ns_ at 23.83 "$node_(45) color maroon"
$ns_ at 23.855 "$ns_ trace-annotate \"node_ - 45 send the Hello message with key values to its neighbor - 41 \""
set cbr45_41 [attach-CBR-traffic $node_(41) $sink(45) 64 0.06]
$ns_ at 23.84 "$cbr45_41 start"
$ns_ at 23.94 "$cbr45_41 stop"
$ns_ at 23.865 "$ns_ trace-annotate \"node_ - 45 send the reply hello key message with session to its neighbor - 41 \""
set cbr45_41 [attach-CBR-traffic $node_(45) $sink(41) 64 0.06]
$ns_ at 23.85 "$cbr45_41 start"
$ns_ at 23.95 "$cbr45_41 stop"
$ns_ at 23.875 "$ns_ trace-annotate \"node_ - 45 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr45_42 [attach-CBR-traffic $node_(45) $sink(42) 64 0.06]
$ns_ at 23.86 "$cbr45_42 start"
$ns_ at 23.96 "$cbr45_42 stop"
$ns_ at 23.86 "$node_(45) color maroon"
$ns_ at 23.885 "$ns_ trace-annotate \"node_ - 45 send the Hello message with key values to its neighbor - 42 \""
set cbr45_42 [attach-CBR-traffic $node_(42) $sink(45) 64 0.06]
$ns_ at 23.87 "$cbr45_42 start"
$ns_ at 23.97 "$cbr45_42 stop"
$ns_ at 23.895 "$ns_ trace-annotate \"node_ - 45 send the reply hello key message with session to its neighbor - 42 \""
set cbr45_42 [attach-CBR-traffic $node_(45) $sink(42) 64 0.06]
$ns_ at 23.88 "$cbr45_42 start"
$ns_ at 23.98 "$cbr45_42 stop"
$ns_ at 23.905 "$ns_ trace-annotate \"node_ - 45 send about the acceptance of session key with broadcast key to its neighbor - 42 \""
set cbr45_43 [attach-CBR-traffic $node_(45) $sink(43) 64 0.06]
$ns_ at 23.89 "$cbr45_43 start"
$ns_ at 23.99 "$cbr45_43 stop"
$ns_ at 23.89 "$node_(45) color maroon"
$ns_ at 23.915 "$ns_ trace-annotate \"node_ - 45 send the Hello message with key values to its neighbor - 43 \""
set cbr45_43 [attach-CBR-traffic $node_(43) $sink(45) 64 0.06]
$ns_ at 23.9 "$cbr45_43 start"
$ns_ at 24 "$cbr45_43 stop"
$ns_ at 23.925 "$ns_ trace-annotate \"node_ - 45 send the reply hello key message with session to its neighbor - 43 \""
set cbr45_43 [attach-CBR-traffic $node_(45) $sink(43) 64 0.06]
$ns_ at 23.91 "$cbr45_43 start"
$ns_ at 24.01 "$cbr45_43 stop"
$ns_ at 23.935 "$ns_ trace-annotate \"node_ - 45 send about the acceptance of session key with broadcast key to its neighbor - 43 \""
set cbr45_46 [attach-CBR-traffic $node_(45) $sink(46) 64 0.06]
$ns_ at 23.92 "$cbr45_46 start"
$ns_ at 24.02 "$cbr45_46 stop"
$ns_ at 23.92 "$node_(45) color maroon"
$ns_ at 23.945 "$ns_ trace-annotate \"node_ - 45 send the Hello message with key values to its neighbor - 46 \""
set cbr45_46 [attach-CBR-traffic $node_(46) $sink(45) 64 0.06]
$ns_ at 23.93 "$cbr45_46 start"
$ns_ at 24.03 "$cbr45_46 stop"
$ns_ at 23.955 "$ns_ trace-annotate \"node_ - 45 send the reply hello key message with session to its neighbor - 46 \""
set cbr45_46 [attach-CBR-traffic $node_(45) $sink(46) 64 0.06]
$ns_ at 23.94 "$cbr45_46 start"
$ns_ at 24.04 "$cbr45_46 stop"
$ns_ at 23.965 "$ns_ trace-annotate \"node_ - 45 send about the acceptance of session key with broadcast key to its neighbor - 46 \""
set cbr46_31 [attach-CBR-traffic $node_(46) $sink(31) 64 0.06]
$ns_ at 23.93 "$cbr46_31 start"
$ns_ at 24.03 "$cbr46_31 stop"
$ns_ at 23.93 "$node_(46) color maroon"
$ns_ at 23.955 "$ns_ trace-annotate \"node_ - 46 send the Hello message with key values to its neighbor - 31 \""
set cbr46_31 [attach-CBR-traffic $node_(31) $sink(46) 64 0.06]
$ns_ at 23.94 "$cbr46_31 start"
$ns_ at 24.04 "$cbr46_31 stop"
$ns_ at 23.965 "$ns_ trace-annotate \"node_ - 46 send the reply hello key message with session to its neighbor - 31 \""
set cbr46_31 [attach-CBR-traffic $node_(46) $sink(31) 64 0.06]
$ns_ at 23.95 "$cbr46_31 start"
$ns_ at 24.05 "$cbr46_31 stop"
$ns_ at 23.975 "$ns_ trace-annotate \"node_ - 46 send about the acceptance of session key with broadcast key to its neighbor - 31 \""
set cbr46_40 [attach-CBR-traffic $node_(46) $sink(40) 64 0.06]
$ns_ at 23.96 "$cbr46_40 start"
$ns_ at 24.06 "$cbr46_40 stop"
$ns_ at 23.96 "$node_(46) color maroon"
$ns_ at 23.985 "$ns_ trace-annotate \"node_ - 46 send the Hello message with key values to its neighbor - 40 \""
set cbr46_40 [attach-CBR-traffic $node_(40) $sink(46) 64 0.06]
$ns_ at 23.97 "$cbr46_40 start"
$ns_ at 24.07 "$cbr46_40 stop"
$ns_ at 23.995 "$ns_ trace-annotate \"node_ - 46 send the reply hello key message with session to its neighbor - 40 \""
set cbr46_40 [attach-CBR-traffic $node_(46) $sink(40) 64 0.06]
$ns_ at 23.98 "$cbr46_40 start"
$ns_ at 24.08 "$cbr46_40 stop"
$ns_ at 24.005 "$ns_ trace-annotate \"node_ - 46 send about the acceptance of session key with broadcast key to its neighbor - 40 \""
set cbr46_41 [attach-CBR-traffic $node_(46) $sink(41) 64 0.06]
$ns_ at 23.99 "$cbr46_41 start"
$ns_ at 24.09 "$cbr46_41 stop"
$ns_ at 23.99 "$node_(46) color maroon"
$ns_ at 24.015 "$ns_ trace-annotate \"node_ - 46 send the Hello message with key values to its neighbor - 41 \""
set cbr46_41 [attach-CBR-traffic $node_(41) $sink(46) 64 0.06]
$ns_ at 24 "$cbr46_41 start"
$ns_ at 24.1 "$cbr46_41 stop"
$ns_ at 24.025 "$ns_ trace-annotate \"node_ - 46 send the reply hello key message with session to its neighbor - 41 \""
set cbr46_41 [attach-CBR-traffic $node_(46) $sink(41) 64 0.06]
$ns_ at 24.01 "$cbr46_41 start"
$ns_ at 24.11 "$cbr46_41 stop"
$ns_ at 24.035 "$ns_ trace-annotate \"node_ - 46 send about the acceptance of session key with broadcast key to its neighbor - 41 \""
set cbr46_45 [attach-CBR-traffic $node_(46) $sink(45) 64 0.06]
$ns_ at 24.02 "$cbr46_45 start"
$ns_ at 24.12 "$cbr46_45 stop"
$ns_ at 24.02 "$node_(46) color maroon"
$ns_ at 24.045 "$ns_ trace-annotate \"node_ - 46 send the Hello message with key values to its neighbor - 45 \""
set cbr46_45 [attach-CBR-traffic $node_(45) $sink(46) 64 0.06]
$ns_ at 24.03 "$cbr46_45 start"
$ns_ at 24.13 "$cbr46_45 stop"
$ns_ at 24.055 "$ns_ trace-annotate \"node_ - 46 send the reply hello key message with session to its neighbor - 45 \""
set cbr46_45 [attach-CBR-traffic $node_(46) $sink(45) 64 0.06]
$ns_ at 24.04 "$cbr46_45 start"
$ns_ at 24.14 "$cbr46_45 stop"
$ns_ at 24.065 "$ns_ trace-annotate \"node_ - 46 send about the acceptance of session key with broadcast key to its neighbor - 45 \""
set cbr46_47 [attach-CBR-traffic $node_(46) $sink(47) 64 0.06]
$ns_ at 24.05 "$cbr46_47 start"
$ns_ at 24.15 "$cbr46_47 stop"
$ns_ at 24.05 "$node_(46) color maroon"
$ns_ at 24.075 "$ns_ trace-annotate \"node_ - 46 send the Hello message with key values to its neighbor - 47 \""
set cbr46_47 [attach-CBR-traffic $node_(47) $sink(46) 64 0.06]
$ns_ at 24.06 "$cbr46_47 start"
$ns_ at 24.16 "$cbr46_47 stop"
$ns_ at 24.085 "$ns_ trace-annotate \"node_ - 46 send the reply hello key message with session to its neighbor - 47 \""
set cbr46_47 [attach-CBR-traffic $node_(46) $sink(47) 64 0.06]
$ns_ at 24.07 "$cbr46_47 start"
$ns_ at 24.17 "$cbr46_47 stop"
$ns_ at 24.095 "$ns_ trace-annotate \"node_ - 46 send about the acceptance of session key with broadcast key to its neighbor - 47 \""
set cbr47_39 [attach-CBR-traffic $node_(47) $sink(39) 64 0.06]
$ns_ at 24.03 "$cbr47_39 start"
$ns_ at 24.13 "$cbr47_39 stop"
$ns_ at 24.03 "$node_(47) color maroon"
$ns_ at 24.055 "$ns_ trace-annotate \"node_ - 47 send the Hello message with key values to its neighbor - 39 \""
set cbr47_39 [attach-CBR-traffic $node_(39) $sink(47) 64 0.06]
$ns_ at 24.04 "$cbr47_39 start"
$ns_ at 24.14 "$cbr47_39 stop"
$ns_ at 24.065 "$ns_ trace-annotate \"node_ - 47 send the reply hello key message with session to its neighbor - 39 \""
set cbr47_39 [attach-CBR-traffic $node_(47) $sink(39) 64 0.06]
$ns_ at 24.05 "$cbr47_39 start"
$ns_ at 24.15 "$cbr47_39 stop"
$ns_ at 24.075 "$ns_ trace-annotate \"node_ - 47 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr47_40 [attach-CBR-traffic $node_(47) $sink(40) 64 0.06]
$ns_ at 24.06 "$cbr47_40 start"
$ns_ at 24.16 "$cbr47_40 stop"
$ns_ at 24.06 "$node_(47) color maroon"
$ns_ at 24.085 "$ns_ trace-annotate \"node_ - 47 send the Hello message with key values to its neighbor - 40 \""
set cbr47_40 [attach-CBR-traffic $node_(40) $sink(47) 64 0.06]
$ns_ at 24.07 "$cbr47_40 start"
$ns_ at 24.17 "$cbr47_40 stop"
$ns_ at 24.095 "$ns_ trace-annotate \"node_ - 47 send the reply hello key message with session to its neighbor - 40 \""
set cbr47_40 [attach-CBR-traffic $node_(47) $sink(40) 64 0.06]
$ns_ at 24.08 "$cbr47_40 start"
$ns_ at 24.18 "$cbr47_40 stop"
$ns_ at 24.105 "$ns_ trace-annotate \"node_ - 47 send about the acceptance of session key with broadcast key to its neighbor - 40 \""
set cbr47_46 [attach-CBR-traffic $node_(47) $sink(46) 64 0.06]
$ns_ at 24.09 "$cbr47_46 start"
$ns_ at 24.19 "$cbr47_46 stop"
$ns_ at 24.09 "$node_(47) color maroon"
$ns_ at 24.115 "$ns_ trace-annotate \"node_ - 47 send the Hello message with key values to its neighbor - 46 \""
set cbr47_46 [attach-CBR-traffic $node_(46) $sink(47) 64 0.06]
$ns_ at 24.1 "$cbr47_46 start"
$ns_ at 24.2 "$cbr47_46 stop"
$ns_ at 24.125 "$ns_ trace-annotate \"node_ - 47 send the reply hello key message with session to its neighbor - 46 \""
set cbr47_46 [attach-CBR-traffic $node_(47) $sink(46) 64 0.06]
$ns_ at 24.11 "$cbr47_46 start"
$ns_ at 24.21 "$cbr47_46 stop"
$ns_ at 24.135 "$ns_ trace-annotate \"node_ - 47 send about the acceptance of session key with broadcast key to its neighbor - 46 \""
set cbr47_48 [attach-CBR-traffic $node_(47) $sink(48) 64 0.06]
$ns_ at 24.12 "$cbr47_48 start"
$ns_ at 24.22 "$cbr47_48 stop"
$ns_ at 24.12 "$node_(47) color maroon"
$ns_ at 24.145 "$ns_ trace-annotate \"node_ - 47 send the Hello message with key values to its neighbor - 48 \""
set cbr47_48 [attach-CBR-traffic $node_(48) $sink(47) 64 0.06]
$ns_ at 24.13 "$cbr47_48 start"
$ns_ at 24.23 "$cbr47_48 stop"
$ns_ at 24.155 "$ns_ trace-annotate \"node_ - 47 send the reply hello key message with session to its neighbor - 48 \""
set cbr47_48 [attach-CBR-traffic $node_(47) $sink(48) 64 0.06]
$ns_ at 24.14 "$cbr47_48 start"
$ns_ at 24.24 "$cbr47_48 stop"
$ns_ at 24.165 "$ns_ trace-annotate \"node_ - 47 send about the acceptance of session key with broadcast key to its neighbor - 48 \""
set cbr47_49 [attach-CBR-traffic $node_(47) $sink(49) 64 0.06]
$ns_ at 24.15 "$cbr47_49 start"
$ns_ at 24.25 "$cbr47_49 stop"
$ns_ at 24.15 "$node_(47) color maroon"
$ns_ at 24.175 "$ns_ trace-annotate \"node_ - 47 send the Hello message with key values to its neighbor - 49 \""
set cbr47_49 [attach-CBR-traffic $node_(49) $sink(47) 64 0.06]
$ns_ at 24.16 "$cbr47_49 start"
$ns_ at 24.26 "$cbr47_49 stop"
$ns_ at 24.185 "$ns_ trace-annotate \"node_ - 47 send the reply hello key message with session to its neighbor - 49 \""
set cbr47_49 [attach-CBR-traffic $node_(47) $sink(49) 64 0.06]
$ns_ at 24.17 "$cbr47_49 start"
$ns_ at 24.27 "$cbr47_49 stop"
$ns_ at 24.195 "$ns_ trace-annotate \"node_ - 47 send about the acceptance of session key with broadcast key to its neighbor - 49 \""
set cbr48_38 [attach-CBR-traffic $node_(48) $sink(38) 64 0.06]
$ns_ at 24.13 "$cbr48_38 start"
$ns_ at 24.23 "$cbr48_38 stop"
$ns_ at 24.13 "$node_(48) color maroon"
$ns_ at 24.155 "$ns_ trace-annotate \"node_ - 48 send the Hello message with key values to its neighbor - 38 \""
set cbr48_38 [attach-CBR-traffic $node_(38) $sink(48) 64 0.06]
$ns_ at 24.14 "$cbr48_38 start"
$ns_ at 24.24 "$cbr48_38 stop"
$ns_ at 24.165 "$ns_ trace-annotate \"node_ - 48 send the reply hello key message with session to its neighbor - 38 \""
set cbr48_38 [attach-CBR-traffic $node_(48) $sink(38) 64 0.06]
$ns_ at 24.15 "$cbr48_38 start"
$ns_ at 24.25 "$cbr48_38 stop"
$ns_ at 24.175 "$ns_ trace-annotate \"node_ - 48 send about the acceptance of session key with broadcast key to its neighbor - 38 \""
set cbr48_39 [attach-CBR-traffic $node_(48) $sink(39) 64 0.06]
$ns_ at 24.16 "$cbr48_39 start"
$ns_ at 24.26 "$cbr48_39 stop"
$ns_ at 24.16 "$node_(48) color maroon"
$ns_ at 24.185 "$ns_ trace-annotate \"node_ - 48 send the Hello message with key values to its neighbor - 39 \""
set cbr48_39 [attach-CBR-traffic $node_(39) $sink(48) 64 0.06]
$ns_ at 24.17 "$cbr48_39 start"
$ns_ at 24.27 "$cbr48_39 stop"
$ns_ at 24.195 "$ns_ trace-annotate \"node_ - 48 send the reply hello key message with session to its neighbor - 39 \""
set cbr48_39 [attach-CBR-traffic $node_(48) $sink(39) 64 0.06]
$ns_ at 24.18 "$cbr48_39 start"
$ns_ at 24.28 "$cbr48_39 stop"
$ns_ at 24.205 "$ns_ trace-annotate \"node_ - 48 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr48_47 [attach-CBR-traffic $node_(48) $sink(47) 64 0.06]
$ns_ at 24.19 "$cbr48_47 start"
$ns_ at 24.29 "$cbr48_47 stop"
$ns_ at 24.19 "$node_(48) color maroon"
$ns_ at 24.215 "$ns_ trace-annotate \"node_ - 48 send the Hello message with key values to its neighbor - 47 \""
set cbr48_47 [attach-CBR-traffic $node_(47) $sink(48) 64 0.06]
$ns_ at 24.2 "$cbr48_47 start"
$ns_ at 24.3 "$cbr48_47 stop"
$ns_ at 24.225 "$ns_ trace-annotate \"node_ - 48 send the reply hello key message with session to its neighbor - 47 \""
set cbr48_47 [attach-CBR-traffic $node_(48) $sink(47) 64 0.06]
$ns_ at 24.21 "$cbr48_47 start"
$ns_ at 24.31 "$cbr48_47 stop"
$ns_ at 24.235 "$ns_ trace-annotate \"node_ - 48 send about the acceptance of session key with broadcast key to its neighbor - 47 \""
set cbr48_49 [attach-CBR-traffic $node_(48) $sink(49) 64 0.06]
$ns_ at 24.22 "$cbr48_49 start"
$ns_ at 24.32 "$cbr48_49 stop"
$ns_ at 24.22 "$node_(48) color maroon"
$ns_ at 24.245 "$ns_ trace-annotate \"node_ - 48 send the Hello message with key values to its neighbor - 49 \""
set cbr48_49 [attach-CBR-traffic $node_(49) $sink(48) 64 0.06]
$ns_ at 24.23 "$cbr48_49 start"
$ns_ at 24.33 "$cbr48_49 stop"
$ns_ at 24.255 "$ns_ trace-annotate \"node_ - 48 send the reply hello key message with session to its neighbor - 49 \""
set cbr48_49 [attach-CBR-traffic $node_(48) $sink(49) 64 0.06]
$ns_ at 24.24 "$cbr48_49 start"
$ns_ at 24.34 "$cbr48_49 stop"
$ns_ at 24.265 "$ns_ trace-annotate \"node_ - 48 send about the acceptance of session key with broadcast key to its neighbor - 49 \""
set cbr49_33 [attach-CBR-traffic $node_(49) $sink(33) 64 0.06]
$ns_ at 24.23 "$cbr49_33 start"
$ns_ at 24.33 "$cbr49_33 stop"
$ns_ at 24.23 "$node_(49) color maroon"
$ns_ at 24.255 "$ns_ trace-annotate \"node_ - 49 send the Hello message with key values to its neighbor - 33 \""
set cbr49_33 [attach-CBR-traffic $node_(33) $sink(49) 64 0.06]
$ns_ at 24.24 "$cbr49_33 start"
$ns_ at 24.34 "$cbr49_33 stop"
$ns_ at 24.265 "$ns_ trace-annotate \"node_ - 49 send the reply hello key message with session to its neighbor - 33 \""
set cbr49_33 [attach-CBR-traffic $node_(49) $sink(33) 64 0.06]
$ns_ at 24.25 "$cbr49_33 start"
$ns_ at 24.35 "$cbr49_33 stop"
$ns_ at 24.275 "$ns_ trace-annotate \"node_ - 49 send about the acceptance of session key with broadcast key to its neighbor - 33 \""
set cbr49_38 [attach-CBR-traffic $node_(49) $sink(38) 64 0.06]
$ns_ at 24.26 "$cbr49_38 start"
$ns_ at 24.36 "$cbr49_38 stop"
$ns_ at 24.26 "$node_(49) color maroon"
$ns_ at 24.285 "$ns_ trace-annotate \"node_ - 49 send the Hello message with key values to its neighbor - 38 \""
set cbr49_38 [attach-CBR-traffic $node_(38) $sink(49) 64 0.06]
$ns_ at 24.27 "$cbr49_38 start"
$ns_ at 24.37 "$cbr49_38 stop"
$ns_ at 24.295 "$ns_ trace-annotate \"node_ - 49 send the reply hello key message with session to its neighbor - 38 \""
set cbr49_38 [attach-CBR-traffic $node_(49) $sink(38) 64 0.06]
$ns_ at 24.28 "$cbr49_38 start"
$ns_ at 24.38 "$cbr49_38 stop"
$ns_ at 24.305 "$ns_ trace-annotate \"node_ - 49 send about the acceptance of session key with broadcast key to its neighbor - 38 \""
set cbr49_39 [attach-CBR-traffic $node_(49) $sink(39) 64 0.06]
$ns_ at 24.29 "$cbr49_39 start"
$ns_ at 24.39 "$cbr49_39 stop"
$ns_ at 24.29 "$node_(49) color maroon"
$ns_ at 24.315 "$ns_ trace-annotate \"node_ - 49 send the Hello message with key values to its neighbor - 39 \""
set cbr49_39 [attach-CBR-traffic $node_(39) $sink(49) 64 0.06]
$ns_ at 24.3 "$cbr49_39 start"
$ns_ at 24.4 "$cbr49_39 stop"
$ns_ at 24.325 "$ns_ trace-annotate \"node_ - 49 send the reply hello key message with session to its neighbor - 39 \""
set cbr49_39 [attach-CBR-traffic $node_(49) $sink(39) 64 0.06]
$ns_ at 24.31 "$cbr49_39 start"
$ns_ at 24.41 "$cbr49_39 stop"
$ns_ at 24.335 "$ns_ trace-annotate \"node_ - 49 send about the acceptance of session key with broadcast key to its neighbor - 39 \""
set cbr49_47 [attach-CBR-traffic $node_(49) $sink(47) 64 0.06]
$ns_ at 24.32 "$cbr49_47 start"
$ns_ at 24.42 "$cbr49_47 stop"
$ns_ at 24.32 "$node_(49) color maroon"
$ns_ at 24.345 "$ns_ trace-annotate \"node_ - 49 send the Hello message with key values to its neighbor - 47 \""
set cbr49_47 [attach-CBR-traffic $node_(47) $sink(49) 64 0.06]
$ns_ at 24.33 "$cbr49_47 start"
$ns_ at 24.43 "$cbr49_47 stop"
$ns_ at 24.355 "$ns_ trace-annotate \"node_ - 49 send the reply hello key message with session to its neighbor - 47 \""
set cbr49_47 [attach-CBR-traffic $node_(49) $sink(47) 64 0.06]
$ns_ at 24.34 "$cbr49_47 start"
$ns_ at 24.44 "$cbr49_47 stop"
$ns_ at 24.365 "$ns_ trace-annotate \"node_ - 49 send about the acceptance of session key with broadcast key to its neighbor - 47 \""
set cbr49_48 [attach-CBR-traffic $node_(49) $sink(48) 64 0.06]
$ns_ at 24.35 "$cbr49_48 start"
$ns_ at 24.45 "$cbr49_48 stop"
$ns_ at 24.35 "$node_(49) color maroon"
$ns_ at 24.375 "$ns_ trace-annotate \"node_ - 49 send the Hello message with key values to its neighbor - 48 \""
set cbr49_48 [attach-CBR-traffic $node_(48) $sink(49) 64 0.06]
$ns_ at 24.36 "$cbr49_48 start"
$ns_ at 24.46 "$cbr49_48 stop"
$ns_ at 24.385 "$ns_ trace-annotate \"node_ - 49 send the reply hello key message with session to its neighbor - 48 \""
set cbr49_48 [attach-CBR-traffic $node_(49) $sink(48) 64 0.06]
$ns_ at 24.37 "$cbr49_48 start"
$ns_ at 24.47 "$cbr49_48 stop"
$ns_ at 24.395 "$ns_ trace-annotate \"node_ - 49 send about the acceptance of session key with broadcast key to its neighbor - 48 \""
