*** Settings *** 
Documentation   This file contains reusable keywords and variables.
...
...
...
Library     SeleniumLibrary

#Changelog
#260219 - lsoriano      File creation.

*** Variables ***
${SAUCELAB_URL}	https://www.saucedemo.com
${BROWSER}	Chrome
${DELAY}	1
${ERROR_MESSAGE}	Epic sadface: Username and password do not match any user in this service
${LANDING_PAGE}	${SAUCELAB_URL}/inventory.html
${FIRST_NAME}		Josh
${LAST_NAME}		Ng
${POSTAL_CODE}		1009

*** Keywords ***
# ANYTHING RELATED TO LOGIN FEATURE
Open Browser To Login Page
	Open Browser	${SAUCELAB_URL}	${BROWSER}
	#Maximize Browser Window
	Set Selenium Speed	${DELAY}

Go To Login Page
	Go To	${SAUCELAB_URL}
	Title Should Be		Swag Labs
	
Input Username
					[Arguments]    ${username}
    Input Text    user-name    ${username}

Input Password
					[Arguments]    ${password}
    Input Text    password    ${password}

Login to Application
    Click button    login-button
	
Welcome Page Should Be Open
    Location Should Be    ${LANDING_PAGE}
    Title Should Be    Swag Labs

Logout from Application
    Click Element   id=react-burger