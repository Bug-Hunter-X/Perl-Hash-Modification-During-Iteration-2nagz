This repository demonstrates a common error in Perl when modifying a hash while iterating over its keys using the `keys` function.  The example shows how deleting keys during iteration leads to unexpected behavior and skipped elements.

The `bug.pl` file contains the buggy code.  The `bugSolution.pl` file demonstrates a correct approach using a different iteration technique.

This example highlights the importance of understanding how Perl handles hash iteration and the potential pitfalls of modifying the data structure during iteration.