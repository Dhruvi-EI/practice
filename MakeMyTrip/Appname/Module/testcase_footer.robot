*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Footer Section
    Set Selenium Timeout    10s
    Sleep   2
    Execute JavaScript    document.querySelector("${FooterScroll}").scrollIntoView(true)
    Sleep   0.5
    Execute JavaScript    document.querySelector("${FooterTwitterScroll}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${Twitter}
    Wait Until Element Is Visible   ${TwitterLogo}
    Sleep   1
    Go To   ${Mmturl}
    Wait Until Element Is Visible   ${logo}
    Execute JavaScript    document.querySelector("${FooterScroll}").scrollIntoView(true)
    Sleep   0.5
    Execute JavaScript    document.querySelector("${FooterTwitterScroll}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FacebookLogo}
    Wait Until Element Is Visible   ${FacebookLogoVisible}
    Click Element   ${FacebookLogoVisible}
    Wait Until Element Is Visible   ${FacebookText} 
    Go Back
    Wait Until Element Is Visible   ${logo}