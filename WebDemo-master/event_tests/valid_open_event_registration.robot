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

Register Success
    [Documentation]    Fills out the registration form and submits it, then validates the success page.
    Input Registration Form
    Submit Form
    Validate Success Page
    [Teardown]    Close Browser

Reopen Event Registration Page
    [Documentation]    Opens the event registration page again and ensures it loads successfully.
    Open Browser To Registration Page
    Title Should Be    Event Registration

Register Success No Organization Info
    [Documentation]    Fills out the registration form without organization info and submits it, then validates the success page.
    Input Registration Form Without ORG
    Submit Form
    Validate Success Page
    [Teardown]    Close Browser