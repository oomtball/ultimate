//#Safe
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);

axiom {:array_info "$$argument"} {:global} {:elem_width 32} {:source_name "argument"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$argument: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$argument: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$argument: bool;

const $arrayId$$argument: arrayId;

axiom $arrayId$$argument == 1bv2;

type ptr = bv32;

type arrayId = bv2;

function {:inline true} MKPTR(base: arrayId, offset: bv32) : ptr
{
  base ++ offset[30:0]
}

function {:inline true} base#MKPTR(p: ptr) : arrayId
{
  p[32:30]
}

function {:inline true} offset#MKPTR(p: ptr) : bv32
{
  0bv2 ++ p[30:0]
}

const $arrayId$$null$: arrayId;

axiom $arrayId$$null$ == 0bv2;

const _WATCHED_OFFSET: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

procedure {:source_name "foo"} ULTIMATE.start();
  requires !_READ_HAS_OCCURRED_$$argument && !_WRITE_HAS_OCCURRED_$$argument && !_ATOMIC_HAS_OCCURRED_$$argument;
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

implementation {:source_name "foo"} ULTIMATE.start()
{

  $entry:
    return;
}

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 2bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 1bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$argument: ptr;

procedure {:inline 1} _LOG_READ_$$argument(_P: bool, _offset: bv32, _value: ptr);
  modifies _READ_HAS_OCCURRED_$$argument;

implementation {:inline 1} _LOG_READ_$$argument(_P: bool, _offset: bv32, _value: ptr)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$argument := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$argument == _value then true else _READ_HAS_OCCURRED_$$argument);
    return;
}

procedure _CHECK_READ_$$argument(_P: bool, _offset: bv32, _value: ptr);
  requires !(_P && _WRITE_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$argument);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset);

var _WRITE_READ_BENIGN_FLAG_$$argument: bool;

procedure {:inline 1} _LOG_WRITE_$$argument(_P: bool, _offset: bv32, _value: ptr, _value_old: ptr);
  modifies _WRITE_HAS_OCCURRED_$$argument, _WRITE_READ_BENIGN_FLAG_$$argument;

implementation {:inline 1} _LOG_WRITE_$$argument(_P: bool, _offset: bv32, _value: ptr, _value_old: ptr)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$argument := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$argument == _value then true else _WRITE_HAS_OCCURRED_$$argument);
    _WRITE_READ_BENIGN_FLAG_$$argument := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$argument == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$argument);
    return;
}

procedure _CHECK_WRITE_$$argument(_P: bool, _offset: bv32, _value: ptr);
  requires !(_P && _WRITE_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$argument != _value);
  requires !(_P && _READ_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$argument != _value);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _LOG_ATOMIC_$$argument(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$argument;

implementation {:inline 1} _LOG_ATOMIC_$$argument(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$argument := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$argument);
    return;
}

procedure _CHECK_ATOMIC_$$argument(_P: bool, _offset: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset);
  requires !(_P && _READ_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$argument(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$argument;

implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$argument(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$argument := (if _P && _WRITE_HAS_OCCURRED_$$argument && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$argument);
    return;
}

var _TRACKING: bool;

function {:builtin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:builtin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:builtin "bvslt"} BV32_SLT(bv32, bv32) : bool;
