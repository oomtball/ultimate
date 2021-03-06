/*
 * Copyright (C) 2019 Nico Hauff (hauffn@informatik.uni-freiburg.de)
 * Copyright (C) 2019 Elisabeth Henkel (henkele@informatik.uni-freiburg.de)
 * Copyright (C) 2019 University of Freiburg
 *
 * This file is part of the ULTIMATE MSOD Library package.
 *
 * The ULTIMATE MSOD Library package library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * The ULTIMATE MSOD Library package library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with the ULTIMATE MSOD Library package. If not, see <http://www.gnu.org/licenses/>.
 *
 * Additional permission under GNU GPL version 3 section 7:
 * If you modify the ULTIMATE MSOD Library package, or any covered work, by linking
 * or combining it with Eclipse RCP (or a modified version of Eclipse RCP),
 * containing parts covered by the terms of the Eclipse Public License, the
 * licensors of the ULTIMATE MSOD Library package library grant you additional permission
 * to convey the resulting work.
 */

package de.uni_freiburg.informatik.ultimate.mso;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import de.uni_freiburg.informatik.ultimate.automata.AutomataLibraryException;
import de.uni_freiburg.informatik.ultimate.automata.AutomataLibraryServices;
import de.uni_freiburg.informatik.ultimate.automata.Word;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.INestedWordAutomaton;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.NestedWord;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.buchi.BuchiAccepts;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.buchi.NestedLassoWord;
import de.uni_freiburg.informatik.ultimate.automata.nestedword.operations.Accepts;
import de.uni_freiburg.informatik.ultimate.core.model.services.ILogger;
import de.uni_freiburg.informatik.ultimate.core.model.services.ILogger.LogLevel;
import de.uni_freiburg.informatik.ultimate.lib.smtlibutils.SmtSortUtils;
import de.uni_freiburg.informatik.ultimate.core.model.services.IUltimateServiceProvider;
import de.uni_freiburg.informatik.ultimate.logic.Logics;
import de.uni_freiburg.informatik.ultimate.logic.Rational;
import de.uni_freiburg.informatik.ultimate.logic.Script;
import de.uni_freiburg.informatik.ultimate.logic.Term;
import de.uni_freiburg.informatik.ultimate.test.mocks.UltimateMocks;

/**
 * @author Elisabeth Henkel (henkele@informatik.uni-freiburg.de)
 * @author Nico Hauff (hauffn@informatik.uni-freiburg.de)
 */
public class MSODFormulaOperationsIntTest {
	private IUltimateServiceProvider mServiceProvider;
	private AutomataLibraryServices mALS;
	private Script mScript;
	private ILogger mLogger;

	private final MSODFormulaOperationsInt mOperations = new MSODFormulaOperationsInt();
	private static final String WORD_SEP = " ";

	@Before
	public void setUp() {
		mServiceProvider = UltimateMocks.createUltimateServiceProviderMock(LogLevel.DEBUG);
		mALS = new AutomataLibraryServices(mServiceProvider);
		mScript = UltimateMocks.createZ3Script(LogLevel.INFO);
		mLogger = mServiceProvider.getLoggingService().getLogger("lol");

		mScript.setLogic(Logics.UFLIA);
		mScript.declareSort("SetOfInt", 0);
	}

	/**
	 * Returns a {@link NestedWord} parsed from the given string.
	 */
	private static NestedWord<MSODAlphabetSymbol> parseWord(final Term term, final String values) {
		final MSODAlphabetSymbol[] symbols = new MSODAlphabetSymbol[values.length()];
		final MSODAlphabetSymbol x0 = new MSODAlphabetSymbol(term, false);
		final MSODAlphabetSymbol x1 = new MSODAlphabetSymbol(term, true);

		for (int i = 0; i < values.length(); i++) {

			if ('0' == values.charAt(i)) {
				symbols[i] = x0;
				continue;
			}
			if ('1' == values.charAt(i)) {
				symbols[i] = x1;
				continue;
			}
			throw new IllegalArgumentException("Failure during parsing: " + values);
		}

		return NestedWord.nestedWord(new Word<>(symbols));
	}

