*** Settings ***
Documentation  This test suite tests the functional features and workflow of the cavokapp web application
Resource  ../Resources/MyCavokApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.cavokapp.com/
${VALID_EMAIL} =  cj.sreejesh@gmail.com
${VALID_PASSWORD} =  testuser1

*** Test Cases ***
User should be able to login with valid credentials
    [Documentation]  This test verifies if a user can successfully login with existing account credentials.
    [Tags]  valid_login
    MyCavokApp.Go to Langing Page
    MyCavokApp.Login with valid credentials