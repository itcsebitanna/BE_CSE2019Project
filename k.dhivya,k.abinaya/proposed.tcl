# ====================================================================

# Define Node Configuration parameters

#=====================================================================

set val(chan)           Channel/WirelessChannel    ;# Channel Type
set val(prop)           Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)          Phy/WirelessPhy            ;# network interface type
set val(mac)            Mac/802_11                 ;# MAC type
set val(ifq)            CMUPriQueue    		   ;# interface queue type
set val(ll)             LL                         ;# link layer type
set val(ant)            Antenna/OmniAntenna        ;# antenna model
set val(ifqlen)         300                        ;# max packet in ifq
set val(nn)             50                         ;# number of mobilenodes
set val(rp)          	DSR                        ;# routing protocol
set val(x)		1670			   ;# X axis distance	
set val(y)		970			   ;# Y axis distance
set opt(energymodel)    EnergyModel                ;# Initial Energy
set opt(initialenergy)  100                        ;# Initial energy in Joules


# Creating Simulator Object
set ns_ [new Simulator]

# Creating NAM File
set namTracefile [open Nam.nam w]
$ns_ namtrace-all-wireless $namTracefile $val(x) $val(y)

# Creating Multiple Trace
set traceFile [open Trace.tr w]
$ns_ trace-all $traceFile
$ns_ use-newtrace

# Creating Topology
set topo [new Topography]
$topo load_flatgrid $val(x) $val(y)

# Creating GOD(General Operation Director) Object
create-god $val(nn)

Phy/WirelessPhy set Pt_ 0.62

# Configuring the Nodes in the Topology
$ns_ node-config -adhocRouting $val(rp) \
		-llType $val(ll) \
		-macType $val(mac) \
		-ifqType $val(ifq) \
		-ifqLen $val(ifqlen) \
		-antType $val(ant) \
		-propType $val(prop) \
		-phyType $val(netif) \
		-topoInstance $topo \
		-agentTrace ON \
		-routerTrace ON \
		-macTrace ON \
		-movementTrace ON \
		-idlePower 0.05 \
		-rxPower 1.7 \
		-txPower 1.35 \
          	-sleepPower 0.001 \
          	-transitionTime 0.003 \
          	-channelType $val(chan) \
		-initialEnergy $opt(initialenergy) \
		-energyModel $opt(energymodel) 	\



# Node Creation
for { set i 0 } { $i < $val(nn)} { incr i } {
set node_($i) [$ns_ node]
$node_($i) random-motion 0
$node_($i) set X_ 32
$node_($i) set Y_ 458
$node_($i) set Z_ 0.0
$node_($i) color black
$ns_ initial_node_pos $node_($i) 45
}


for { set i 0 } { $i < $val(nn)} { incr i } {
$ns_ at 0.0 "$node_($i) color black"
$ns_ at 0.0 "$node_($i) label-color maroon"
}


# Assigning node positions
$ns_ at 0.0 "$node_(0) setdest 225.770 567.415 4000"
$ns_ at 0.0 "$node_(1) setdest 244.963 777.108 4000"
$ns_ at 0.0 "$node_(2) setdest 406.647 832.137 4000"
$ns_ at 0.0 "$node_(3) setdest 530.831 719.206 4000"
$ns_ at 0.0 "$node_(4) setdest 649.352 830.773 4000"
$ns_ at 0.0 "$node_(5) setdest 385.442 674.683 4000"
$ns_ at 0.0 "$node_(6) setdest 334.040 502.696 4000"
$ns_ at 0.0 "$node_(7) setdest 514.330 518.725 4000"
$ns_ at 0.0 "$node_(8) setdest 667.280 610.471 4000"
$ns_ at 0.0 "$node_(9) setdest 803.674 762.711 4000"

