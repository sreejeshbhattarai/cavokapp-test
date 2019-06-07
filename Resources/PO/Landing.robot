*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_button} =  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[4]/button


*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  css=body > div.pageheader > div.pageheader-item.pageheader-item-logo > a > img

Submit
    click button  ${login_button}

