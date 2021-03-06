package de.uni_freiburg.informatik.ultimate.plugins.generator.traceabstraction.pathinvariants.internal;

import de.uni_freiburg.informatik.ultimate.lib.modelcheckerutils.cfg.structure.IcfgLocation;

/**
 * This strategy increases the disjuncts only up to certain number, after that only conjuncts are increased.
 * 
 * @author Betim Musa <musab@informatik.uni-freiburg.de>
 *
 */
public class DisjunctsWithBoundTemplateIncreasingDimensionsStrategy
		extends AbstractTemplateIncreasingDimensionsStrategy {

	public DisjunctsWithBoundTemplateIncreasingDimensionsStrategy(int initialDisjuncts, int initialConjuncts,
			int disjunctsPerRound, int conjunctsPerRound) {
		super(initialDisjuncts, initialConjuncts, disjunctsPerRound, conjunctsPerRound);
	}

	@Override
	public int[] getDimensions(IcfgLocation location, int round) {
		if (round == 1) {
			return new int[] {1, 1};
		} else if (round == 2) {
			return new int[] {1, 2};
		} else if (round == 3) {
			return new int[] {1, 3};
		} else if (round == 4) {
			return new int[] {2, 2};
		} else if (round == 5) {
			return new int[] {2, 3};
		} else if (round == 6) {
			return new int[] {2, 4};
		} else if (round == 7) {
			return new int[] {2, 5};
		} else if (round == 8) {
			return new int[] {2, 6};
		} else if (round == 9) {
			return new int[] {2, 7};
		} else if (round == 10) {
			return new int[] {2, 8};
		} else {
			return new int[] { mInitialDisjuncts + round * mDisjunctsPerRound,
					mInitialConjuncts + round * mConjunctsPerRound };
		}
	}

}
