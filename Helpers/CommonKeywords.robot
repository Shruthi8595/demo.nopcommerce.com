*** Settings ***
Library     SeleniumLibrary
Library     Collections
Variables    ../Locators/RegistrationPageLocators.py

*** Variables ***


*** Keywords ***
Wait and Input Text Box
    [Arguments]     ${placeholder_attributeName}    ${input_text}
    Wait Until Element Is Visible    xpath://input[@placeholder="${placeholder_attributeName}"]
    Input Text    xpath://input[@placeholder="${placeholder_attributeName}"]    ${input_text}

Wait and Get Text
    [Arguments]     ${locator}
    Wait Until Element Is Visible   ${locator}
    ${actualtext}   Get Text    ${locator}
    [Return]    ${actualtext}

MouseOver And Click Element
    [Arguments]     ${mouseOver_locator}    ${clickEle_locator}
    Wait Until Element Is Visible   ${mouseOver_locator}
    Mouse Over    ${mouseOver_locator}
    Click Element    ${clickEle_locator}

Verify the Title of the Page
    [Arguments]     ${expectedTitle}
    ${actualTitle}      Get Title
    Should Be Equal    ${expectedTitle}    ${actualTitle}
    Log     Expected Title : ${expectedTitle} and Actual Title : ${actualTitle}

