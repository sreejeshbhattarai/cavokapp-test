*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Enter valid E-mail
    wait until element is visible  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[1]/input
    click element  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[1]/input
    input text  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[1]/input  cj.sreejesh@gmail.com

Enter valid Password
    click element  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[2]/input
    input password  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[2]/input  testuser1

Submit
    click button  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[4]/button

Verify successful login
    wait until page contains element  xpath=//*[@id="logbook-menu-tab-1"]
