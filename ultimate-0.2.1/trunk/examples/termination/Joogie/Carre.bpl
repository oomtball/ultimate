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



var int$Curseur$Y0 : Field int;
var $fresh1 : [int][int]int;
var $fresh4 : int;
var $fresh2 : int;
var int$Curseur$maxY0 : Field int;
var int$Curseur$X0 : Field int;
var $fresh3 : int;
var $fresh2 : [int][int]int;
var $fresh3 : int;
var boolean$Curseur$torique0 : Field int;
var Curseur$Carre$curseur254 : Field ref;
var int$Carre$cote0 : Field int;
var java.lang.String$lp$$rp$$Random$args256 : [int]ref;
var int$Curseur$maxX0 : Field int;
var int$lp$$rp$$lp$$rp$$Carre$carre255 : Field [int][int]int;
var $fresh1 : [int]int;
var int$Random$index0 : int;


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



	 //  @line: 72
// <Carre: void init()>
procedure void$Carre$init$2229(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i012 : int;
var $r420 : [int]int;
var r011 : ref;
var $r114 : [int][int]int;
var i322 : int;
var $r217 : ref;
var i221 : int;
var $r319 : [int][int]int;
var $i113 : int;
Block32:
	r011 := __this;
	 assert ($neref((r011), ($null))==1);
	 //  @line: 73
	$i113 := $HeapVar[r011, int$Carre$cote0];
	 assert ($neref((r011), ($null))==1);
	 //  @line: 73
	$i012 := $HeapVar[r011, int$Carre$cote0];
	 //  @line: 73
	$r114 := $fresh2;
	 assume ($negInt(($fresh3))==1);
	 assert ($neref((r011), ($null))==1);
	 //  @line: 73
	$HeapVar[r011, int$lp$$rp$$lp$$rp$$Carre$carre255] := $r114;
	 //  @line: 75
	i221 := 0;
	 goto Block34;
	 //  @line: 75
Block34:
	 goto Block35, Block37;
	 //  @line: 75
Block35:
	 assume ($geint((i221), (3))==1);
	 goto Block36;
	 //  @line: 75
Block37:
	 //  @line: 75
	 assume ($negInt(($geint((i221), (3))))==1);
	 //  @line: 77
	i322 := 0;
	 goto Block38;
	 //  @line: 76
Block36:
	 assert ($neref((r011), ($null))==1);
	 //  @line: 76
	$r217 := $HeapVar[r011, Curseur$Carre$curseur254];
	 goto Block43;
	 //  @line: 77
Block38:
	 goto Block39, Block41;
	 //  @line: 76
Block43:
	 assert ($neref(($r217), ($null))==1);
	 //  @line: 76
	 call void$Curseur$centrer$2237(($r217));
	 return;
	 //  @line: 77
Block39:
	 assume ($geint((i322), (3))==1);
	 goto Block40;
	 //  @line: 77
Block41:
	 //  @line: 77
	 assume ($negInt(($geint((i322), (3))))==1);
	 assert ($neref((r011), ($null))==1);
	 //  @line: 77
	$r319 := $HeapVar[r011, int$lp$$rp$$lp$$rp$$Carre$carre255];
	 assert ($geint((i221), (0))==1);
	 assert ($ltint((i221), ($fresh2))==1);
	 //  @line: 77
	$r420 := $r319[i221];
	 assert ($geint((i322), (0))==1);
	 assert ($ltint((i322), ($intArrSize[$r420[$arrSizeIdx]]))==1);
	 //  @line: 77
	$r420[i322] := 0;
	 //  @line: 77
	i322 := $addint((i322), (1));
	 goto Block38;
	 //  @line: 77
Block40:
	 //  @line: 77
	i221 := $addint((i221), (1));
	 goto Block42;
	 //  @line: 77
Block42:
	 goto Block34;
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



// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



	 //  @line: 101
// <Carre: int cote()>
procedure int$Carre$cote$2232(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $i041 : int;
var r040 : ref;
Block55:
	r040 := __this;
	 assert ($neref((r040), ($null))==1);
	 //  @line: 102
	$i041 := $HeapVar[r040, int$Carre$cote0];
	 //  @line: 102
	__ret := $i041;
	 return;
}


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


	 //  @line: 13
// <Curseur: void centrer()>
procedure void$Curseur$centrer$2237(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r069 : ref;
var $i270 : int;
var $i372 : int;
var i173 : int;
var i071 : int;
Block77:
	r069 := __this;
	 assert ($neref((r069), ($null))==1);
	 //  @line: 14
	$i270 := $HeapVar[r069, int$Curseur$maxX0];
	 assert ($neint((2), (0))==1);
	 //  @line: 14
	i071 := $divint(($i270), (2));
	 assert ($neref((r069), ($null))==1);
	 //  @line: 15
	$i372 := $HeapVar[r069, int$Curseur$maxY0];
	 assert ($neint((2), (0))==1);
	 //  @line: 15
	i173 := $divint(($i372), (2));
	 assert ($neref((r069), ($null))==1);
	 //  @line: 16
	$HeapVar[r069, int$Curseur$X0] := i071;
	 assert ($neref((r069), ($null))==1);
	 //  @line: 17
	$HeapVar[r069, int$Curseur$Y0] := i173;
	 return;
}


	 //  @line: 59
// <Carre: void <init>(int)>
procedure void$Carre$$la$init$ra$$2228(__this : ref, $param_0 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
var $r12 : [int][int]int;
var $z210 : int;
var $r26 : ref;
var i03 : int;
var $z19 : int;
var $i14 : int;
var $z05 : int;
Block16:
	r01 := __this;
	i03 := $param_0;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 60
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 57
	$HeapVar[r01, Curseur$Carre$curseur254] := $null;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 58
	$HeapVar[r01, int$Carre$cote0] := 0;
	 //  @line: 70
	$r12 := $fresh1;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 70
	$HeapVar[r01, int$lp$$rp$$lp$$rp$$Carre$carre255] := $r12;
	 goto Block17;
	 //  @line: 61
Block17:
	 goto Block20, Block18;
	 //  @line: 61
Block20:
	 //  @line: 61
	 assume ($negInt(($leint((i03), (1))))==1);
	 //  @line: 68
	$z19 := 1;
	 goto Block21;
	 //  @line: 61
Block18:
	 assume ($leint((i03), (1))==1);
	 goto Block19;
	 //  @line: 61
Block21:
	 //  @line: 61
	$i14 := $modint((i03), (2));
	 goto Block22;
	 //  @line: 68
Block19:
	 //  @line: 68
	$z19 := 0;
	 goto Block21;
	 //  @line: 61
Block22:
	 goto Block25, Block23;
	 //  @line: 61
Block25:
	 //  @line: 61
	 assume ($negInt(($neint(($i14), (1))))==1);
	 //  @line: 68
	$z210 := 1;
	 goto Block26;
	 //  @line: 61
Block23:
	 assume ($neint(($i14), (1))==1);
	 goto Block24;
	 //  @line: 61
Block26:
	 //  @line: 61
	$z05 := $andint(($z19), ($z210));
	 goto Block27;
	 //  @line: 68
Block24:
	 //  @line: 68
	$z210 := 0;
	 goto Block26;
	 //  @line: 61
Block27:
	 goto Block28, Block30;
	 //  @line: 61
Block28:
	 assume ($eqint(($z05), (0))==1);
	 goto Block29;
	 //  @line: 61
Block30:
	 //  @line: 61
	 assume ($negInt(($eqint(($z05), (0))))==1);
	 assert ($neref((r01), ($null))==1);
	 //  @line: 62
	$HeapVar[r01, int$Carre$cote0] := i03;
	 goto Block29;
	 //  @line: 67
Block29:
	 //  @line: 67
	$r26 := $newvariable((31));
	 assume ($neref(($newvariable((31))), ($null))==1);
	 assert ($neref(($r26), ($null))==1);
	 //  @line: 67
	 call void$Curseur$$la$init$ra$$2236(($r26), (i03), (i03), (1));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 67
	$HeapVar[r01, Curseur$Carre$curseur254] := $r26;
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



	 //  @line: 42
// <Curseur: int getX()>
procedure int$Curseur$getX$2242(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0100 : ref;
var $i0101 : int;
Block110:
	r0100 := __this;
	 assert ($neref((r0100), ($null))==1);
	 //  @line: 43
	$i0101 := $HeapVar[r0100, int$Curseur$X0];
	 //  @line: 43
	__ret := $i0101;
	 return;
}


// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



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



	 //  @line: 32
// <Curseur: void droite()>
procedure void$Curseur$droite$2240(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i088 : int;
var $i291 : int;
var $i392 : int;
var r087 : ref;
var $z090 : int;
var $i189 : int;
Block94:
	r087 := __this;
	 assert ($neref((r087), ($null))==1);
	 //  @line: 33
	$i088 := $HeapVar[r087, int$Curseur$X0];
	 //  @line: 33
	$i189 := $addint(($i088), (1));
	 assert ($neref((r087), ($null))==1);
	 //  @line: 33
	$HeapVar[r087, int$Curseur$X0] := $i189;
	 assert ($neref((r087), ($null))==1);
	 //  @line: 34
	$z090 := $HeapVar[r087, boolean$Curseur$torique0];
	 goto Block95;
	 //  @line: 34
Block95:
	 goto Block98, Block96;
	 //  @line: 34
Block98:
	 //  @line: 34
	 assume ($negInt(($eqint(($z090), (0))))==1);
	 assert ($neref((r087), ($null))==1);
	 //  @line: 35
	$i392 := $HeapVar[r087, int$Curseur$X0];
	 assert ($neref((r087), ($null))==1);
	 //  @line: 35
	$i291 := $HeapVar[r087, int$Curseur$maxX0];
	 goto Block99;
	 //  @line: 34
Block96:
	 assume ($eqint(($z090), (0))==1);
	 goto Block97;
	 //  @line: 35
Block99:
	 goto Block100, Block101;
	 //  @line: 35
Block97:
	 return;
	 //  @line: 35
Block100:
	 assume ($neint(($i392), ($i291))==1);
	 goto Block97;
	 //  @line: 35
Block101:
	 //  @line: 35
	 assume ($negInt(($neint(($i392), ($i291))))==1);
	 assert ($neref((r087), ($null))==1);
	 //  @line: 35
	$HeapVar[r087, int$Curseur$X0] := 0;
	 goto Block97;
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



	 //  @line: 2
// <Random: void <clinit>()>
procedure void$Random$$la$clinit$ra$$2247()
  modifies int$Random$index0;
 {
	 //  @line: 3
Block120:
	 //  @line: 3
	int$Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $divint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geint(x : int, y : int) returns (__ret : int) {
if (x >= y) then 1 else 0
}


	 //  @line: 5
// <Random: int random()>
procedure int$Random$random$2246() returns (__ret : int)
  modifies $stringSize, int$Random$index0;
 {
var $i5114 : int;
var $i1108 : int;
var $i0107 : int;
var $r2110 : [int]ref;
var $i4113 : int;
var r0111 : ref;
var $i3112 : int;
var $i2109 : int;
var $r1106 : [int]ref;
	 //  @line: 6
Block114:
	 //  @line: 6
	$i1108 := int$Random$index0;
	 //  @line: 6
	$r1106 := java.lang.String$lp$$rp$$Random$args256;
	 //  @line: 6
	$i0107 := $refArrSize[$r1106[$arrSizeIdx]];
	 goto Block115;
	 //  @line: 6
Block115:
	 goto Block118, Block116;
	 //  @line: 6
Block118:
	 //  @line: 6
	 assume ($negInt(($ltint(($i1108), ($i0107))))==1);
	 //  @line: 7
	__ret := 0;
	 return;
	 //  @line: 6
Block116:
	 assume ($ltint(($i1108), ($i0107))==1);
	 goto Block117;
	 //  @line: 9
Block117:
	 //  @line: 9
	$r2110 := java.lang.String$lp$$rp$$Random$args256;
	 goto Block119;
	 //  @line: 9
Block119:
	 //  @line: 9
	$i2109 := int$Random$index0;
	 assert ($geint(($i2109), (0))==1);
	 assert ($ltint(($i2109), ($refArrSize[$r2110[$arrSizeIdx]]))==1);
	 //  @line: 9
	r0111 := $r2110[$i2109];
	 //  @line: 10
	$i3112 := int$Random$index0;
	 //  @line: 10
	$i4113 := $addint(($i3112), (1));
	 //  @line: 10
	int$Random$index0 := $i4113;
	$i5114 := $stringSize[r0111];
	 //  @line: 11
	__ret := $i5114;
	 return;
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



	 //  @line: 105
// <Carre: boolean ajouter(int,int,int)>
procedure boolean$Carre$ajouter$2233(__this : ref, $param_0 : int, $param_1 : int, $param_2 : int) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var $r348 : [int][int]int;
var i245 : int;
var $r450 : [int]int;
var i143 : int;
var r042 : ref;
var i049 : int;
var $r144 : [int][int]int;
var $r246 : [int]int;
var $i347 : int;
Block56:
	r042 := __this;
	i049 := $param_0;
	i143 := $param_1;
	i245 := $param_2;
	 assert ($neref((r042), ($null))==1);
	 //  @line: 106
	$r144 := $HeapVar[r042, int$lp$$rp$$lp$$rp$$Carre$carre255];
	 assert ($geint((i143), (0))==1);
	 assert ($ltint((i143), ($fresh3))==1);
	 //  @line: 106
	$r246 := $r144[i143];
	 assert ($geint((i245), (0))==1);
	 assert ($ltint((i245), ($intArrSize[$r246[$arrSizeIdx]]))==1);
	 //  @line: 106
	$i347 := $r246[i245];
	 goto Block57;
	 //  @line: 106
Block57:
	 goto Block60, Block58;
	 //  @line: 106
Block60:
	 //  @line: 106
	 assume ($negInt(($eqint(($i347), (0))))==1);
	 //  @line: 108
	__ret := 0;
	 return;
	 //  @line: 106
Block58:
	 assume ($eqint(($i347), (0))==1);
	 goto Block59;
	 //  @line: 107
Block59:
	 assert ($neref((r042), ($null))==1);
	 //  @line: 107
	$r348 := $HeapVar[r042, int$lp$$rp$$lp$$rp$$Carre$carre255];
	 goto Block61;
	 //  @line: 107
Block61:
	 assert ($geint((i143), (0))==1);
	 assert ($ltint((i143), ($fresh4))==1);
	 //  @line: 107
	$r450 := $r348[i143];
	 assert ($geint((i245), (0))==1);
	 assert ($ltint((i245), ($intArrSize[$r450[$arrSizeIdx]]))==1);
	 //  @line: 107
	$r450[i245] := i049;
	 //  @line: 108
	__ret := 1;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 5
// <Curseur: void <init>(int,int,boolean)>
procedure void$Curseur$$la$init$ra$$2236(__this : ref, $param_0 : int, $param_1 : int, $param_2 : int)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var i167 : int;
var i066 : int;
var z068 : int;
var r065 : ref;
Block76:
	r065 := __this;
	i066 := $param_0;
	i167 := $param_1;
	z068 := $param_2;
	 assert ($neref((r065), ($null))==1);
	 //  @line: 6
	 call void$java.lang.Object$$la$init$ra$$28((r065));
	 assert ($neref((r065), ($null))==1);
	 //  @line: 2
	$HeapVar[r065, int$Curseur$X0] := 0;
	 assert ($neref((r065), ($null))==1);
	 //  @line: 2
	$HeapVar[r065, int$Curseur$Y0] := 0;
	 assert ($neref((r065), ($null))==1);
	 //  @line: 3
	$HeapVar[r065, boolean$Curseur$torique0] := 0;
	 assert ($neref((r065), ($null))==1);
	 //  @line: 7
	$HeapVar[r065, int$Curseur$maxX0] := i066;
	 assert ($neref((r065), ($null))==1);
	 //  @line: 8
	$HeapVar[r065, int$Curseur$maxY0] := i167;
	 assert ($neref((r065), ($null))==1);
	 //  @line: 9
	$HeapVar[r065, boolean$Curseur$torique0] := z068;
	 return;
}


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


	 //  @line: 111
// <Carre: void imprimer()>
procedure void$Carre$imprimer$2234(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r052 : ref;
var i256 : int;
var $i053 : int;
var $i155 : int;
var i357 : int;
Block62:
	r052 := __this;
	 //  @line: 112
	i256 := 0;
	 goto Block63;
	 //  @line: 112
Block63:
	 assert ($neref((r052), ($null))==1);
	 //  @line: 112
	$i053 := $HeapVar[r052, int$Carre$cote0];
	 goto Block64;
	 //  @line: 112
Block64:
	 goto Block65, Block67;
	 //  @line: 112
Block65:
	 assume ($geint((i256), ($i053))==1);
	 goto Block66;
	 //  @line: 112
Block67:
	 //  @line: 112
	 assume ($negInt(($geint((i256), ($i053))))==1);
	 //  @line: 113
	i357 := 0;
	 goto Block68;
	 //  @line: 118
Block66:
	 return;
	 //  @line: 113
Block68:
	 assert ($neref((r052), ($null))==1);
	 //  @line: 113
	$i155 := $HeapVar[r052, int$Carre$cote0];
	 goto Block69;
	 //  @line: 113
Block69:
	 goto Block70, Block72;
	 //  @line: 113
Block70:
	 assume ($geint((i357), ($i155))==1);
	 goto Block71;
	 //  @line: 113
Block72:
	 //  @line: 113
	 assume ($negInt(($geint((i357), ($i155))))==1);
	 //  @line: 112
	i357 := $addint((i357), (1));
	 goto Block68;
	 //  @line: 112
Block71:
	 //  @line: 112
	i256 := $addint((i256), (1));
	 goto Block73;
	 //  @line: 112
Block73:
	 goto Block63;
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



	 //  @line: 27
// <Curseur: void bas()>
procedure void$Curseur$bas$2239(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i386 : int;
var r081 : ref;
var $i082 : int;
var $z084 : int;
var $i285 : int;
var $i183 : int;
Block86:
	r081 := __this;
	 assert ($neref((r081), ($null))==1);
	 //  @line: 28
	$i082 := $HeapVar[r081, int$Curseur$Y0];
	 //  @line: 28
	$i183 := $addint(($i082), (1));
	 assert ($neref((r081), ($null))==1);
	 //  @line: 28
	$HeapVar[r081, int$Curseur$Y0] := $i183;
	 assert ($neref((r081), ($null))==1);
	 //  @line: 29
	$z084 := $HeapVar[r081, boolean$Curseur$torique0];
	 goto Block87;
	 //  @line: 29
Block87:
	 goto Block88, Block90;
	 //  @line: 29
Block88:
	 assume ($eqint(($z084), (0))==1);
	 goto Block89;
	 //  @line: 29
Block90:
	 //  @line: 29
	 assume ($negInt(($eqint(($z084), (0))))==1);
	 assert ($neref((r081), ($null))==1);
	 //  @line: 30
	$i386 := $HeapVar[r081, int$Curseur$Y0];
	 assert ($neref((r081), ($null))==1);
	 //  @line: 30
	$i285 := $HeapVar[r081, int$Curseur$maxY0];
	 goto Block91;
	 //  @line: 30
Block89:
	 return;
	 //  @line: 30
Block91:
	 goto Block93, Block92;
	 //  @line: 30
Block93:
	 //  @line: 30
	 assume ($negInt(($neint(($i386), ($i285))))==1);
	 assert ($neref((r081), ($null))==1);
	 //  @line: 30
	$HeapVar[r081, int$Curseur$Y0] := 0;
	 goto Block89;
	 //  @line: 30
Block92:
	 assume ($neint(($i386), ($i285))==1);
	 goto Block89;
}


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


	 //  @line: 22
// <Curseur: void haut()>
procedure void$Curseur$haut$2238(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $i278 : int;
var r074 : ref;
var $i075 : int;
var $i379 : int;
var $i176 : int;
var $i480 : int;
var $z077 : int;
Block78:
	r074 := __this;
	 assert ($neref((r074), ($null))==1);
	 //  @line: 23
	$i075 := $HeapVar[r074, int$Curseur$Y0];
	 //  @line: 23
	$i176 := $subint(($i075), (1));
	 assert ($neref((r074), ($null))==1);
	 //  @line: 23
	$HeapVar[r074, int$Curseur$Y0] := $i176;
	 assert ($neref((r074), ($null))==1);
	 //  @line: 24
	$z077 := $HeapVar[r074, boolean$Curseur$torique0];
	 goto Block79;
	 //  @line: 24
Block79:
	 goto Block80, Block82;
	 //  @line: 24
Block80:
	 assume ($eqint(($z077), (0))==1);
	 goto Block81;
	 //  @line: 24
Block82:
	 //  @line: 24
	 assume ($negInt(($eqint(($z077), (0))))==1);
	 assert ($neref((r074), ($null))==1);
	 //  @line: 25
	$i278 := $HeapVar[r074, int$Curseur$Y0];
	 goto Block83;
	 //  @line: 25
Block81:
	 return;
	 //  @line: 25
Block83:
	 goto Block84, Block85;
	 //  @line: 25
Block84:
	 assume ($geint(($i278), (0))==1);
	 goto Block81;
	 //  @line: 25
Block85:
	 //  @line: 25
	 assume ($negInt(($geint(($i278), (0))))==1);
	 assert ($neref((r074), ($null))==1);
	 //  @line: 25
	$i379 := $HeapVar[r074, int$Curseur$maxY0];
	 //  @line: 25
	$i480 := $subint(($i379), (1));
	 assert ($neref((r074), ($null))==1);
	 //  @line: 25
	$HeapVar[r074, int$Curseur$Y0] := $i480;
	 goto Block81;
}


// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// <Random: void <init>()>
procedure void$Random$$la$init$ra$$2245(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0105 : ref;
Block113:
	r0105 := __this;
	 assert ($neref((r0105), ($null))==1);
	 //  @line: 1
	 call void$java.lang.Object$$la$init$ra$$28((r0105));
	 return;
}


	 //  @line: 97
// <Carre: Curseur curseur()>
procedure Curseur$Carre$curseur$2231(__this : ref) returns (__ret : ref)  requires ($neref((__this), ($null))==1);
 {
var $r139 : ref;
var r038 : ref;
Block54:
	r038 := __this;
	 assert ($neref((r038), ($null))==1);
	 //  @line: 98
	$r139 := $HeapVar[r038, Curseur$Carre$curseur254];
	 //  @line: 98
	__ret := $r139;
	 return;
}


	 //  @line: 46
// <Curseur: int getY()>
procedure int$Curseur$getY$2243(__this : ref) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var r0102 : ref;
var $i0103 : int;
Block111:
	r0102 := __this;
	 assert ($neref((r0102), ($null))==1);
	 //  @line: 47
	$i0103 := $HeapVar[r0102, int$Curseur$Y0];
	 //  @line: 47
	__ret := $i0103;
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



// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 37
// <Curseur: void gauche()>
procedure void$Curseur$gauche$2241(__this : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var $z096 : int;
var $i398 : int;
var $i195 : int;
var $i499 : int;
var $i094 : int;
var $i297 : int;
var r093 : ref;
Block102:
	r093 := __this;
	 assert ($neref((r093), ($null))==1);
	 //  @line: 38
	$i094 := $HeapVar[r093, int$Curseur$X0];
	 //  @line: 38
	$i195 := $subint(($i094), (1));
	 assert ($neref((r093), ($null))==1);
	 //  @line: 38
	$HeapVar[r093, int$Curseur$X0] := $i195;
	 assert ($neref((r093), ($null))==1);
	 //  @line: 39
	$z096 := $HeapVar[r093, boolean$Curseur$torique0];
	 goto Block103;
	 //  @line: 39
Block103:
	 goto Block104, Block106;
	 //  @line: 39
Block104:
	 assume ($eqint(($z096), (0))==1);
	 goto Block105;
	 //  @line: 39
Block106:
	 //  @line: 39
	 assume ($negInt(($eqint(($z096), (0))))==1);
	 assert ($neref((r093), ($null))==1);
	 //  @line: 40
	$i297 := $HeapVar[r093, int$Curseur$X0];
	 goto Block107;
	 //  @line: 40
Block105:
	 return;
	 //  @line: 40
Block107:
	 goto Block108, Block109;
	 //  @line: 40
Block108:
	 assume ($geint(($i297), (0))==1);
	 goto Block105;
	 //  @line: 40
Block109:
	 //  @line: 40
	 assume ($negInt(($geint(($i297), (0))))==1);
	 assert ($neref((r093), ($null))==1);
	 //  @line: 40
	$i398 := $HeapVar[r093, int$Curseur$maxX0];
	 //  @line: 40
	$i499 := $subint(($i398), (1));
	 assert ($neref((r093), ($null))==1);
	 //  @line: 40
	$HeapVar[r093, int$Curseur$X0] := $i499;
	 goto Block105;
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


	 //  @line: 120
// <Carre: void main(java.lang.String[])>
procedure void$Carre$main$2235($param_0 : [int]ref)
  modifies java.lang.String$lp$$rp$$Random$args256, $stringSize;
 {
var r058 : [int]ref;
var $i162 : int;
var $i061 : int;
var r164 : ref;
var $i263 : int;
var $r259 : ref;
Block74:
	r058 := $param_0;
	 //  @line: 121
	java.lang.String$lp$$rp$$Random$args256 := r058;
	 //  @line: 122
	$r259 := $newvariable((75));
	 assume ($neref(($newvariable((75))), ($null))==1);
	 //  @line: 122
	 call $i061 := int$Random$random$2246();
	 //  @line: 122
	$i162 := $mulint((2), ($i061));
	 //  @line: 122
	$i263 := $addint(($i162), (1));
	 assert ($neref(($r259), ($null))==1);
	 //  @line: 122
	 call void$Carre$$la$init$ra$$2228(($r259), ($i263));
	 //  @line: 122
	r164 := $r259;
	 assert ($neref((r164), ($null))==1);
	 //  @line: 123
	 call void$Carre$init$2229((r164));
	 assert ($neref((r164), ($null))==1);
	 //  @line: 125
	 call void$Carre$imprimer$2234((r164));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 79
// <Carre: void peupler()>
procedure void$Carre$peupler$2230(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var i337 : int;
var $r634 : ref;
var $r735 : ref;
var $z031 : int;
var r023 : ref;
var $r227 : ref;
var $r533 : ref;
var $i130 : int;
var i236 : int;
var $i028 : int;
var $r124 : ref;
var $r329 : ref;
var $r432 : ref;
Block44:
	r023 := __this;
	 assert ($neref((r023), ($null))==1);
	 //  @line: 80
	$r124 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r124), ($null))==1);
	 //  @line: 80
	 call void$Curseur$bas$2239(($r124));
	 //  @line: 81
	i236 := 1;
	 //  @line: 82
	i337 := 1;
	 goto Block45;
	 //  @line: 83
Block45:
	 goto Block46, Block48;
	 //  @line: 83
Block46:
	 assume ($geint((i337), (3))==1);
	 goto Block47;
	 //  @line: 83
Block48:
	 //  @line: 83
	 assume ($negInt(($geint((i337), (3))))==1);
	 assert ($neref((r023), ($null))==1);
	 //  @line: 84
	$r227 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r227), ($null))==1);
	 //  @line: 84
	 call $i028 := int$Curseur$getX$2242(($r227));
	 assert ($neref((r023), ($null))==1);
	 //  @line: 84
	$r329 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r329), ($null))==1);
	 //  @line: 84
	 call $i130 := int$Curseur$getY$2243(($r329));
	 assert ($neref((r023), ($null))==1);
	 //  @line: 84
	 call $z031 := boolean$Carre$ajouter$2233((r023), (i236), ($i028), ($i130));
	 goto Block49;
	 //  @line: 95
