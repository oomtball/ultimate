//#Unsafe
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);

var {:source_name "G"} {:global} $$G: [bv32]bv32;

axiom {:array_info "$$G"} {:global} {:elem_width 32} {:source_name "G"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$G: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$G: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$G: bool;

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

function {:builtin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:builtin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

procedure {:source_name "example"} ULTIMATE.start();
  requires !_READ_HAS_OCCURRED_$$G && !_WRITE_HAS_OCCURRED_$$G && !_ATOMIC_HAS_OCCURRED_$$G;
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
  modifies _WRITE_HAS_OCCURRED_$$G, _WRITE_READ_BENIGN_FLAG_$$G, _WRITE_READ_BENIGN_FLAG_$$G;

implementation {:source_name "example"} ULTIMATE.start()
{

  $entry:
    call _LOG_WRITE_$$G(true, 7bv32, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $$G[7bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$G(true, 7bv32);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call _CHECK_WRITE_$$G(true, 7bv32, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$G"} true;
    $$G[7bv32] := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    $$G[7bv32] := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    return;
}

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 4bv32 then 1bv1 else 0bv1) != 0bv1;

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

const _WATCHED_VALUE_$$G: bv32;

procedure {:inline 1} _LOG_READ_$$G(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$G;

implementation {:inline 1} _LOG_READ_$$G(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G == _value then true else _READ_HAS_OCCURRED_$$G);
    return;
}

procedure _CHECK_READ_$$G(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$G);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);

var _WRITE_READ_BENIGN_FLAG_$$G: bool;

procedure {:inline 1} _LOG_WRITE_$$G(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$G, _WRITE_READ_BENIGN_FLAG_$$G;

implementation {:inline 1} _LOG_WRITE_$$G(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G == _value then true else _WRITE_HAS_OCCURRED_$$G);
    _WRITE_READ_BENIGN_FLAG_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$G);
    return;
}

procedure _CHECK_WRITE_$$G(_P: bool, _offset: bv32, _value: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G != _value);
  requires !(_P && _READ_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$G != _value);
  requires !(_P && _ATOMIC_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _LOG_ATOMIC_$$G(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$G;

implementation {:inline 1} _LOG_ATOMIC_$$G(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$G := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$G);
    return;
}

procedure _CHECK_ATOMIC_$$G(_P: bool, _offset: bv32);
  requires !(_P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);
  requires !(_P && _READ_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset);

procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$G(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$G;

implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$G(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$G := (if _P && _WRITE_HAS_OCCURRED_$$G && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$G);
    return;
}

var _TRACKING: bool;

function {:builtin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:builtin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:builtin "bvslt"} BV32_SLT(bv32, bv32) : bool;