$ns_ at 0.0 "$node_(10) setdest 971.683 678.476 4000"
$ns_ at 0.0 "$node_(11) setdest 929.517 854.631 4000"
$ns_ at 0.0 "$node_(12) setdest 829.429 566.669 4000"
$ns_ at 0.0 "$node_(13) setdest 657.973 439.638 4000"
$ns_ at 0.0 "$node_(14) setdest 439.037 374.831 4000"
$ns_ at 0.0 "$node_(15) setdest 585.519 288.542 4000"
$ns_ at 0.0 "$node_(16) setdest 231.960 358.172 4000"
$ns_ at 0.0 "$node_(17) setdest 212.719 166.947 4000"
$ns_ at 0.0 "$node_(18) setdest 284.683 016.476 4000"
$ns_ at 0.0 "$node_(19) setdest 368.587 195.577 4000"

$ns_ at 0.0 "$node_(20) setdest 437.429 013.669 4000"
$ns_ at 0.0 "$node_(21) setdest 493.069 155.696 4000"
$ns_ at 0.0 "$node_(22) setdest 678.806 166.085 4000"
$ns_ at 0.0 "$node_(23) setdest 620.357 018.526 4000"
$ns_ at 0.0 "$node_(24) setdest 802.799 338.616 4000"
$ns_ at 0.0 "$node_(25) setdest 945.119 478.574 4000"
$ns_ at 0.0 "$node_(26) setdest 1097.673 636.153 4000"
$ns_ at 0.0 "$node_(27) setdest 1097.357 826.526 4000"
$ns_ at 0.0 "$node_(28) setdest 1238.119 732.57 4000"
$ns_ at 0.0 "$node_(29) setdest 1228.719 544.47 4000"

$ns_ at 0.0 "$node_(30) setdest 1104.407 422.378 4000"
$ns_ at 0.0 "$node_(31) setdest 1259.960 362.170 4000"
$ns_ at 0.0 "$node_(32) setdest 962.9600 297.579 4000"
$ns_ at 0.0 "$node_(33) setdest 1133.224 229.423 4000"
$ns_ at 0.0 "$node_(34) setdest 995.3630 164.431 4000"
$ns_ at 0.0 "$node_(35) setdest 786.673 011.153 4000"
$ns_ at 0.0 "$node_(36) setdest 842.950 171.693 4000"
$ns_ at 0.0 "$node_(37) setdest 961.407 011.378 4000"
$ns_ at 0.0 "$node_(38) setdest 1138.224 024.423 4000"
$ns_ at 0.0 "$node_(39) setdest 1267.330 136.72 4000"

$ns_ at 0.0 "$node_(40) setdest 1366.407 277.378 4000"
$ns_ at 0.0 "$node_(41) setdest 1384.960 465.170 4000"
$ns_ at 0.0 "$node_(42) setdest 1371.960 647.579 4000"
$ns_ at 0.0 "$node_(43) setdest 1503.224 690.423 4000"
$ns_ at 0.0 "$node_(44) setdest 1369.363 811.431 4000"
$ns_ at 0.0 "$node_(45) setdest 1498.673 521.153 4000"
$ns_ at 0.0 "$node_(46) setdest 1498.950 301.693 4000"
$ns_ at 0.0 "$node_(47) setdest 1485.407 116.378 4000"
$ns_ at 0.0 "$node_(48) setdest 1361.224 005.423 4000"
$ns_ at 0.0 "$node_(49) setdest 1253.224 031.423 4000"


