*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.saucedemo.com/v1/
${browser}      Chrome

*** Test Cases ***
IfElseValidation
    BrowserOpen
    DataFilling
    CLicking
    ClosingBrowser

*** Keywords ***
BrowserOpen
    open browser        ${url}      ${browser}
    sleep   5
    maximize browser window

DataFilling
    input text      name:user-name      standard_user
    sleep   2
    input text      name:password       secret_sauce
    sleep   2

CLicking
    click element       id:login-button
    sleep   2
    click element       xpath://button[contains(text(),'Open Menu')]
    sleep   5
    ${list_of_items}    get element count       xpath://div[@class='inventory_list']/div
    log to console      ${list_of_items}
    Run Keyword If      ${list_of_items} == 10  Test Keyword 1  ELSE IF    ${list_of_items} <= 10   Test Keyword 2  ELSE    Test Keyword 3
    click element       xpath://a[contains(text(),'Logout')]
    sleep   4
    should contain      xpath://h4[contains(text(),'Accepted usernames are:')]      Accepted usernames are:


ClosingBrowser
    close browser

Test Keyword 1
    Log to console  NotFOund


Test Keyword 2
    Log to console  NotFOund


Test Keyword 3
    Log to console  NotFOund

