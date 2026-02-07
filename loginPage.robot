*** Settings *** 
Documentation   This test ensures that the demo page is accessible.
Library     SeleniumLibrary 

*** Variables ***
${SERVER}   localhost:7272
${BROWSER}  Chrome
${DELAY}    0
${VALID USER}   demo
${VALID PASSWORD}  mode
${LOGIN URL}    http://${SERVER}/    
${WELCOME URL}  http://${SERVER}/welcome.html
${ERROR URL}    http://${SERVER}/error.html

*** Keywords ***
Open browser to login page
    Open Browser    ${LOGIN URL}   ${BROWSER}

Login page should be open 
    Title should be     Login Page

Go to login page
    Go to   ${LOGIN URL}
    Login Page should be open

Input username
    [ARGUMENTS]    ${username}
    Input text  username_field  ${username}

Input password
    [ARGUMENTS]    ${password}
    Input text  password_field  ${password}

Submit credentials
    Click button    login_button

Welcome page should be open 
    Location should be      ${WELCOME URL}
    Title should be     Welcome Page
