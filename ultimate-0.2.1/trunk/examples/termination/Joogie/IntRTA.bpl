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



var int$Random$index0 : int;
var int$IntRTA$val0 : Field int;
var java.lang.String$lp$$rp$$Random$args254 : [int]ref;


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



// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 23
// <IntRTA: void main(java.lang.String[])>
procedure void$IntRTA$main$2230($param_0 : [int]ref)
  modifies $HeapVar, $stringSize, java.lang.String$lp$$rp$$Random$args254;
 {
var $i115 : int;
var $i012 : int;
var r214 : ref;
var r111 : ref;
var $r413 : ref;
var $r310 : ref;
var r09 : [int]ref;
Block31:
	r09 := $param_0;
	 //  @line: 24
	java.lang.String$lp$$rp$$Random$args254 := r09;
	 //  @line: 25
	$r310 := $newvariable((32));
	 assume ($neref(($newvariable((32))), ($null))==1);
	 assert ($neref(($r310), ($null))==1);
	 //  @line: 25
	 call void$IntRTA$$la$init$ra$$2228(($r310));
	 //  @line: 25
	r111 := $r310;
	 //  @line: 26
	 call $i012 := int$Random$random$2232();
	 assert ($neref((r111), ($null))==1);
	 //  @line: 26
	$HeapVar[r111, int$IntRTA$val0] := $i012;
	 //  @line: 27
	$r413 := $newvariable((33));
	 assume ($neref(($newvariable((33))), ($null))==1);
	 assert ($neref(($r413), ($null))==1);
	 //  @line: 27
	 call void$IntRTA$$la$init$ra$$2228(($r413));
	 //  @line: 27
	r214 := $r413;
	 //  @line: 28
	 call $i115 := int$Random$random$2232();
	 assert ($neref((r214), ($null))==1);
	 //  @line: 28
	$HeapVar[r214, int$IntRTA$val0] := $i115;
	 //  @line: 29
	 call void$IntRTA$count$2229((r111), (r214));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


// <IntRTA: void <init>()>
procedure void$IntRTA$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



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



	 //  @line: 5
// <Random: int random()>
procedure int$Random$random$2232() returns (__ret : int)
  modifies int$Random$index0, $stringSize;
 {
var $i221 : int;
var $i120 : int;
var $i017 : int;
var $i322 : int;
var r019 : ref;
var $r118 : [int]ref;
	 //  @line: 6
Block35:
	 //  @line: 6
	$r118 := java.lang.String$lp$$rp$$Random$args254;
	 //  @line: 6
	$i017 := int$Random$index0;
	 assert ($geint(($i017), (0))==1);
	 assert ($ltint(($i017), ($refArrSize[$r118[$arrSizeIdx]]))==1);
	 //  @line: 6
	r019 := $r118[$i017];
	 //  @line: 7
	$i120 := int$Random$index0;
	 //  @line: 7
	$i221 := $addint(($i120), (1));
	 //  @line: 7
	int$Random$index0 := $i221;
	$i322 := $stringSize[r019];
	 //  @line: 8
	__ret := $i322;
	 return;
}


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



	 //  @line: 2
// <Random: void <clinit>()>
procedure void$Random$$la$clinit$ra$$2233()
  modifies int$Random$index0;
 {
	 //  @line: 3
Block36:
	 //  @line: 3
	int$Random$index0 := 0;
	 return;
}


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



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 9
// <IntRTA: void count(IntRTA,IntRTA)>
procedure void$IntRTA$count$2229($param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
 {
var r13 : ref;
var $i38 : int;
var r02 : ref;
var $i16 : int;
var $i05 : int;
var r24 : ref;
var $i27 : int;
Block17:
	r02 := $param_0;
	r13 := $param_1;
	 goto Block18;
	 //  @line: 10
Block18:
	 goto Block19, Block21;
	 //  @line: 10
Block19:
	 assume ($eqref((r02), ($null))==1);
	 goto Block20;
	 //  @line: 10
Block21:
	 //  @line: 10
	 assume ($negInt(($eqref((r02), ($null))))==1);
	 goto Block22;
	 //  @line: 12
Block20:
	 return;
	 //  @line: 12
Block22:
	 goto Block25, Block23;
	 //  @line: 12
Block25:
	 //  @line: 12
	 assume ($negInt(($neref((r13), ($null))))==1);
	 goto Block20;
	 //  @line: 12
Block23:
	 assume ($neref((r13), ($null))==1);
	 goto Block24;
	 //  @line: 16
Block24:
	 //  @line: 16
	r24 := r02;
	 goto Block26;
	 //  @line: 18
Block26:
	 assert ($neref((r02), ($null))==1);
	 //  @line: 18
	$i16 := $HeapVar[r02, int$IntRTA$val0];
	 assert ($neref((r13), ($null))==1);
	 //  @line: 18
	$i05 := $HeapVar[r13, int$IntRTA$val0];
	 goto Block27;
	 //  @line: 18
Block27:
	 goto Block30, Block28;
	 //  @line: 18
Block30:
	 //  @line: 18
	 assume ($negInt(($geint(($i16), ($i05))))==1);
	 assert ($neref((r24), ($null))==1);
	 //  @line: 19
	$i27 := $HeapVar[r24, int$IntRTA$val0];
	 //  @line: 19
	$i38 := $addint(($i27), (1));
	 assert ($neref((r24), ($null))==1);
	 //  @line: 19
	$HeapVar[r24, int$IntRTA$val0] := $i38;
	 goto Block26;
	 //  @line: 18
Block28:
	 assume ($geint(($i16), ($i05))==1);
	 goto Block29;
	 //  @line: 21
Block29:
	 return;
}


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


// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



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



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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


// <Random: void <init>()>
procedure void$Random$$la$init$ra$$2231(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r016 : ref;
Block34:
	r016 := __this;
	 assert ($neref((r016), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r016));
	 return;
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



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

