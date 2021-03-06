//#Safe
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(y: bv32, x$1: [bv32]bv32, x$2: [bv32]bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);
  requires y == 0bv32;

axiom {:array_info "$$globalCounter"} {:global} {:elem_width 32} {:source_name "globalCounter"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$globalCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$globalCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$globalCounter: bool;

axiom {:array_info "$$localCounter"} {:group_shared} {:elem_width 32} {:source_name "localCounter"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$localCounter: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$localCounter: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$localCounter: bool;

var {:source_name "globalArray"} {:global} $$globalArray: [bv32]bv32;

axiom {:array_info "$$globalArray"} {:global} {:elem_width 32} {:source_name "globalArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$globalArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$globalArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$globalArray: bool;

var {:source_name "localArray"} {:group_shared} $$localArray: [bv1][bv32]bv32;

axiom {:array_info "$$localArray"} {:group_shared} {:elem_width 32} {:source_name "localArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$localArray: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$localArray: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$localArray: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function UI32_TO_FP32(bv32) : bv32;

function {:builtin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:builtin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

procedure {:source_name "foo"} ULTIMATE.start();
  requires !_READ_HAS_OCCURRED_$$globalCounter && !_WRITE_HAS_OCCURRED_$$globalCounter && !_ATOMIC_HAS_OCCURRED_$$globalCounter;
  requires !_READ_HAS_OCCURRED_$$globalArray && !_WRITE_HAS_OCCURRED_$$globalArray && !_ATOMIC_HAS_OCCURRED_$$globalArray;
  requires !_READ_HAS_OCCURRED_$$localCounter && !_WRITE_HAS_OCCURRED_$$localCounter && !_ATOMIC_HAS_OCCURRED_$$localCounter;
  requires !_READ_HAS_OCCURRED_$$localArray && !_WRITE_HAS_OCCURRED_$$localArray && !_ATOMIC_HAS_OCCURRED_$$localArray;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _USED_$$globalCounter, _USED_$$localCounter, $$localArray, _ATOMIC_HAS_OCCURRED_$$globalCounter, _ATOMIC_HAS_OCCURRED_$$localCounter, _WRITE_HAS_OCCURRED_$$globalArray, _WRITE_READ_BENIGN_FLAG_$$globalArray, _WRITE_READ_BENIGN_FLAG_$$globalArray, _WRITE_HAS_OCCURRED_$$localArray, _WRITE_READ_BENIGN_FLAG_$$localArray, _WRITE_READ_BENIGN_FLAG_$$localArray;

implementation {:source_name "foo"} ULTIMATE.start()
{
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;

  $entry:
    call _LOG_ATOMIC_$$globalCounter(true, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call _CHECK_ATOMIC_$$globalCounter(true, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$globalCounter"} true;
    havoc v0$1, v0$2;
    assume !_USED_$$globalCounter[0bv32][v0$1];
    _USED_$$globalCounter[0bv32][v0$1] := true;
    assume !_USED_$$globalCounter[0bv32][v0$2];
    _USED_$$globalCounter[0bv32][v0$2] := true;
    call _LOG_ATOMIC_$$localCounter(true, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call _CHECK_ATOMIC_$$localCounter(true, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$localCounter"} true;
    havoc v1$1, v1$2;
    assume !_USED_$$localCounter[0bv32][v1$1];
    _USED_$$localCounter[0bv32][v1$1] := true;
    assume !_USED_$$localCounter[0bv32][v1$2];
    _USED_$$localCounter[0bv32][v1$2] := true;
    call _LOG_WRITE_$$globalArray(true, v0$1, UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$globalArray[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$globalArray(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 3} true;
    call _CHECK_WRITE_$$globalArray(true, v0$2, UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$globalArray"} true;
    $$globalArray[v0$1] := UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    $$globalArray[v0$2] := UI32_TO_FP32(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    call _LOG_WRITE_$$localArray(true, v1$1, UI32_TO_FP32(local_id_x$1), $$localArray[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$localArray(true, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 4} true;
    call _CHECK_WRITE_$$localArray(true, v1$2, UI32_TO_FP32(local_id_x$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$localArray"} true;
    $$localArray[1bv1][v1$1] := UI32_TO_FP32(local_id_x$1);
    $$localArray[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := UI32_TO_FP32(local_id_x$2);
    return;
}

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 12bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

var {:atomic_usedmap} _USED_$$globalCounter: [bv32][bv32]bool;

var {:atomic_usedmap} _USED_$$localCounter: [bv32][bv32]bool;

const _WATCHED_VALUE_$$globalCounter: bv32;

procedure {:inline 1} _LOG_READ_$$globalCounter(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$globalCounter;

implementation {:inline 1} _LOG_READ_$$globalCounter(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$globalCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalCounter == _value then true else _READ_HAS_OCCURRED_$$globalCounter);
    return;
}

procedure _CHECK_READ_$$globalCounter(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$globalCounter);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset);

var _WRITE_READ_BENIGN_FLAG_$$globalCounter: bool;

procedure {:inline 1} _LOG_WRITE_$$globalCounter(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$globalCounter, _WRITE_READ_BENIGN_FLAG_$$globalCounter;

implementation {:inline 1} _LOG_WRITE_$$globalCounter(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$globalCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalCounter == _value then true else _WRITE_HAS_OCCURRED_$$globalCounter);
    _WRITE_READ_BENIGN_FLAG_$$globalCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalCounter == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$globalCounter);
    return;
}

procedure _CHECK_WRITE_$$globalCounter(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalCounter != _value);
  requires !(_P && _READ_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalCounter != _value);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _LOG_ATOMIC_$$globalCounter(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$globalCounter;

implementation {:inline 1} _LOG_ATOMIC_$$globalCounter(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$globalCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$globalCounter);
    return;
}

procedure _CHECK_ATOMIC_$$globalCounter(_P: bool, _offset: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset);
  requires !(_P && _READ_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$globalCounter(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$globalCounter;

implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$globalCounter(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$globalCounter := (if _P && _WRITE_HAS_OCCURRED_$$globalCounter && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$globalCounter);
    return;
}

const _WATCHED_VALUE_$$globalArray: bv32;

procedure {:inline 1} _LOG_READ_$$globalArray(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$globalArray;

implementation {:inline 1} _LOG_READ_$$globalArray(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$globalArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalArray == _value then true else _READ_HAS_OCCURRED_$$globalArray);
    return;
}

procedure _CHECK_READ_$$globalArray(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$globalArray);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset);

var _WRITE_READ_BENIGN_FLAG_$$globalArray: bool;

procedure {:inline 1} _LOG_WRITE_$$globalArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$globalArray, _WRITE_READ_BENIGN_FLAG_$$globalArray;

implementation {:inline 1} _LOG_WRITE_$$globalArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$globalArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalArray == _value then true else _WRITE_HAS_OCCURRED_$$globalArray);
    _WRITE_READ_BENIGN_FLAG_$$globalArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$globalArray);
    return;
}

procedure _CHECK_WRITE_$$globalArray(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalArray != _value);
  requires !(_P && _READ_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$globalArray != _value);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _LOG_ATOMIC_$$globalArray(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$globalArray;

implementation {:inline 1} _LOG_ATOMIC_$$globalArray(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$globalArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$globalArray);
    return;
}

procedure _CHECK_ATOMIC_$$globalArray(_P: bool, _offset: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset);
  requires !(_P && _READ_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$globalArray(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$globalArray;

implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$globalArray(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$globalArray := (if _P && _WRITE_HAS_OCCURRED_$$globalArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$globalArray);
    return;
}

const _WATCHED_VALUE_$$localCounter: bv32;

procedure {:inline 1} _LOG_READ_$$localCounter(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$localCounter;

implementation {:inline 1} _LOG_READ_$$localCounter(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$localCounter := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localCounter == _value then true else _READ_HAS_OCCURRED_$$localCounter);
    return;
}

procedure _CHECK_READ_$$localCounter(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$localCounter && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);

var _WRITE_READ_BENIGN_FLAG_$$localCounter: bool;

procedure {:inline 1} _LOG_WRITE_$$localCounter(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$localCounter, _WRITE_READ_BENIGN_FLAG_$$localCounter;

implementation {:inline 1} _LOG_WRITE_$$localCounter(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$localCounter := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localCounter == _value then true else _WRITE_HAS_OCCURRED_$$localCounter);
    _WRITE_READ_BENIGN_FLAG_$$localCounter := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localCounter == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$localCounter);
    return;
}

procedure _CHECK_WRITE_$$localCounter(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localCounter != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _READ_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localCounter != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);

procedure {:inline 1} _LOG_ATOMIC_$$localCounter(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$localCounter;

implementation {:inline 1} _LOG_ATOMIC_$$localCounter(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$localCounter := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$localCounter);
    return;
}

procedure _CHECK_ATOMIC_$$localCounter(_P: bool, _offset: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _READ_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);

procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$localCounter(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$localCounter;

implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$localCounter(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$localCounter := (if _P && _WRITE_HAS_OCCURRED_$$localCounter && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$localCounter);
    return;
}

const _WATCHED_VALUE_$$localArray: bv32;

procedure {:inline 1} _LOG_READ_$$localArray(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$localArray;

implementation {:inline 1} _LOG_READ_$$localArray(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$localArray := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localArray == _value then true else _READ_HAS_OCCURRED_$$localArray);
    return;
}

procedure _CHECK_READ_$$localArray(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$localArray && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);

var _WRITE_READ_BENIGN_FLAG_$$localArray: bool;

procedure {:inline 1} _LOG_WRITE_$$localArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$localArray, _WRITE_READ_BENIGN_FLAG_$$localArray;

implementation {:inline 1} _LOG_WRITE_$$localArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$localArray := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localArray == _value then true else _WRITE_HAS_OCCURRED_$$localArray);
    _WRITE_READ_BENIGN_FLAG_$$localArray := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$localArray);
    return;
}

procedure _CHECK_WRITE_$$localArray(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localArray != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _READ_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$localArray != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);

procedure {:inline 1} _LOG_ATOMIC_$$localArray(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$localArray;

implementation {:inline 1} _LOG_ATOMIC_$$localArray(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$localArray := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$localArray);
    return;
}

procedure _CHECK_ATOMIC_$$localArray(_P: bool, _offset: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires !(_P && _READ_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);

procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$localArray(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$localArray;

implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$localArray(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$localArray := (if _P && _WRITE_HAS_OCCURRED_$$localArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$localArray);
    return;
}

var _TRACKING: bool;

function {:builtin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:builtin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:builtin "bvslt"} BV32_SLT(bv32, bv32) : bool;
