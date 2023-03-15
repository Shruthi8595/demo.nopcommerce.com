*** Settings ***
Library     SeleniumLibrary
Library     Collections
Variables    ../Locators/RegistrationPageLocators.py
Resource     ../PageObject/RegistrationPage.robot
Resource    ../Helpers/SetupAndTeardown.robot
Resource    ../Helpers/CommonKeywords.robot

Documentation   Verify the Registration Page

Suite Setup     Launch Browser
Suite Teardown  Close Test

#Test Setup      Launch Browser
#Test Teardown   Close Test

*** Variables ***


*** Test Cases ***
Scenario_1 : Click On the Registration link and Verify the Page Title
    [Tags]      SmokeTesting
    [Documentation]     Click On the Registration link and Verify Page Title
    Click On Registration Link
    CommonKeywords.Verify the Title of the Page    nopCommerce demo store. Register


Scenario_2 : Fetch All the Links in the Currnet Page
    [Tags]      RegressionTesting
    [Documentation]     Fetching the Links in the Current Page
    RegistrationPage.Fetch the all the Links in Page


Scenario_3 : Verify User Can Mouse Over and click on the element
    [Documentation]     Mouse Over on the Computer Menu and Click on Desktop
    CommonKeywords.MouseOver And Click Element     ${notMobile_computerLink}   ${mouseOver_ele}
    CommonKeywords.Verify the Title of the Page    nopCommerce demo store. Desktops


Scenario_4 : Verify the Search Page
    [Documentation]     Working on Search Field and Button
    RegistrationPage.Click On Registration Link
    RegistrationPage.Vefrify Search Field    nopCommerce demo store. Search
    RegistrationPage.Verify the Text for Invalid Input  Search term minimum length is 3 characters