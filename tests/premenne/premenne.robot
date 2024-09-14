*** Settings ***
Documentation    Scalars, lists, dictionaries

*** Variables ***
${TXT}    ROBOT FRAMEWORK IS AWESOME!
${NUMBER}    ${42}
@{MONTHS}      JANUARY    FEBRUARY    MARCH   APRIL
&{CAR}      brand=Toyota    model=Corolla    year=2020

@{USER}    JOHN    DOE    42  1.80
&{USER2}   first=JOHN    last=DOE    age=42    height=1.80

*** Test Cases ***
Log Scalar Variable As IS
    Log To Console  ${TXT}

Log List Variable As IS
    Log To Console  ${MONTHS}

Log Dictionary Variable As IS
    Log To Console  ${CAR}

#Constants For List
    #Log User Data   robot   framework    

List Variable
    Log User Data  @{USER}

Dictionary Variable
    Log User Data  &{USER2}

Get First Item From List
    Log To Console  ${MONTHS}[0]

Get Car Model From Dictionary
    Log To Console  ${CAR}[model]
    Log To Console  ${CAR.model}

*** Keywords ***
Log User Data
    [Arguments]    ${first}    ${last}    ${age}    ${height}
    Log To Console  ${first}    ${last}    ${age}    ${height}