# For mobility
proc mobility {tm} {
global ns_ node_
$ns_ at $tm "$node_(0) setdest [expr rand()*70+225.770] [expr rand()*70+567.415] [expr int(rand()*8)]"
$ns_ at $tm "$node_(1) setdest [expr rand()*70+244.963] [expr rand()*70+777.108] [expr int(rand()*8)]"
$ns_ at $tm "$node_(2) setdest [expr rand()*70+406.647] [expr rand()*70+832.137] [expr int(rand()*8)]"
$ns_ at $tm "$node_(3) setdest [expr rand()*70+530.831] [expr rand()*70+719.206] [expr int(rand()*8)]"
$ns_ at $tm "$node_(4) setdest [expr rand()*70+649.352] [expr rand()*70+830.773] [expr int(rand()*8)]"
$ns_ at $tm "$node_(5) setdest [expr rand()*70+385.442] [expr rand()*70+674.683] [expr int(rand()*8)]"
$ns_ at $tm "$node_(6) setdest [expr rand()*70+334.040] [expr rand()*70+502.696] [expr int(rand()*8)]"
$ns_ at $tm "$node_(7) setdest [expr rand()*70+514.330] [expr rand()*70+518.725] [expr int(rand()*8)]"
$ns_ at $tm "$node_(8) setdest [expr rand()*70+667.280] [expr rand()*70+610.471] [expr int(rand()*8)]"
$ns_ at $tm "$node_(9) setdest [expr rand()*70+803.674] [expr rand()*70+762.711] [expr int(rand()*8)]"

$ns_ at $tm "$node_(10) setdest [expr rand()*70+971.683] [expr rand()*70+678.476] [expr int(rand()*8)]"
$ns_ at $tm "$node_(11) setdest [expr rand()*70+929.517] [expr rand()*70+854.631] [expr int(rand()*8)]"
$ns_ at $tm "$node_(12) setdest [expr rand()*70+829.429] [expr rand()*70+566.669] [expr int(rand()*8)]"
$ns_ at $tm "$node_(13) setdest [expr rand()*70+657.973] [expr rand()*70+439.638] [expr int(rand()*8)]"
$ns_ at $tm "$node_(14) setdest [expr rand()*70+439.037] [expr rand()*70+374.831] [expr int(rand()*8)]"
$ns_ at $tm "$node_(15) setdest [expr rand()*70+585.519] [expr rand()*70+288.542] [expr int(rand()*8)]"
$ns_ at $tm "$node_(16) setdest [expr rand()*70+231.960] [expr rand()*70+358.172] [expr int(rand()*8)]"
$ns_ at $tm "$node_(17) setdest [expr rand()*70+212.719] [expr rand()*70+166.947] [expr int(rand()*8)]"
$ns_ at $tm "$node_(18) setdest [expr rand()*70+284.683] [expr rand()*70+016.476] [expr int(rand()*8)]"
$ns_ at $tm "$node_(19) setdest [expr rand()*70+368.587] [expr rand()*70+195.577] [expr int(rand()*8)]"

$ns_ at $tm "$node_(20) setdest [expr rand()*70+437.429] [expr rand()*70+013.669] [expr int(rand()*8)]"
$ns_ at $tm "$node_(21) setdest [expr rand()*70+493.069] [expr rand()*70+155.696] [expr int(rand()*8)]"
$ns_ at $tm "$node_(22) setdest [expr rand()*70+678.806] [expr rand()*70+166.085] [expr int(rand()*8)]"
$ns_ at $tm "$node_(23) setdest [expr rand()*70+620.357] [expr rand()*70+018.526] [expr int(rand()*8)]"
$ns_ at $tm "$node_(24) setdest [expr rand()*70+802.799] [expr rand()*70+338.616] [expr int(rand()*8)]"
$ns_ at $tm "$node_(25) setdest [expr rand()*70+945.119] [expr rand()*70+478.574] [expr int(rand()*8)]"
$ns_ at $tm "$node_(26) setdest [expr rand()*70+1097.673] [expr rand()*70+636.153] [expr int(rand()*8)]"
$ns_ at $tm "$node_(27) setdest [expr rand()*70+1097.357] [expr rand()*70+826.526] [expr int(rand()*8)]"
$ns_ at $tm "$node_(28) setdest [expr rand()*70+1238.119] [expr rand()*70+732.57] [expr int(rand()*8)]"
$ns_ at $tm "$node_(29) setdest [expr rand()*70+1228.719] [expr rand()*70+544.47] [expr int(rand()*8)]"

$ns_ at $tm "$node_(30) setdest [expr rand()*70+1104.407] [expr rand()*70+422.378] [expr int(rand()*8)]"
$ns_ at $tm "$node_(31) setdest [expr rand()*70+1259.960] [expr rand()*70+362.170] [expr int(rand()*8)]"
$ns_ at $tm "$node_(32) setdest [expr rand()*70+962.9600] [expr rand()*70+297.579] [expr int(rand()*8)]"
$ns_ at $tm "$node_(33) setdest [expr rand()*70+1133.224] [expr rand()*70+229.423] [expr int(rand()*8)]"
$ns_ at $tm "$node_(34) setdest [expr rand()*70+995.3630] [expr rand()*70+164.431] [expr int(rand()*8)]"
$ns_ at $tm "$node_(35) setdest [expr rand()*70+786.673] [expr rand()*70+011.153] [expr int(rand()*8)]"
$ns_ at $tm "$node_(36) setdest [expr rand()*70+842.950] [expr rand()*70+171.693] [expr int(rand()*8)]"
$ns_ at $tm "$node_(37) setdest [expr rand()*70+961.407] [expr rand()*70+011.378] [expr int(rand()*8)]"
$ns_ at $tm "$node_(38) setdest [expr rand()*70+1138.224] [expr rand()*70+024.423] [expr int(rand()*8)]"
$ns_ at $tm "$node_(39) setdest [expr rand()*70+1267.330] [expr rand()*70+136.72] [expr int(rand()*8)]"

$ns_ at $tm "$node_(40) setdest [expr rand()*70+1366.407] [expr rand()*70+277.378] [expr int(rand()*8)]"
$ns_ at $tm "$node_(41) setdest [expr rand()*70+1384.960] [expr rand()*70+465.170] [expr int(rand()*8)]"
$ns_ at $tm "$node_(42) setdest [expr rand()*70+1371.960] [expr rand()*70+647.579] [expr int(rand()*8)]"
$ns_ at $tm "$node_(43) setdest [expr rand()*70+1503.224] [expr rand()*70+690.423] [expr int(rand()*8)]"
$ns_ at $tm "$node_(44) setdest [expr rand()*70+1369.363] [expr rand()*70+811.431] [expr int(rand()*8)]"
$ns_ at $tm "$node_(45) setdest [expr rand()*70+1498.673] [expr rand()*70+521.153] [expr int(rand()*8)]"
$ns_ at $tm "$node_(46) setdest [expr rand()*70+1498.950] [expr rand()*70+301.693] [expr int(rand()*8)]"
$ns_ at $tm "$node_(47) setdest [expr rand()*70+1485.407] [expr rand()*70+116.378] [expr int(rand()*8)]"
$ns_ at $tm "$node_(48) setdest [expr rand()*70+1361.224] [expr rand()*70+005.423] [expr int(rand()*8)]"
$ns_ at $tm "$node_(49) setdest [expr rand()*70+1253.224] [expr rand()*70+031.423] [expr int(rand()*8)]"
}


