*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Hotels In Tablist
    Set Selenium Timeout    10 seconds
    Element Text Should Be  ${BodyHotelsText}   ${Hotels}
    Wait Until Element Is Visible   ${HotelsSearch}
    Click Element   ${ClickHotels}
    Input Text      ${InputHotels}    ${SourceLocation}
    Wait Until Element Is Visible   ${HotelsFlagIn}
    Click Element   ${HotelsFlagIn}
    Click Element   ${HotelsCheckin}
    #Execute JavaScript    document.querySelector("${ScrollToOffers}").scrollIntoView(true)
    execute javascript  window.scrollTo(0,90)
    Sleep   1
    ${choosedate}=  Select Date     2
    ${CheckIn}=     Replace String   (//td[text()='date'])[1]   date  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}
    ${Choosecheckoutdate}=  Select Date     3
    ${CheckOut}=    Replace String  (//td[text()='date'])[2]   date    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Click Element   ${HotelsTravellers}
    Wait Until Element Is Visible   ${HotelsTravellersPlus}
    Click Element   ${HotelsTravellersPlus}
    Click Element   ${HotelsSearch}
    Wait Until Element Is Visible   ${HotelsAfterSearchPage}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}