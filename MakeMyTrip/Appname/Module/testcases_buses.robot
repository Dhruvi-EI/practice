*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Buses Tab 
    Set Selenium Timeout    10s
    Sleep   2
    Click Element   ${ClickBuses}
    Sleep   1
    Click Element   ${TrainsFrom}
    Wait Until Element Is Visible   ${BusesFrom}
    Click Element   ${BusesFrom}
    Wait Until Element Is Visible   ${BusesTo}
    Click Element   ${BusesTo}
    Execute JavaScript    document.querySelector("${BuseScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}               
    Click Element   ${BusesSearch}
    Wait Until Element Is Visible   ${BusesSearchWait}
    Go Back
    Wait Until Element Is Visible   ${logo}