for {set i 1.1} {$i<50} {set i [expr $i+7]} {
$ns_ at $i "mobility $i"
}


for {set i 0} {$i<$val(nn)} {incr i} {
set sink($i) [new Agent/LossMonitor]
$ns_ attach-agent $node_($i) $sink($i)
}


proc attach-CBR-traffic {node sink size itval} {
   #Get an instance of the simulator
   set ns_ [Simulator instance]
   set udp [new Agent/UDP]
   $ns_ attach-agent $node $udp
   #Create a CBR  agent and attach it to the node
   set cbr [new Application/Traffic/CBR]
   $cbr attach-agent $udp
   $cbr set packetSize_ $size	;#sub packet size
   $cbr set interval_ $itval
   #Attach CBR source to sink;
   $ns_ connect $udp $sink
   return $cbr
  }


set cbr001 [attach-CBR-traffic $node_(0) $sink(1) 256 0.082]
$ns_ at 1.0 "$cbr001 start"
$ns_ at 1.001 "$cbr001 stop"



#~~~~~~~~~~~~~~~~ Calculation of neighbor node ~~~~~~~~~~~~~~~~~~~
proc distance { n1 n2 nd1 nd2} {
set nbr [open Neighbor a]
set x1 [expr int([$n1 set X_])]
set y1 [expr int([$n1 set Y_])]
set x2 [expr int([$n2 set X_])]
set y2 [expr int([$n2 set Y_])]
set d [expr int(sqrt(pow(($x2-$x1),2)+pow(($y2-$y1),2)))]
if {$d<270} {
if {$nd2!=$nd1} {
puts $nbr "\t$nd1\t\t$nd2\t\t\t$x1\t\t$y1\t\t$d"
}
}
close $nbr
}


