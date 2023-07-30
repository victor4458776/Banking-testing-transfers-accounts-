from robot.running import TestSuite

# Create a suite, adjust source and convert to JSON.
# Createa new path /home/bank-account/data-invoice etc...
suite = TestSuite.from_file_system('/path/to/data')
suite.adjust_source(relative_to='/path/to')
suite.to_json('data.rbt')

# Recreate suite elsewhere and adjust source accordingly.
# .rbt .rst .py .json .xml
suite = TestSuite.from_json('data.rbt') #XML, JSON, PY, FORMATTING 
suite.adjust_source(root='/new/path/to')

from robot.running import TestSuite


# Create a suite, adjust source and convert to JSON.
suite = TestSuite.from_file_system('/path/to/data')
suite.adjust_source(relative_to='/path/to')
suite.to_json('data.rbt')

# Recreate suite elsewhere and adjust source accordingly.
suite = TestSuite.from_json('data.rbt')
suite.adjust_source(root='/new/path/to')

