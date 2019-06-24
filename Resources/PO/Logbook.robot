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
    sleep  2s
    click button  xpath=/html/body/div[7]/div[2]/div/div/div[3]/button[2]

Click "Export Log" button
    sleep  1s
    click element  xpath=//*[@id="logbook-menu-pane-1"]/div[1]/div[1]/div[2]/a

Select desired Aircraft
    click button  xpath=//*[@id="SelectAircraft"]
    sleep  1s
    click element  xpath=//*[@id="regDropdown"]/div/ul/li[2]/a

Save flight log
    wait until element is visible  xpath=//*[@id="logbook-menu-pane-1"]/div[1]/div[2]/div/div[2]/div[7]/div/button
    click button  xpath=//*[@id="logbook-menu-pane-1"]/div[1]/div[2]/div/div[2]/div[7]/div/button
