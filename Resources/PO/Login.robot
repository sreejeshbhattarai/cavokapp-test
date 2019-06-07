*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email_field} =  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[1]/input
${password_field} =  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[2]/input
${login_button} =  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[4]/button

*** Keywords ***
Enter valid E-mail
    scroll element into view  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/h4
    wait until element is visible  ${email_field}
    click element  ${email_field}
    input text  ${email_field}  ${VALID_EMAIL}

Enter valid Password
    click element  ${password_field}
    input password  ${password_field}  ${VALID_PASSWORD}

Submit
    click button  ${login_button}

Verify successful login
    wait until page contains element  xpath=//*[@id="logbook-menu-tab-1"]
