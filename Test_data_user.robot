#TEST1
#RUN TESTS FOR BANKING DATA IN LINUX
| *** Settings ***   |
| Documentation      | Example using the pipe separated format.
| Library            | OperatingSystem

| *** Variables ***  |
| ${MESSAGE}         | Account-Balance

| *** Test Cases *** |                 |               |
| My Test            | [Documentation] | Example test. |
|                    | Log             | ${MESSAGE}    | 
|                    | My Keyword      | ${CURDIR}     |
| Another Test       | Should Be Equal | ${MESSAGE}    | Account-Balance

| *** Keywords ***   |                        |         |
| My Keyword         | [Arguments]            | ${path} | 
|                    | Directory Should Exist | ${path} | /home/account

#RUN TESTS SEPARATELY
********************************************************************************************************* 
#TEST2

*** Tasks ***
Process invoice
    Read information from PDF
    Validate information
    Submit information to backend system
    Validate information is visible in web UI  

*** Settings ***
Documentation    API reference 
Suite Setup      Do Something    ${MESSAGE}
Test Tags        Bank-TSB
Library          SomeLibrary

*** Variables ***
${MESSAGE}       Bank Account /Holder-name)

*** Keywords ***
Do Something
    [Arguments]    ${args}
    Some Keyword    ${arg}
    Another Keyword

#TESTS OUTPUT
PYTHONPATH:
  /home/victoralonsogarcia8/.local/bin
  /usr/lib/python39.zip
  /usr/lib/python3.9
  /usr/lib/python3.9/lib-dynload
  /home/victoralonsogarcia8/.local/lib/python3.9/site-packages
  /usr/local/lib/python3.9/dist-packages
  /usr/lib/python3/dist-packages
==============================================================================
Tasks :: API reference                                                        
==============================================================================
Process invoice                                                       | FAIL |
Parent suite setup failed:
No keyword with name '$$$$' found.
------------------------------------------------------------------------------
Tasks :: API reference                                                | FAIL |
Suite setup failed:
No keyword with name '$$$$' found.
