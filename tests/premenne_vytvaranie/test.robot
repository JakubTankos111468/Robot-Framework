*** Settings ***
Documentation    Creating variables

*** Variables ***
${TXT}    ROBOT FRAMEWORK IS AWESOME!

*** Test Cases ***
Set Value To Scalar
    ${x}=    Set Variable    x returned from keyword.
    Log To Console    ${x}

Set Values to List
    @{months}=    Create List    JANUARY    FEBRUARY    MARCH    APRIL
    Log To Console    ${months}

Set Items to Dictionary
    &{car}=    Create Dictionary    brand=Toyota    model=Corolla    year=2020
    Log To Console    ${car}

*** Keywords ***
Print To Console Global Variable
    Log To Console    ${TXT}