	/**
	 * Returns a {@link NestedWord} parsed from the given strings.
	 */
	private static NestedWord<MSODAlphabetSymbol> parseWord(final Term term1, final Term term2, final String values1,
			final String values2) {

		assert (values1.length() == values2.length());

		final MSODAlphabetSymbol[] symbols = new MSODAlphabetSymbol[values1.length()];
		final MSODAlphabetSymbol xy00 = new MSODAlphabetSymbol(term1, term2, false, false);
		final MSODAlphabetSymbol xy10 = new MSODAlphabetSymbol(term1, term2, true, false);
		final MSODAlphabetSymbol xy01 = new MSODAlphabetSymbol(term1, term2, false, true);
		final MSODAlphabetSymbol xy11 = new MSODAlphabetSymbol(term1, term2, true, true);

		for (int i = 0; i < values1.length(); i++) {

			if ('0' == values1.charAt(i) && '0' == values2.charAt(i)) {
				symbols[i] = xy00;
				continue;
			}
			if ('1' == values1.charAt(i) && '0' == values2.charAt(i)) {
				symbols[i] = xy10;
				continue;
			}
			if ('0' == values1.charAt(i) && '1' == values2.charAt(i)) {
				symbols[i] = xy01;
				continue;
			}
			if ('1' == values1.charAt(i) && '1' == values2.charAt(i)) {
				symbols[i] = xy11;
				continue;
			}
			throw new IllegalArgumentException("Failure during parsing: " + values1 + ", " + values2);
		}

		return NestedWord.nestedWord(new Word<>(symbols));
	}

	/**
	 * Returns a {@link NestedLassoWord} parsed from the given string.
	 */
	private static NestedLassoWord<MSODAlphabetSymbol> parseLassoWord(final Term term, final String values) {
		final String[] v = values.split(WORD_SEP);
		assert (v.length == 2);

		return new NestedLassoWord<>(parseWord(term, v[0]), parseWord(term, v[1]));
	}

	/**
	 * Returns a {@link NestedLassoWord} parsed from the given strings.
	 */
	private static NestedLassoWord<MSODAlphabetSymbol> parseLassoWord(final Term term1, final Term term2,
			final String values1, final String values2) {

		final String[] v1 = values1.split(WORD_SEP);
		final String[] v2 = values2.split(WORD_SEP);
		assert (v1.length == 2 && v2.length == 2);

		return new NestedLassoWord<>(parseWord(term1, term2, v1[0], v2[0]), parseWord(term1, term2, v1[1], v2[1]));
	}

	/**
	 * Tests if a given {@link NestedWord} is or is not accepted by the given {@link INestedWordAutomaton}.
	 */
	private void test(final Boolean result, final NestedWord<MSODAlphabetSymbol> word,
			final INestedWordAutomaton<MSODAlphabetSymbol, String> automaton) throws AutomataLibraryException {

		final Accepts<MSODAlphabetSymbol, String> accepts = new Accepts<>(mALS, automaton, word);

		mLogger.info("Word: " + word);
		mLogger.info("Expected: " + result + " / Result: " + accepts.getResult());
		Assert.assertEquals(result, accepts.getResult());
	}

	/**
	 * Tests if a given {@link NestedLassoWord} is or is not accepted by the given {@link INestedWordAutomaton}.
	 */
	private void test(final Boolean result, final NestedLassoWord<MSODAlphabetSymbol> word,
			final INestedWordAutomaton<MSODAlphabetSymbol, String> automaton) throws AutomataLibraryException {

		final BuchiAccepts<MSODAlphabetSymbol, String> accepts = new BuchiAccepts<>(mALS, automaton, word);

		mLogger.info("Word: " + word);
		mLogger.info("Expected: " + result + " / Result: " + accepts.getResult());
		Assert.assertEquals(result, accepts.getResult());
	}

