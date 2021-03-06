//#Safe

/*
 * We are unable to prove the program safe, because it has an unbounded number
 * of threads, even though they cannot violate the assertion.
 * If we add the outcommented join, we can easily prove the program safe.
 *
 * Author: Frank Schüssele (schuessf@informatik.uni-freiburg.de)
 * Date: 2020-09-16
 *
 */

var x, y : int;

procedure thread() returns()
modifies y;
{
  y := y + 1;
}

procedure ULTIMATE.start() returns()
modifies x, y;
{
  var i : int;
  x := 0;

  while (*) {
    fork i thread();
	// join i;
	i := i + 1;
  }

  assert x == 0;
}
