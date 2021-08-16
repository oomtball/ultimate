/*
 * Copyright (C) 2018 Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 * Copyright (C) 2018 University of Freiburg
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

import java.util.Objects;

import de.uni_freiburg.informatik.ultimate.core.model.models.IPayload;
import de.uni_freiburg.informatik.ultimate.core.model.models.annotation.Visualizable;
import de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.cfg.transitions.UnmodifiableTransFormula;

/**
 * Generic implementation of a {@link IForkActionThreadCurrent} in an ICFG.
 *
 * @author Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 *
 */
public final class IcfgForkThreadOtherTransition extends AbstractIcfgTransition
		implements IIcfgForkTransitionThreadOther<IcfgLocation> {
	private static final long serialVersionUID = -4893486021673688404L;
	private final UnmodifiableTransFormula mTransFormula;
	private final IIcfgForkTransitionThreadCurrent mIcfgForkThreadCurrentTransition;

	protected IcfgForkThreadOtherTransition(final IcfgLocation source, final IcfgLocation target,
			final IPayload payload, final UnmodifiableTransFormula transFormula,
			final IIcfgForkTransitionThreadCurrent icfgForkThreadCurrentTransition, final int id) {
		super(source, target, payload, id);
		mTransFormula = Objects.requireNonNull(transFormula, "A transformula is missing");
		mIcfgForkThreadCurrentTransition = Objects.requireNonNull(icfgForkThreadCurrentTransition,
				"A forkSmtArguments is missing");
	}

	@Override
	@Visualizable
	public UnmodifiableTransFormula getTransformula() {
		return mTransFormula;
	}

	@Override
	public String toString() {
		return toDebugString(mTransFormula.toString());
	}

	@Override
	public UnmodifiableTransFormula getLocalVarsAssignment() {
		return getTransformula();
	}

	@Override
	public IIcfgForkTransitionThreadCurrent<IcfgLocation> getCorrespondingIIcfgForkTransitionCurrentThread() {
		return mIcfgForkThreadCurrentTransition;
	}

}
