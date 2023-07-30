#TEST1
| *** Settings ***   |
| Documentation      | Example using the pipe separated format.
| Library            | OperatingSystem

| *** Variables ***  |
| ${MESSAGE}         | Account-Balance

| *** Test Cases *** |                 |               |
| My Test            | [Documentation] | Example test. |
|                    | Log             | ${MESSAGE}    | 10000$
|                    | My Keyword      | ${CURDIR}     |
| Another Test       | Should Be Equal | ${MESSAGE}    | Balance-Account

| *** Keywords ***   |                        |         |
| My Keyword         | [Arguments]            | ${path} | /../../../
|                    | Directory Should Exist | ${path} |

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
