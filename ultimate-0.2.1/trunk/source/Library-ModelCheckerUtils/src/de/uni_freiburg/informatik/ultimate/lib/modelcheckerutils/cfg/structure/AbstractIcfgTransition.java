/*
 * Copyright (C) 2016 Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 * Copyright (C) 2016 University of Freiburg
 *
 * This file is part of the ULTIMATE ModelCheckerUtils Library.
 *
 * The ULTIMATE ModelCheckerUtils Library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE ModelCheckerUtils Library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE ModelCheckerUtils Library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE ModelCheckerUtils Library, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE ModelCheckerUtils Library grant you additional permission
 * to convey the resulting work.
 */
package de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.cfg.structure;

import de.uni_freiburg.informatik.ultimate.core.model.models.IPayload;

/**
 * Abstract superclass of *IcfgTransition.
 *
 * @author Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 *
 */
public abstract class AbstractIcfgTransition extends IcfgEdge {
	private static final long serialVersionUID = 2115527505602304364L;
	private final int mId;

	public AbstractIcfgTransition(final IcfgLocation source, final IcfgLocation target, final IPayload payload,
			final int id) {
		super(source, target, payload);
		mId = id;
	}

	@Override
	public String getPrecedingProcedure() {
		return super.getSource().getProcedure();
	}

	@Override
	public String getSucceedingProcedure() {
		return super.getTarget().getProcedure();
	}

	@Override
	public String toString() {
		return toDebugString(null);
	}

	@Override
	public int hashCode() {
		return mId;
	}

	@Override
	public boolean equals(final Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		final AbstractIcfgTransition other = (AbstractIcfgTransition) obj;
		if (mId != other.mId) {
			return false;
		}
		return true;
	}

	protected String toDebugString(final String suffix) {
		final StringBuilder sb = new StringBuilder();
		sb.append("[").append(hashCode()).append("] ");
		sb.append(getSource());
		sb.append("-->");
		sb.append(getTarget());
		if (suffix != null) {
			sb.append(": ");
			sb.append(suffix);
		}
		return sb.toString();
	}

}
