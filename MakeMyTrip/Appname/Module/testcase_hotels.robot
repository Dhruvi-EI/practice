*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Hotels Tab 
    Set Selenium Timeout    10s
    Sleep   2
    Click Element   ${Hotels}
    Wait Until Element Is Visible   ${HotelsFrom}
    Sleep   1
    Click Element   ${HotelsClickHereHref}
    Wait Until Element Is Visible   ${HotelsClickHereHrefWait}
    Go Back
    Wait Until Element Is Visible   ${HotelsFrom}
    Click Element   ${HotelsFrom}
    #Scroll Element Into View    ${HotelsFrom}
    Execute JavaScript    document.querySelector("${HotelsFrom}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${HotelsSource}
    Execute JavaScript    document.querySelector("${HotelsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}   
    #Wait Until Element Is Visible   ${HotelsCheckInDate}
    ${Choosecheckoutdate}=  date     3
    ${CheckOut}=    Replace String  (//div[text()='DATE'])[1]   DATE    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Click Element   ${HotelsRooms}
    Click Element   ${HotelsRoomsClick2}
    Click Element   ${HotelsRoomsApplyButton}
    Click Element   ${HotelsPricePerNight}
    Wait Until Element Is Visible   ${HotelsPrice}
    Click Element   ${HotelsPrice}
    Sleep   1
    Click Button   ${Search}
    Wait Until Element Is Visible   ${HotelsShowProperties}
    Go Back
    Wait Until Element Is Visible   ${logo}
    click Element   ${HotelsClickGroupDeals}
    Sleep   1
    Click Element   ${HotelsGroupDealsClickCity}
    Sleep   1
    Input Text  ${HotelsEnterInput}     ${HotelsLocation}
    Sleep   1
    Wait Until Element Is Visible   ${HotelsSelectCityDelhi}
    Click Element   ${HotelsSelectCityDelhi}
    ${choosedate}=  Select Date     2
    ${CheckIn}=     Replace String   (//div[text()='date'])[1]   date  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}    
    Execute JavaScript    document.querySelector("${HotelsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${Choosecheckoutdate}=  Select Date     3
    ${CheckOut}=    Replace String  (//div[text()='date'])[2]   date    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Wait Until Element Is Visible   ${HotelsRooms}
    Click Element   ${HotelsRooms}
    Click Element   ${HotelsRoomsClick2}
    Click Element   ${HotelsRoomsApplyButton}
    Execute JavaScript    document.querySelector("${HotelsApplyScroll}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${HotelsOffers}
    Execute JavaScript    document.querySelector("${FlightsDownloadScroll}").scrollIntoView(true)
    Sleep   0.5
    Element Text Should Be    ${FlightsValidateHeadings}  ${FlightsValidateHeadingsText}