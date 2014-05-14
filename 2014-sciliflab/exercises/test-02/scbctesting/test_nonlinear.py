from scbctesting.nonlinear import interaction
from scbctesting.nonlinear import positive_interaction

from nose.tools import assert_equals
from nose.tools import assert_almost_equals
from nose.tools import assert_raises


def test_close_interaction():
   assert_equals(interaction(1, 2), 1)
   assert_equals(interaction(0.5, 0.75), 0.25)
   assert_almost_equals(interaction(1. / 3, 1), 0.67, 2)


def test_far_interaction():
   assert_equals(interaction(0, 2), 4)
   assert_equals(interaction(0.5, 2.5), 4)
   assert_equals(interaction(1, 4), 9)


def test_symmetric():
    for a in range(3):
        for b in range(-3, 2):
            assert_equals(interaction(a, b), interaction(b, a))


def test_invalid_input():
    assert_raises(TypeError, interaction, None, 1)
    assert_raises(TypeError, interaction, 1, None)

    assert_raises(TypeError, interaction, "Some string", 1)
    assert_raises(TypeError, interaction, 1, "Some string")


def test_positive_interaction():
    assert_equals(positive_interaction(1, 2), 1)
    assert_equals(positive_interaction(0.5, 0.75), 0.25)

    assert_equals(positive_interaction(0, 2), 4)
    assert_equals(positive_interaction(0.5, 2.5), 4)
    assert_equals(positive_interaction(1, 4), 9)

    assert_almost_equals(positive_interaction(1. / 3, 1), 0.67, 2)

    assert_raises(ValueError, positive_interaction, -1, 1)
    assert_raises(ValueError, positive_interaction, 1, -1)