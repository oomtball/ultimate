/*
 * Copyright (C) 2018 Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 * Copyright (C) 2018 University of Freiburg
 *
 * This file is part of the ULTIMATE Library-srParse plug-in.
 *
 * The ULTIMATE Library-srParse plug-in is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE Library-srParse plug-in is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE Library-srParse plug-in. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE Library-srParse plug-in, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE Library-srParse plug-in grant you additional permission
 * to convey the resulting work.
 */
package de.uni_freiburg.informatik.ultimate.lib.srparse.pattern;

import java.util.ArrayList;
import java.util.List;

import de.uni_freiburg.informatik.ultimate.lib.pea.CDD;
import de.uni_freiburg.informatik.ultimate.lib.pea.CounterTrace;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScope;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScopeAfter;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScopeAfterUntil;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScopeBefore;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScopeBetween;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScopeGlobally;

/**
 * {scope}, it is always the case that if "R" holds, then "S" previously held and was preceded by "T"
 *
 * @author Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 *
 */
public class PrecedenceChain21Pattern extends PatternType<PrecedenceChain21Pattern> {

	public PrecedenceChain21Pattern(final SrParseScope<?> scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		super(scope, id, cdds, durations);
	}

	@Override
	public PrecedenceChain21Pattern create(final SrParseScope<?> scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		return new PrecedenceChain21Pattern(scope, id, cdds, durations);
	}

