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



var int$List$head0 : Field int;
var List$List$tail254 : Field ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 2
// <Test7: void main(java.lang.String[])>
procedure void$Test7$main$2229($param_0 : [int]ref)
  modifies $refArrSize;
 {
var i521 : int;
var $i310 : int;
var $r512 : ref;
var $r720 : ref;
var $r22 : [int]ref;
var $i415 : int;
var $r616 : ref;
var $i14 : int;
var i018 : int;
var i622 : int;
var $i27 : int;
var r113 : [int]ref;
var $r36 : ref;
var r03 : [int]ref;
var $r49 : ref;
Block17:
	r03 := $param_0;
	 //  @line: 3
	$r22 := $reftorefarr(($newvariable((18))));
	$refArrSize[$reftorefarr(($newvariable((18))))[$arrSizeIdx]] := 3;
	 assume ($negInt(($eqrefarray(($reftorefarr(($newvariable((18))))), ($refArrNull))))==1);
	 //  @line: 3
	$i14 := $refArrSize[r03[$arrSizeIdx]];
	 //  @line: 3
	 call $r36 := List$List$mk$2234(($i14));
	 assert ($geint((0), (0))==1);
	 assert ($ltint((0), ($refArrSize[$r22[$arrSizeIdx]]))==1);
	 //  @line: 3
	$r22[0] := $r36;
	 //  @line: 3
	$i27 := $refArrSize[r03[$arrSizeIdx]];
	 //  @line: 3
	 call $r49 := List$List$mk$2234(($i27));
	 assert ($geint((1), (0))==1);
	 assert ($ltint((1), ($refArrSize[$r22[$arrSizeIdx]]))==1);
	 //  @line: 3
	$r22[1] := $r49;
	 //  @line: 3
	$i310 := $refArrSize[r03[$arrSizeIdx]];
	 //  @line: 3
	 call $r512 := List$List$mk$2234(($i310));
	 assert ($geint((2), (0))==1);
	 assert ($ltint((2), ($refArrSize[$r22[$arrSizeIdx]]))==1);
	 //  @line: 3
	$r22[2] := $r512;
	 //  @line: 3
	r113 := $r22;
	 //  @line: 5
	i521 := 0;
	 goto Block19;
	 //  @line: 5
Block19:
	 //  @line: 5
	$i415 := $refArrSize[r113[$arrSizeIdx]];
	 goto Block20;
	 //  @line: 5
Block20:
	 goto Block23, Block21;
	 //  @line: 5
Block23:
	 //  @line: 5
	 assume ($negInt(($geint((i521), ($i415))))==1);
	 assert ($geint((0), (0))==1);
	 assert ($ltint((0), ($refArrSize[r113[$arrSizeIdx]]))==1);
	 //  @line: 6
	$r616 := r113[0];
	 //  @line: 6
	 call i018 := int$Test7$length$2231(($r616));
	 //  @line: 7
	i622 := 0;
	 goto Block24;
	 //  @line: 5
Block21:
	 assume ($geint((i521), ($i415))==1);
	 goto Block22;
	 //  @line: 7
Block24:
	 goto Block25, Block27;
	 //  @line: 10
Block22:
	 return;
	 //  @line: 7
Block25:
	 assume ($geint((i622), (i018))==1);
	 goto Block26;
	 //  @line: 7
Block27:
	 //  @line: 7
	 assume ($negInt(($geint((i622), (i018))))==1);
	 assert ($geint((0), (0))==1);
	 assert ($ltint((0), ($refArrSize[r113[$arrSizeIdx]]))==1);
	 //  @line: 8
	$r720 := r113[0];
	 //  @line: 8
	 call void$Test7$bubble$2230(($r720));
	 //  @line: 7
	i622 := $addint((i622), (1));
	 goto Block24;
	 //  @line: 5
Block26:
	 //  @line: 5
	i521 := $addint((i521), (1));
	 goto Block28;
	 //  @line: 5
Block28:
	 goto Block19;
}


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



	 //  @line: 12
