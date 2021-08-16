/*
 * Copyright (C) 2017 Matthias Heizmann (heizmann@informatik.uni-freiburg.de)
 * Copyright (C) 2017 University of Freiburg
 * 
 * This file is part of the ULTIMATE UnitTest Library.
 * 
 * The ULTIMATE UnitTest Library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * The ULTIMATE UnitTest Library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE UnitTest Library. If not, see <http://www.gnu.org/licenses/>.
 * 
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE UnitTest Library, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE UnitTest Library grant you additional permission
 * to convey the resulting work.
 */
package de.uni_freiburg.informatik.ultimate.test.decider;

import java.util.Collections;

import de.uni_freiburg.informatik.ultimate.test.UltimateRunDefinition;
import de.uni_freiburg.informatik.ultimate.test.decider.expectedresult.IExpectedResultFinder;
import de.uni_freiburg.informatik.ultimate.test.decider.expectedresult.KeywordBasedExpectedResultFinder;
import de.uni_freiburg.informatik.ultimate.test.decider.overallresult.TerminationAnalysisOverallResult;
import de.uni_freiburg.informatik.ultimate.test.util.TestUtil;

/**
 * Use keywords in first line to decide correctness of termcomp 2017 benchmarks.
 * Maybe we can write a good superclass for both.
 * @author heizmann@informatik.uni-freiburg.de
 *
 */
public class TermcompTestResultDecider extends TerminationAnalysisTestResultDecider {

	public TermcompTestResultDecider(
			final UltimateRunDefinition ultimateRunDefinition, final boolean unknownIsJUnitSuccess) {
		super(ultimateRunDefinition, unknownIsJUnitSuccess);
	}

	@Override
	public IExpectedResultFinder<TerminationAnalysisOverallResult> constructExpectedResultFinder() {
		return new KeywordBasedExpectedResultFinder<>(
				Collections.emptyMap(),
				Collections.emptyMap(),
				TestUtil.constructFirstlineKeywordMap_Termcomp2016()
				);
	}


}
