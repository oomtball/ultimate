procedure ULTIMATE.start() returns ()
modifies ;
{
    var __VERIFIER_assert_~cond : int;
    var main_#res : int;
    var main_~y~0 : int;
    var main_#t~post0 : int;
    var __VERIFIER_assert_#in~cond : int;
    var main_~x~0 : int;

  loc0:
    havoc main_#res;
    havoc main_~y~0, main_#t~post0, main_~x~0;
    main_~x~0 := 0;
    main_~y~0 := 1;
    goto loc1;
  loc1:
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(main_~x~0 % 4294967296 < 6);
    assume (!(main_~y~0 % 4294967296 < 0) || (main_~y~0 % 4294967296 < 0 && !(0 == main_~y~0 % 4294967296 % 3))) || 0 == main_~y~0 % 4294967296 % 3;
    __VERIFIER_assert_#in~cond := (if (if main_~y~0 % 4294967296 < 0 && !(main_~y~0 % 4294967296 % 3 == 0) then main_~y~0 % 4294967296 % 3 + -3 else main_~y~0 % 4294967296 % 3) % 4294967296 <= 2147483647 then (if main_~y~0 % 4294967296 < 0 && !(main_~y~0 % 4294967296 % 3 == 0) then main_~y~0 % 4294967296 % 3 + -3 else main_~y~0 % 4294967296 % 3) % 4294967296 else (if main_~y~0 % 4294967296 < 0 && !(main_~y~0 % 4294967296 % 3 == 0) then main_~y~0 % 4294967296 % 3 + -3 else main_~y~0 % 4294967296 % 3) % 4294967296 + -4294967296);
    havoc __VERIFIER_assert_~cond;
    __VERIFIER_assert_~cond := __VERIFIER_assert_#in~cond;
    assume 0 == __VERIFIER_assert_~cond;
    goto loc3;
  loc2_1:
    assume main_~x~0 % 4294967296 < 6;
    main_#t~post0 := main_~x~0;
    main_~x~0 := main_#t~post0 + 1;
    havoc main_#t~post0;
    main_~y~0 := 2 * main_~y~0;
    goto loc1;
  loc3:
    assert false;
}

