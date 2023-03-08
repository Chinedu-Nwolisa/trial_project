*** Settings ***
Documentation    test to retrieve forgotten login info
Library  SeleniumLibrary
Resource   keywords.robot
Resource   variables.robot
Suite Setup  Get to login page
#Suite Setup  (This is a precondition for the test cases on this test script)
Suite Teardown  Close All Browsers

*** Test Cases ***
Verify that registered user can find login info
    Forgot login info?