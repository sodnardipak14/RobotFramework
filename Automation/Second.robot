*** Test Cases ***
IfElseValidation

    &{list1}        Create dictionary         V1:item1   V2:item2   V3:item3   V4:item4
    FOR     ${i}    IN      @{list1}
    log to console      ${i}
    END