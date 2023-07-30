#IMPORT SYSTEM UTILITIES
>>> import sys
>>> for path in sys.path:
...     print(path)
... 
/usr/lib/python39.zip
/usr/lib/python3.9
/usr/lib/python3.9/lib-dynload
/home/victoralonsogarcia8/.local/lib/python3.9/site-packages
/usr/local/lib/python3.9/dist-packages
/usr/lib/python3/dist-packages
#RELOAD TEST
>>> import test
>>> import test
>>> import importlib
>>> importlib.reload(test)
<module 'test' from '/home/victoralonsogarcia8/test.py'>

#HOW TO ACCESS TEST
/home/victoralonsogarcia8/.local/lib/python3.9/site-packages
/usr/local/lib/python3.9/dist-packages
/usr/lib/python3/dist-packages
>>> import importlib
>>> importlib.import_module('test')
<module 'test' from '/home/victoralonsogarcia8/test.py'>

#RUN PROCESS#
victoralonsogarcia8@penguin:~$ robot shell.test
==============================================================================
Shell                                                                         
==============================================================================
Example                                                               | FAIL |
No keyword with name 'Run Process' found.
------------------------------------------------------------------------------
Shell                                                                 | FAIL |
1 test, 0 passed, 1 failed
==============================================================================

# NEW CONFIGURATION TEST
*** Test Cases ***
Free Named Arguments
    Run Program    arg1    arg2    cwd=/home/user
    Run Program    argument    shell=True    env=${ENVIRON}

*** Keywords ***
Run Program
    [Arguments]    @{args}    &{config}
    Run Process    test.py    @{args}    &{config}


