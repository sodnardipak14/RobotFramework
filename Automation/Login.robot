*** Settings ***
Documentation       This is an example of login page of orangeHRM
Library     SeleniumLibrary


*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}      Chrome
${user}     Admin
${password}     admin123

*** Test Cases ***
Login_Page_Validation
    openingBrowser
    dataFilling
    closingBrowsewr


*** Keywords ***
openingBrowser
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   2

dataFilling
    input text      xpath://input[@name='username']     ${user}
    sleep   2
    input text      xpath://input[@name='password']     ${password}
    sleep   2
    click element       //button[@type='submit']
    sleep   2

closingBrowsewr
    close browser



