*** Settings ***
Documentation     A test suite with test cases for event registration.
Suite Setup       Open Browser To Registration Page
Suite Teardown    Close Browser
Resource          resource.robot

*** Test Cases ***
Open Event Registration Page
    [Documentation]    Opens the event registration page and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

Empty First Name
    [Documentation]    Fills out the registration form without fname info and submits it.
    Input Registration Form Without Fname
    Submit Form
    Validate Not Success Without Fname Page
    [Teardown]    Close Browser

First Reopen Event Registration Page
    [Documentation]    Opens the event registration page and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

Empty Last Name
    [Documentation]    Fills out the registration form without lname info and submits it.
    Input Registration Form Without Lname
    Submit Form
    Validate Not Success Without Lname Page
    [Teardown]    Close Browser

Second Reopen Event Registration Page
    [Documentation]    Opens the event registration page and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

Empty First Name Last Name
    [Documentation]    Fills out the registration form without fname lname info and submits it.
    Input Registration Form Without Fname Lname
    Submit Form
    Validate Not Success Without Fname Lname Page
    [Teardown]    Close Browser

Third Reopen Event Registration Page
    [Documentation]    Opens the event registration page and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

Empty Email
    [Documentation]    Fills out the registration form without email info and submits it.
    Input Registration Form Without Email
    Submit Form
    Validate Not Success Without Email Page
    [Teardown]    Close Browser

Fourth Reopen Event Registration Page
    [Documentation]    Opens the event registration page and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

Empty Phone Number
    [Documentation]    Fills out the registration form without phone info and submits it.
    Input Registration Form Without Phone Number
    Submit Form
    Validate Not Success Without Phone Number Page
    [Teardown]    Close Browser

Fifth Reopen Event Registration Page
    [Documentation]    Opens the event registration page and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

invalid Phone Number
    [Documentation]    Fills out the registration form without phone info and submits it.
    Input Registration Form With Invalid Phone Number
    Submit Form
    Validate Not Success With Invalid Phone Number Page
    [Teardown]    Close Browser