set nbr [open Neighbor w]
puts $nbr "\t\t\t\t\tNeighbor Detail"
puts $nbr "\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts $nbr "\tSource\tNeighbor\tSX-Pos\t\tSY-Pos\t\tDistance(d)"
puts $nbr "\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
close $nbr


for {set i 0} {$i <$val(nn)} {incr i} {
for {set j 0} {$j <$val(nn)} {incr j} {
$ns_ at 1.5 "distance $node_($i) $node_($j) $i $j" 
}
}

set ids(0) 5
set ids(1) 9
set ids(2) 28
set ids(3) 14
set ids(4) 25
set ids(5) 41
set ids(6) 19
set ids(7) 36
set ids(8) 39

set fl [open IDSnode w]
for {set i 0} {$i<9} {incr i} {
$ns_ at 6.5 "$node_($ids($i)) label IDS"
puts $fl $ids($i)
}
close $fl


# Generation of master key
set ac [open KeyServer.txt w]
puts $ac "\n  --------------------------------------------------------------------------------------"
puts $ac "    Public-key(gpk)\tNode-Id\t\tID-basedKey-H(ID)\tPrivateSigningKey(gsk)"
puts $ac "  ----------------------------------------------------------------------------------------\n"
close $ac

set f 1
while {$f} {
set mk [expr int(rand()*50)]
if {$mk>20} {
set f 0
}
}

set a(0) 10
set a(1) 11
set a(2) 100
set a(3) 101
set a(4) 110
set a(5) 111

set n [expr int(rand()*6)]

for {set i 0} {$i<[expr $val(nn)]} {incr i} {
set sk($i) [expr $mk*$a($n)$i]
set ac [open KeyServer.txt a]
puts $ac "\t$mk\t\t$i\t\t\t$a($n)$i[expr int(rand()*10)]\t\t$sk($i)"
close $ac
}


proc broadcast {stnd ednd tm itval src} {
global ns_ node_ sink
set btp [open btmp w]
puts $btp "$stnd $ednd $tm $itval $src"
close $btp
exec awk -f flood.awk btmp Neighbor
source flood.tcl
}

$ns_ at 1.5 "$node_(0) label KeyServer"
$ns_ at 4.5 "$node_(0) label ."


$ns_ at 19.3 "$node_(0) label KeyServer"
$ns_ at 20.3 "$node_(0) label ."


$ns_ at 2.0 "broadcast 0 [expr $val(nn)-1] 2.0 0.1 0"



# For sending hello packets
proc hello { stnd endnd tm intrvl } {
global ns_ node_ sink val a n

set fl [open RNumber w]
for {set j 0} {$j<[expr $val(nn)]} {incr j} {
set f 1

while {$f} {
set f 0
set r($j) [expr int(rand()*100)] 
for {set l 0} {$l<$j} {incr l} {
if {$r($l)==$r($j) && $r($j)==0} {
set f 1
break
}
set f 0
}
}
puts $fl "\t$j\t$r($j)"
}
close $fl

set nei [open ntemp w]
puts $nei "$stnd $endnd $tm $intrvl $a($n)"
close $nei
exec awk -f key.awk ntemp Neighbor RNumber KeyServer.txt IDSnode
source key.tcl
}


