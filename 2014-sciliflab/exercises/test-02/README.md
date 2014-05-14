# Using nose.tools

nose.tools utilities make it possible to check for less trivial assertions
while generating meaningful error messages in case of failure.


## Instructions

1. Change the first assertions to `assert interaction(1, 2) == 2` to trigger
   the failure message.

   Update the previous tests to use `assert_equals` instead of `assert`
   and `==`.

   Compare the error messages. Update the test to make it pass again.

2. Add a test for `interaction(1. / 3, 1)` and check the output with
   `assert_almost_equals`.

3. Test corner cases add a test that pass `None` as input to the `interaction`
   and check that a `TypeError` exception is raised with `assert_raises`.

4. Implement and test a new function named `positive_interaction` that behaves
   like `interaction` but raises `ValueError` whenever one of the argument is
   negative.

5. Have you started by writing the tests for question 4?