*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Logbook.robot
Resource  ./PO/Login.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Login.robot


*** Variables ***


*** Keywords ***
Go to Langing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Login with valid credentials
    Login.Enter valid E-mail
    Login.Enter valid Password
    Login.Submit
    Login.Verify successful login
