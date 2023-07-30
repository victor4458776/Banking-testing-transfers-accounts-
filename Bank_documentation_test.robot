
*** Keywords ***
One line documentation
    [Documentation]    One line documentation.
    No Operation

Multiline documentation
    [Documentation]    The first line creates the short doc.
    ...
    ...                This is the body of the documentation.
    ...                It is not shown in Libdoc outputs but only
    ...                the short doc is shown in logs.
    No Operation

Short documentation in multiple lines
    [Documentation]    If the short doc gets longer, it can span
    ...                multiple physical lines.
    ...
    ...                The body is separated from the short doc with
    ...                an empty line.
    No Operation

*******************************************************************************
*** Keywords ***
Any Number Of Arguments
    [Arguments]    @{varargs}
    Log Many    @{varargs}

One Or More Arguments
    [Arguments]    ${required}    @{rest}
    Log Many    ${required}    @{rest}

Required, Default, Varargs
    [Arguments]    ${req}    ${opt}=42    @{others}
    Log    Required: ${req}
    Log    Optional: ${opt}
    Log    Others:
    FOR    ${item}    IN    @{others}
        Log    ${item}
    END

*** Variables ***
${DATE}    2011-06-27

*** Test Cases ***
Example
    Deadline is ${DATE}
    ${1} + ${2} = ${3}

