*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Tours In Tablist
    Set Selenium Timeout    10 seconds
    Element Text Should Be  ${BodyToursText}   ${Tours}
    Click Element   ${ClickTours}
    Click Element   ${ToursSelectCountry}
    Input Text      ${ToursInput}    ${SourceLocation}
    Wait Until Element Is Visible   ${HotelsFlagIn}
    Click Element   ${HotelsFlagIn}
    Click Element   ${ToursDate}
    Execute JavaScript    document.querySelector("${TabsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  Select Date     2
    ${CheckIn}=     Replace String   (//td[text()='date'])[14]   date  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}
    Click Element   ${ToursTravellers}
    Wait Until Element Is Visible   ${ToursTravellersPlus}
    Click Element   ${ToursTravellersPlus}
    Click Element   ${ToursSubmitButton}
    Wait Until Element Is Visible   ${ToursWaitAfterSubmit}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}