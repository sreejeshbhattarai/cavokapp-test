*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Logbook.robot
Resource  ./PO/Login.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Login.robot
Resource  ./PO/Landing.robot
Resource  ./PO/Logbook.robot
Resource  ./PO/Login.robot
Resource  ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

Login with valid credentials
    Login.Enter valid E-mail
    Login.Enter valid Password
    Landing.Submit
    Login.Verify successful login

Login with invalid credentials
    Login.Enter invalid E-mail
    Login.Enter invalid Password
    Landing.Submit
    Login.Verify unsuccessful login

Go to "Flight Log" tab view
    Logbook.Verify page loaded

Invoice all flights
    Logbook.Click "Invoice Now" button
    Logbook.Action confirmation dialogue is shown
    Logbook.Click "OK" button
    Logbook.Invoicing completed confirmation is shown
    Logbook.Click "OK" button to return to flight log

Export Log
    Logbook.Click "Export Log" button

Switch Logbook mode
    log  to do

Save flight log with invalid input
    Save flight log

Save flight log with valid input
    Logbook.Select desired Aircraft
    Save flight log

View saved Logbook
    Logbook.Scroll to saved Logbook

Edit flight log
    Logbook.Click edit button
    Logbook.Verify edit view loaded
    Logbook.Make Changes
    Logbook.Save the changes
    Logbook.Verify changes

Delete a flight log
    Logbook.Click edit button
    Logbook.Verify edit view loaded
    Logbook.Delete the log

