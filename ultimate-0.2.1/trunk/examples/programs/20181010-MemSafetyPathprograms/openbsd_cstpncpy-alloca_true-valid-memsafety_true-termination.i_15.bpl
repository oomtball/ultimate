var #memory_$Pointer$.base : [int][int]int;

var #valid : [int]int;

var #memory_int : [int][int]int;

var #NULL.offset : int;

var #length : [int]int;

var #NULL.base : int;

var #memory_$Pointer$.offset : [int][int]int;

procedure ULTIMATE.start() returns ()
modifies #memory_$Pointer$.base, #valid, #memory_int, #NULL.offset, #length, #NULL.base, #memory_$Pointer$.offset;
{
    var cstpncpy_#t~mem10.offset : int;
    var read~int_#value : int;
    var main_~nondetArea~0.offset : int;
    var main_#t~nondet11 : int;
    var write~$Pointer$_#sizeOfWrittenType : int;
    var main_#t~malloc13.base : int;
    var main_#t~malloc14.base : int;
    var cstpncpy_~#dst.offset : int;
    var cstpncpy_~src.base : int;
    var main_~nondetString~0.offset : int;
    var cstpncpy_#t~mem7 : int;
    var main_~nondetArea~0.base : int;
    var read~$Pointer$_#value.offset : int;
    var cstpncpy_#t~mem3.offset : int;
    var cstpncpy_#t~post5.offset : int;
    var write~int_#ptr.base : int;
    var write~$Pointer$_old_#memory_int : [int][int]int;
    var cstpncpy_#in~n : int;
    var #Ultimate.alloc_#res.base : int;
    var #Ultimate.alloc_#res.offset : int;
    var cstpncpy_#t~post6.base : int;
    var write~int_old_#memory_$Pointer$.offset : [int][int]int;
    var cstpncpy_#in~src.base : int;
    var main_~n~0 : int;
    var cstpncpy_#t~post9.offset : int;
    var write~int_old_#memory_int : [int][int]int;
    var main_old_#valid : [int]int;
    var #Ultimate.alloc_old_#length : [int]int;
    var read~$Pointer$_#ptr.offset : int;
    var write~$Pointer$_#ptr.base : int;
    var write~int_#sizeOfWrittenType : int;
    var write~$Pointer$_#ptr.offset : int;
    var read~int_#ptr.base : int;
    var main_~nondetString~0.base : int;
    var cstpncpy_#t~mem2.offset : int;
    var write~int_#value : int;
    var cstpncpy_#in~dst.offset : int;
    var main_~length~0 : int;
    var cstpncpy_~d~0.base : int;
    var read~$Pointer$_#value.base : int;
    var cstpncpy_#in~src.offset : int;
    var main_#t~nondet12 : int;
    var #Ultimate.alloc_old_#valid : [int]int;
    var cstpncpy_#in~dst.base : int;
    var cstpncpy_~n : int;
    var read~$Pointer$_#sizeOfReadType : int;
    var write~int_#ptr.offset : int;
    var cstpncpy_~s~0.offset : int;
    var main_#t~ret15.base : int;
    var cstpncpy_#t~mem2.base : int;
    var cstpncpy_#t~mem3.base : int;
    var write~$Pointer$_#value.offset : int;
    var cstpncpy_#t~pre4 : int;
    var cstpncpy_#t~pre8 : int;
    var cstpncpy_~s~0.base : int;
    var write~$Pointer$_old_#memory_$Pointer$.base : [int][int]int;
    var #Ultimate.alloc_~size : int;
    var cstpncpy_#t~post5.base : int;
    var main_#t~malloc13.offset : int;
    var cstpncpy_#res.base : int;
    var cstpncpy_#res.offset : int;
    var write~int_old_#memory_$Pointer$.base : [int][int]int;
    var main_#t~ret15.offset : int;
    var cstpncpy_~#dst.base : int;
    var read~int_#sizeOfReadType : int;
    var cstpncpy_~d~0.offset : int;
    var cstpncpy_~src.offset : int;
    var write~$Pointer$_#value.base : int;
    var cstpncpy_#t~mem10.base : int;
    var read~int_#ptr.offset : int;
    var main_#res : int;
    var write~$Pointer$_old_#memory_$Pointer$.offset : [int][int]int;
    var cstpncpy_#t~post6.offset : int;
    var read~$Pointer$_#ptr.base : int;
    var cstpncpy_#t~post9.base : int;
    var main_#t~malloc14.offset : int;

  loc0:
    #NULL.offset, #NULL.base := 0, 0;
    #valid := #valid[0 := 0];
    main_old_#valid := #valid;
    havoc main_#res;
    havoc main_~nondetArea~0.offset, main_#t~nondet11, main_#t~nondet12, main_#t~malloc13.base, main_#t~malloc13.offset, main_#t~malloc14.base, main_~nondetString~0.offset, main_~n~0, main_~nondetArea~0.base, main_#t~ret15.offset, main_#t~ret15.base, main_~nondetString~0.base, main_#t~malloc14.offset, main_~length~0;
    assume 0 <= main_#t~nondet11 + 2147483648 && main_#t~nondet11 <= 2147483647;
    main_~length~0 := main_#t~nondet11;
    havoc main_#t~nondet11;
    assume 0 <= main_#t~nondet12 + 2147483648 && main_#t~nondet12 <= 2147483647;
    main_~n~0 := main_#t~nondet12;
    havoc main_#t~nondet12;
    assume !(main_~length~0 < 1);
    assume !(main_~n~0 < 1);
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := main_~n~0;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1] == #valid;
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size] == #length;
    main_#t~malloc13.base, main_#t~malloc13.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~nondetArea~0.offset, main_~nondetArea~0.base := main_#t~malloc13.offset, main_#t~malloc13.base;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := main_~length~0;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    main_#t~malloc14.base, main_#t~malloc14.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    main_~nondetString~0.base, main_~nondetString~0.offset := main_#t~malloc14.base, main_#t~malloc14.offset;
    write~int_old_#memory_$Pointer$.offset, write~int_old_#memory_$Pointer$.base, write~int_old_#memory_int := #memory_$Pointer$.offset, #memory_$Pointer$.base, #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, main_~nondetString~0.base, 0, main_~length~0 + main_~nondetString~0.offset + -1;
    assume #valid[write~int_#ptr.base] == 1;
    assume 0 <= write~int_#ptr.offset && write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base];
    assume 1 == #valid[write~int_#ptr.base];
    assume write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    havoc #memory_int;
    assume (#memory_int == write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]] && write~int_old_#memory_$Pointer$.base[write~int_#ptr.base := write~int_old_#memory_$Pointer$.base[write~int_#ptr.base][write~int_#ptr.offset := #memory_$Pointer$.base[write~int_#ptr.base][write~int_#ptr.offset]]] == #memory_$Pointer$.base) && #memory_$Pointer$.offset == write~int_old_#memory_$Pointer$.offset[write~int_#ptr.base := write~int_old_#memory_$Pointer$.offset[write~int_#ptr.base][write~int_#ptr.offset := #memory_$Pointer$.offset[write~int_#ptr.base][write~int_#ptr.offset]]];
    cstpncpy_#in~src.offset, cstpncpy_#in~src.base, cstpncpy_#in~dst.base, cstpncpy_#in~dst.offset, cstpncpy_#in~n := main_~nondetString~0.offset, main_~nondetString~0.base, main_~nondetArea~0.base, main_~nondetArea~0.offset, main_~n~0;
    havoc cstpncpy_#res.base, cstpncpy_#res.offset;
    havoc cstpncpy_~d~0.base, cstpncpy_#t~mem10.offset, cstpncpy_#t~post5.base, cstpncpy_#t~post6.base, cstpncpy_~#dst.offset, cstpncpy_~src.base, cstpncpy_#t~mem7, cstpncpy_#t~post9.offset, cstpncpy_~#dst.base, cstpncpy_~n, cstpncpy_#t~mem3.offset, cstpncpy_~s~0.offset, cstpncpy_~d~0.offset, cstpncpy_~src.offset, cstpncpy_#t~mem2.base, cstpncpy_#t~mem3.base, cstpncpy_#t~post5.offset, cstpncpy_#t~mem10.base, cstpncpy_#t~mem2.offset, cstpncpy_#t~post6.offset, cstpncpy_#t~pre4, cstpncpy_#t~post9.base, cstpncpy_#t~pre8, cstpncpy_~s~0.base;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 4;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    cstpncpy_~#dst.offset, cstpncpy_~#dst.base := #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset, write~$Pointer$_old_#memory_int := #memory_$Pointer$.base, #memory_$Pointer$.offset, #memory_int;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := cstpncpy_#in~dst.base, cstpncpy_~#dst.offset, 4, cstpncpy_#in~dst.offset, cstpncpy_~#dst.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#sizeOfWrittenType + write~$Pointer$_#ptr.offset <= #length[write~$Pointer$_#ptr.base];
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume (#memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]] && write~$Pointer$_old_#memory_int[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_int[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := #memory_int[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset]]] == #memory_int) && #memory_$Pointer$.offset == write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]];
    cstpncpy_~src.offset, cstpncpy_~src.base := cstpncpy_#in~src.offset, cstpncpy_#in~src.base;
    cstpncpy_~n := cstpncpy_#in~n;
    assume !(0 == cstpncpy_~n % 4294967296);
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := cstpncpy_~#dst.base, 4, cstpncpy_~#dst.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume 0 <= read~$Pointer$_#ptr.offset && read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base];
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume read~$Pointer$_#sizeOfReadType + read~$Pointer$_#ptr.offset <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.base && read~$Pointer$_#value.offset == #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset];
    cstpncpy_#t~mem2.base, cstpncpy_#t~mem2.offset := read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    cstpncpy_~d~0.base, cstpncpy_~d~0.offset := cstpncpy_#t~mem2.base, cstpncpy_#t~mem2.offset;
    havoc cstpncpy_#t~mem2.base, cstpncpy_#t~mem2.offset;
    cstpncpy_~s~0.base, cstpncpy_~s~0.offset := cstpncpy_~src.base, cstpncpy_~src.offset;
    read~$Pointer$_#ptr.base, read~$Pointer$_#sizeOfReadType, read~$Pointer$_#ptr.offset := cstpncpy_~#dst.base, 4, cstpncpy_~#dst.offset;
    assume 1 == #valid[read~$Pointer$_#ptr.base];
    assume read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    assume #valid[read~$Pointer$_#ptr.base] == 1;
    assume read~$Pointer$_#ptr.offset + read~$Pointer$_#sizeOfReadType <= #length[read~$Pointer$_#ptr.base] && 0 <= read~$Pointer$_#ptr.offset;
    havoc read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    assume read~$Pointer$_#value.base == #memory_$Pointer$.base[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] && #memory_$Pointer$.offset[read~$Pointer$_#ptr.base][read~$Pointer$_#ptr.offset] == read~$Pointer$_#value.offset;
    cstpncpy_#t~mem3.base, cstpncpy_#t~mem3.offset := read~$Pointer$_#value.base, read~$Pointer$_#value.offset;
    write~$Pointer$_old_#memory_$Pointer$.base, write~$Pointer$_old_#memory_$Pointer$.offset, write~$Pointer$_old_#memory_int := #memory_$Pointer$.base, #memory_$Pointer$.offset, #memory_int;
    write~$Pointer$_#value.base, write~$Pointer$_#ptr.offset, write~$Pointer$_#sizeOfWrittenType, write~$Pointer$_#value.offset, write~$Pointer$_#ptr.base := cstpncpy_#t~mem3.base, cstpncpy_~#dst.offset, 4, cstpncpy_#t~mem3.offset + (if cstpncpy_~n % 4294967296 <= 2147483647 then cstpncpy_~n % 4294967296 else cstpncpy_~n % 4294967296 + -4294967296), cstpncpy_~#dst.base;
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume 0 <= write~$Pointer$_#ptr.offset && write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base];
    assume 1 == #valid[write~$Pointer$_#ptr.base];
    assume write~$Pointer$_#ptr.offset + write~$Pointer$_#sizeOfWrittenType <= #length[write~$Pointer$_#ptr.base] && 0 <= write~$Pointer$_#ptr.offset;
    havoc #memory_$Pointer$.base, #memory_$Pointer$.offset;
    assume (write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.offset[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.offset]] == #memory_$Pointer$.offset && #memory_$Pointer$.base == write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_$Pointer$.base[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := write~$Pointer$_#value.base]]) && #memory_int == write~$Pointer$_old_#memory_int[write~$Pointer$_#ptr.base := write~$Pointer$_old_#memory_int[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset := #memory_int[write~$Pointer$_#ptr.base][write~$Pointer$_#ptr.offset]]];
    havoc cstpncpy_#t~mem3.base, cstpncpy_#t~mem3.offset;
    goto loc1;
  loc1:
    cstpncpy_#t~post5.base, cstpncpy_#t~post5.offset := cstpncpy_~d~0.base, cstpncpy_~d~0.offset;
    cstpncpy_~d~0.base, cstpncpy_~d~0.offset := cstpncpy_#t~post5.base, cstpncpy_#t~post5.offset + 1;
    cstpncpy_#t~post6.base, cstpncpy_#t~post6.offset := cstpncpy_~s~0.base, cstpncpy_~s~0.offset;
    cstpncpy_~s~0.base, cstpncpy_~s~0.offset := cstpncpy_#t~post6.base, cstpncpy_#t~post6.offset + 1;
    read~int_#ptr.base, read~int_#ptr.offset, read~int_#sizeOfReadType := cstpncpy_#t~post6.base, cstpncpy_#t~post6.offset, 1;
    assume 1 == #valid[read~int_#ptr.base];
    assume read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base] && 0 <= read~int_#ptr.offset;
    assume 1 == #valid[read~int_#ptr.base];
    assume 0 <= read~int_#ptr.offset && read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base];
    havoc read~int_#value;
    assume read~int_#value == #memory_int[read~int_#ptr.base][read~int_#ptr.offset];
    cstpncpy_#t~mem7 := read~int_#value;
    write~int_old_#memory_$Pointer$.offset, write~int_old_#memory_$Pointer$.base, write~int_old_#memory_int := #memory_$Pointer$.offset, #memory_$Pointer$.base, #memory_int;
    write~int_#sizeOfWrittenType, write~int_#ptr.base, write~int_#value, write~int_#ptr.offset := 1, cstpncpy_#t~post5.base, cstpncpy_#t~mem7, cstpncpy_#t~post5.offset;
    assume #valid[write~int_#ptr.base] == 1;
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(write~int_#ptr.offset + write~int_#sizeOfWrittenType <= #length[write~int_#ptr.base]) || !(0 <= write~int_#ptr.offset);
    goto loc3;
  loc2_1:
    assume write~int_#ptr.offset + write~int_#sizeOfWrittenType <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    assume #valid[write~int_#ptr.base] == 1;
    assume write~int_#sizeOfWrittenType + write~int_#ptr.offset <= #length[write~int_#ptr.base] && 0 <= write~int_#ptr.offset;
    havoc #memory_int;
    assume (write~int_old_#memory_int[write~int_#ptr.base := write~int_old_#memory_int[write~int_#ptr.base][write~int_#ptr.offset := write~int_#value]] == #memory_int && #memory_$Pointer$.offset == write~int_old_#memory_$Pointer$.offset[write~int_#ptr.base := write~int_old_#memory_$Pointer$.offset[write~int_#ptr.base][write~int_#ptr.offset := #memory_$Pointer$.offset[write~int_#ptr.base][write~int_#ptr.offset]]]) && #memory_$Pointer$.base == write~int_old_#memory_$Pointer$.base[write~int_#ptr.base := write~int_old_#memory_$Pointer$.base[write~int_#ptr.base][write~int_#ptr.offset := #memory_$Pointer$.base[write~int_#ptr.base][write~int_#ptr.offset]]];
    assume !(0 == cstpncpy_#t~mem7);
    havoc cstpncpy_#t~post5.base, cstpncpy_#t~post5.offset;
    havoc cstpncpy_#t~mem7;
    havoc cstpncpy_#t~post6.base, cstpncpy_#t~post6.offset;
    cstpncpy_#t~pre4 := cstpncpy_~n + -1;
    cstpncpy_~n := cstpncpy_~n + -1;
    assume !(0 == cstpncpy_#t~pre4 % 4294967296);
    havoc cstpncpy_#t~pre4;
    goto loc1;
  loc3:
    assert false;
}

