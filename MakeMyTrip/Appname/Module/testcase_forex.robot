*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Forex Tab
    Set Selenium Timeout    10s
    Click Element   ${ForexClick}
    Wait Until Element Is Visible   ${ForexWait}
    Click Element   ${ForextSearch}
    Wait Until Element Is Visible   ${ForexLogo}
    Go Back
    Wait Until Element Is Visible   ${logo}