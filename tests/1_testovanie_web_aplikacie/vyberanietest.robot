*** Settings ***
Documentation    Testovanie web aplikacie
Library          SeleniumLibrary

*** Variables ***
${URL}    http://localhost/vyberanie.php
${BROWSER}    Chrome

*** Test Cases ***
Select From Dropdown
    Open Browser    ${URL}    ${BROWSER}
    ${myHero}=    Set Variable    Batman    
    #Select From List By Index    id=chooseYourHero    2
    #Select From List By Label    id=chooseYourHero    label=Thor
    Select From List By Value    id=chooseYourHero    ${myHero}
    Page Should Contain Element    xpath=//span[@id="heroName" and text()="${myHero}"]
    