*** Keywords ***

Open The Browser
    Open Browser    ${PhpUrl}     Chrome
    Maximize Browser Window
    Wait Until Element Is Visible   ${PhpMainHeading}

Close Browser Session
    Close Browser

Select Date
    [Arguments]   ${DATE1}     
    ${dd}=      Get Time    day
    ${date}=    Evaluate   ${dd}+${DATE1}
    ${CheckIndate}=    Convert To String   ${date}
    [return]    ${CheckIndate}
    