	@Override
	public List<CounterTrace> transform(final CDD[] cdds, final int[] durations) {
		assert cdds.length == 3 && durations.length == 0;

		// P and Q are reserved for scope.
		// R, S, ... are reserved for CDDs, but they are parsed in reverse order.
		final SrParseScope<?> scope = getScope();
		final CDD R = cdds[2];
		final CDD S = cdds[1];
		final CDD T = cdds[0];

		final List<CounterTrace> ct = new ArrayList<>();
		if (scope instanceof SrParseScopeGlobally) {
			// ct.add(counterTrace(phase(S.negate()), phase(R), phaseT()));
			// ct.add(counterTrace(phase(T.negate()), phase(S), phase(T.negate()), phase(R), phaseT()));
			ct.add(counterTrace(phase(T.negate()), phase(R), phaseT()));
			ct.add(counterTrace(phase(S.negate()), phase(R), phaseT()));
			ct.add(counterTrace(phase(T.negate()), phase(T.negate().and(S)), phase(T.negate()),
					phase(T.and(S.negate())), phase(S.negate()), phase(R), phaseT()));
		} else if (scope instanceof SrParseScopeBefore) {
			final CDD P = scope.getCdd1();
			// ct.add(counterTrace(phase(P.negate().and(S.negate())), phase(P.negate().and(R)), phaseT()));
			// ct.add(counterTrace(phase(P.negate().and(T.negate())), phase(P.negate().and(S)),
			// phase(P.negate().and(T.negate())), phase(P.negate().and(R)), phaseT()));
			ct.add(counterTrace(phase(P.negate().and(T.negate())), phase(P.negate().and(R)), phaseT()));
			ct.add(counterTrace(phase(P.negate().and(S.negate())), phase(P.negate().and(R)), phaseT()));
			ct.add(counterTrace(phase(P.negate().and(T.negate())), phase(P.negate().and(T.negate()).and(S)),
					phase(P.negate().and(T.negate())), phase(P.negate().and(T).and(S.negate())),
					phase(P.negate().and(S.negate())), phase(P.negate().and(R)), phaseT()));
		} else if (scope instanceof SrParseScopeAfterUntil) {
			final CDD P = scope.getCdd1();
			final CDD Q = scope.getCdd2();
			// ct.add(counterTrace(phaseT(), phase(P), phase(Q.negate().and(S.negate())), phase(Q.negate().and(R)),
			// phaseT()));
			// ct.add(counterTrace(phaseT(), phase(P), phase(Q.negate().and(T.negate())), phase(Q.negate().and(S)),
			// phase(Q.negate().and(T.negate())), phase(Q.negate().and(R)), phaseT()));
			ct.add(counterTrace(phaseT(), phase(P), phase(Q.negate().and(T.negate())), phase(Q.negate().and(R)),
					phaseT()));
			ct.add(counterTrace(phaseT(), phase(P), phase(Q.negate().and(S.negate())), phase(Q.negate().and(R)),
					phaseT()));
			ct.add(counterTrace(phaseT(), phase(P), phase(Q.negate().and(T.negate())),
					phase(Q.negate().and(T.negate()).and(S)), phase(Q.negate().and(T.negate())),
					phase(Q.negate().and(T).and(S.negate())), phase(Q.negate().and(S.negate())),
					phase(Q.negate().and(R)), phaseT()));
		} else if (scope instanceof SrParseScopeAfter) {
			final CDD P = scope.getCdd1();
			// ct.add(counterTrace(phaseT(), phase(P), phase(S.negate()), phase(R), phaseT()));
			// ct.add(counterTrace(phaseT(), phase(P), phase(T.negate()), phase(S), phase(T.negate()), phase(R),
			// phaseT()));
			ct.add(counterTrace(phaseT(), phase(P), phase(T.negate()), phase(R), phaseT()));
			ct.add(counterTrace(phaseT(), phase(P), phase(S.negate()), phase(R), phaseT()));
			ct.add(counterTrace(phaseT(), phase(P), phase(T.negate()), phase(T.negate().and(S)), phase(T.negate()),
					phase(T.and(S.negate())), phase(S.negate()), phase(R), phaseT()));
		} else if (scope instanceof SrParseScopeBetween) {
			final CDD P = scope.getCdd1();
			final CDD Q = scope.getCdd2();
			// ct.add(counterTrace(phaseT(), phase(P.and(Q.negate())), phase(Q.negate().and(S.negate())),
			// phase(Q.negate().and(R)), phase(Q.negate()), phase(Q), phaseT()));
			// ct.add(counterTrace(phaseT(), phase(P.and(Q.negate())), phase(Q.negate().and(T.negate())),
			// phase(Q.negate().and(S)), phase(Q.negate().and(T.negate())), phase(Q.negate().and(R)), phase(Q.negate()),
			// phase(Q), phaseT()));
			ct.add(counterTrace(phaseT(), phase(P.and(Q.negate())), phase(Q.negate().and(T.negate())),
					phase(Q.negate().and(R)), phase(Q.negate()), phase(Q), phaseT()));
			ct.add(counterTrace(phaseT(), phase(P.and(Q.negate())), phase(Q.negate().and(S.negate())),
					phase(Q.negate().and(R)), phase(Q.negate()), phase(Q), phaseT()));
			ct.add(counterTrace(phaseT(), phase(P.and(Q.negate())), phase(Q.negate().and(T.negate())),
					phase(Q.negate().and(T.negate()).and(S)), phase(Q.negate().and(T.negate())),
					phase(Q.negate().and(T).and(S.negate())), phase(Q.negate().and(S.negate())),
					phase(Q.negate().and(R)), phase(Q.negate()), phase(Q), phaseT()));
		} else {
			throw new PatternScopeNotImplemented(scope.getClass(), getClass());
		}

		return ct;
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();
		if (getId() != null) {
			sb.append(getId());
			sb.append(": ");
		}
		if (getScope() != null) {
			sb.append(getScope());
		}
		sb.append("it is always the case that if \"");
		sb.append(getCdds().get(2).toBoogieString());
		sb.append("\" holds, then \"");
		sb.append(getCdds().get(1).toBoogieString());
		sb.append("\" previously held and was preceded by \"");
		sb.append(getCdds().get(0).toBoogieString());
		sb.append("\"");
		return sb.toString();
	}

	@Override
	public PrecedenceChain21Pattern rename(final String newName) {
		return new PrecedenceChain21Pattern(getScope(), newName, getCdds(), getDuration());
	}

	@Override
	public int getExpectedCddSize() {
		return 3;
	}

	@Override
	public int getExpectedDurationSize() {
		return 0;
	}
}