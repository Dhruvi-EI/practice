*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani


*** Test cases ***
Validate Flights In Tablist          
    Element Text Should Be  ${BodyFlightsText}   ${Flights}
    Click Element   ${ClickFlights}
    Click Element   ${FlightsRoundTrip}
    Click Element   ${FlightsInputFlyingFrom}
    Input Text      ${FlightsInputFlyingFrom}    ${SourceLocation}
    Wait Until Element Is Visible   ${FlightsSourceWaitElementVisible}
    Click Element   ${FlightsSourceWaitElementVisible}
    Click Element   ${FlightsInputDestination}
    Input Text      ${FlightsInputDestination}     ${DestinationLocation}
    Wait Until Element Is Visible   ${FlightsDestinationWaitElementVisible}
    Click Element   ${FlightsDestinationWaitElementVisible}
    Click Element   ${FlightsSwapButton}
    Click Element   ${FlightsDeparture}
    Execute JavaScript    document.querySelector("${TabsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  Select Date     2
    ${CheckIn}=     Replace String   (//td[text()='date'])[5]   date  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}
    ${Choosecheckoutdate}=  Select Date     3
    ${CheckOut}=    Replace String  (//td[text()='date'])[6]   date    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Click Element   ${FlightsTravellers}
    Wait Until Element Is Visible   ${FlightsTravellersPlus}
    Click Element   ${FlightsTravellersPlus}
    Click Element   ${FlightsSubmit}
    Wait Until Element Is Visible   ${FlightsAfterSearch}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}
    Click Element   ${ClickFlights}
    Click Element   ${FlightsOneWay}
    Wait Until Element Is Visible   ${FlightsInputFlyingFrom}
    Click Element   ${FlightsInputFlyingFrom}
    Input Text      ${FlightsInputFlyingFrom}    ${SourceLocation}
    Wait Until Element Is Visible   ${FlightsSourceWaitElementVisible}
    Click Element   ${FlightsSourceWaitElementVisible}
    Click Element   ${FlightsInputDestination}
    Input Text      ${FlightsInputDestination}     ${DestinationLocation}
    Wait Until Element Is Visible   ${FlightsDestinationWaitElementVisible}
    Click Element   ${FlightsDestinationWaitElementVisible}
    Click Element   ${FlightsSwapButton}
    Click Element   ${FlightsDeparture}
    Execute JavaScript    document.querySelector("${TabsScroll}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${PhpLogo}
    Click Element   ${CheckIn}
    Click Element   ${FlightsTravellers}
    Wait Until Element Is Visible   ${FlightsTravellersPlus}
    Click Element   ${FlightsTravellersPlus}
    Click Element   ${FlightsSubmit}
    Wait Until Element Is Visible   ${FlightsAfterSearch}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}