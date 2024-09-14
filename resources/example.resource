*** Settings ***
Documentation    Test data sections.

*** Variables ***
${TXT}    ROBOT FRAMEWORK IS AWESOME!


*** Keywords ***
Print Variable To Console
    [Documentation]    Printing...
    [Arguments]    ${message}
    Log To Console    ${message}

