*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${log_note} =  random data

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

Scroll to saved Logbook
    scroll element into view  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[1]/h4

Click edit button
    scroll element into view  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[4]/td[11]/button
    sleep  2s
    click button  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[4]/td[11]/button

Verify edit view loaded
    wait until page contains element  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[4]/td[11]/button[2]

Make Changes
    input text  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[5]/td/div/div[1]/input  ${log_note}

Save the changes
    click button  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[4]/td[11]/button[1]

Verify changes
    wait until page contains  ${log_note}

Delete the log
    wait until page contains element  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[4]/td[11]/button[3]
    click button  xpath=//*[@id="logbook-menu-pane-1"]/div[2]/div[2]/div/table/tr[4]/td[11]/button[3]

