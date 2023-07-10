*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani
Force Tags  suite


*** Test Cases ***
Validate Activities Tab
    [Tags]  temp
    Set Selenium Timeout    10s
    Wait Until Element Is Visible   ${Activities}
    Click Element   ${Activities}
    Wait Until Element Is Visible   ${ActivitiesWait}
    Click Element   ${ActivitiesWait}
    Sleep   1
    Input Text    ${ActivitiesInputText}    ${Activities}
    Wait Until Element Is Visible   ${ActivitiesBali}
    Click Element   ${ActivitiesBali}
    Click Element   ${Search}
    Wait Until Element Is Visible   ${ActivitiesSearchingFor}
    Go To   ${Mmturl}
    Wait Until Element Is Visible   ${logo}
    