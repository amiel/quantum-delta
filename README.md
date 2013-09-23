# quantum-delta

generate quantum juggling patterns with the delta algorithm

## Algorithm

1. Find impossible delta combinations:
  * For each number less than the period `x`,
    there cannot be a combination of letters `period - x` in length that adds up
    to `x`.
2. For each number of digits in the period:
  * Generate the list of possible first character deltas by taking each number
    from 0 to `period - 1` and removing the invalid single character.
  * Generate the list of possible two character deltas by taking all of the
    combinations of the previous list and removing all invalid 2 character combinations.
  * Generate the list of possible three character deltas by taking combinations
    of valid two character deltas and 1 character deltas and removing all
    invalid 2 character and 3 character combinations.
  * Continue up to period.
3. Remove all rotation duplicates.
4. Use list of deltas to generate list of valid root siteswaps:
  * For each number less than the period `x`,
    start the pattern with `x` and continue adding delta (`modulo period`).

