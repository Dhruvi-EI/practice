*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Logo
    Click Element   ${logo}
    Wait Until Element Is Visible   ${logo}

Validate Header Bar 
    Set Selenium Timeout    10s
    Click Element   ${SuperOffers}
    Switch Window   New
    Wait Until Element is Visible   ${AfterSuperOffers}
    Switch Window   Main
    Wait Until Element Is Visible   ${logo}
    Click Element   ${BusinessTravelSolution}
    Wait Until Element Is Visible   ${AfterBusinessTravelSolution}
    Click Element   ${AfterBusinessTravelSolution}
    Click Element   ${CloseButton}
    Wait Until Element Is Visible   ${logo}
    Click Element   ${ChooseLanguage}