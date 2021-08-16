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



var List$List$next255 : Field ref;
var int$Random$index0 : int;
var java.lang.String$lp$$rp$$Random$args258 : [int]ref;
var int$MarkingGraphVisitor$mark0 : Field int;
var java.lang.Object$MarkingGraphVisitor$val256 : Field ref;
var MarkingGraphVisitor$List$val254 : Field ref;
var List$MarkingGraphVisitor$children257 : Field ref;


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



	 //  @line: 40
// <MarkingGraphVisitor: MarkingGraphVisitor getRandom()>
procedure MarkingGraphVisitor$MarkingGraphVisitor$getRandom$2232(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var r439 : ref;
var $r130 : ref;
var $i029 : int;
var i236 : int;
var $r235 : ref;
var r337 : ref;
var r027 : ref;
var i338 : int;
var $i134 : int;
Block43:
	r027 := __this;
	 //  @line: 41
	 call i236 := int$Random$random$2235();
	 //  @line: 42
	r337 := r027;
	 goto Block44;
	 //  @line: 43
Block44:
	 //  @line: 43
	$i029 := i236;
	 //  @line: 43
	i236 := $addint((i236), (-1));
	 goto Block45;
	 //  @line: 43
Block45:
	 goto Block46, Block48;
	 //  @line: 43
Block46:
	 assume ($ltint(($i029), (0))==1);
	 goto Block47;
	 //  @line: 43
Block48:
	 //  @line: 43
	 assume ($negInt(($ltint(($i029), (0))))==1);
	 assert ($neref((r337), ($null))==1);
	 //  @line: 51
	$r130 := $HeapVar[r337, List$MarkingGraphVisitor$children257];
	 goto Block49;
	 //  @line: 51
Block47:
	 //  @line: 51
	__ret := r337;
	 return;
	 //  @line: 51
Block49:
	 goto Block51, Block50;
	 //  @line: 51
Block51:
	 //  @line: 51
	 assume ($negInt(($eqref(($r130), ($null))))==1);
	 //  @line: 44
	 call i338 := int$Random$random$2235();
	 assert ($neref((r337), ($null))==1);
	 //  @line: 45
	r439 := $HeapVar[r337, List$MarkingGraphVisitor$children257];
	 goto Block52;
	 //  @line: 51
Block50:
	 assume ($eqref(($r130), ($null))==1);
	 goto Block47;
	 //  @line: 46
Block52:
	 //  @line: 46
	$i134 := i338;
	 //  @line: 46
	i338 := $addint((i338), (-1));
	 goto Block53;
	 //  @line: 46
Block53:
	 goto Block56, Block54;
	 //  @line: 46
Block56:
	 //  @line: 46
	 assume ($negInt(($ltint(($i134), (0))))==1);
	 assert ($neref((r439), ($null))==1);
	 //  @line: 43
	$r235 := $HeapVar[r439, List$List$next255];
	 goto Block57;
	 //  @line: 46
Block54:
	 assume ($ltint(($i134), (0))==1);
	 goto Block55;
	 //  @line: 43
Block57:
	 goto Block58, Block59;
	 //  @line: 49
Block55:
	 assert ($neref((r439), ($null))==1);
	 //  @line: 49
	r337 := $HeapVar[r439, MarkingGraphVisitor$List$val254];
	 goto Block60;
	 //  @line: 43
Block58:
	 assume ($eqref(($r235), ($null))==1);
	 goto Block55;
	 //  @line: 43
Block59:
	 //  @line: 43
	 assume ($negInt(($eqref(($r235), ($null))))==1);
	 assert ($neref((r439), ($null))==1);
	 //  @line: 47
	r439 := $HeapVar[r439, List$List$next255];
	 goto Block52;
	 //  @line: 50
Block60:
	 goto Block44;
}


// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



	 //  @line: 5
