*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email_field} =  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[1]/input
${password_field} =  xpath=/html/body/div[4]/div[1]/div[2]/div[1]/div/form/div[2]/input

*** Keywords ***
Enter valid E-mail
    scroll element into view  ${login_button}
    wait until element is visible  ${email_field}
    click element  ${email_field}
    input text  ${email_field}  ${VALID_EMAIL}

Enter valid Password
    click element  ${password_field}
    input password  ${password_field}  ${VALID_PASSWORD}

Verify successful login
    wait until page contains element  xpath=//*[@id="logbook-menu-tab-1"]

Enter invalid E-mail
    scroll element into view  ${login_button}
    wait until element is visible  ${email_field}
    click element  ${email_field}
    input text  ${email_field}  ${INVALID_EMAIL}

Enter invalid Password
    click element  ${password_field}
    input password  ${password_field}  ${INVALID_PASSWORD}

Verify unsuccessful login
    wait until page contains  Incorrect username / password



