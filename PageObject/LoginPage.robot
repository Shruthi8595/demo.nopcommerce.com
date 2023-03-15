*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../Locators/LoginPageLocators.robot

*** Variables ***


*** Keywords ***
Click LoginLink
    click link  ${link_login}

Enter UserName
    [Arguments]    ${username}
    input text    ${text_username}      ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${text_password}      ${password}

Click Login
    click button    ${button_Login}

Verify Login Successful
    title should be    nopCommerce demo store