// <Test7: void bubble(List)>
procedure void$Test7$bubble$2230($param_0 : ref)
  modifies $HeapVar;
 {
var $r125 : ref;
var $r331 : ref;
var r023 : ref;
var r534 : ref;
var $i126 : int;
var $i228 : int;
var $i332 : int;
var $r433 : ref;
var $r227 : ref;
var i030 : int;
Block29:
	r023 := $param_0;
	 //  @line: 13
	r534 := r023;
	 goto Block30;
	 //  @line: 13
Block30:
	 goto Block33, Block31;
	 //  @line: 13
Block33:
	 //  @line: 13
	 assume ($negInt(($eqref((r534), ($null))))==1);
	 assert ($neref((r534), ($null))==1);
	 //  @line: 19
	 call $r125 := List$List$getTail$2233((r534));
	 goto Block34;
	 //  @line: 13
Block31:
	 assume ($eqref((r534), ($null))==1);
	 goto Block32;
	 //  @line: 19
Block34:
	 goto Block35, Block36;
	 //  @line: 19
Block32:
	 return;
	 //  @line: 19
Block35:
	 assume ($eqref(($r125), ($null))==1);
	 goto Block32;
	 //  @line: 19
Block36:
	 //  @line: 19
	 assume ($negInt(($eqref(($r125), ($null))))==1);
	 assert ($neref((r534), ($null))==1);
	 //  @line: 14
	$i126 := $HeapVar[r534, int$List$head0];
	 assert ($neref((r534), ($null))==1);
	 //  @line: 14
	 call $r227 := List$List$getTail$2233((r534));
	 assert ($neref(($r227), ($null))==1);
	 //  @line: 14
	$i228 := $HeapVar[$r227, int$List$head0];
	 goto Block37;
	 //  @line: 14
Block37:
	 goto Block40, Block38;
	 //  @line: 14
Block40:
	 //  @line: 14
	 assume ($negInt(($leint(($i126), ($i228))))==1);
	 assert ($neref((r534), ($null))==1);
	 //  @line: 15
	i030 := $HeapVar[r534, int$List$head0];
	 assert ($neref((r534), ($null))==1);
	 //  @line: 16
	 call $r331 := List$List$getTail$2233((r534));
	 assert ($neref(($r331), ($null))==1);
	 //  @line: 16
	$i332 := $HeapVar[$r331, int$List$head0];
	 assert ($neref((r534), ($null))==1);
	 //  @line: 16
	$HeapVar[r534, int$List$head0] := $i332;
	 assert ($neref((r534), ($null))==1);
	 //  @line: 17
	 call $r433 := List$List$getTail$2233((r534));
	 assert ($neref(($r433), ($null))==1);
	 //  @line: 17
	$HeapVar[$r433, int$List$head0] := i030;
	 goto Block39;
	 //  @line: 14
Block38:
	 assume ($leint(($i126), ($i228))==1);
	 goto Block39;
	 //  @line: 13
Block39:
	 assert ($neref((r534), ($null))==1);
	 //  @line: 13
	 call r534 := List$List$getTail$2233((r534));
	 goto Block30;
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



// <Test7: void <init>()>
procedure void$Test7$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


	 //  @line: 10
// <List: List getTail()>
procedure List$List$getTail$2233(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r144 : ref;
var r043 : ref;
Block47:
	r043 := __this;
	 assert ($neref((r043), ($null))==1);
	 //  @line: 11
	$r144 := $HeapVar[r043, List$List$tail254];
	 //  @line: 11
	__ret := $r144;
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



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



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



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


	 //  @line: 14
// <List: List mk(int)>
procedure List$List$mk$2234($param_0 : int) returns (__ret : ref) {
var $r048 : ref;
var $i047 : int;
var i149 : int;
var r150 : ref;
Block48:
	i149 := $param_0;
	 //  @line: 15
	r150 := $null;
	 goto Block49;
	 //  @line: 17
Block49:
	 //  @line: 17
	$i047 := i149;
	 //  @line: 17
	i149 := $addint((i149), (-1));
	 goto Block50;
	 //  @line: 17
Block50:
	 goto Block53, Block51;
	 //  @line: 17
Block53:
	 //  @line: 17
	 assume ($negInt(($leint(($i047), (0))))==1);
	 //  @line: 18
	$r048 := $newvariable((54));
	 assume ($neref(($newvariable((54))), ($null))==1);
	 assert ($neref(($r048), ($null))==1);
	 //  @line: 18
	 call void$List$$la$init$ra$$2232(($r048), (i149), (r150));
	 //  @line: 18
	r150 := $r048;
	 goto Block49;
	 //  @line: 17
Block51:
	 assume ($leint(($i047), (0))==1);
	 goto Block52;
	 //  @line: 20
Block52:
	 //  @line: 20
	__ret := r150;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



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


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



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



	 //  @line: 21
// <Test7: int length(List)>
procedure int$Test7$length$2231($param_0 : ref) returns (__ret : int) {
var r038 : ref;
var i039 : int;
Block41:
	r038 := $param_0;
	 //  @line: 22
	i039 := 0;
	 goto Block42;
	 //  @line: 24
Block42:
	 goto Block43, Block45;
	 //  @line: 24
Block43:
	 assume ($eqref((r038), ($null))==1);
	 goto Block44;
	 //  @line: 24
Block45:
	 //  @line: 24
	 assume ($negInt(($eqref((r038), ($null))))==1);
	 assert ($neref((r038), ($null))==1);
	 //  @line: 25
	 call r038 := List$List$getTail$2233((r038));
	 //  @line: 26
	i039 := $addint((i039), (1));
	 goto Block42;
	 //  @line: 29
Block44:
	 //  @line: 29
	__ret := i039;
	 return;
}


	 //  @line: 4
// <List: void <init>(int,List)>
procedure void$List$$la$init$ra$$2232(__this : ref, $param_0 : int, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var i041 : int;
var r040 : ref;
var r142 : ref;
Block46:
	r040 := __this;
	i041 := $param_0;
	r142 := $param_1;
	 assert ($neref((r040), ($null))==1);
	 //  @line: 5
	 call void$java.lang.Object$$la$init$ra$$28((r040));
	 assert ($neref((r040), ($null))==1);
	 //  @line: 6
	$HeapVar[r040, int$List$head0] := i041;
	 assert ($neref((r040), ($null))==1);
	 //  @line: 7
	$HeapVar[r040, List$List$tail254] := r142;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

