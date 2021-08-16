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

/**
 * {scope}, it is always the case that if "R" holds, then "S" eventually holds and is succeeded by "T", where "U" does
 * not hold between "V" and "W"
 *
 * @author Daniel Dietsch (dietsch@informatik.uni-freiburg.de)
 *
 */
import java.util.List;

import de.uni_freiburg.informatik.ultimate.lib.pea.CDD;
import de.uni_freiburg.informatik.ultimate.lib.pea.CounterTrace;
import de.uni_freiburg.informatik.ultimate.lib.srparse.SrParseScope;

public class ConstrainedChainPattern extends PatternType<ConstrainedChainPattern> {

	public ConstrainedChainPattern(final SrParseScope<?> scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		super(scope, id, cdds, durations);
	}

	@Override
	public ConstrainedChainPattern create(final SrParseScope<?> scope, final String id, final List<CDD> cdds,
			final List<String> durations) {
		return new ConstrainedChainPattern(scope, id, cdds, durations);
	}

	@Override
	public List<CounterTrace> transform(final CDD[] cdds, final int[] durations) {
		assert cdds.length == 6 && durations.length == 0;

		// P and Q are reserved for scope.
		// R, S, ... are reserved for CDDs, but they are parsed in reverse order.
		final SrParseScope<?> scope = getScope();

		throw new PatternScopeNotImplemented(scope.getClass(), getClass());
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
		sb.append(getCdds().get(5).toBoogieString());
		sb.append("\" holds, then \"");
		sb.append(getCdds().get(4).toBoogieString());
		sb.append("\" eventually holds and is succeeded by \"");
		sb.append(getCdds().get(3).toBoogieString());
		sb.append("\" where \"");
		sb.append(getCdds().get(2).toBoogieString());
		sb.append("\" does not hold between \"");
		sb.append(getCdds().get(1).toBoogieString());
		sb.append("\" and \"");
		sb.append(getCdds().get(0).toBoogieString());
		sb.append("\"");
		return sb.toString();
	}

	@Override
	public ConstrainedChainPattern rename(final String newName) {
		return new ConstrainedChainPattern(getScope(), newName, getCdds(), getDuration());
	}

	@Override
	public int getExpectedCddSize() {
		return 6;
	}

	@Override
	public int getExpectedDurationSize() {
		return 0;
	}
}