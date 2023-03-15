*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource     ../PageObject/LoginPage.robot
Resource    ../Helpers/SetupAndTeardown.robot
Resource    ../Helpers/CommonKeywords.robot
Library     DataDriver      ../TestData/InvalidLoginCredentials.xlsx    sheet_name=InvalidLoginCredentials

Documentation   Verify the Login Functionality with Invalid Login Credentials

Suite Setup         Launch Login Page
Suite Teardown      Close Test

Test Template       Verify Login Page for Invalid Credentials

*** Test Cases ***
LoginTestWithExcel using    ${username}     ${password}


*** Keywords ***
Verify Login Page for Invalid Credentials
    [Arguments]     ${username}     ${password}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click Login
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again.

