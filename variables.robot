*** Variables ***

${URL}                  https://parabank.parasoft.com/parabank/index.htm
${BROWSER}              chrome
${APP_LOGO}             xpath://*[@id="topPanel"]/a[2]/img
${CUSTOMER_LOGIN}       xpath://*[@id="leftPanel"]/h2
${REGISTER_LINK}        xpath://*[@id="loginPanel"]/p[2]/a
${FIRST_NAME_FIELD}           id:customer.firstName
${LAST_NAME_FIELD}            id:customer.lastName
${ADDRESS_FIELD}              id:customer.address.street
${CITY}                 id:customer.address.city
${STATE}                id:customer.address.state
${ZIP_CODE}             id:customer.address.zipCode
${PHONE}                id:customer.phoneNumber
${SSN}                  id:customer.ssn
${USERNAME_FIELD}       id:customer.username
${USERNAME}             ${EMPTY}
${PASSWORD_FIELD}       id:customer.password
${PASSWORD}              ${EMPTY}
${CONFIRM_PASSWORD_FIELD}     id:repeatedPassword
${CONFIRM_PASSWORD}      ${EMPTY}
${REGISTER_BTN}         xpath://*[@id="customerForm"]/table/tbody/tr[13]/td[2]/input
${USERNAME_FIELD_FOR_LOGIN}     name:username
${PASSWORD_FIELD_FOR_LOGIN}     name:password
${LOGIN_BTN}     xpath://*[@id="loginPanel"]/form/div[3]/input

${FORGOT_LOGIN_INFO}                xpath://*[@id="loginPanel"]/p[1]/a
${FORGOT_LOGIN_INFO_FIRSTNAME}      id:firstName
${FORGOT_LOGIN_INFO_LASTNAME}       id:lastName
${FORGOT_LOGIN_INFO_ADDRESS}        id:address.street
${FORGOT_LOGIN_INFO_CITY}           id:address.city
${FORGOT_LOGIN_INFO_STATE}          id:address.state
${FORGOT_LOGIN_INFO_ZIPCODE}        id:address.zipCode
${FORGOT_LOGIN_INFO_SSN}            id:ssn
${FIND_LOGIN_INFO_BTN}              xpath://*[@id="lookupForm"]/table/tbody/tr[8]/td[2]/input