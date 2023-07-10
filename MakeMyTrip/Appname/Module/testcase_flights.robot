*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Flights Tab 
    Set Selenium Timeout    10 seconds
    Sleep   2
    Wait Until Element Is Visible   ${FlightsFromoneWay}
    Click Element   ${FlightsFromoneWay}
    Wait Until Element Is Visible   ${FlightsFromoneWaywait}
    Click Element   ${FlightsFromoneWaywait}
    Click Element    ${FlightsToOneWay}
    Wait Until Element Is Visible   ${FlightsToOneWayWait}
    Click Element   ${FlightsToOneWayWait}
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//p[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}       
    Click Element   ${FlightsOneWayTravellers}
    Click Element   ${FlightsOneWayAdults}
    Execute JavaScript    document.querySelector("${ScrollOneWayTravellers}").scrollIntoView(true)
    Sleep   1
    Click Element   ${FlightsOneWayClass}
    Click Button   ${FlightsOneWayApply}
    Mouse Over  ${FlightsStudent}
    Click Element   ${FlightsStudent}
    Click Element   ${FlightsSearchButton}
    Wait Until Element Is Visible    ${FlightsJourneyTitle}
    Go Back
    Wait Until Element Is Visible   ${logo}
    Click Element   ${RoundTripFlights} 
    Sleep   1
    Click Element   ${FlightsFrom}
    Wait Until Element Is Visible   ${FlightsFromWait}
    Click Element   ${FlightsFromWait}
    Click Element   ${FlightsTo}
    Wait Until Element Is Visible   ${FlightsToWait}
    Click Element   ${FlightsToWait}
    Click Element   ${FlightsDate}
    Execute JavaScript    document.querySelector("${ScrollText}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FlightsDepartureDate}
    #Click Element   //span[text()='Return']
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//p[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}    
    Click Element   ${FlightsSearchButton}
    Wait Until Element Is Visible   ${FlightsWait}
    Go Back
    Wait Until Element Is Visible   ${logo}
    Click Element   ${MultiCity}
    Wait Until Element Is Visible   ${MultiCity}
    Click Element   ${MultiCity}
    Click Element   ${FlightsMultiCityClickCity}
    Wait Until Element Is Visible   ${FlightsMultiCityMumbai}
    Click Element   ${FlightsMultiCityDeparture}
    Sleep   1
    Wait Until Element Is Visible   ${FlightsMultiCityMumbai}
    Click Element   ${FlightsMultiCityMumbai}
    Execute JavaScript    document.querySelector("${ScrollText}").scrollIntoView(true)
    Sleep   1
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//p[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}       
    #Wait Until Element Is Visible    ${FlightsMultiCityTravellers}
    #Click Element   ${FlightsMultiCityTravellers}
    #Click Element   ${FlightsMultiCityTravellersAdults}
    #Execute JavaScript    document.querySelector("${ScrollText}").scrollIntoView(true)
    #Sleep   1
    #Click Element   ${FlightsMultiCityTravellersClass}
    #Click Button   ${FlightsMultiCityTravellersApplyButton}
    Click Element   ${FlightsAddAnotherCity}
    Click Element   ${FlightsAddAnotherCityClickFromCity}
    Sleep   1
    Wait Until Element Is Visible   ${FlightsAddAnotherCitySelectFromCity}
    Click Element   ${FlightsAddAnotherCitySelectFromCity}
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//p[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}        
    Mouse Over  ${FlightsStudentFares}
    Click Element   ${FlightsStudentFares}
    Click Element   ${FlightsSearchButton}
    Wait Until Element Is Visible    ${FlightsMultiCityText}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Mouse Over  ${FlightsArmedForces}
    Mouse Over  ${FlightsStudent}
    Mouse Over  ${FlightsSeniorCitizen}
    Mouse Over  ${FlightsDoctorsAndNurses}
    Execute JavaScript    document.querySelector("${FlightsOffersScroll}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${FlightsOffers}
    Execute JavaScript    document.querySelector("${FlightsDownloadScroll}").scrollIntoView(true)
    Sleep   0.5
    Element Text Should Be      ${FlightsValidateHeadings}     ${FlightsValidateHeadingsText}
