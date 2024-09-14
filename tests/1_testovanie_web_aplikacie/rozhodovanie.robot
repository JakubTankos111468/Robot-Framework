*** Settings ***
Documentation    Testovanie web aplikacie
Library          SeleniumLibrary
Library    String

*** Variables ***
${URL}    http://localhost/rozhodovanie.php
${BROWSER}    Chrome

*** Test Cases ***
Click On Correct Label
    Open Browser    ${URL}    ${BROWSER}
    ${correct_label}=    Get Text    xpath=//p[contains(.,"robot") or contains(.,"clovek")]
    ${correct_label}=    Fetch From Right    ${correct_label}    ${SPACE}
    ${correct_label}=    Fetch From Left     ${correct_label}        !
    Click Element    xpath=//label[contains(text(),"${correct_label}")]
    Page Should Contain    Vybral si spravne!

Click On Correct Label2
    Open Browser    ${URL}    ${BROWSER}
    ${is_robot_visible}=    Run Keyword And Return Status    Page Should Contain Element    xpath=//p[contains(.,"robot")]
    IF    ${is_robot_visible}
        Click Element    xpath=//label[contains(text(), "robot")]
    ELSE
        Click Element    xpath=//label[contains(text(), "clovek")]
    END