Block47:
	 return;
	 //  @line: 84
Block49:
	 goto Block50, Block52;
	 //  @line: 84
Block50:
	 assume ($neint(($z031), (0))==1);
	 goto Block51;
	 //  @line: 84
Block52:
	 //  @line: 84
	 assume ($negInt(($neint(($z031), (0))))==1);
	 assert ($neref((r023), ($null))==1);
	 //  @line: 85
	$r634 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r634), ($null))==1);
	 //  @line: 85
	 call void$Curseur$bas$2239(($r634));
	 assert ($neref((r023), ($null))==1);
	 //  @line: 86
	$r735 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r735), ($null))==1);
	 //  @line: 86
	 call void$Curseur$gauche$2241(($r735));
	 //  @line: 87
	i337 := $addint((i337), (1));
	 goto Block45;
	 //  @line: 89
Block51:
	 //  @line: 89
	i337 := 1;
	 goto Block53;
	 //  @line: 90
Block53:
	 assert ($neref((r023), ($null))==1);
	 //  @line: 90
	$r432 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r432), ($null))==1);
	 //  @line: 90
	 call void$Curseur$bas$2239(($r432));
	 assert ($neref((r023), ($null))==1);
	 //  @line: 91
	$r533 := $HeapVar[r023, Curseur$Carre$curseur254];
	 assert ($neref(($r533), ($null))==1);
	 //  @line: 91
	 call void$Curseur$droite$2240(($r533));
	 //  @line: 92
	i236 := $addint((i236), (1));
	 goto Block45;
}


// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}


	 //  @line: 51
// <Curseur: void imprimer()>
procedure void$Curseur$imprimer$2244(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r0104 : ref;
Block112:
	r0104 := __this;
	 return;
}


