import unittest

class TestSomeScript(unittest.TestCase):
    def test_working_function(self):
        self.assertTrue(
            "correct result" == "correct result"
        )

    def test_broken_function(self):
        self.assertTrue(
            "correct result" == "incorrect result"
        )
