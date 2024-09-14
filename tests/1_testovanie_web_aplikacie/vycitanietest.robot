*** Settings ***
Documentation    Testovanie web aplikacie
Library          SeleniumLibrary

*** Variables ***
${URL}    http://localhost/vycitavanie.php
${BROWSER}    Chrome

*** Test Cases ***
Input Data To From
    Open Browser    ${URL}    ${BROWSER}
    ${city}=    Get Text    id=city
    Log To Console    Cit: ${city}
    Input Text    id=cityCheck    ${city}
    Click Button  Overit
    Wait Until Page Contains Element    xpath=//div[@id="successAlert" and contains(.,"Vybral si spravne mesto.")]    timeout=5s
