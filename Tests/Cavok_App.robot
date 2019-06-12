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
${INVALID_EMAIL} =  wrong@email.com
${INVALID_PASSWORD} =  randompassword

*** Test Cases ***
User should be able to login with valid credentials
    [Documentation]  This test verifies if a user can successfully login with existing account credentials.
    [Tags]  valid_login
    MyCavokApp.Go to Landing Page
    MyCavokApp.Login with valid credentials

User should not be able to login with invalid credentials
    [Documentation]  This test verifies if a user is not able to login with invalid email or password or both
    [Tags]  invalid_login
    MyCavokApp.Go to Landing Page
    MyCavokApp.Login with invalid credentials

User's workflow in "Logbook" view
    [Documentation]  This test verifies all the features in "Logbook" view after user's successful login
    [Tags]  logbook
    MyCavokApp.Go to Landing Page
    MyCavokApp.Login with valid credentials
    MyCavokApp.Go to "Flight Log" tab view
    MyCavokApp.Invoice all flights
    MyCavokapp.Export Log