$ns_ at 3.5 "hello 0 49 5.0 0.1"
$ns_ at 17.5 "hello 0 49 19.3 0.1"

# For IDS node Advertisement
proc bcast {stnd ednd stme itval src flg flg1} {
global ns_ node_ sink
set btp [open btemp w]
puts $btp "$stnd $ednd $stme $itval $src $flg $flg1"
close $btp
exec awk -f idsbcast.awk btemp IDS_Table Neighbor
source bcast.tcl
}

set tm 10.5
for {set i 0} {$i<9} {incr i} {
$ns_ at $tm "bcast 0 49 $tm 0.1 $ids($i) -1 -1"
set tm [expr $tm+0.5]
}


#------------For Unobervable Routing--------------------
# For Input
set flg 1
while {$flg} {
puts "Enter Source Node(0 to [expr $val(nn)-1])"
set src [gets stdin]
if {$src>=0 && $src<=[expr $val(nn)-1]} {
set flg 0
} else {
puts "Re-enter Input..."
}
}
set flg 1
while {$flg} {
puts "Enter Destination Node(0 to [expr $val(nn)-1])"
set dst [gets stdin]
if {$dst>=0 && $dst<=[expr $val(nn)-1] && $dst!=$src} {
set flg 0
} else {
puts "Re-enter Input..."
}
}



# For Routing against dos attack
set op 0
set att [open Attacker w]
puts $att "-1"
close $att
set df [open dflag w]
puts $df "-1"
close $df
set cnt 1

# Load calculation
proc loadcal {f} {
global sink
set lf [open Load w]
close $lf
set lf [open Load a]
set fl [open "path$f" r]
while {! [eof $fl]} {
set sk [gets $fl]
if {$sk!=""} {
set byt($sk) [$sink($sk) set bytes_]
puts $lf "$sk $byt($sk)"
}
}
puts $lf ""
close $lf
exec awk -f Adetect.awk IDS_Table Load 
}


proc Routing {stnd ednd tm itval itvl src dst clr f} {
global node_ sink ns_ a n op val cnt
$ns_ at $tm "$node_($src) label Source"
$ns_ at $tm "$node_($dst) label Destination"
$ns_ at $tm "$node_($src) color black"
$ns_ at $tm "$node_($dst) color black"
$ns_ at $tm "$node_($src) add-mark C4 red hexagon"
$ns_ at $tm "$node_($dst) add-mark C4 red hexagon"

if {$cnt==1} {
set btp [open btemp w]
puts $btp "$stnd $ednd $tm $itval $src $dst $a($n)"
close $btp
exec awk -f rreq.awk btemp Neighbor KeyDetails
source bcast.tcl
set tmp [open Time r]
set tm [gets $tmp]
close $tmp
}

if {$op==0} {
set flg orange
} else {
set flg purple
}

set ntp [open rtemp w]
puts $ntp "$src $dst $tm $itval $itvl $clr $flg $f"
close $ntp
exec awk -f route1.awk rtemp Attacker dflag IDSnode Route-Pseudonym Neighbor 
source route.tcl
set fle [open dflag r]
set fval [gets $fle]
if {$fval==-1} {
loadcal $f
}
if {$cnt<=8} {
set tm [expr $tm+1]
$ns_ at $tm "Routing $stnd $ednd $tm $itval $itvl $src $dst $clr $f"
set cnt [expr $cnt+1]
}
}


$ns_ at 16.0 "Routing 0 [expr $val(nn)-1] 16.0 0.1 1.0 $src $dst orange 1"



