implementation ULTIMATE.start() returns (){
    var main_#res : int;
    var main_#t~nondet0 : int;
    var main_#t~post1 : int;
    var main_#t~post2 : int;
    var main_#t~post3 : int;
    var main_~n~5 : int;
    var main_~i~5 : int;
    var main_~k~5 : int;
    var main_~j~5 : int;
    var __VERIFIER_assert_#in~cond : int;
    var __VERIFIER_assert_~cond : int;

  loc0:
    havoc main_#res;
    havoc main_#t~nondet0, main_#t~post1, main_#t~post2, main_#t~post3, main_~n~5, main_~i~5, main_~k~5, main_~j~5;
    havoc main_~n~5;
    havoc main_~i~5;
    havoc main_~k~5;
    assume -2147483648 <= main_#t~nondet0 && main_#t~nondet0 <= 2147483647;
    main_~n~5 := main_#t~nondet0;
    havoc main_#t~nondet0;
    assume !!(main_~n~5 <= 1000000);
    main_~k~5 := main_~n~5;
    main_~i~5 := 0;
    goto loc1;
  loc1:
    assume true;
    goto loc2;
  loc2:
    goto loc2_0, loc2_1;
  loc2_0:
    assume !(main_~i~5 < main_~n~5);
    main_~j~5 := 0;
    assume true;
    assume !!(main_~j~5 < (if main_~n~5 < 0 && main_~n~5 % 2 != 0 then main_~n~5 / 2 + 1 else main_~n~5 / 2));
    __VERIFIER_assert_#in~cond := (if main_~k~5 > 0 then 1 else 0);
    havoc __VERIFIER_assert_~cond;
    __VERIFIER_assert_~cond := __VERIFIER_assert_#in~cond;
    assume __VERIFIER_assert_~cond == 0;
    assume !false;
    goto loc3;
  loc2_1:
    assume !!(main_~i~5 < main_~n~5);
    main_#t~post1 := main_~k~5;
    main_~k~5 := main_#t~post1 - 1;
    havoc main_#t~post1;
    main_~i~5 := main_~i~5 + 2;
    goto loc1;
  loc3:
    assert false;
}

procedure ULTIMATE.start() returns ();
modifies ;
modifies ;