// <Random: int random()>
procedure int$Random$random$2235() returns (__ret : int)
  modifies int$Random$index0, $stringSize;
 {
var $i260 : int;
var $i056 : int;
var $i159 : int;
var $i361 : int;
var $r157 : [int]ref;
var r058 : ref;
	 //  @line: 6
Block70:
	 //  @line: 6
	$r157 := java.lang.String$lp$$rp$$Random$args258;
	 //  @line: 6
	$i056 := int$Random$index0;
	 assert ($geint(($i056), (0))==1);
	 assert ($ltint(($i056), ($refArrSize[$r157[$arrSizeIdx]]))==1);
	 //  @line: 6
	r058 := $r157[$i056];
	 //  @line: 7
	$i159 := int$Random$index0;
	 //  @line: 7
	$i260 := $addint(($i159), (1));
	 //  @line: 7
	int$Random$index0 := $i260;
	$i361 := $stringSize[r058];
	 //  @line: 8
	__ret := $i361;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 19
// <MarkingGraphVisitor: void <init>(java.lang.Object,List)>
procedure void$MarkingGraphVisitor$$la$init$ra$$2230(__this : ref, $param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r213 : ref;
var r011 : ref;
var r112 : ref;
Block29:
	r011 := __this;
	r112 := $param_0;
	r213 := $param_1;
	 assert ($neref((r011), ($null))==1);
	 //  @line: 20
	 call void$java.lang.Object$$la$init$ra$$28((r011));
	 assert ($neref((r011), ($null))==1);
	 //  @line: 21
	$HeapVar[r011, int$MarkingGraphVisitor$mark0] := 0;
	 assert ($neref((r011), ($null))==1);
	 //  @line: 22
	$HeapVar[r011, java.lang.Object$MarkingGraphVisitor$val256] := r112;
	 assert ($neref((r011), ($null))==1);
	 //  @line: 23
	$HeapVar[r011, List$MarkingGraphVisitor$children257] := r213;
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



// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 6
// <MarkingGraphVisitor: void visit(MarkingGraphVisitor,int)>
procedure void$MarkingGraphVisitor$visit$2229($param_0 : ref, $param_1 : int)
  modifies $HeapVar;
 {
var i05 : int;
var r04 : ref;
var r19 : ref;
var r210 : ref;
var $i16 : int;
var $i27 : int;
Block17:
	r04 := $param_0;
	i05 := $param_1;
	 assert ($neref((r04), ($null))==1);
	 //  @line: 7
	$i16 := $HeapVar[r04, int$MarkingGraphVisitor$mark0];
	 goto Block18;
	 //  @line: 7
Block18:
	 goto Block19, Block21;
	 //  @line: 7
Block19:
	 assume ($neint(($i16), (i05))==1);
	 goto Block20;
	 //  @line: 7
Block21:
	 //  @line: 7
	 assume ($negInt(($neint(($i16), (i05))))==1);
	 //  @line: 8
	$i27 := $addint((i05), (1));
	 assert ($neref((r04), ($null))==1);
	 //  @line: 8
	$HeapVar[r04, int$MarkingGraphVisitor$mark0] := $i27;
	 assert ($neref((r04), ($null))==1);
	 //  @line: 9
	r210 := $HeapVar[r04, List$MarkingGraphVisitor$children257];
	 goto Block22;
	 //  @line: 18
Block20:
	 return;
	 //  @line: 10
Block22:
	 goto Block23, Block24;
	 //  @line: 10
Block23:
	 assume ($eqref((r210), ($null))==1);
	 goto Block20;
	 //  @line: 10
Block24:
	 //  @line: 10
	 assume ($negInt(($eqref((r210), ($null))))==1);
	 assert ($neref((r210), ($null))==1);
	 //  @line: 11
	r19 := $HeapVar[r210, MarkingGraphVisitor$List$val254];
	 assert ($neref((r210), ($null))==1);
	 //  @line: 12
	r210 := $HeapVar[r210, List$List$next255];
	 goto Block25;
	 //  @line: 13
Block25:
	 goto Block26, Block28;
	 //  @line: 13
Block26:
	 assume ($eqref((r19), ($null))==1);
	 goto Block27;
	 //  @line: 13
Block28:
	 //  @line: 13
	 assume ($negInt(($eqref((r19), ($null))))==1);
	 //  @line: 14
	 call void$MarkingGraphVisitor$visit$2229((r19), (i05));
	 goto Block27;
	 //  @line: 16
Block27:
	 goto Block22;
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


// <Random: void <init>()>
procedure void$Random$$la$init$ra$$2234(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r055 : ref;
Block69:
	r055 := __this;
	 assert ($neref((r055), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r055));
	 return;
}


	 //  @line: 54
// <MarkingGraphVisitor: void main(java.lang.String[])>
procedure void$MarkingGraphVisitor$main$2233($param_0 : [int]ref)
  modifies java.lang.String$lp$$rp$$Random$args258, $HeapVar, $stringSize;
 {
var r040 : [int]ref;
var $i146 : int;
var r143 : ref;
var i354 : int;
var r249 : ref;
var $i247 : int;
var $i041 : int;
var r351 : ref;
var $r553 : ref;
var $r452 : ref;
Block61:
	r040 := $param_0;
	 //  @line: 55
	java.lang.String$lp$$rp$$Random$args258 := r040;
	 //  @line: 59
	 call $i041 := int$Random$random$2235();
	 //  @line: 59
	 call r143 := MarkingGraphVisitor$MarkingGraphVisitor$createTree$2231(($i041));
	 //  @line: 61
	 call i354 := int$Random$random$2235();
	 goto Block62;
	 //  @line: 62
Block62:
	 //  @line: 62
	$i146 := i354;
	 //  @line: 62
	i354 := $addint((i354), (-1));
	 goto Block63;
	 //  @line: 62
Block63:
	 goto Block64, Block66;
	 //  @line: 62
Block64:
	 assume ($leint(($i146), (0))==1);
	 goto Block65;
	 //  @line: 62
Block66:
	 //  @line: 62
	 assume ($negInt(($leint(($i146), (0))))==1);
	 assert ($neref((r143), ($null))==1);
	 //  @line: 63
	 call r249 := MarkingGraphVisitor$MarkingGraphVisitor$getRandom$2232((r143));
	 assert ($neref((r143), ($null))==1);
	 //  @line: 64
	 call r351 := MarkingGraphVisitor$MarkingGraphVisitor$getRandom$2232((r143));
	 //  @line: 65
	$r452 := $newvariable((67));
	 assume ($neref(($newvariable((67))), ($null))==1);
	 assert ($neref((r249), ($null))==1);
	 //  @line: 65
	$r553 := $HeapVar[r249, List$MarkingGraphVisitor$children257];
	 assert ($neref(($r452), ($null))==1);
	 //  @line: 65
	 call void$List$$la$init$ra$$2228(($r452), (r351), ($r553));
	 assert ($neref((r249), ($null))==1);
	 //  @line: 65
	$HeapVar[r249, List$MarkingGraphVisitor$children257] := $r452;
	 goto Block62;
	 //  @line: 69
Block65:
	 assert ($neref((r143), ($null))==1);
	 //  @line: 69
	$i247 := $HeapVar[r143, int$MarkingGraphVisitor$mark0];
	 goto Block68;
	 //  @line: 69
Block68:
	 //  @line: 69
	 call void$MarkingGraphVisitor$visit$2229((r143), ($i247));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 76
// <List: void <init>(MarkingGraphVisitor,List)>
procedure void$List$$la$init$ra$$2228(__this : ref, $param_0 : ref, $param_1 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r23 : ref;
var r01 : ref;
var r12 : ref;
Block16:
	r01 := __this;
	r12 := $param_0;
	r23 := $param_1;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 77
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 78
	$HeapVar[r01, MarkingGraphVisitor$List$val254] := r12;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 79
	$HeapVar[r01, List$List$next255] := r23;
	 return;
}


// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqint(x : int, y : int) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



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



	 //  @line: 26
// <MarkingGraphVisitor: MarkingGraphVisitor createTree(int)>
procedure MarkingGraphVisitor$MarkingGraphVisitor$createTree$2231($param_0 : int) returns (__ret : ref) {
var $r222 : ref;
var $r019 : ref;
var r323 : ref;
var $r120 : ref;
var i116 : int;
var i014 : int;
var $i221 : int;
var i324 : int;
Block30:
	i014 := $param_0;
	 goto Block31;
	 //  @line: 27
Block31:
	 goto Block32, Block34;
	 //  @line: 27
Block32:
	 assume ($gtint((i014), (0))==1);
	 goto Block33;
	 //  @line: 27
Block34:
	 //  @line: 27
	 assume ($negInt(($gtint((i014), (0))))==1);
	 //  @line: 28
	__ret := $null;
	 return;
	 //  @line: 31
Block33:
	 //  @line: 31
	 call i116 := int$Random$random$2235();
	 goto Block35;
	 //  @line: 32
Block35:
	 //  @line: 32
	r323 := $null;
	 //  @line: 33
	i324 := i116;
	 goto Block36;
	 //  @line: 33
Block36:
	 goto Block39, Block37;
	 //  @line: 33
Block39:
	 //  @line: 33
	 assume ($negInt(($leint((i324), (0))))==1);
	 //  @line: 34
	$r120 := $newvariable((40));
	 assume ($neref(($newvariable((40))), ($null))==1);
	 //  @line: 34
	$i221 := $subint((i014), (1));
	 //  @line: 34
	 call $r222 := MarkingGraphVisitor$MarkingGraphVisitor$createTree$2231(($i221));
	 assert ($neref(($r120), ($null))==1);
	 //  @line: 34
	 call void$List$$la$init$ra$$2228(($r120), ($r222), (r323));
	 //  @line: 34
	r323 := $r120;
	 //  @line: 33
	i324 := $addint((i324), (-1));
	 goto Block36;
	 //  @line: 33
Block37:
	 assume ($leint((i324), (0))==1);
	 goto Block38;
	 //  @line: 37
Block38:
	 //  @line: 37
	$r019 := $newvariable((41));
	 assume ($neref(($newvariable((41))), ($null))==1);
	 goto Block42;
	 //  @line: 37
Block42:
	 assert ($neref(($r019), ($null))==1);
	 //  @line: 37
	 call void$MarkingGraphVisitor$$la$init$ra$$2230(($r019), ($null), (r323));
	 //  @line: 37
	__ret := $r019;
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


	 //  @line: 2
// <Random: void <clinit>()>
procedure void$Random$$la$clinit$ra$$2236()
  modifies int$Random$index0;
 {
	 //  @line: 3
Block71:
	 //  @line: 3
	int$Random$index0 := 0;
	 return;
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


