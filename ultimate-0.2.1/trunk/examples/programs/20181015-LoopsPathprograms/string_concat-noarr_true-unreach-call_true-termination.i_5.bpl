procedure ULTIMATE.start() returns ()
modifies ;
{
    var main_#t~nondet1 : int;
    var main_~j~0 : int;
    var __VERIFIER_assert_~cond : int;
    var main_#res : int;
    var main_#t~nondet3 : int;
    var main_#t~post2 : int;
    var main_~i~0 : int;
    var __VERIFIER_assert_#in~cond : int;
    var main_#t~post5 : int;
    var main_#t~post4 : int;

  loc0:
    havoc main_#res;
    havoc main_#t~nondet1, main_~j~0, main_#t~nondet3, main_#t~post2, main_~i~0, main_#t~post5, main_#t~post4;
    havoc main_~i~0;
    havoc main_~j~0;
    main_~i~0 := 0;
    goto loc1;
  loc1:
    assume 0 <= main_#t~nondet1 + 2147483648 && main_#t~nondet1 <= 2147483647;
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume 0 == main_#t~nondet1 || !(main_~i~0 < 1000000);
    havoc main_#t~nondet1;
    assume !(100 <= main_~i~0);
    main_~j~0 := 0;
    goto loc3;
  loc2_1:
    assume !(0 == main_#t~nondet1) && main_~i~0 < 1000000;
    havoc main_#t~nondet1;
    main_#t~post2 := main_~i~0;
    main_~i~0 := main_#t~post2 + 1;
    havoc main_#t~post2;
    goto loc1;
  loc3:
    assume 0 <= main_#t~nondet3 + 2147483648 && main_#t~nondet3 <= 2147483647;
    goto loc4;
  loc4:
    goto loc4_0, loc4_1;
  loc4_0:
    assume 0 == main_#t~nondet3 || !(main_~i~0 < 1000000);
    havoc main_#t~nondet3;
    assume !(100 <= main_~j~0);
    __VERIFIER_assert_#in~cond := (if main_~i~0 < 200 then 1 else 0);
    havoc __VERIFIER_assert_~cond;
    __VERIFIER_assert_~cond := __VERIFIER_assert_#in~cond;
    assume 0 == __VERIFIER_assert_~cond;
    goto loc5;
  loc4_1:
    assume !(0 == main_#t~nondet3) && main_~i~0 < 1000000;
    havoc main_#t~nondet3;
    main_#t~post4 := main_~i~0;
    main_~i~0 := main_#t~post4 + 1;
    havoc main_#t~post4;
    main_#t~post5 := main_~j~0;
    main_~j~0 := main_#t~post5 + 1;
    havoc main_#t~post5;
    goto loc3;
  loc5:
    assert false;
}

