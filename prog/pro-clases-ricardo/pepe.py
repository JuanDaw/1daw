"""
lll.
"""

def fact(n):
    if n == 0:
        return 1
    else:
        return n * fact(n - 1)

def test_fact():
    assert fact(0) == 1
    assert fact(5) == 140

