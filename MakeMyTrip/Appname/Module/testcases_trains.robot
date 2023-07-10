*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Trains Tab 
    Set Selenium Timeout    10s
    Sleep   2
    Click Element  ${Trains}
    Sleep   1
    Click Element   ${TrainsFrom}
    Wait Until Element Is Visible   ${TrainsFromWait}
    Click Element   ${TrainsFromWait}
    Wait Until Element Is Visible   ${TrainInputWait}
    Click Element   ${TrainInputWait}
    Execute JavaScript    document.querySelector("${TrainsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//div[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}             
    Wait Until Element Is Visible   ${TrainsClass}
    Click Element   ${TrainsClass}
    Click Element   ${TrainsSearch}
    Wait Until Element Is Visible   ${TrainsWait}
    Go To   ${Mmturl}
    Switch Window   Main
    Wait Until Element Is Visible   ${logo}
    Click Element  ${TrainsClick}
    Wait Until Element Is Visible   ${TrainsPNRStatus}
    Click Element   ${TrainsPNRStatus}
    Element Should Be Visible   ${ValidatePNRStatus}  
    Input Text  ${ValidatePNRStatus}    ${TrainPNR}
    Click Element   ${TrainsCheckStatus}
    Wait Until Element Is Visible   ${TrainsEnterPNR}
    Click Element   ${TRainsClickLogo}
    Wait Until Element Is Visible   ${logo}
    Click Element  ${Trains}
    Wait Until Element Is Visible   ${LiveTrainStatus} 
    Click Element   ${LiveTrainStatus}
    Element Should Be Visible   ${LiveTrainStatusWait}
    Click Element    ${TrainNumber}
    Wait Until Element Is Visible   ${TrainLiveStatusInput}
    Input Text   ${TrainLiveStatusInput}     ${TrainName}
    Wait Until Element Is Visible   ${TrainLokShakti}
    Click Element   ${TrainLokShakti}
    Click Element   ${TrainYourStopTab}
    Wait Until Element Is Visible   ${TrainBandraTerminus}
    Click Element   ${TrainBandraTerminus}
    Click Element   ${TrainStartDate}
    Wait Until Element Is Visible   ${TrainSelectTomorrow}
    Click Element   ${TrainSelectTomorrow}
    Click Element   ${TrainsCheckStatus}
    Wait Until Element Is Visible   ${TrainStatusNumber}
    Go Back
    Wait Until Element Is Visible   ${logo}
    Execute JavaScript    document.querySelector("${TrainsScroll}").scrollIntoView(true)
    Wait Until Element Is Visible   ${HotelsOffers}