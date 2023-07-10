*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Visa In Tablist
    Element Text Should Be  ${BodyVisaText}   ${Visa}
    Wait Until Element Is Visible   ${ClickVisa}
    Click Element   ${ClickVisa}
    Execute JavaScript document.querySelector("${TabsScroll}").scrollIntoView(true)
    Sleep  0.5
    Wait Until Element Is Visible   ${VisaScroll}
    Click Element   ${VisaSelectCountrySource}
    Input Text  ${VisaInputSource}    India
    Wait Until Element Is Visible   ${VisaInputText}
    Click Element   ${VisaInputText}
    Click Element   ${VisaSelectCountryDestination}
    Input Text  ${VisaInputDestination}   American Samoa
    Wait Until Element Is Visible   ${VisaInputTextDest}
    Click Element   ${VisaInputTextDest}
    Click Element   ${VisaToCountryInputDropDown}
    Execute JavaScript document.querySelector("${TabsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  Select Date     2
    ${CheckIn}=     Replace String   (//td[text()='date'])[9]   date  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}
    Click Element   ${VisaSubmitButton}
    Wait Until Element Is Visible   ${VisaWaitAfterSubmit}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}
