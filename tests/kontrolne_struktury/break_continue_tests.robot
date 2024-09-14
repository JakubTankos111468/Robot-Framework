*** Settings ***
Documentation    BREAK/CONTINUE STRUCTURE SYNTAX.


*** Variables ***
@{CARS}    BMW    Audi    Mercedes    Ford

*** Test Cases ***
CONTINUE Example
    FOR    ${character}    IN    @{CARS}
        IF    "${character}" == "BMW"    CONTINUE
        Log To Console    ${character}
    END

BREAK Example
    FOR    ${character}    IN    @{CARS}
        IF    "${character}" == "Mercedes"    BREAK
        Log To Console    ${character}
    END