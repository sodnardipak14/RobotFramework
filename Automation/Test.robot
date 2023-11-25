*** Settings ***
Documentation    Example suite
Suite Setup      Do Something    ${MESSAGE}
Test Tags        example
Library          SomeLibrary

*** Variables ***
${MESSAGE}       Hello, world!

*** Keywords ***
Do Something
    [Arguments]    ${args}
    Some Keyword    ${arg}
    Another Keyword