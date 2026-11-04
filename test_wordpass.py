import importlib.machinery
import unittest


wordpass = importlib.machinery.SourceFileLoader("wordpass", "./wordpass").load_module()


class SimpleCharacterPatternTests(unittest.TestCase):
    def test_allows_non_repeating_non_sequential_characters(self):
        self.assertFalse(wordpass.has_simple_character_pattern("icy-tiger-7"))

    def test_rejects_adjacent_identical_characters(self):
        self.assertTrue(wordpass.has_simple_character_pattern("amber-coffee-7"))
        self.assertTrue(wordpass.has_simple_character_pattern("amber-tiger-11"))

    def test_rejects_ascending_and_descending_sequences(self):
        self.assertTrue(wordpass.has_simple_character_pattern("sturdy-otter-7"))
        self.assertTrue(wordpass.has_simple_character_pattern("green-sponge-7"))
        self.assertTrue(wordpass.has_simple_character_pattern("amber-tiger-123"))


if __name__ == "__main__":
    unittest.main()
