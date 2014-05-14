# A first TDD session with nose

TDD stands for Test Driven Development: we write some tests first, then ensure
that they fail, then and write or update the implementation to make them pass.

Then we iterate by adding more failing tests and refining the implementations
until all the cases planned in the specifications (or in the developer's head)
of the project are covered.


## Instructions

1. Create a new Python package named `scbctesting` with an empty `__init__.py`
   file inside and an empty module `nonlinear.py`.

   mkdir scbctesting
   cd scbctesing
   touch __init__.py
   touch nonlinear.py

2. Create a file named `test_nonlinear.py` with the following content:

   ```python

   from scbctesting.nonlinear import interaction


   def test_close_interaction():
       assert interaction(1, 2) == 1
       assert interaction(0.5, 0.75) == 0.25


   def test_far_interaction():
       assert interaction(0, 2) == 4
       assert interaction(0.5, 2.5) == 4
       assert interaction(1, 4) == 9
   ```

   Those tests make the expectation that the module `scbctesting.nonlinear` has
   a function named `interaction` that compute a linear interaction (e.g. the
   difference) if the two argument are close enough and a quadratic interaction
   when the 2 arguments less similar.


3. Execute the tests in the `test_nonlinear.py` file: you should get an
   `ImportError` in the error message returned by `nosestests`.


   Fix the `ImportError` by editing the `nonlinear.py` file and adding a
   new function named `interaction` that takes 2 arguments and returns
   `None`


4. Rerun the tests with the `nosetests` command. This time you should get:
   2 failures instead of errors.

   Fix the failure for the `test_close_interaction` test **only** by updating
   the implemation of the `interaction` function.


5. Rerun the tests with the `nosetests` command. You should get 1 failure
   for the `test_far_interaction` test only.

   Fix the failure for the `test_far_interaction` test by updating
   the implemation of the `interaction` function.

   Make it such that the fix for the `test_far_interaction` test does not
   break the `test_close_interaction` test.

   All tests should pass at this point. Have :beers: or a :coffee:
   to celebrate!


6. Add a new test called `test_symmetric_interaction` to check that the
   `interaction` function is symmetric.


7. Run the tests again and check whether your new test pass. If not, fix
   the `interaction` function to make all tests pass again.
