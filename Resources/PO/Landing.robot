*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  css=body > div.pageheader > div.pageheader-item.pageheader-item-logo > a > img

