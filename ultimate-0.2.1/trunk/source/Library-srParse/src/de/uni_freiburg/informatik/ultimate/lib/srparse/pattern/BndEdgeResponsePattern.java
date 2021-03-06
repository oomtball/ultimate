/*
 * Copyright (C) 2020 Elisabeth Henkel (henkele@informatik.uni-freiburg.de)
 * Copyright (C) 2020 University of Freiburg
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
import de.uni_freiburg.informatik.ultimate.lib.pea.CounterTrace.BoundTypes;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScope;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScopeGlobally;

/**
 * {scope}, it is always the case that once "R" becomes satisfied, "S" holds for at least "c1" time units.
 *
 * @author Elisabeth Henkel (henkele@informatik.uni-freiburg.de)
 *
 */
public class BndEdgeResponsePattern extends PatternType<BndEdgeResponsePattern> {

	public BndEdgeResponsePattern(final SrParseScope<?> scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		super(scope, id, cdds, durations);
	}

	@Override
	public BndEdgeResponsePattern create(final SrParseScope<?> scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		return new BndEdgeResponsePattern(scope, id, cdds, durations);
	}

	@Override
	public List<CounterTrace> transform(final CDD[] cdds, final int[] durations) {
		assert cdds.length == 2 && durations.length == 1;

		// P and Q are reserved for scope.
		// R, S, ... are reserved for CDDs, but they are parsed in reverse order.
		final SrParseScope<?> scope = getScope();
		final CDD R = cdds[1];
		final CDD S = cdds[0];
		final int c1 = durations[0];

		final List<CounterTrace> ct = new ArrayList<>();
		if (scope instanceof SrParseScopeGlobally) {
			ct.add(counterTrace(phaseT(), phase(R.negate()), phase(R), phase(S, BoundTypes.LESS, c1), phase(S.negate()),
					phaseT()));
			ct.add(counterTrace(phaseT(), phase(R.negate()), phase(R.and(S.negate())), phaseT()));
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
		sb.append("it is always the case that once \"");
		sb.append(getCdds().get(1).toBoogieString());
		sb.append("\" becomes satisfied, \"");
		sb.append(getCdds().get(0).toBoogieString());
		sb.append("\" holds for at least \"");
		sb.append(getDuration().get(0));
		sb.append("\" time units");
		return sb.toString();
	}

	@Override
	public BndEdgeResponsePattern rename(final String newName) {
		return new BndEdgeResponsePattern(getScope(), newName, getCdds(), getDuration());
	}

	@Override
	public int getExpectedCddSize() {
		return 2;
	}

	@Override
	public int getExpectedDurationSize() {
		return 1;
	}
}
