*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Home Stays Tab 
    Set Selenium Timeout    10s
    Sleep   2
    Wait Until Element Is Visible   ${logo}
    Click Element   ${HomeStays}
    Wait Until Element Is Visible   ${HotelsFrom}
    Click Element   ${HotelsFrom}
    Wait Until Element Is Visible   ${HomeFrom}
    Click Element   ${HomeFrom}
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}           
    ${Choosecheckoutdate}=  date     3
    ${CheckOut}=    Replace String  (//div[text()='DATE'])[1]   DATE    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Execute JavaScript    document.querySelector("${HomeStaysScroll}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${HomeApplyButton}
    #Wait Until Element Is Visible   ${HomeTravellers}
    #Click Element   ${HomeTravellers}
    #Wait Until Element Is Visible   ${HomeLeisure}
    #Click Element   ${HomeLeisure}
    Click Element   ${Search}
    Wait Until Element Is Visible   ${HomeWait}
    Go Back
    Execute JavaScript    document.querySelector("${HomeStaysScrollHeading}").scrollIntoView(true)
    Element Text Should Be   ${HomeHeadingValidate}  Find Your Wonderland
    Execute JavaScript    document.querySelector("${HomeStaysScrollHeading1}").scrollIntoView(true)
    Wait Until Element Is Visible   ${HomeOffers}