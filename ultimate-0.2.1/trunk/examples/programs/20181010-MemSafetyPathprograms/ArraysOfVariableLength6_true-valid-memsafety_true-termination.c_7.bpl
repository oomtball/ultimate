var #valid : [int]int;

var #memory_int : [int][int]int;

var #NULL.offset : int;

var #length : [int]int;

var #NULL.base : int;

procedure ULTIMATE.start() returns ()
modifies #valid, #memory_int, #NULL.offset, #length, #NULL.base;
{
    var main_~c~0.base : int;
    var foo_#in~size : int;
    var read~int_#value : int;
    var foo_#t~mem1 : int;
    var #Ultimate.alloc_old_#valid : [int]int;
    var main_#t~post2 : int;
    var main_~#mask~0.base : int;
    var main_~#mask~0.offset : int;
    var foo_#res : int;
    var foo_~size : int;
    var main_#t~post4 : int;
    var foo_~a~0 : [int]int;
    var main_~c~0.offset : int;
    var foo_#t~post0 : int;
    var main_~#b~0.base : int;
    var #Ultimate.alloc_#res.base : int;
    var #Ultimate.alloc_#res.offset : int;
    var foo_#in~b.offset : int;
    var #Ultimate.alloc_~size : int;
    var foo_~i~0 : int;
    var foo_~b.offset : int;
    var main_~i~1 : int;
    var read~int_#sizeOfReadType : int;
    var main_old_#valid : [int]int;
    var foo_#in~b.base : int;
    var #Ultimate.alloc_old_#length : [int]int;
    var read~int_#ptr.base : int;
    var read~int_#ptr.offset : int;
    var main_#res : int;
    var main_~buffer~0 : [int]int;
    var foo_~b.base : int;
    var main_~#b~0.offset : int;
    var main_#t~mem5 : int;
    var main_#t~ret3 : int;

  loc0:
    #NULL.offset, #NULL.base := 0, 0;
    #valid := #valid[0 := 0];
    main_old_#valid := #valid;
    havoc main_#res;
    havoc main_~c~0.base, main_~c~0.offset, main_~buffer~0, main_#t~post2, main_~#b~0.base, main_~#mask~0.base, main_~#mask~0.offset, main_~i~1, main_~#b~0.offset, main_#t~mem5, main_#t~ret3, main_#t~post4;
    havoc main_~i~1;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 400;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1] == #valid;
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size] == #length;
    main_~#b~0.base, main_~#b~0.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    havoc main_~buffer~0;
    #Ultimate.alloc_old_#valid, #Ultimate.alloc_old_#length := #valid, #length;
    #Ultimate.alloc_~size := 32;
    havoc #Ultimate.alloc_#res.offset, #Ultimate.alloc_#res.base;
    havoc #valid, #length;
    assume 0 == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base];
    assume #valid == #Ultimate.alloc_old_#valid[#Ultimate.alloc_#res.base := 1];
    assume #Ultimate.alloc_#res.offset == 0;
    assume !(0 == #Ultimate.alloc_#res.base);
    assume #length == #Ultimate.alloc_old_#length[#Ultimate.alloc_#res.base := #Ultimate.alloc_~size];
    main_~#mask~0.base, main_~#mask~0.offset := #Ultimate.alloc_#res.base, #Ultimate.alloc_#res.offset;
    havoc main_~c~0.base, main_~c~0.offset;
    main_~i~1 := 0;
    assume main_~i~1 < 32;
    main_~c~0.base, main_~c~0.offset := main_~#mask~0.base, main_~#mask~0.offset;
    foo_#in~size, foo_#in~b.offset, foo_#in~b.base := 32, main_~c~0.offset, main_~c~0.base;
    havoc foo_#res;
    havoc foo_#t~post0, foo_#t~mem1, foo_~i~0, foo_~b.offset, foo_~size, foo_~b.base, foo_~a~0;
    foo_~size := foo_#in~size;
    foo_~b.offset, foo_~b.base := foo_#in~b.offset, foo_#in~b.base;
    havoc foo_~a~0;
    havoc foo_~i~0;
    foo_~i~0 := 0;
    goto loc1;
  loc1:
    assume foo_~i~0 < foo_~size;
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(0 <= foo_~i~0) || !(foo_~i~0 < 32);
    goto loc3;
  loc2_1:
    assume foo_~i~0 < 32 && 0 <= foo_~i~0;
    read~int_#ptr.base, read~int_#ptr.offset, read~int_#sizeOfReadType := foo_~b.base, foo_~i~0 + foo_~b.offset, 1;
    assume 1 == #valid[read~int_#ptr.base];
    assume 0 <= read~int_#ptr.offset && read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base];
    assume #valid[read~int_#ptr.base] == 1;
    assume 0 <= read~int_#ptr.offset && read~int_#sizeOfReadType + read~int_#ptr.offset <= #length[read~int_#ptr.base];
    havoc read~int_#value;
    assume #memory_int[read~int_#ptr.base][read~int_#ptr.offset] == read~int_#value;
    foo_#t~mem1 := read~int_#value;
    foo_~a~0 := foo_~a~0[foo_~i~0 := foo_#t~mem1];
    havoc foo_#t~mem1;
    foo_#t~post0 := foo_~i~0;
    foo_~i~0 := foo_#t~post0 + 1;
    havoc foo_#t~post0;
    goto loc1;
  loc3:
    assert false;
}

