*** Settings ***
Documentation    Basic TC syntax

*** Test Cases ***
Compare two strings
    [Documentation]    Compare two strings
    [Tags]             string
    [Setup]            Log to console    START
    [Timeout]          15s

    ${string1}    Set Variable    ROBOT FRAMEWORK IS AWESOME!
    ${string2}    Set Variable    ROBOT FRAMEWORK IS AWESOME!
    Should Be Equal    ${string1}    ${string2}

    [Teardown]         Log to console    END