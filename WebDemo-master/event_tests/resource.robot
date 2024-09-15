*** Settings ***
Documentation     A resource file with reusable keywords and variables for event registration.
Library           SeleniumLibrary

*** Variables ***
${SERVER}             localhost:7272
${BROWSER}            Firefox
${DELAY}              0
${VALID FIRSTNAME}    Somsri
${VALID LASTNAME}    Sodsai
${VALID ORGANIZATION}    CS KKU
${VALID EMAIL}        somsri@kkumail.com
${VALID PHONE}        081-001-1234
${INVALID PHONE}        1234
${REGISTRATION URL}   http://${SERVER}/Lab12/Registration.html

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${REGISTRATION URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Registration Form
    Input Text    id:firstname    ${VALID FIRSTNAME}
    Input Text    id:lastname     ${VALID LASTNAME}
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:email        ${VALID EMAIL}
    Input Text    id:phone        ${VALID PHONE}


Input Registration Form Without ORG
    Input Text    id:firstname    ${VALID FIRSTNAME}
    Input Text    id:lastname     ${VALID LASTNAME}
    Input Text    id:email        ${VALID EMAIL}
    Input Text    id:phone        ${VALID PHONE}

Input Registration Form Without Fname
    Input Text    id:lastname     ${VALID LASTNAME}
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:email        ${VALID EMAIL}
    Input Text    id:phone        ${VALID PHONE}

Input Registration Form Without Lname
    Input Text    id:firstname    ${VALID FIRSTNAME}
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:email        ${VALID EMAIL}
    Input Text    id:phone        ${VALID PHONE}

Input Registration Form Without Fname Lname
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:email        ${VALID EMAIL}
    Input Text    id:phone        ${VALID PHONE}

Input Registration Form Without Email
    Input Text    id:firstname    ${VALID FIRSTNAME}
    Input Text    id:lastname     ${VALID LASTNAME}
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:phone        ${VALID PHONE}

Input Registration Form Without Phone Number
    Input Text    id:firstname    ${VALID FIRSTNAME}
    Input Text    id:lastname     ${VALID LASTNAME}
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:email        ${VALID EMAIL}

Input Registration Form With Invalid Phone Number
    Input Text    id:firstname    ${VALID FIRSTNAME}
    Input Text    id:lastname     ${VALID LASTNAME}
    Input Text    id:organization    ${VALID ORGANIZATION}
    Input Text    id:email        ${VALID EMAIL}
    Input Text    id:phone        ${INVALID PHONE}

Submit Form
    Click Button    id:registerButton

Validate Success Page
    Title Should Be    Success
    Page Should Contain    Success
    Page Should Contain    Thank you for participating in our event

Validate Not Success Without Fname Page
    Title Should Be    Event Registration
    Page Should Contain    Please enter your first name!!

Validate Not Success Without Lname Page
    Title Should Be    Event Registration
    Page Should Contain    Please enter your last name!!

Validate Not Success Without Fname Lname Page
    Title Should Be    Event Registration
    Page Should Contain    Please enter your name!!

Validate Not Success Without Email Page
    Title Should Be    Event Registration
    Page Should Contain    Please enter your email!!

Validate Not Success Without Phone Number Page
    Title Should Be    Event Registration
    Page Should Contain    Please enter your phone number!!

Validate Not Success With Invalid Phone Number Page
    Title Should Be    Event Registration
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)