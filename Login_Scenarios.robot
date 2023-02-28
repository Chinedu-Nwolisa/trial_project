*** Settings ***
Documentation    Different Login Scenarios
Library  SeleniumLibrary
Resource   keywords.robot
Resource   variables.robot
Suite Setup  Get to login page
#Suite Setup  (This is a precondition for the test cases on this test script)
Suite Teardown  Close All Browsers


*** Test Cases ***
#Verify user login with valid credentials
#    [Tags]  nedu
#    #Setup is a precondition in RF
#    #[Setup]     Get to login page
#    Login user with valid credentials   ${USERNAME_FIELD_FOR_LOGIN}     ${PASSWORD_FIELD_FOR_LOGIN}

Invalid Login 1
    [Tags]  nedu
    Incorrect Login 1 (Valid Username, Invalid Password)  ${username}  Cannan

Invalid Login 2
    [Tags]  nedu
    Incorrect Login 2 (Invalid Username, Valid Password)  Lioness     ${password}



