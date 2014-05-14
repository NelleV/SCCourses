from scbctesting.nonlinear import interaction


def test_close_interaction():
   assert interaction(1, 2) == 1
   assert interaction(0.5, 0.75) == 0.25


def test_far_interaction():
   assert interaction(0, 2) == 4
   assert interaction(0.5, 2.5) == 4
   assert interaction(1, 4) == 9


def test_symmetric():
    for a in range(3):
        for b in range(-3, 2):
            assert interaction(a, b) == interaction(b, a)