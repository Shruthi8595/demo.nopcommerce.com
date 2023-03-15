*** Settings ***
Library     String
Library     SeleniumLibrary


*** Variables ***
${url}          https://demo.nopcommerce.com/
${browser}      Chrome
${loginUrl}     https://demo.nopcommerce.com/login


*** Keywords ***
Launch Browser
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Screenshot Directory    ScreenShots

Close Test
    Close Browser

Launch Login Page
    Open Browser    ${loginUrl}     ${browser}
    Maximize Browser Window
    Wait Until Page Contains    Welcome, Please Sign In!
    Set Screenshot Directory    ScreenShots



