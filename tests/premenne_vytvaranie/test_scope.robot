*** Settings ***
Documentation    Test scopes
Resource         variables.resource

*** Test Cases ***
Log Test Scope Variable
    First Keyword
    Second Keyword
    #Log To Console  ${x}
    
Log Suite Variable2
    Log To Console    ${SUITE_VAR_FROM_RESOURCE}

*** Keywords ***
First Keyword
    ${x}=    Set Variable    LOCAL VARIABLE FROM FIRST KEYWORD
    Set Test Variable   ${x}

Second Keyword
    Log To Console   ${x}