*** Settings ***
Documentation    Validate application home page and login page
Library  SeleniumLibrary
Resource   keywords.robot
Resource   variables.robot
#Suite Setup  Get to login page
#Suite Setup  (This is a precondition for the test cases on this test script)
Suite Teardown  Close All Browsers


*** Test Cases ***
Verify parabank logo and customer login section are displayed
    [Tags]  nedu
    Get to login page



Verify user login
    [Tags]  nedu
    #Setup is a precondition in RF
    [Setup]     Get to login page
    Login user with valid credentials   ${USERNAME_FIELD_FOR_LOGIN}     ${PASSWORD_FIELD_FOR_LOGIN}



*** Keywords ***
Provided precondition