#~~~~~~~~~~~~~~~~~~~~~~~For Graph~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set pr1 [open M-PDR.xg w]
puts $pr1 "Markers: true"
puts $pr1 "BoundBox: true"
puts $pr1 "Background: grey"
puts $pr1 "NoLines: false"
puts $pr1 "LabelFont: Monospace"
puts $pr1 "TitleFont: Monospace"
puts $pr1 "0 0"
set tp1 [open M-Throughput.xg w]
puts $tp1 "Markers: true"
puts $tp1 "BoundBox: true"
puts $tp1 "Background: grey"
puts $tp1 "NoLines: false"
puts $tp1 "LabelFont: Monospace"
puts $tp1 "TitleFont: Monospace"
puts $tp1 "0 0"
set dp1 [open M-Drop.xg w]
puts $dp1 "Markers: true"
puts $dp1 "BoundBox: true"
puts $dp1 "Background: grey"
puts $dp1 "LabelFont: Monospace"
puts $dp1 "TitleFont: Monospace"
puts $dp1 "NoLines: false"
puts $dp1 "0 0"


proc record {sink} {
global ns_ dp1 tp1 pr1 
set tm [$ns_ now]

set rec1 [$sink set npkts_]
set lst1 [$sink set nlost_]
set byt1 [$sink set bytes_]

if {$rec1!=0} {
set pdr1 [expr ($rec1+0.0)/($rec1+$lst1)]
puts $pr1 "$tm $pdr1"
}

set tput1 [expr ($byt1*8.0)/(5.0*1000)]
puts $tp1 "$tm $tput1"

puts $dp1 "$tm $lst1"

$ns_ at [expr $tm+3.0] "record $sink"

$sink set nlost_ 0
}


$ns_ at 3.0 "record $sink($dst)"


# For Delay calculation
set pdely [open Delay.xg w]
puts $pdely "Markers: true"
puts $pdely "BoundBox: true"
puts $pdely "Background: grey"
puts $pdely "Device: Postscript"
puts $pdely "LabelFont: Monospace"
puts $pdely "TitleFont: Monospace"
puts $pdely "NoLines: false"
puts $pdely "0 0"
close $pdely


proc dly {tm} {
global ns_ src
set i 0
set fl [open path r]
while {![eof $fl]} {
set a($i) [gets $fl]
set i [expr $i+1]
}
set dst $a(1)
$ns_ at 28.0 "delay 0.0 3.0 $src $dst"
}


proc delay { start end send rec} {
global ns_ src
set tm $start
set t [open tdly.tr w]
puts $t "$start $end $send $rec"
close $t
exec awk -f delay.awk tdly.tr Trace.tr
set pdely [open Delay.xg a]
set dly [open tmp$src r]
set value [gets $dly]
puts $pdely "$value"
close $pdely
set tm [expr $tm+3]
if {$tm <30} {
delay $tm [expr $tm+3] $send $rec
}
}

$ns_ at 28.0 "dly 30.0"


# Finish Procedure
proc finish {} {
	global ns_ namTracefile tp1 dp1 pr1
	close $tp1
	close $dp1
	close $pr1
	$ns_ flush-trace
	close $namTracefile
	exec awk -f pdr.awk Trace.tr
	exec xgraph M-Drop.xg -t "Packet Drop" -x "Time" -y "No. of Drops" &
	exec xgraph M-PDR.xg -t "Packet delivary Ratio" -ly 0,1 -x "Time" -y "PDR" &
	exec xgraph M-Throughput.xg -t "Throughput" -x "Time" -y "Kb/s" &

	exec xgraph M-Drop.xg Attack-Drop.xg -t "Packet Drop" -x "Time" -y "No. of Drops" &
	exec xgraph M-PDR.xg Attack-PDR.xg -t "Packet delivary Ratio" -ly 0,1 -x "Time" -y "PDR" &
	exec xgraph M-Throughput.xg Attack-Throughput.xg -t "Throughput" -x "Time" -y "Kb/s" &

	exec nam Nam.nam &
	exit 0
	}
	

# Calling Finish Procedure
$ns_ at 30.0 "finish"


puts "Start of simulation..."


# Executing the Pgm
$ns_ run





