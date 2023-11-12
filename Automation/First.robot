*** Test Cases ***
IfElseValidation

    Run Keyword If  100%2 == 0   Keyword 1   ELSE    Keyword 2


*** Keywords ***
Keyword 1
    Log to console  This is a Even No

Keyword 2
    Log to console      This is a Odd No

