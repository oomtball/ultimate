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



var UnionFindIterative$UnionFindIterative$parent254 : Field ref;


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
// <UnionFindIterative: UnionFindIterative find()>
procedure UnionFindIterative$UnionFindIterative$find$2230(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r16 : ref;
var r27 : ref;
var r04 : ref;
Block18:
	r04 := __this;
	 //  @line: 24
	r27 := r04;
	 goto Block19;
	 //  @line: 25
Block19:
	 assert ($neref((r27), ($null))==1);
	 //  @line: 25
	$r16 := $HeapVar[r27, UnionFindIterative$UnionFindIterative$parent254];
	 goto Block20;
	 //  @line: 25
Block20:
	 goto Block23, Block21;
	 //  @line: 25
Block23:
	 //  @line: 25
	 assume ($negInt(($eqref(($r16), (r27))))==1);
	 assert ($neref((r27), ($null))==1);
	 //  @line: 26
	r27 := $HeapVar[r27, UnionFindIterative$UnionFindIterative$parent254];
	 goto Block19;
	 //  @line: 25
Block21:
	 assume ($eqref(($r16), (r27))==1);
	 goto Block22;
	 //  @line: 28
Block22:
	 //  @line: 28
	__ret := r27;
	 return;
}


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



// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



	 //  @line: 15
// <UnionFindIterative: void makeSet()>
procedure void$UnionFindIterative$makeSet$2229(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r03 : ref;
Block17:
	r03 := __this;
	 assert ($neref((r03), ($null))==1);
	 //  @line: 16
	$HeapVar[r03, UnionFindIterative$UnionFindIterative$parent254] := r03;
	 return;
}


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



// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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


	 //  @line: 10
// <UnionFindIterative: void <init>(UnionFindIterative)>
procedure void$UnionFindIterative$$la$init$ra$$2228(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
var r12 : ref;
Block16:
	r01 := __this;
	r12 := $param_0;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 11
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 12
	$HeapVar[r01, UnionFindIterative$UnionFindIterative$parent254] := r12;
	 return;
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



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 37
// <UnionFindIterative: void main(java.lang.String[])>
procedure void$UnionFindIterative$main$2232($param_0 : [int]ref)
  modifies $stringSize;
 {
var $r520 : ref;
var i122 : int;
var r221 : ref;
var r115 : ref;
var $r314 : ref;
var $i019 : int;
var r017 : [int]ref;
var $r418 : ref;
Block25:
	r017 := $param_0;
	 //  @line: 38
	$r314 := $newvariable((26));
	 assume ($neref(($newvariable((26))), ($null))==1);
	 assert ($neref(($r314), ($null))==1);
	 //  @line: 38
	 call void$UnionFindIterative$$la$init$ra$$2228(($r314), ($null));
	 //  @line: 38
	r115 := $r314;
	 assert ($neref((r115), ($null))==1);
	 //  @line: 39
	 call void$UnionFindIterative$makeSet$2229((r115));
	 //  @line: 40
	i122 := 0;
	 goto Block27;
	 //  @line: 40
Block27:
	 assert ($geint((0), (0))==1);
	 assert ($ltint((0), ($refArrSize[r017[$arrSizeIdx]]))==1);
	 //  @line: 40
	$r418 := r017[0];
	$i019 := $stringSize[$r418];
	 goto Block28;
	 //  @line: 40
Block28:
	 goto Block31, Block29;
	 //  @line: 40
Block31:
	 //  @line: 40
	 assume ($negInt(($geint((i122), ($i019))))==1);
	 //  @line: 41
	$r520 := $newvariable((32));
	 assume ($neref(($newvariable((32))), ($null))==1);
	 assert ($neref(($r520), ($null))==1);
	 //  @line: 41
	 call void$UnionFindIterative$$la$init$ra$$2228(($r520), ($null));
	 //  @line: 41
	r221 := $r520;
	 assert ($neref((r221), ($null))==1);
	 //  @line: 42
	 call void$UnionFindIterative$makeSet$2229((r221));
	 assert ($neref((r221), ($null))==1);
	 //  @line: 43
	 call void$UnionFindIterative$union$2231((r221), (r115));
	 //  @line: 40
	i122 := $addint((i122), (1));
	 goto Block27;
	 //  @line: 40
Block29:
	 assume ($geint((i122), ($i019))==1);
	 goto Block30;
	 //  @line: 45
Block30:
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 31
// <UnionFindIterative: void union(UnionFindIterative)>
procedure void$UnionFindIterative$union$2231(__this : ref, $param_0 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r111 : ref;
var r08 : ref;
var r313 : ref;
var r210 : ref;
Block24:
	r08 := __this;
	r111 := $param_0;
	 assert ($neref((r08), ($null))==1);
	 //  @line: 32
	 call r210 := UnionFindIterative$UnionFindIterative$find$2230((r08));
	 assert ($neref((r111), ($null))==1);
	 //  @line: 33
	 call r313 := UnionFindIterative$UnionFindIterative$find$2230((r111));
	 assert ($neref((r210), ($null))==1);
	 //  @line: 34
	$HeapVar[r210, UnionFindIterative$UnionFindIterative$parent254] := r313;
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

