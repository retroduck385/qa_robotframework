*** Settings *** 
Documentation   This file contains reusable keywords and variables.
...
...
...
Library     SeleniumLibrary

#Changelog
#260219 - lsoriano      File creation.

*** Variables ***
${VALID_USERNAME}	standard_user
${VALID_PASSWORD}	secret_sauce

*** Test Cases ***
Valid Login
	Open Browser To Login Page
	Go To Login Page
	Input Username	${VALID_USERNAME}
	Input Password	${VALID_PASSWORD}
	Login to Application
	Welcome Page Should Be Open
	Logout from Application
	Close Browser