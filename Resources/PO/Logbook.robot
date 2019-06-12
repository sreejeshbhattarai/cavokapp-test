*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify page loaded
    wait until page contains  Logbook

Click "Invoice Now" button
    click button  xpath=//*[@id="logbook-menu-pane-1"]/div[1]/div[1]/div[2]/button

Action confirmation dialogue is shown
    wait until page contains  Invoicing

Click "OK" button
    click button  xpath=/html/body/div[7]/div[2]/div/div/div[3]/button[2]

Invoicing completed confirmation is shown
    wait until page contains  Invoicing completed

Click "OK" button to return to flight log
    click button  xpath=/html/body/div[7]/div[2]/div/div/div[3]/button[2]