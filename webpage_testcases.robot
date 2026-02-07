*** Settings ***
Documentation   A test suite with a single test for valid login.
Resource    loginPage.robot

*** Test Cases ***
Valid Login
    Open Browser to Login Page
    Input Username  demo
    Input Password  mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]      Close Browser
    