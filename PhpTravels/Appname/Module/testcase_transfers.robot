*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Transfers In Tablist
    Element Text Should Be  ${BodyTransferText}   ${Transfers}
    Click Element   ${ClickTransfer}
    Click Element   ${TransferSelectCountry}
    Input Text  ${TransferInput}    ${SourceLocation}
    Wait Until Element Is Visible   ${HotelsFlagIn}
    Click Element   ${HotelsFlagIn}
    Click Element   ${TransferClickAfterInput}
    Input Text  ${TransferInputTextDestination}    ${TransferDestinationLocation}
    Wait Until Element Is Visible   ${TransferWaitUntilDestinationIsVisible}
    Click Element   ${TransferWaitUntilDestinationIsVisible}
    Click Element   ${TransfersDateFrom}
    Execute JavaScript    document.querySelector("${TabsScroll}").scrollIntoView(true)
    Sleep   0.5
    ${choosedate}=  Select Date     2
    ${CheckIn}=     Replace String   (//td[text()='date'])[3]   date  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}
    ${Choosecheckoutdate}=  Select Date     3
    ${CheckOut}=    Replace String  (//td[text()='date'])[4]   date    ${Choosecheckoutdate}
    Click Element   ${CheckOut}
    Click Element   ${TransfersTravellers}
    Wait Until Element Is Visible   ${TransfersTravellersPlus}
    Click Element   ${TransfersTravellersPlus}
    Click Element   ${TransferSubmit}
    Wait Until Element Is Visible   ${TransferWaitAfterSubmit}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}