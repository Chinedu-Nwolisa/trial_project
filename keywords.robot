*** Settings ***
Documentation    Keywords for automationpractice
Library   SeleniumLibrary
Resource  variables.robot
Library   FakerLibrary



*** Keywords ***
Get to login page
     Open Browser                  ${URL}    ${BROWSER}
     Maximize Browser Window
     Wait Until Element Is Visible  ${APP_LOGO}  10s
     Wait Until Element Is Visible  ${CUSTOMER_LOGIN}    10s

     
Click on register btn
    #Open Browser                  ${URL}    ${BROWSER}
    #Wait Until Element Is Visible  ${CUSTOMER_LOGIN}    10s
    Click Link      ${REGISTER_LINK}

Input user address
    Input Text    ${ADDRESS_FIELD}      Ikenga Ogidi
    Input Text    ${CITY}     Onitsha
    Input Text    ${STATE}    Anambra

Enter firstname for new user
     ${firstname}=  FakerLibrary.First Name
     log  ${firstname}
     Set Test Variable    ${firstname}
     Input Text  ${FIRST_NAME_FIELD}    ${firstname}

Enter lastname for new user
     ${lastname}=  FakerLibrary.Last Name
     log  ${lastname}
     Set Test Variable    ${lastname}
     Input Text  ${LAST_NAME_FIELD}     ${lastname}

Input user zipcode, phone number and SSN
    Input Text    ${ZIP_CODE}     67543
    Input Text    ${PHONE}     07033481199
    Input Text    ${SSN}       1132-543

User to choose a username
    ${username}=  FakerLibrary.User Name
     log  ${username}
     Set Test Variable    ${username}
     Input Text  ${USERNAME_FIELD}     ${username}

User to choose a Password
    [Arguments]     ${password_field}     ${confirm_password_field}
    Input Text    ${PASSWORD_FIELD}    ${password_field}
    Input Text    ${CONFIRM_PASSWORD_FIELD}    ${confirm_password_field}

Click on the register button
    Click Button    ${REGISTER_BTN}
    
Login user with valid credentials
    [Arguments]     ${username}     ${password}
    Input Text    ${USERNAME_FIELD_FOR_LOGIN}      ${username}
    Input Text    ${PASSWORD_FIELD_FOR_LOGIN}     ${password}
    Click Button    ${LOGIN_BTN}

Incorrect Login 1 (Valid Username, Invalid Password)
    [Arguments]     ${username}     ${password}
    Input Text    ${USERNAME_FIELD_FOR_LOGIN}      ${username}
    Input Text    ${PASSWORD_FIELD_FOR_LOGIN}     ${password}
    Click Button    ${LOGIN_BTN}

Incorrect Login 2 (Invalid Username, Valid Password)
    [Arguments]     ${username}     ${password}
    Input Text    ${USERNAME_FIELD_FOR_LOGIN}      ${username}
    Input Text    ${PASSWORD_FIELD_FOR_LOGIN}     ${password}
    Click Button    ${LOGIN_BTN}


Wait and click element
  #we can use this to replace the keyword Click element, so it will wait for sometime to confirm if the element is enabled
    [Documentation]  wiat until element is enabled before clicking
    [Arguments]     ${selector}     ${timeouts}=10s
    Wait Until Element Is Enabled    ${selector}
    Click Element    ${selector}

Wait and input text
  #we can use this to replace the keyword Input Text, so it will wait for sometime to confirm if the element is enabled
    [Documentation]  wiat until element is enabled before inputing text
    [Arguments]     ${selector}  ${text}   ${timeouts}=10s
    Wait Until Element Is Enabled    ${selector}
    Input Text    ${selector}  ${text}
    
Enter firstname for forgot login info
     ${firstname}=  FakerLibrary.First Name
     log  ${firstname}
     Set Test Variable    ${firstname}
     Input Text  ${FORGOT_LOGIN_INFO_FIRSTNAME}     ${firstname}
     
Enter lastname for forgot login info
     ${lastname}=  FakerLibrary.Last Name
     log  ${lastname}
     Set Test Variable    ${lastname}
     Input Text  ${FORGOT_LOGIN_INFO_LASTNAME}      ${lastname}
    
Input user address for forgot login info
    Input Text    ${FORGOT_LOGIN_INFO_ADDRESS}       Ikenga Ogidi
    Input Text    ${FORGOT_LOGIN_INFO_CITY}     Onitsha
    Input Text    ${FORGOT_LOGIN_INFO_STATE}     Anambra 
    Input Text    ${FORGOT_LOGIN_INFO_ZIPCODE}    33720
    Input Text    ${FORGOT_LOGIN_INFO_SSN}      8194B

Forgot login info?
    Click Link    ${FORGOT_LOGIN_INFO}
    Enter firstname for forgot login info
    Enter lastname for forgot login info
    Input user address for forgot login info
    Click Button    ${FIND_LOGIN_INFO_BTN} 