***Settings***
Library     SeleniumLibrary
Library     Collections
Library     ./Extended_library.py
*** Keywords ***
Open The Browser
    Set Selenium Timeout    10 seconds
    Open Browser    ${Mmturl}     Chrome
    Maximize Browser Window
    Wait Until Element Is Visible   ${logo}

Close Browser Session
    Close Browser
    
Select Date
    [Arguments]   ${DATE1}     
    ${dd}=  Get Time    day
    ${date}=    Evaluate    ${dd}+${DATE1}
    ${CheckIndate}=    Convert To String   ${date}
    [return]    ${CheckIndate}

