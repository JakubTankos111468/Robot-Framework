*** Settings ***
Documentation    Importing custom library
Library          libs/my_library.py
Library          libs/ExampleLibrary.py

*** Test Cases ***
Test custom library
    ${n}=   Set Variable    ${42}
    ${is_even}    Is Number Even    number=${n}
    Log To Console   ${is_even}

Test Example Library
    ${date}=    Get Current Date
    Log To Console    Today is: ${date}