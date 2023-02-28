*** Variables ***

${URL}                  https://parabank.parasoft.com/parabank/index.htm
${BROWSER}              headlesschrome
${APP_LOGO}             //*[@id="topPanel"]/a[2]/img
${CUSTOMER_LOGIN}       //*[@id="leftPanel"]/h2
${REGISTER_LINK}        //*[@id="loginPanel"]/p[2]/a
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
${REGISTER_BTN}         //*[@id="customerForm"]/table/tbody/tr[13]/td[2]/input
${USERNAME_FIELD_FOR_LOGIN}     name:username
${PASSWORD_FIELD_FOR_LOGIN}     name:password
${LOGIN_BTN}     //*[@id="loginPanel"]/form/div[3]/input