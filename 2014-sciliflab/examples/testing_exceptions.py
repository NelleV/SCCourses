
    from nose.tools import assert_raises
    from nose.tools import assert_equals


    def mean(x):
        if len(x) == 0:
            raise ValueError("mean of empty list is undefined.")
        return float(sum(x)) / len(x)

    def test_mean():
        assert_equals(mean([1, 2, 3]), 2)
        assert_equals(mean([-4, 4]), 0)
        assert_raises(ValueError, mean, [])




