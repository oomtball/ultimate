type ref;
type realVar;
type classConst;
// type Field x;
// var $HeapVar : <x>[ref, Field x]x;

const unique $null : ref ;
const unique $intArrNull : [int]int ;
const unique $realArrNull : [int]realVar ;
const unique $refArrNull : [int]ref ;

const unique $arrSizeIdx : int;
var $intArrSize : [int]int;
var $realArrSize : [realVar]int;
var $refArrSize : [ref]int;

var $stringSize : [ref]int;

//built-in axioms 
axiom ($arrSizeIdx == -1);

//note: new version doesn't put helpers in the perlude anymore//Prelude finished 



var Partition$PartitionList$first256 : Field ref;
var int$IntList$first0 : Field int;
var IntList$IntList$next254 : Field ref;
var Partition$Partition$next255 : Field ref;
var int$Partition$first0 : Field int;
var PartitionList$PartitionList$next257 : Field ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 220
// <IntList: IntList getNext()>
procedure IntList$IntList$getNext$2230(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r06 : ref;
var $r17 : ref;
Block18:
	r06 := __this;
	 assert ($neref((r06), ($null))==1);
	 //  @line: 221
	$r17 := $HeapVar[r06, IntList$IntList$next254];
	 //  @line: 221
	__ret := $r17;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 64
// <PartitionList: PartitionList sublistOddDistinctParts()>
procedure PartitionList$PartitionList$sublistOddDistinctParts$2242(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r2113 : ref;
var $r6118 : ref;
var r0108 : ref;
var $r5117 : ref;
var z0111 : int;
var $r3114 : ref;
var r8121 : ref;
var $r4116 : ref;
var $r1109 : ref;
var r9122 : ref;
var $r7119 : ref;
Block132:
	r0108 := __this;
	 assert ($neref((r0108), ($null))==1);
	 //  @line: 65
	$r1109 := $HeapVar[r0108, Partition$PartitionList$first256];
	 assert ($neref(($r1109), ($null))==1);
	 //  @line: 65
	 call z0111 := boolean$Partition$oddDistinctParts$2234(($r1109));
	 goto Block133;
	 //  @line: 66
Block133:
	 goto Block134, Block136;
	 //  @line: 66
Block134:
	 assume ($eqint((z0111), (0))==1);
	 goto Block135;
	 //  @line: 66
Block136:
	 //  @line: 66
	 assume ($negInt(($eqint((z0111), (0))))==1);
	 //  @line: 67
	r8121 := $null;
	 assert ($neref((r0108), ($null))==1);
	 //  @line: 68
	$r4116 := $HeapVar[r0108, PartitionList$PartitionList$next257];
	 goto Block137;
	 //  @line: 72
Block135:
	 //  @line: 72
	r9122 := $null;
	 goto Block142;
	 //  @line: 68
Block137:
	 goto Block138, Block140;
	 //  @line: 73
Block142:
	 assert ($neref((r0108), ($null))==1);
	 //  @line: 73
	$r2113 := $HeapVar[r0108, PartitionList$PartitionList$next257];
	 goto Block143;
	 //  @line: 68
Block138:
	 assume ($eqref(($r4116), ($null))==1);
	 goto Block139;
	 //  @line: 68
Block140:
	 //  @line: 68
	 assume ($negInt(($eqref(($r4116), ($null))))==1);
	 assert ($neref((r0108), ($null))==1);
	 //  @line: 69
	$r7119 := $HeapVar[r0108, PartitionList$PartitionList$next257];
	 assert ($neref(($r7119), ($null))==1);
	 //  @line: 69
	 call r8121 := PartitionList$PartitionList$sublistOddDistinctParts$2242(($r7119));
	 goto Block139;
	 //  @line: 73
Block143:
	 goto Block146, Block144;
	 //  @line: 69
Block139:
	 //  @line: 69
	$r5117 := $newvariable((141));
	 assume ($neref(($newvariable((141))), ($null))==1);
	 assert ($neref((r0108), ($null))==1);
	 //  @line: 69
	$r6118 := $HeapVar[r0108, Partition$PartitionList$first256];
	 assert ($neref(($r5117), ($null))==1);
	 //  @line: 69
	 call void$PartitionList$$la$init$ra$$2236(($r5117), ($r6118), (r8121));
	 //  @line: 69
	__ret := $r5117;
	 return;
	 //  @line: 73
Block146:
	 //  @line: 73
	 assume ($negInt(($eqref(($r2113), ($null))))==1);
	 assert ($neref((r0108), ($null))==1);
	 //  @line: 74
	$r3114 := $HeapVar[r0108, PartitionList$PartitionList$next257];
	 assert ($neref(($r3114), ($null))==1);
	 //  @line: 74
	 call r9122 := PartitionList$PartitionList$sublistOddDistinctParts$2242(($r3114));
	 goto Block145;
	 //  @line: 73
Block144:
	 assume ($eqref(($r2113), ($null))==1);
	 goto Block145;
	 //  @line: 74
Block145:
	 //  @line: 74
	__ret := r9122;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 163
// <Partition: int number_greater(int)>
procedure int$Partition$number_greater$2232(__this : ref, $param_0 : int) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $i114 : int;
var i318 : int;
var i013 : int;
var $r216 : ref;
var $i217 : int;
var r012 : ref;
var $r115 : ref;
Block20:
	r012 := __this;
	i013 := $param_0;
	 //  @line: 164
	i318 := 0;
	 assert ($neref((r012), ($null))==1);
	 //  @line: 165
	$i114 := $HeapVar[r012, int$Partition$first0];
	 goto Block21;
	 //  @line: 165
Block21:
	 goto Block22, Block24;
	 //  @line: 165
Block22:
	 assume ($ltint(($i114), (i013))==1);
	 goto Block23;
	 //  @line: 165
Block24:
	 //  @line: 165
	 assume ($negInt(($ltint(($i114), (i013))))==1);
	 //  @line: 167
	i318 := $addint((i318), (1));
	 goto Block23;
	 //  @line: 166
Block23:
	 assert ($neref((r012), ($null))==1);
	 //  @line: 166
	$r115 := $HeapVar[r012, Partition$Partition$next255];
	 goto Block25;
	 //  @line: 166
Block25:
	 goto Block28, Block26;
	 //  @line: 166
Block28:
	 //  @line: 166
	 assume ($negInt(($eqref(($r115), ($null))))==1);
	 assert ($neref((r012), ($null))==1);
	 //  @line: 167
	$r216 := $HeapVar[r012, Partition$Partition$next255];
	 assert ($neref(($r216), ($null))==1);
	 //  @line: 167
	 call $i217 := int$Partition$number_greater$2232(($r216), (i013));
	 //  @line: 167
	i318 := $addint((i318), ($i217));
	 goto Block27;
	 //  @line: 166
Block26:
	 assume ($eqref(($r115), ($null))==1);
	 goto Block27;
	 //  @line: 167
Block27:
	 //  @line: 167
	__ret := i318;
	 return;
}


	 //  @line: 178
// <Partition: boolean oddDistinctParts()>
procedure boolean$Partition$oddDistinctParts$2234(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r230 : ref;
var $i128 : int;
var $z034 : int;
var $z136 : int;
var r026 : ref;
var $r129 : ref;
var $i332 : int;
var $i231 : int;
var $r333 : ref;
var $i027 : int;
Block35:
	r026 := __this;
	 assert ($neref((r026), ($null))==1);
	 //  @line: 179
	$i027 := $HeapVar[r026, int$Partition$first0];
	 //  @line: 179
	$i128 := $modint(($i027), (2));
	 goto Block36;
	 //  @line: 179
Block36:
	 goto Block39, Block37;
	 //  @line: 179
Block39:
	 //  @line: 179
	 assume ($negInt(($neint(($i128), (0))))==1);
	 //  @line: 181
	__ret := 0;
	 return;
	 //  @line: 179
Block37:
	 assume ($neint(($i128), (0))==1);
	 goto Block38;
	 //  @line: 180
Block38:
	 assert ($neref((r026), ($null))==1);
	 //  @line: 180
	$r129 := $HeapVar[r026, Partition$Partition$next255];
	 goto Block40;
	 //  @line: 180
Block40:
	 goto Block43, Block41;
	 //  @line: 180
Block43:
	 //  @line: 180
	 assume ($negInt(($neref(($r129), ($null))))==1);
	 //  @line: 181
	__ret := 1;
	 return;
	 //  @line: 180
Block41:
	 assume ($neref(($r129), ($null))==1);
	 goto Block42;
	 //  @line: 181
Block42:
	 assert ($neref((r026), ($null))==1);
	 //  @line: 181
	$i332 := $HeapVar[r026, int$Partition$first0];
	 goto Block44;
	 //  @line: 181
Block44:
	 assert ($neref((r026), ($null))==1);
	 //  @line: 181
	$r230 := $HeapVar[r026, Partition$Partition$next255];
	 assert ($neref(($r230), ($null))==1);
	 //  @line: 181
	$i231 := $HeapVar[$r230, int$Partition$first0];
	 goto Block45;
	 //  @line: 181
Block45:
	 goto Block48, Block46;
	 //  @line: 181
Block48:
	 //  @line: 181
	 assume ($negInt(($eqint(($i332), ($i231))))==1);
	 assert ($neref((r026), ($null))==1);
	 //  @line: 181
	$r333 := $HeapVar[r026, Partition$Partition$next255];
	 assert ($neref(($r333), ($null))==1);
	 //  @line: 181
	 call $z034 := boolean$Partition$oddDistinctParts$2234(($r333));
	 goto Block49;
	 //  @line: 181
Block46:
	 assume ($eqint(($i332), ($i231))==1);
	 goto Block47;
	 //  @line: 181
Block49:
	 goto Block50, Block51;
	 //  @line: 181
Block47:
	 //  @line: 181
	$z136 := 0;
	 goto Block52;
	 //  @line: 181
Block50:
	 assume ($eqint(($z034), (0))==1);
	 goto Block47;
	 //  @line: 181
Block51:
	 //  @line: 181
	 assume ($negInt(($eqint(($z034), (0))))==1);
	 //  @line: 181
	$z136 := 1;
	 goto Block52;
	 //  @line: 181
Block52:
	 //  @line: 181
	__ret := $z136;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ltreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorefarr($param00 : ref) returns (__ret : [int]ref);



// procedure is generated by joogie.
function {:inline true} $gtint(x : int, y : int) returns (__ret : int) {
if (x > y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $reftoint($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $xorreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $cmpreal(x : realVar, y : realVar) returns (__ret : int) {
if ($ltreal((x), (y)) == 1) then 1 else if ($eqreal((x), (y)) == 1) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $addreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $gtreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 170
// <Partition: Partition dual()>
procedure Partition$Partition$dual$2233(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r122 : ref;
var i125 : int;
var r020 : ref;
var $i023 : int;
var r224 : ref;
Block29:
	r020 := __this;
	 //  @line: 171
	r224 := $null;
	 assert ($neref((r020), ($null))==1);
	 //  @line: 172
	i125 := $HeapVar[r020, int$Partition$first0];
	 goto Block30;
	 //  @line: 172
Block30:
	 goto Block33, Block31;
	 //  @line: 172
Block33:
	 //  @line: 172
	 assume ($negInt(($leint((i125), (0))))==1);
	 //  @line: 173
	$r122 := $newvariable((34));
	 assume ($neref(($newvariable((34))), ($null))==1);
	 assert ($neref((r020), ($null))==1);
	 //  @line: 173
	 call $i023 := int$Partition$number_greater$2232((r020), (i125));
	 assert ($neref(($r122), ($null))==1);
	 //  @line: 173
	 call void$Partition$$la$init$ra$$2231(($r122), ($i023), (r224));
	 //  @line: 173
	r224 := $r122;
	 //  @line: 172
	i125 := $addint((i125), (-1));
	 goto Block30;
	 //  @line: 172
Block31:
	 assume ($leint((i125), (0))==1);
	 goto Block32;
	 //  @line: 175
Block32:
	 //  @line: 175
	__ret := r224;
	 return;
}


	 //  @line: 42
// <PartitionList: PartitionList partitionOf(int)>
procedure PartitionList$PartitionList$partitionOf$2240($param_0 : int) returns (__ret : ref) {
var r394 : ref;
var $r192 : ref;
var i091 : int;
var $r293 : ref;
var $r088 : ref;
var i195 : int;
Block114:
	i091 := $param_0;
	 //  @line: 43
	$r088 := $newvariable((115));
	 assume ($neref(($newvariable((115))), ($null))==1);
	 assert ($neref(($r088), ($null))==1);
	 //  @line: 43
	 call void$IntList$$la$init$ra$$2228(($r088), (1), ($null));
	 //  @line: 43
	r394 := $r088;
	 //  @line: 44
	i195 := 2;
	 goto Block116;
	 //  @line: 44
Block116:
	 goto Block119, Block117;
	 //  @line: 44
Block119:
	 //  @line: 44
	 assume ($negInt(($gtint((i195), (i091))))==1);
	 //  @line: 45
	$r293 := $newvariable((120));
	 assume ($neref(($newvariable((120))), ($null))==1);
	 assert ($neref(($r293), ($null))==1);
	 //  @line: 45
	 call void$IntList$$la$init$ra$$2228(($r293), (i195), (r394));
	 //  @line: 45
	r394 := $r293;
	 //  @line: 44
	i195 := $addint((i195), (1));
	 goto Block116;
	 //  @line: 44
Block117:
	 assume ($gtint((i195), (i091))==1);
	 goto Block118;
	 //  @line: 47
Block118:
	 //  @line: 47
	 call $r192 := PartitionList$PartitionList$generation$2239((i091), (r394));
	 goto Block121;
	 //  @line: 47
Block121:
	 //  @line: 47
	__ret := $r192;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $newvariable($param00 : int) returns (__ret : ref);



	 //  @line: 79
// <PartitionList: PartitionList rendreLaMonnaie(int)>
procedure PartitionList$PartitionList$rendreLaMonnaie$2243($param_0 : int) returns (__ret : ref) {
var $r2126 : ref;
var r8133 : ref;
var $r4129 : ref;
var r6131 : ref;
var $r1125 : ref;
var i0128 : int;
var r5130 : ref;
var r7132 : ref;
var $r0123 : ref;
var $r3127 : ref;
Block147:
	i0128 := $param_0;
	 //  @line: 80
	$r0123 := $newvariable((148));
	 assume ($neref(($newvariable((148))), ($null))==1);
	 assert ($neref(($r0123), ($null))==1);
	 //  @line: 80
	 call void$IntList$$la$init$ra$$2228(($r0123), (1), ($null));
	 //  @line: 80
	r5130 := $r0123;
	 //  @line: 81
	$r1125 := $newvariable((149));
	 assume ($neref(($newvariable((149))), ($null))==1);
	 assert ($neref(($r1125), ($null))==1);
	 //  @line: 81
	 call void$IntList$$la$init$ra$$2228(($r1125), (2), (r5130));
	 //  @line: 81
	r6131 := $r1125;
	 //  @line: 82
	$r2126 := $newvariable((150));
	 assume ($neref(($newvariable((150))), ($null))==1);
	 assert ($neref(($r2126), ($null))==1);
	 //  @line: 82
	 call void$IntList$$la$init$ra$$2228(($r2126), (5), (r6131));
	 //  @line: 82
	r7132 := $r2126;
	 //  @line: 83
	$r3127 := $newvariable((151));
	 assume ($neref(($newvariable((151))), ($null))==1);
	 assert ($neref(($r3127), ($null))==1);
	 //  @line: 83
	 call void$IntList$$la$init$ra$$2228(($r3127), (10), (r7132));
	 //  @line: 83
	r8133 := $r3127;
	 //  @line: 84
	 call $r4129 := PartitionList$PartitionList$generation$2239((i0128), (r8133));
	 //  @line: 84
	__ret := $r4129;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $divint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geint(x : int, y : int) returns (__ret : int) {
if (x >= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $mulint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $leint(x : int, y : int) returns (__ret : int) {
if (x <= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $shlref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrefarray($param00 : [int]ref, $param11 : [int]ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftointarr($param00 : ref) returns (__ret : [int]int);



// procedure is generated by joogie.
function {:inline true} $ltref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 212
// <IntList: void <init>(int,IntList)>
procedure void$IntList$$la$init$ra$$2228(__this : ref, $param_0 : int, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
var r13 : ref;
var i02 : int;
Block16:
	r01 := __this;
	i02 := $param_0;
	r13 := $param_1;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 213
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 214
	$HeapVar[r01, int$IntList$first0] := i02;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 215
	$HeapVar[r01, IntList$IntList$next254] := r13;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


	 //  @line: 5
// <PartitionList: void <init>(Partition,PartitionList)>
procedure void$PartitionList$$la$init$ra$$2236(__this : ref, $param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r052 : ref;
var r254 : ref;
var r153 : ref;
Block79:
	r052 := __this;
	r153 := $param_0;
	r254 := $param_1;
	 assert ($neref((r052), ($null))==1);
	 //  @line: 6
	 call void$java.lang.Object$$la$init$ra$$28((r052));
	 assert ($neref((r052), ($null))==1);
	 //  @line: 7
	$HeapVar[r052, Partition$PartitionList$first256] := r153;
	 assert ($neref((r052), ($null))==1);
	 //  @line: 8
	$HeapVar[r052, PartitionList$PartitionList$next257] := r254;
	 return;
}


	 //  @line: 143
// <PartitionList: void main(java.lang.String[])>
procedure void$PartitionList$main$2244($param_0 : [int]ref) {
var r0134 : [int]ref;
var r1137 : ref;
var i0135 : int;

 //temp local variables 
var $freshlocal0 : ref;
var $freshlocal1 : ref;

Block152:
	r0134 := $param_0;
	 //  @line: 144
	i0135 := $refArrSize[r0134[$arrSizeIdx]];
	 //  @line: 145
	 call r1137 := PartitionList$PartitionList$partitionOf$2240((i0135));
	 assert ($neref((r1137), ($null))==1);
	 //  @line: 149
	 call $freshlocal0 := PartitionList$PartitionList$sublistAutoDual$2241((r1137));
	 assert ($neref((r1137), ($null))==1);
	 //  @line: 151
	 call $freshlocal1 := PartitionList$PartitionList$sublistOddDistinctParts$2242((r1137));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 217
// <IntList: int getFirst()>
procedure int$IntList$getFirst$2229(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $i05 : int;
var r04 : ref;
Block17:
	r04 := __this;
	 assert ($neref((r04), ($null))==1);
	 //  @line: 218
	$i05 := $HeapVar[r04, int$IntList$first0];
	 //  @line: 218
	__ret := $i05;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqint(x : int, y : int) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $eqintarray($param00 : [int]int, $param11 : [int]int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negRef($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $lereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $nereal(x : realVar, y : realVar) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 11
// <PartitionList: PartitionList insert(int,PartitionList)>
procedure PartitionList$PartitionList$insert$2237($param_0 : int, $param_1 : ref) returns (__ret : ref) {
var $r561 : ref;
var r055 : ref;
var $r257 : ref;
var i058 : int;
var $r156 : ref;
var $r460 : ref;
var $r359 : ref;
Block80:
	i058 := $param_0;
	r055 := $param_1;
	 goto Block81;
	 //  @line: 12
Block81:
	 goto Block82, Block84;
	 //  @line: 12
Block82:
	 assume ($neref((r055), ($null))==1);
	 goto Block83;
	 //  @line: 12
Block84:
	 //  @line: 12
	 assume ($negInt(($neref((r055), ($null))))==1);
	 //  @line: 13
	__ret := $null;
	 return;
	 //  @line: 15
Block83:
	 //  @line: 15
	$r156 := $newvariable((85));
	 assume ($neref(($newvariable((85))), ($null))==1);
	 goto Block86;
	 //  @line: 15
Block86:
	 //  @line: 15
	$r257 := $newvariable((87));
	 assume ($neref(($newvariable((87))), ($null))==1);
	 assert ($neref((r055), ($null))==1);
	 //  @line: 15
	$r359 := $HeapVar[r055, Partition$PartitionList$first256];
	 assert ($neref(($r257), ($null))==1);
	 //  @line: 15
	 call void$Partition$$la$init$ra$$2231(($r257), (i058), ($r359));
	 assert ($neref((r055), ($null))==1);
	 //  @line: 15
	$r460 := $HeapVar[r055, PartitionList$PartitionList$next257];
	 //  @line: 15
	 call $r561 := PartitionList$PartitionList$insert$2237((i058), ($r460));
	 assert ($neref(($r156), ($null))==1);
	 //  @line: 15
	 call void$PartitionList$$la$init$ra$$2236(($r156), ($r257), ($r561));
	 //  @line: 15
	__ret := $r156;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 18
// <PartitionList: PartitionList union(PartitionList,PartitionList)>
procedure PartitionList$PartitionList$union$2238($param_0 : ref, $param_1 : ref) returns (__ret : ref) {
var r164 : ref;
var r062 : ref;
var $r465 : ref;
var $r363 : ref;
var r268 : ref;
var $r566 : ref;
Block88:
	r062 := $param_0;
	r164 := $param_1;
	 goto Block89;
	 //  @line: 19
Block89:
	 goto Block92, Block90;
	 //  @line: 19
Block92:
	 //  @line: 19
	 assume ($negInt(($neref((r062), ($null))))==1);
	 //  @line: 22
	__ret := r164;
	 return;
	 //  @line: 19
Block90:
	 assume ($neref((r062), ($null))==1);
	 goto Block91;
	 //  @line: 21
Block91:
	 assert ($neref((r062), ($null))==1);
	 //  @line: 21
	$r566 := $HeapVar[r062, PartitionList$PartitionList$next257];
	 goto Block93;
	 //  @line: 21
Block93:
	 //  @line: 21
	$r363 := $newvariable((94));
	 assume ($neref(($newvariable((94))), ($null))==1);
	 assert ($neref((r062), ($null))==1);
	 //  @line: 21
	$r465 := $HeapVar[r062, Partition$PartitionList$first256];
	 assert ($neref(($r363), ($null))==1);
	 //  @line: 21
	 call void$PartitionList$$la$init$ra$$2236(($r363), ($r465), (r164));
	 //  @line: 21
	 call r268 := PartitionList$PartitionList$union$2238(($r566), ($r363));
	 //  @line: 22
	__ret := r268;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $intarrtoref($param00 : [int]int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $subreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shlreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negInt(x : int) returns (__ret : int) {
if (x == 0) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 157
// <Partition: void <init>(int,Partition)>
procedure void$Partition$$la$init$ra$$2231(__this : ref, $param_0 : int, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r110 : ref;
var i09 : int;
var r08 : ref;
Block19:
	r08 := __this;
	i09 := $param_0;
	r110 := $param_1;
	 assert ($neref((r08), ($null))==1);
	 //  @line: 158
	 call void$java.lang.Object$$la$init$ra$$28((r08));
	 assert ($neref((r08), ($null))==1);
	 //  @line: 159
	$HeapVar[r08, int$Partition$first0] := i09;
	 assert ($neref((r08), ($null))==1);
	 //  @line: 160
	$HeapVar[r08, Partition$Partition$next255] := r110;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



	 //  @line: 26
// <PartitionList: PartitionList generation(int,IntList)>
procedure PartitionList$PartitionList$generation$2239($param_0 : int, $param_1 : ref) returns (__ret : ref) {
var r069 : ref;
var $r581 : ref;
var i073 : int;
var $i583 : int;
var r787 : ref;
var $r276 : ref;
var $r480 : ref;
var r178 : ref;
var r686 : ref;
var $i482 : int;
var $i274 : int;
var $r379 : ref;
var i172 : int;
var $i375 : int;
Block95:
	i073 := $param_0;
	r069 := $param_1;
	 goto Block96;
	 //  @line: 27
Block96:
	 goto Block99, Block97;
	 //  @line: 27
Block99:
	 //  @line: 27
	 assume ($negInt(($neref((r069), ($null))))==1);
	 //  @line: 39
	__ret := $null;
	 return;
	 //  @line: 27
Block97:
	 assume ($neref((r069), ($null))==1);
	 goto Block98;
	 //  @line: 29
Block98:
	 //  @line: 29
	r686 := $null;
	 goto Block100;
	 //  @line: 30
Block100:
	 assert ($neref((r069), ($null))==1);
	 //  @line: 30
	 call i172 := int$IntList$getFirst$2229((r069));
	 //  @line: 31
	$i274 := $subint((i073), (i172));
	 goto Block101;
	 //  @line: 31
Block101:
	 goto Block104, Block102;
	 //  @line: 31
Block104:
	 //  @line: 31
	 assume ($negInt(($leint(($i274), (0))))==1);
	 //  @line: 39
	$i482 := $subint((i073), (i172));
	 goto Block105;
	 //  @line: 31
Block102:
	 assume ($leint(($i274), (0))==1);
	 goto Block103;
	 //  @line: 39
Block105:
	 goto Block106, Block107;
	 //  @line: 35
Block103:
	 //  @line: 35
	$i375 := $subint((i073), (i172));
	 goto Block109;
	 //  @line: 39
Block106:
	 assume ($geint(($i482), (i073))==1);
	 goto Block103;
	 //  @line: 39
Block107:
	 //  @line: 39
	 assume ($negInt(($geint(($i482), (i073))))==1);
	 //  @line: 32
	$i583 := $subint((i073), (i172));
	 //  @line: 32
	 call r787 := PartitionList$PartitionList$generation$2239(($i583), (r069));
	 //  @line: 33
	 call r686 := PartitionList$PartitionList$insert$2237((i172), (r787));
	 goto Block108;
	 //  @line: 35
Block109:
	 goto Block110, Block111;
	 //  @line: 38
Block108:
	 assert ($neref((r069), ($null))==1);
	 //  @line: 38
	 call $r276 := IntList$IntList$getNext$2230((r069));
	 //  @line: 38
	 call r178 := PartitionList$PartitionList$generation$2239((i073), ($r276));
	 //  @line: 39
	 call $r379 := PartitionList$PartitionList$union$2238((r686), (r178));
	 //  @line: 39
	__ret := $r379;
	 return;
	 //  @line: 35
Block110:
	 assume ($neint(($i375), (0))==1);
	 goto Block108;
	 //  @line: 35
Block111:
	 //  @line: 35
	 assume ($negInt(($neint(($i375), (0))))==1);
	 //  @line: 36
	$r480 := $newvariable((112));
	 assume ($neref(($newvariable((112))), ($null))==1);
	 //  @line: 36
	$r581 := $newvariable((113));
	 assume ($neref(($newvariable((113))), ($null))==1);
	 assert ($neref(($r581), ($null))==1);
	 //  @line: 36
	 call void$Partition$$la$init$ra$$2231(($r581), (i172), ($null));
	 assert ($neref(($r480), ($null))==1);
	 //  @line: 36
	 call void$PartitionList$$la$init$ra$$2236(($r480), ($r581), ($null));
	 //  @line: 36
	r686 := $r480;
	 goto Block108;
}


// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 184
// <Partition: boolean isEqual(Partition)>
procedure boolean$Partition$isEqual$2235(__this : ref, $param_0 : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $i040 : int;
var $z044 : int;
var $z251 : int;
var $i141 : int;
var $r443 : ref;
var r137 : ref;
var $r239 : ref;
var $r548 : ref;
var $i347 : int;
var $z150 : int;
var $r342 : ref;
var r038 : ref;
var $i246 : int;
Block53:
	r038 := __this;
	r137 := $param_0;
	 goto Block54;
	 //  @line: 185
Block54:
	 goto Block57, Block55;
	 //  @line: 185
Block57:
	 //  @line: 185
	 assume ($negInt(($neref((r137), ($null))))==1);
	 //  @line: 187
	__ret := 0;
	 return;
	 //  @line: 185
Block55:
	 assume ($neref((r137), ($null))==1);
	 goto Block56;
	 //  @line: 186
Block56:
	 assert ($neref((r038), ($null))==1);
	 //  @line: 186
	$r239 := $HeapVar[r038, Partition$Partition$next255];
	 goto Block58;
	 //  @line: 186
Block58:
	 goto Block59, Block61;
	 //  @line: 186
Block59:
	 assume ($neref(($r239), ($null))==1);
	 goto Block60;
	 //  @line: 186
Block61:
	 //  @line: 186
	 assume ($negInt(($neref(($r239), ($null))))==1);
	 assert ($neref((r137), ($null))==1);
	 //  @line: 187
	$i347 := $HeapVar[r137, int$Partition$first0];
	 assert ($neref((r038), ($null))==1);
	 //  @line: 187
	$i246 := $HeapVar[r038, int$Partition$first0];
	 goto Block62;
	 //  @line: 187
Block60:
	 assert ($neref((r038), ($null))==1);
	 //  @line: 187
	$i141 := $HeapVar[r038, int$Partition$first0];
	 goto Block70;
	 //  @line: 187
Block62:
	 goto Block63, Block65;
	 //  @line: 187
Block70:
	 assert ($neref((r137), ($null))==1);
	 //  @line: 187
	$i040 := $HeapVar[r137, int$Partition$first0];
	 goto Block71;
	 //  @line: 187
Block63:
	 assume ($neint(($i347), ($i246))==1);
	 goto Block64;
	 //  @line: 187
Block65:
	 //  @line: 187
	 assume ($negInt(($neint(($i347), ($i246))))==1);
	 assert ($neref((r137), ($null))==1);
	 //  @line: 187
	$r548 := $HeapVar[r137, Partition$Partition$next255];
	 goto Block66;
	 //  @line: 187
Block71:
	 goto Block74, Block72;
	 //  @line: 187
Block64:
	 //  @line: 187
	$z150 := 0;
	 goto Block69;
	 //  @line: 187
Block66:
	 goto Block67, Block68;
	 //  @line: 187
Block74:
	 //  @line: 187
	 assume ($negInt(($neint(($i141), ($i040))))==1);
	 assert ($neref((r038), ($null))==1);
	 //  @line: 187
	$r443 := $HeapVar[r038, Partition$Partition$next255];
	 assert ($neref((r137), ($null))==1);
	 //  @line: 187
	$r342 := $HeapVar[r137, Partition$Partition$next255];
	 assert ($neref(($r443), ($null))==1);
	 //  @line: 187
	 call $z044 := boolean$Partition$isEqual$2235(($r443), ($r342));
	 goto Block75;
	 //  @line: 187
Block72:
	 assume ($neint(($i141), ($i040))==1);
	 goto Block73;
	 //  @line: 187
Block69:
	 //  @line: 187
	__ret := $z150;
	 return;
	 //  @line: 187
Block67:
	 assume ($neref(($r548), ($null))==1);
	 goto Block64;
	 //  @line: 187
Block68:
	 //  @line: 187
	 assume ($negInt(($neref(($r548), ($null))))==1);
	 //  @line: 187
	$z150 := 1;
	 goto Block69;
	 //  @line: 187
Block75:
	 goto Block77, Block76;
	 //  @line: 187
Block73:
	 //  @line: 187
	$z251 := 0;
	 goto Block78;
	 //  @line: 187
Block77:
	 //  @line: 187
	 assume ($negInt(($eqint(($z044), (0))))==1);
	 //  @line: 187
	$z251 := 1;
	 goto Block78;
	 //  @line: 187
Block76:
	 assume ($eqint(($z044), (0))==1);
	 goto Block73;
	 //  @line: 187
Block78:
	 //  @line: 187
	__ret := $z251;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}


	 //  @line: 52
// <PartitionList: PartitionList sublistAutoDual()>
procedure PartitionList$PartitionList$sublistAutoDual$2241(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r297 : ref;
var r7107 : ref;
var $r3101 : ref;
var $r6105 : ref;
var r096 : ref;
var r199 : ref;
var $z0103 : int;
var $r4102 : ref;
var $r5104 : ref;
Block122:
	r096 := __this;
	 assert ($neref((r096), ($null))==1);
	 //  @line: 53
	$r297 := $HeapVar[r096, Partition$PartitionList$first256];
	 assert ($neref(($r297), ($null))==1);
	 //  @line: 53
	 call r199 := Partition$Partition$dual$2233(($r297));
	 //  @line: 54
	r7107 := $null;
	 assert ($neref((r096), ($null))==1);
	 //  @line: 55
	$r3101 := $HeapVar[r096, PartitionList$PartitionList$next257];
	 goto Block123;
	 //  @line: 55
Block123:
	 goto Block124, Block126;
	 //  @line: 55
Block124:
	 assume ($eqref(($r3101), ($null))==1);
	 goto Block125;
	 //  @line: 55
Block126:
	 //  @line: 55
	 assume ($negInt(($eqref(($r3101), ($null))))==1);
	 assert ($neref((r096), ($null))==1);
	 //  @line: 57
	$r6105 := $HeapVar[r096, PartitionList$PartitionList$next257];
	 assert ($neref(($r6105), ($null))==1);
	 //  @line: 57
	 call r7107 := PartitionList$PartitionList$sublistAutoDual$2241(($r6105));
	 goto Block125;
	 //  @line: 56
Block125:
	 assert ($neref((r096), ($null))==1);
	 //  @line: 56
	$r4102 := $HeapVar[r096, Partition$PartitionList$first256];
	 assert ($neref(($r4102), ($null))==1);
	 //  @line: 56
	 call $z0103 := boolean$Partition$isEqual$2235(($r4102), (r199));
	 goto Block127;
	 //  @line: 56
Block127:
	 goto Block128, Block130;
	 //  @line: 56
Block128:
	 assume ($neint(($z0103), (1))==1);
	 goto Block129;
	 //  @line: 56
Block130:
	 //  @line: 56
	 assume ($negInt(($neint(($z0103), (1))))==1);
	 //  @line: 57
	$r5104 := $newvariable((131));
	 assume ($neref(($newvariable((131))), ($null))==1);
	 assert ($neref(($r5104), ($null))==1);
	 //  @line: 57
	 call void$PartitionList$$la$init$ra$$2236(($r5104), (r199), (r7107));
	 //  @line: 57
	__ret := $r5104;
	 return;
	 //  @line: 59
Block129:
	 //  @line: 59
	__ret := r7107;
	 return;
}


