*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Cabs Tab
    Set Selenium Timeout    10s
    Click Element   ${ClickCabs}
    Sleep   1
    Click Element   ${TrainsFrom}
    Wait Until Element Is Visible   ${CabsFrom}
    Click Element   ${CabsFrom}
    Click Element   ${CabsTo}
    Wait Until Element Is Visible      ${CabsDestination}
    Click Element   ${CabsDestination}
    Click Element   ${CabsDeparture}
    ${choosedate}=   date    2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[1]   DATE   ${choosedate}
    Log to console  ${CheckIn}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}    
    Sleep   1
    Click Element   ${CabsPickUp} 
    Sleep   1
    #Click Element   ${SelectPickupTimeForCab}
    #Sleep   1
    Click Element   ${CabsOneWayPassengers}
    Click Element   ${CabsApplyButton}
    Click Element   ${CabsSearch}
    Wait Until Element Is Visible   ${AirportSearchWait}
    Go Back
    Wait Until Element Is Visible   ${logo}
    Click Element   ${OutstationRoundTrip}
    Click Element   ${TrainsFrom}
    Wait Until Element Is Visible   ${CabsFrom}
    Click Element   ${CabsFrom}
    Click Element   ${CabsTo}
    Wait Until Element Is Visible   ${CabsDestination}
    Click Element   ${CabsDestination}
    Click Element   ${CabsDeparture}
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[1]   DATE  ${choosedate}
    Click Element   ${CheckIn}
    ${Choosecheckoutdate}=  date     3
    ${CheckOut}=    Replace String  (//div[text()='DATE'])[1]   DATE    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Sleep   1
    Click Element   ${CabsPickUp} 
    Sleep   1
    Click Element   ${SelectPickupTimeForCab}
    Click Element   ${CabsApplyButton}
    Click Element   ${CabsDropTime}
    Click Element   ${CabsDropTimeHours}
    Click Element   ${CabsApplyButton}
    Click Element   ${CabsSearch}
    Wait Until Element Is Visible   ${CabsSearchBlueButton}
    Go Back
    Click Element   ${CabsAirportTransfers}
    Wait Until Element Is Visible   ${SelectAirportTo}
    Click Element   ${SelectAirportTo}
    Click Element   ${ClickAirportTo}
    Sleep   1
    Input Text  ${InputAirportFrom}     ${FromLocation}
    Wait Until Element Is Visible   ${WaitAirportFrom}
    Click Element   ${WaitAirportFrom}
    Sleep   1
    Input text  ${AirportTo}  ${ToLocation}
    Wait Until Element Is Visible   ${WaitAirportTo}
    Click Element   ${WaitAirportTo}
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[2]   DATE  ${choosedate}
    Click Element   ${CheckIn}
    Wait Until Element Is Visible   ${CabsDateWait}
    Click Element   ${CabsPickUp} 
    Sleep   1
    Click Element   ${SelectPickupTimeForCab}
    #Click Element   ${AirportPickupDate}
    Click Element   ${CabsApplyButton}
    Click Element   ${AirportSearch}
    Wait Until Element Is Visible   ${AirportSearchWait}
    Click Element   ${AirportSearchWait}
    Wait Until Element Is Visible   ${CabsSearchBlueButton}
    Go Back
    Click Element   ${ClickHourlyRentals}
    Click Element   ${HolidayPackagesFrom}
    Wait Until Element Is Visible   ${WaitAirportFrom}
    Click Element   ${WaitAirportFrom}
    Click Element   ${HourlyRentalPickupDate}
    Sleep   1
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[2]   DATE  ${choosedate}
    Click Element   ${CheckIn}  
    Sleep   1
    Click Element   ${CabsPickUp} 
    Sleep   1
    Click Element   ${SelectPickupTimeForCab}
    Wait Until Element Is Visible   ${CabsApplyButton}
    Click Element   ${CabsApplyButton}
    Click Element   ${SelectPackage}
    Click Element   ${SelectdDuration}
    Click Element   ${CabsSearch}
    Wait Until Element Is Visible    ${CabsType}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Execute JavaScript    document.querySelector("${CabsOffersScroll}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${HotelsOffers}
    Execute JavaScript    document.querySelector("${CabsScrollTillForex}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${CabsScroll}
    Go Back
    Wait Until Element Is Visible   ${logo}