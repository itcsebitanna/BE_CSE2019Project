$ns_ at 24.91 "$node_(42) color orange"
$ns_ at 24.91 "$node_(35) color orange"
set inf0 [attach-CBR-traffic $node_(35) $sink(36) 512 0.08]
$ns_ at 24.91 "$inf0 start"
$ns_ at 25.91 "$inf0 stop"
$ns_ at 24.935 "$ns_ trace-annotate \"Node - 35 sends Data packet to Node - 36 \""
$ns_ at 24.91 "$node_(36) color orange"
$ns_ at 24.91 "$node_(35) color orange"
$ns_ at 25.91 "$node_(36) color black"
$ns_ at 25.91 "$node_(35) color black"
set inf1 [attach-CBR-traffic $node_(36) $sink(32) 512 0.08]
$ns_ at 24.92 "$inf1 start"
$ns_ at 25.92 "$inf1 stop"
$ns_ at 24.945 "$ns_ trace-annotate \"Node - 36 sends Data packet to Node - 32 \""
$ns_ at 24.92 "$node_(32) color orange"
$ns_ at 24.92 "$node_(36) color orange"
$ns_ at 25.92 "$node_(32) color black"
$ns_ at 25.92 "$node_(36) color black"
set inf2 [attach-CBR-traffic $node_(32) $sink(25) 512 0.08]
$ns_ at 24.93 "$inf2 start"
$ns_ at 25.93 "$inf2 stop"
$ns_ at 24.955 "$ns_ trace-annotate \"Node - 32 sends Data packet to Node - 25 \""
$ns_ at 24.93 "$node_(25) color orange"
$ns_ at 24.93 "$node_(32) color orange"
$ns_ at 25.93 "$node_(25) color black"
$ns_ at 25.93 "$node_(32) color black"
set inf3 [attach-CBR-traffic $node_(25) $sink(10) 512 0.08]
$ns_ at 24.94 "$inf3 start"
$ns_ at 25.94 "$inf3 stop"
$ns_ at 24.965 "$ns_ trace-annotate \"Node - 25 sends Data packet to Node - 10 \""
$ns_ at 24.94 "$node_(10) color orange"
$ns_ at 24.94 "$node_(25) color orange"
$ns_ at 25.94 "$node_(10) color black"
$ns_ at 25.94 "$node_(25) color black"
set inf4 [attach-CBR-traffic $node_(10) $sink(27) 512 0.08]
$ns_ at 24.95 "$inf4 start"
$ns_ at 25.95 "$inf4 stop"
$ns_ at 24.975 "$ns_ trace-annotate \"Node - 10 sends Data packet to Node - 27 \""
$ns_ at 24.95 "$node_(27) color orange"
$ns_ at 24.95 "$node_(10) color orange"
$ns_ at 25.95 "$node_(27) color black"
$ns_ at 25.95 "$node_(10) color black"
set inf5 [attach-CBR-traffic $node_(27) $sink(28) 512 0.08]
$ns_ at 24.96 "$inf5 start"
$ns_ at 25.96 "$inf5 stop"
$ns_ at 24.985 "$ns_ trace-annotate \"Node - 27 sends Data packet to Node - 28 \""
$ns_ at 24.96 "$node_(28) color orange"
$ns_ at 24.96 "$node_(27) color orange"
$ns_ at 25.96 "$node_(28) color black"
$ns_ at 25.96 "$node_(27) color black"
set inf6 [attach-CBR-traffic $node_(28) $sink(42) 512 0.08]
$ns_ at 24.97 "$inf6 start"
$ns_ at 25.97 "$inf6 stop"
$ns_ at 24.995 "$ns_ trace-annotate \"Node - 28 sends Data packet to Node - 42 \""
$ns_ at 24.97 "$node_(42) color orange"
$ns_ at 24.97 "$node_(28) color orange"
$ns_ at 25.97 "$node_(42) color black"
$ns_ at 25.97 "$node_(28) color black"
