*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Charter Flights Tab
    Set Selenium Timeout    10s
    Sleep   2
    Click Element   ${CharterFlights}
    Sleep   1
    Click Element   ${CharterFlightsRoundTrip}
    Click Element   ${TrainsSearch}
    Wait Until Element Is Visible   ${NoCharterFound}
    Go Back
    Wait Until Element Is Visible   ${logo}
    Click Element   ${CharterFlightsClickOneWay}
    Sleep   1
    Click Element   ${TrainsFrom}
    Wait Until Element Is Visible   ${HotelsSelectCityDelhi}
    Click Element   ${HotelsSelectCityDelhi}
    Sleep   1
    Click Element   ${CharterFlightsClickBanglore}
    Wait Until Element Is Visible   ${HolidaypackagesDate}
    Execute JavaScript    document.querySelector("${CharterFlightsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//p[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}    
    Wait Until Element Is Visible   ${CharterFlightsDepartureTime}
    Click Element   ${CharterFlightsDepartureTime}
    Click Element   ${CharterFlightsPassengers}
    Click Element   ${CabsSearch}
    Wait Until Element Is Visible   ${CharterFlightsWait}
    Go Back
    Wait Until Element Is Visible   ${logo}