================================================================================
Software design, Packaging and Testing
================================================================================

---------

Software design
===================

Software design is the process by which an agent creates a specification of a
software artifact, intended to accomplish goals, using a set of primitive
components and subject to constraints. Software design may refer to either
"all the activities involved in conceptualizing, framing, implementing,
commissioning, and ultimately modifying complex systems" or "the activity
following requirements specification and before programming, as ... [in] a
stylized software engineering process."

Software design usually involves problem solving and planning a software
solution. This includes both low-level component and algorithm design and
high-level, architecture design.

----

Software design in short
==========================

How to write good code ?

-------

How to write good code ?
=========================

.. image:: images/good_code.png
  :width: 320px

-----

Packaging
==============

-----

Why ?
========

- Distribute your code to others
- Make your code installable in the usual manner most Python developers would
  expect
- Standard Python Package are cross- platform (Windows, OSX, Linux...)
- It organizes your code in a standard way.

------

Typical Project Layout
======================

.. image:: images/typical_project_layout.png
   :width: 520px


-----

A Sample Setup.py
======================

.. image:: examples/sample_setup.png
   :width: 520px


.. XXX REDO

-----



Testing
==============

-----

Outline
================================================================================

  - What is a test?
  - Why testing?
  - Where to put the tests and run them?
  - When should I test?
  - How to write, run and maintain test?

-----

What is a test?
================================================================================


.. image:: examples/what_is_a_test.png

-----

Why testing?
================================================================================

  - To validate code behavior (meet expectations) for many input cases
  - To find bugs earlier when easy to fix
  - To prevent silent regressions when refactoring
  - To guide the development (TDD)
  - To keep the developers motivated

.. FIXME insert code quality in research.

----

Types of Tests
================================================================================

  - **unit tests**: one function / class at a time
  - **integration tests**: many assembly
  - **non-regression tests**:

    - find a bug: write a test to reproduce and
      then fix the bug
    - can be unit tests or integration tests

--------

Where to put the tests?
================================================================================

Put the code in a module (a Python file)::

  mypackage/__init__.py
  mypackage/mymodule.py

Put the tests in a side module, for instance::

  mypackage/test_mymodule.py

---------

How to run the tests (with nose)
================================================================================

Installing nose::

  $ pip install nose
  Downloading/unpacking nose
  Downloading nose-1.3.0.tar.gz (404kB): 404kB downloaded
  ...
  Successfully installed nose
  Cleaning up...

Running nose::

  $ nosetests mypackage
  .

--------

When should I write & run tests?
===================================

  - As early as possible (TDD)
  - As often as possible
  - Before every git push to a public repo
  - Before fixing a bug (non-regression)
  - Tests should be fast to run!

---------

Exercises
================================================================================

-----

nose.tools assertions
================================================================================


• The Python assert builtin does not yield very useful error message
• Better nose.tools.assert_*

  - assert_equals(a, b)
  - assert_true(x) / assert_false(y)
  - assert_in(item, sequence)

----

Test Corner Cases
================================================================================

- How should that function react when passed: None, zero or negative numbers,
  empty strings, empty files, NaN inputs...?
- Test the type of exceptions raised in case
  of invalid input:
  
  - Wrong type should raise TypeError
  - Invalid type should raise ValueError

----

Testing Exceptions
================================================================================

.. image:: examples/testing_exceptions.png

----

Exercises
================================================================================
