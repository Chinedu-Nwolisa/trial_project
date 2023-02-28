*** Settings ***
Documentation    Register new user on the website
Library  SeleniumLibrary
Resource   keywords.robot
Resource   variables.robot
#Suite Setup  Get to login page
#Suite Setup  (This is a precondition for the test cases on this test script)
Suite Teardown  Close All Browsers

*** Test Cases ***
Verify that user can register on the website
    Click on register btn
    Enter firstname for new user
    Enter lastname for new user
    Input user address
    Input user zipcode, phone number and SSN
    User to choose a username
    User to choose a Password  ${PASSWORD_FIELD}     ${CONFIRM_PASSWORD_FIELD}
    Click on the register button