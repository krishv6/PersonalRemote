#!/usr/bin/env python3
import os
import unittest

def analyze_text(filename):
    """Calculate the number of lines and characters in a files
    Args:
        filename: The name of the file to analyze
    Raises:
        IOError: If ''filename'' does not exist or can't be read
    Returns: Tuple where first element is number of lines in 
        the file and the second element is the number of
        characters
    """
    with open(filename,mode='rt',encoding='utf-8') as f:
        tmp=[len(list(line)) for line in f]
        lines=len(tmp)
        char=sum(tmp)
        return lines,char

class TextAnalysisTests(unittest.TestCase):
    """ Tests for the ''anlyze_text()'' function."""
    
    """Function that sets up environment before every test"""
    def setUp(self):
        """Fixture that creates a file for the text methods to use"""
        self.filename='text_analysis_test_file.txt'
        with open(self.filename,mode='wt',encoding='utf-8') as f:
            f.write('Now we are engadged in a great civil war.\n'
                    'testing whether that nation,\n'
                    'or any nation so conceived or so dedicated,\n'
                    'can long endure')

    """Function that clears up environment after every test"""
    def tearDown(self):
        """Fixture that deletes the files used by the test methods."""
        try:
            os.remove(self.filename)
        except:
            pass

    def test_function_runs(self):
        """Basic smoke test: does the function run"""
        analyze_text(self.filename)

    def test_line_count(self):
        self.assertEqual(analyze_text(self.filename)[0],4)

    def test_character_count(self):
        self.assertEqual(analyze_text(self.filename)[1],130)

    def test_no_such_file(self):
        """Checks if proper exception is thrown for missing file"""
        with self.assertRaises(IOError):
            analyze_text('foobar')

    def test_no_deletion(self):
        """Checks if the function does not delete the file"""
        analyze_text(self.filename)
        self.assertTrue(os.path.exists(self.filename))

if __name__ == '__main__':
    unittest.main()
    