	/**
	 * Test Cases for x < c.
	 */
	@Test
	public void strictIneqAutomaton() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test strictIneqAutomaton x < c ...");

		Rational c;
		final Term x = mScript.variable("x", SmtSortUtils.getIntSort(mScript));

		// false: 0 < 0
		c = Rational.valueOf(0, 1);
		test(false, parseWord(x, "1"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "100"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "1 0"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "100 000"), mOperations.strictIneqAutomaton(mALS, x, c));

		// true: -1 < 0
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, "01"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "0100"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "01 0"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "0100 000"), mOperations.strictIneqAutomaton(mALS, x, c));

		// true: -2 < -1
		c = Rational.valueOf(-1, 1);
		test(true, parseWord(x, "0001"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "000100"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "0001 00"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "000100 000"), mOperations.strictIneqAutomaton(mALS, x, c));

		// false: -1 < -2
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, "01"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "0100"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "01 00"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "0100 000"), mOperations.strictIneqAutomaton(mALS, x, c));

		// true: 0 < 1
		c = Rational.valueOf(1, 1);
		test(true, parseWord(x, "1"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "100"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "1 00000"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "10 00"), mOperations.strictIneqAutomaton(mALS, x, c));

		// -3 < 4
		c = Rational.valueOf(4, 1);
		test(true, parseWord(x, "000001"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "000001000"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "000001 0"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "0000010 00"), mOperations.strictIneqAutomaton(mALS, x, c));

		// false: 2 < 1
		c = Rational.valueOf(1, 1);
		test(false, parseWord(x, "00001"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "0000100"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "00001 000"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "000010 0"), mOperations.strictIneqAutomaton(mALS, x, c));

		// false: 1 < -2
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, "001"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "001000"), mOperations.strictIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "001 000"), mOperations.strictIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "00100 0"), mOperations.strictIneqAutomaton(mALS, x, c));
	}

	/**
	 * Test Cases for x-y < c
	 */
	@Test
	public void strictIneqAutomatonXYC() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test strictIneqAutomaton x-y < c ...");

		Rational c;
		final Term x = mScript.variable("x", SmtSortUtils.getIntSort(mScript));
		final Term y = mScript.variable("y", SmtSortUtils.getIntSort(mScript));

		// false: 0-(0) < 0
		c = Rational.valueOf(0, 1);
		test(false, parseWord(x, y, "10", "10"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseWord(x, y, "1", "1"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(false, parseLassoWord(x, y, "10 0", "10 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseLassoWord(x, y, "1 00", "1 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: 1-(2) < 0
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, y, "00100", "00001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "001000", "000010"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "001000 0", "000010 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "00100 00", "00001 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: 1-(3) < -1
		c = Rational.valueOf(-1, 1);
		test(true, parseWord(x, y, "0010000", "0000001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "0010000", "0000001"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "0010000 0", "0000001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "00100000 00", "00000010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// false: 2-(1) < 1
		c = Rational.valueOf(1, 1);
		test(false, parseWord(x, y, "00001", "00100"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseWord(x, y, "00001", "00100"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(false, parseLassoWord(x, y, "00001 0", "00100 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseLassoWord(x, y, "00001 00", "00100 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: -1-(0) < 0
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, y, "01", "10"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "010", "100"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "01 0", "10 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "01 00", "10 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// false: -1-(-2) < -2
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, y, "0100", "0001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseWord(x, y, "010000", "000100"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(false, parseLassoWord(x, y, "0100 0", "0001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseLassoWord(x, y, "01000 00", "00010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: 0-(0) < 1
		c = Rational.valueOf(1, 1);
		test(true, parseWord(x, y, "100", "100"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "10", "10"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "100 0", "100 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "10 00", "10 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: 0-(-1) < 2
		c = Rational.valueOf(2, 1);
		test(true, parseWord(x, y, "10", "01"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "10", "01"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "100 0", "010 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "10 00", "01 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: -2-(-1) < 1
		c = Rational.valueOf(1, 1);
		test(true, parseWord(x, y, "0001", "0100"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "00010", "01000"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "00010 0", "01000 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "0001 00", "0100 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: 1-(0) < 2
		c = Rational.valueOf(2, 1);
		test(true, parseWord(x, y, "001", "100"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "00100", "10000"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "001 0", "100 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "0010 00", "1000 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// false: 1-(-2) < 3
		c = Rational.valueOf(3, 1);
		test(false, parseWord(x, y, "0010", "0001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseWord(x, y, "00100", "00010"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(false, parseLassoWord(x, y, "0010 0", "0001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseLassoWord(x, y, "00100 00", "00010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// false: -1-(1) < -2
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, y, "010", "001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseWord(x, y, "0100", "0010"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(false, parseLassoWord(x, y, "010 0", "001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(false, parseLassoWord(x, y, "0100 00", "0010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: 0-(1) < 0
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, y, "100", "001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "1000", "0010"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "100 0", "001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "1000 00", "0010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: -2-(2) < -3
		c = Rational.valueOf(-3, 1);
		test(true, parseWord(x, y, "00010", "00001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "0001000", "0000100"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "00010 0", "00001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "000100 00", "000010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true -1-(2) < 2
		c = Rational.valueOf(2, 1);
		test(true, parseWord(x, y, "01000", "00001"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "010000", "000010"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "01000 0", "00001 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "010000 00", "000010 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		// true: -1-(0) < 0
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, y, "01", "10"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseWord(x, y, "0100", "1000"), mOperations.strictIneqAutomaton(mALS, x, y, c));

		test(true, parseLassoWord(x, y, "010 0", "100 0"), mOperations.strictIneqAutomaton(mALS, x, y, c));
		test(true, parseLassoWord(x, y, "0100 00", "1000 00"), mOperations.strictIneqAutomaton(mALS, x, y, c));
	}

	/**
	 * Test Cases for -x < c
	 */
	@Test
	public void strictNegIneqAutomaton() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test strictNegIneqAutomaton -x < c ...");
		Rational c;
		final Term x = mScript.variable("x", SmtSortUtils.getIntSort(mScript));

		// true: -(1) < 0
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, "001"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "001000"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "001 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "001000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		// false: -(1) < -2
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, "001"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "001000"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "001 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "001000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		// true: -(2) < -1
		c = Rational.valueOf(-1, 1);
		test(true, parseWord(x, "00001"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "00001000"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "00001 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "00001000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		// false: -(0) < 0
		c = Rational.valueOf(0, 1);
		test(false, parseWord(x, "1"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "1000"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "1 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "1000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		// true: -(0) < 1
		c = Rational.valueOf(1, 1);
		test(true, parseWord(x, "1"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "1000"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "1 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "1000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		// true: -(-2) < 3
		c = Rational.valueOf(3, 1);
		test(true, parseWord(x, "0001"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseWord(x, "00010"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(true, parseLassoWord(x, "0001 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(true, parseLassoWord(x, "0001000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		// false: -(-1) < -2
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, "01"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(false, parseWord(x, "010"), mOperations.strictNegIneqAutomaton(mALS, x, c));

		test(false, parseLassoWord(x, "01 00"), mOperations.strictNegIneqAutomaton(mALS, x, c));
		test(false, parseLassoWord(x, "01000 0"), mOperations.strictNegIneqAutomaton(mALS, x, c));
	}

	/**
	 * Test Cases for x strictSubsetInt y
	 */
	@Test
	public void strictSubsetAutomaton() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test strictSubsetAutomaton x strictSubsetInt y ...");

		final Term x = mScript.variable("x", MSODUtils.getSetOfIntSort(mScript));
		final Term y = mScript.variable("y", MSODUtils.getSetOfIntSort(mScript));

		// true: { } subsetInt { -2 }
		test(true, parseWord(x, y, "0000", "0001"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(true, parseWord(x, y, "00000", "00010"), mOperations.strictSubsetAutomaton(mALS, x, y));

		test(true, parseLassoWord(x, y, "0000 00", "0001 00"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "00000 0", "00010 0"), mOperations.strictSubsetAutomaton(mALS, x, y));

		// true: { -1, 2 } strictSubsetInt { -2, -1, 0, 2 }
		test(true, parseWord(x, y, "01001", "11011"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(true, parseWord(x, y, "0100100", "1101100"), mOperations.strictSubsetAutomaton(mALS, x, y));

		test(true, parseLassoWord(x, y, "01001 000", "11011 000"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "010010 0", "110110 0"), mOperations.strictSubsetAutomaton(mALS, x, y));

		// false: { } strictSubsetInt { }
		test(false, parseWord(x, y, "0000", "0000"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(false, parseWord(x, y, "00000", "00000"), mOperations.strictSubsetAutomaton(mALS, x, y));

		test(false, parseLassoWord(x, y, "0 00", "0 00"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "000 0", "000 0"), mOperations.strictSubsetAutomaton(mALS, x, y));

		// false: { -2, 3 } strictSubsetInt { 2, 3 }
		test(false, parseWord(x, y, "0001001", "0000101"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(false, parseWord(x, y, "00010010", "00001010"), mOperations.strictSubsetAutomaton(mALS, x, y));

		test(false, parseLassoWord(x, y, "0001001 00", "0000101 00"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "000100100 0", "000010100 0"), mOperations.strictSubsetAutomaton(mALS, x, y));

		// true: { -1, -2, -3, ... } strictSubsetInt { 0, -1, 1, -2, 2, ...}
		test(true, parseLassoWord(x, y, "01 01", "11 11"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "0 10", "1 11"), mOperations.strictSubsetAutomaton(mALS, x, y));

		// false: { 0, -1 } strictSubsetInt { -1, -2, -3, ...}
		test(false, parseLassoWord(x, y, "11 00", "01 01"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "110 00", "010 10"), mOperations.strictSubsetAutomaton(mALS, x, y));

		// false: { -1, -2, -3, ... } strictSubsetInt { -1, -2, -3, ...}
		test(false, parseLassoWord(x, y, "01 01", "01 01"), mOperations.strictSubsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "0 10", "0 10"), mOperations.strictSubsetAutomaton(mALS, x, y));
	}

	/**
	 * Test Cases for x subsetInt y
	 */
	@Test
	public void subsetAutomaton() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test subsetAutomaton x subsetInt y ...");

		final Term x = mScript.variable("x", MSODUtils.getSetOfIntSort(mScript));
		final Term y = mScript.variable("y", MSODUtils.getSetOfIntSort(mScript));

		// true: { } subsetInt { }
		test(true, parseWord(x, y, "0", "0"), mOperations.subsetAutomaton(mALS, x, y));
		test(true, parseWord(x, y, "000", "000"), mOperations.subsetAutomaton(mALS, x, y));

		test(true, parseLassoWord(x, y, "000 00", "000 00"), mOperations.subsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "0000 0", "0000 0"), mOperations.subsetAutomaton(mALS, x, y));

		// true: { -1, 2 } subsetInt { -2, -1, 0, 2 }
		test(true, parseWord(x, y, "01001", "11011"), mOperations.subsetAutomaton(mALS, x, y));
		test(true, parseWord(x, y, "0100100", "1101100"), mOperations.subsetAutomaton(mALS, x, y));

		test(true, parseLassoWord(x, y, "01001 00", "11011 00"), mOperations.subsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "010010 0", "110110 0"), mOperations.subsetAutomaton(mALS, x, y));

		// false: { 0, 1 } subsetInt { 0 }
		test(false, parseWord(x, y, "101", "100"), mOperations.subsetAutomaton(mALS, x, y));
		test(false, parseWord(x, y, "1010", "1000"), mOperations.subsetAutomaton(mALS, x, y));

		test(false, parseLassoWord(x, y, "101 00", "100 00"), mOperations.subsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "1010 0", "1000 0"), mOperations.subsetAutomaton(mALS, x, y));

		// false: { -1, 2 } subsetInt { 1, 2 }
		test(false, parseWord(x, y, "01001", "00101"), mOperations.subsetAutomaton(mALS, x, y));
		test(false, parseWord(x, y, "010010", "001010"), mOperations.subsetAutomaton(mALS, x, y));

		test(false, parseLassoWord(x, y, "01001 00", "00101 00"), mOperations.subsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "0100100 0", "0010100 0"), mOperations.subsetAutomaton(mALS, x, y));

		// true: { 0, -1 } subsetInt {0, -1, 1, ...}
		test(true, parseLassoWord(x, y, "11 00", "11 11"), mOperations.subsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "1100 0", "1111 1"), mOperations.subsetAutomaton(mALS, x, y));

		// false: { 0, 1, 2, ... } subsetInt {-1, 2, ...}
		test(false, parseLassoWord(x, y, "10 10", "01 01"), mOperations.subsetAutomaton(mALS, x, y));
		test(false, parseLassoWord(x, y, "101 01", "010 10"), mOperations.subsetAutomaton(mALS, x, y));

		// true: { 0, -1, 1, ... } subsetInt {0, -1, 1, ...}
		test(true, parseLassoWord(x, y, "11 11", "11 11"), mOperations.subsetAutomaton(mALS, x, y));
		test(true, parseLassoWord(x, y, "1111 1", "1111 1"), mOperations.subsetAutomaton(mALS, x, y));
	}

	/**
	 * Test Cases for x+c element y.
	 */
	@Test
	public void elementAutomaton() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test elementAutomaton x+c element y ...");
		Rational c;
		final Term x = mScript.variable("x", SmtSortUtils.getIntSort(mScript));
		final Term y = mScript.variable("y", MSODUtils.getSetOfIntSort(mScript));

		// true: 0+0 element { 0 }
		c = Rational.valueOf(0, 1);
		test(true, parseWord(x, y, "1", "1"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseWord(x, y, "100", "100"), mOperations.elementAutomaton(mALS, x, c, y));

		test(true, parseLassoWord(x, y, "1 0", "1 0"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseLassoWord(x, y, "1000 0", "1000 0"), mOperations.elementAutomaton(mALS, x, c, y));

		// true: 0+(-1) element { -1 }
		c = Rational.valueOf(-1, 1);
		test(true, parseWord(x, y, "10", "01"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseWord(x, y, "100", "010"), mOperations.elementAutomaton(mALS, x, c, y));

		test(true, parseLassoWord(x, y, "10 0", "01 0"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseLassoWord(x, y, "1000 00", "0100 00"), mOperations.elementAutomaton(mALS, x, c, y));

		// true :-1 + 1 element { 0, 1 }
		c = Rational.valueOf(1, 1);
		test(true, parseWord(x, y, "010", "101"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseWord(x, y, "01000", "10100"), mOperations.elementAutomaton(mALS, x, c, y));

		test(true, parseLassoWord(x, y, "010 0", "101 0"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseLassoWord(x, y, "01000 00", "10100 00"), mOperations.elementAutomaton(mALS, x, c, y));

		// false: -1 + 0 element { }
		c = Rational.valueOf(0, 1);
		test(false, parseWord(x, y, "01", "00"), mOperations.elementAutomaton(mALS, x, c, y));
		test(false, parseWord(x, y, "01000", "00000"), mOperations.elementAutomaton(mALS, x, c, y));

		test(false, parseLassoWord(x, y, "010 0", "000 0"), mOperations.elementAutomaton(mALS, x, c, y));
		test(false, parseLassoWord(x, y, "01000 00", "00000 00"), mOperations.elementAutomaton(mALS, x, c, y));

		// false: 1 + 3 element { 2 }
		c = Rational.valueOf(3, 1);
		test(false, parseWord(x, y, "00100", "00001"), mOperations.elementAutomaton(mALS, x, c, y));
		test(false, parseWord(x, y, "001000", "000010"), mOperations.elementAutomaton(mALS, x, c, y));

		test(false, parseLassoWord(x, y, "0010000 0", "0000100 0"), mOperations.elementAutomaton(mALS, x, c, y));
		test(false, parseLassoWord(x, y, "00100 00", "00001 00"), mOperations.elementAutomaton(mALS, x, c, y));

		// true: -1+2 element { 1, -1, 3, -3,.. }
		c = Rational.valueOf(2, 1);
		test(true, parseLassoWord(x, y, "010 0000", "011 0011"), mOperations.elementAutomaton(mALS, x, c, y));
		test(true, parseLassoWord(x, y, "01000 0000", "01100 1100"), mOperations.elementAutomaton(mALS, x, c, y));
	}

	/**
	 * Test Cases for c element x.
	 */
	@Test
	public void constElementAutomaton() throws AutomataLibraryException {
		mLogger.info("--------------------------------------------------");
		mLogger.info("Test constElementAutomaton c element x ...");
		Rational c;
		final Term x = mScript.variable("x", MSODUtils.getSetOfIntSort(mScript));

		// true: -1 element { 0, -1}
		c = Rational.valueOf(-1, 1);
		test(true, parseWord(x, "01"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseWord(x, "010"), mOperations.constElementAutomaton(mALS, c, x));

		test(true, parseLassoWord(x, "01 0"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseLassoWord(x, "010 00"), mOperations.constElementAutomaton(mALS, c, x));

		// true: 1 element { 1, 2 }
		c = Rational.valueOf(1, 1);
		test(true, parseWord(x, "00101"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseWord(x, "0010100"), mOperations.constElementAutomaton(mALS, c, x));

		test(true, parseLassoWord(x, "00101 0"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseLassoWord(x, "0010100 00"), mOperations.constElementAutomaton(mALS, c, x));

		// true: 2 element { -1, 2 }
		c = Rational.valueOf(2, 1);
		test(true, parseWord(x, "01001"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseWord(x, "0100100"), mOperations.constElementAutomaton(mALS, c, x));

		test(true, parseLassoWord(x, "01001 0"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseLassoWord(x, "0100100 00"), mOperations.constElementAutomaton(mALS, c, x));

		// false: 5 element { }
		c = Rational.valueOf(5, 1);
		test(false, parseWord(x, "000"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseWord(x, "00"), mOperations.constElementAutomaton(mALS, c, x));

		test(false, parseLassoWord(x, "0 0"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseLassoWord(x, "0000 00"), mOperations.constElementAutomaton(mALS, c, x));

		// false: -2 element { -1, 1 }
		c = Rational.valueOf(-2, 1);
		test(false, parseWord(x, "011"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseWord(x, "011000"), mOperations.constElementAutomaton(mALS, c, x));

		test(false, parseLassoWord(x, "011 0"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseLassoWord(x, "0110 00"), mOperations.constElementAutomaton(mALS, c, x));

		// false: 1 element { -1, -2 }
		c = Rational.valueOf(1, 1);
		test(false, parseWord(x, "0101"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseWord(x, "0101000"), mOperations.constElementAutomaton(mALS, c, x));

		test(false, parseLassoWord(x, "0101 0"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseLassoWord(x, "01010000 00"), mOperations.constElementAutomaton(mALS, c, x));

		// true: 5 element { 0, 1, -1, 2, -2, ... }
		c = Rational.valueOf(5, 1);
		test(true, parseLassoWord(x, "1 1"), mOperations.constElementAutomaton(mALS, c, x));
		test(true, parseLassoWord(x, "11 1111"), mOperations.constElementAutomaton(mALS, c, x));

		// false: -6 element { 0, 1, 2, 3, ... }
		c = Rational.valueOf(-6, 1);
		test(false, parseLassoWord(x, "10 10"), mOperations.constElementAutomaton(mALS, c, x));
		test(false, parseLassoWord(x, "1 01"), mOperations.constElementAutomaton(mALS, c, x));
	}

}
