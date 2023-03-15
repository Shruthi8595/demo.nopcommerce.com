*** Settings ***
Library     SeleniumLibrary
Library     Collections
Variables    ../Locators/RegistrationPageLocators.py
Resource    ../Helpers/CommonKeywords.robot

*** Variables ***


*** Keywords ***
Click On Registration Link
    Click Link    ${link_Register}

Fetch the all the Links in Page
    @{weElements}   Get WebElements    ${allLinksOfCurrentPage}
    ${countOfLinks}     Get Element Count    ${allLinksOfCurrentPage}
    FOR    ${element}    IN    @{weElements}
        ${actualtext}   CommonKeywords.Wait and Get Text    ${element}
        Log    All Links Of Current Page : ${actualtext}
    END


Vefrify Search Field
    [Arguments]     ${expectedTitle}
    CommonKeywords.Wait and Input Text Box    Search store    HI
    Click Button    ${search_button}
    CommonKeywords.Verify the Title of the Page     nopCommerce demo store. Search


Verify the Text for Invalid Input
    [Arguments]     ${expectedtext}
    ${actualtext}   CommonKeywords.Wait and Get Text    ${warning_text}
    Should Be Equal    ${expectedtext}    ${actualtext}
    Log    ${actualtext}





    