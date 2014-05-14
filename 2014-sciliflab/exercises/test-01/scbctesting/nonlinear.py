def interaction(a, b):
    diff = abs(b - a)
    if diff > 1:
        return diff ** 2
    else:
        return diff
