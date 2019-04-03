set val(chan) Channel/WirelessChannel ;
set val(prop) Propagation/TwoRayGround ;
set val(netif) Phy/WirelessPhy ;
set val(mac) Mac/802_11;
set val(ll) LL ;
set val(ant) Antenna/OmniAntenna ;
set val(ifq) Queue/DropTail/PriQueue ;
set val(ll) LL ;
set val(ant) Antenna/OmniAntenna ;
set val(ifqlen) 500 ;
set val(nn) 20 ;
set val(rp) AODV ;
set val(x) 500 ;
set val(y) 500 ;
set val(stop) 150 ;


set ns [new Simulator]
set tracefd [open k.tr w]
$ns trace-all $tracefd
set WindowVsTime [open win.tr w]

set namtrace [open k.nam w]
$ns namtrace-all $namtrace
$ns namtrace-all-wireless $namtrace $val(x) $val(y)


set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)


$ns node-config -adhocRouting $val(rp) \
-llType $val(ll) \
-macType $val(mac) \
-ifqType $val(ifq) \
-ifqLen $val(ifqlen) \
-antType $val(ant) \
-propType $val(prop) \
-phyType $val(netif) \
-channelType $val(chan) \
-topoInstance $topo \
-agentTrave ON \
-routerTrace ON \
-macTrace ON \
-movementTrace ON 


for {set i 0} {$i < $val(nn)} {incr i} {
set n($i) [$ns node]
}


$n(0) set X_ 5.0
$n(0) set Y_ 5.0
$n(0) set Z_ 0.0

$n(1) set X_ 490.0
$n(1) set Y_ 285.0
$n(1) set Z_ 0.0

$n(2) set X_ 200.0
$n(2) set Y_ 230.0
$n(2) set Z_ 0.0

$n(3) set X_ 300.0
$n(3) set Y_ 450.0
$n(3) set Z_ 0.0

$n(4) set X_ 100.0
$n(4) set Y_ 400.0
$n(4) set Z_ 0.0

$n(5) set X_ 435.0
$n(5) set Y_ 25.0
$n(5) set Z_ 0.0

$n(6) set X_ 127.0
$n(6) set Y_ 389.0
$n(6) set Z_ 0.0

$n(7) set X_ 68.0
$n(7) set Y_ 50.0
$n(7) set Z_ 0.0

$n(8) set X_ 450.0
$n(8) set Y_ 300.0
$n(8) set Z_ 0.0

$n(9) set X_ 480.0
$n(9) set Y_ 390.0
$n(9) set Z_ 0.0

$n(10) set X_ 170.0
$n(10) set Y_ 270.0
$n(10) set Z_ 0.0

$n(11) set X_ 300.0
$n(11) set Y_ 300.0
$n(11) set Z_ 0.0

$n(12) set X_ 20.0
$n(12) set Y_ 320.0
$n(12) set Z_ 0.0

$n(13) set X_ 450.0
$n(13) set Y_ 230.0
$n(13) set Z_ 0.0

$n(14) set X_ 320.0
$n(14) set Y_ 270.0
$n(14) set Z_ 0.0

$n(15) set X_ 50.0
$n(15) set Y_ 380.0
$n(15) set Z_ 0.0

$n(16) set X_ 480.0
$n(16) set Y_ 220.0
$n(16) set Z_ 0.0

$n(17) set X_ 330.0
$n(17) set Y_ 70.0
$n(17) set Z_ 0.0

$n(18) set X_ 60.0
$n(18) set Y_ 340.0
$n(18) set Z_ 0.0

$n(19) set X_ 300.0
$n(19) set Y_ 200.0
$n(19) set Z_ 0.0


$ns at 10.0 "$n(0) setdest 250.0 250.0 3.0"
$ns at 15.0 "$n(1) setdest 45.0 285.0 5.0"
$ns at 40.0 "$n(0) setdest 480.0 300.0 5.0"
$ns at 10.0 "$n(3) setdest 250.0 250.0 3.0"
$ns at 10.0 "$n(4) setdest 10.0 10.0 3.0"
$ns at 10.0 "$n(5) setdest 450.0 450.0 3.0"
$ns at 10.0 "$n(8) setdest 440.0 490.0 3.0"
#$ns at 10.0 "$n(9) setdest 400.0 400.0 3.0"
$ns at 10.0 "$n(10) setdest 67.0 100.0 3.0"
$ns at 10.0 "$n(11) setdest 94.0 490.0 3.0"
$ns at 10.0 "$n(12) setdest 63.0 250.0 3.0"
$ns at 10.0 "$n(13) setdest 30.0 390.0 3.0"
$ns at 10.0 "$n(14) setdest 496.0 86.0 3.0"
$ns at 10.0 "$n(16) setdest 490.0 490.0 3.0"
$ns at 10.0 "$n(17) setdest 300.0 50.0 3.0"
$ns at 10.0 "$n(18) setdest 30.0 400.0 3.0"
$ns at 10.0 "$n(19) setdest 20.0 490.0 3.0"



set tcp [new Agent/TCP/Newreno]
$tcp set class_ 2
$ns attach-agent $n(0) $tcp
set sink [new Agent/TCPSink]
$ns attach-agent $n(1) $sink
$ns connect $tcp $sink

set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 10.0 "$ftp start"
$ns at 140.0 "$ftp stop"

$ns at 10.0 "$n(0) label source"
$ns at 10.0 "$n(1) label destination"
$n(0) color Blue
$ns at 10.0 "$n(0) color Blue"
$n(1) color Green
$ns at 10.0 "$n(1) color Green"

$ns at 80.0 "[$n(7) set ragent_] malicious"
#$ns at 80.0 "$n(7) add-mark n(7) red circle"
$ns at 20.0 "[$n(6) set ragent_] malicious"
#$ns at 20.0 "$n(6) add-mark n(6) red circle"
$ns at 97.0 "[$n(13) set ragent_] malicious"
#$ns at 97.0 "$n(13) add-mark n(3) red circle"
$ns at 80.0 "[$n(2) set ragent_] malicious"
#$ns at 60.0 "$n(2) add-mark n(2) red circle"
$ns at 135.0 "[$n(19) set ragent_] malicious"
$ns at 95.0 "[$n(3) set ragent_] malicious"


#proc plotWindow {tcpSource file} {
#global ns
#set time 0.01
#set now [$ns now]
#set cwnd [$tcpSource set cwnd_]
#puts $file "$now $cwnd"
#$ns at [expr $now+$time] "plotWindow $tcpSource $file"
#}
#$ns at 1.1 "plotWindow $tcp $WindowVsTime"


for {set i 0} {$i < $val(nn)} {incr i} {
$ns initial_node_pos $n($i) 30
}


for {set i 0} {$i < $val(nn)} {incr i} {
$ns at $val(stop) "$n($i) reset"
}
$ns at val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at 150.01 "puts \" End Simulation \" ; $ns halt"

proc stop {} {
global ns tracefd namtrace
$ns flush-trace
close $tracefd
close $namtrace
}

$ns run
