

def interaction(a, b):
    diff = abs(b - a)
    if diff > 1:
        return diff ** 2
    else:
        return diff


def positive_interaction(a, b):
    if a < 0 or b < 0:
        raise ValueError(
            "Both a and b must be positive: got %r and %r" % (a, b))
    return interaction(a, b)
