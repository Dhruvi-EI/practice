*** Settings ***
Resource    ../../Common/testcase_resources_mmt.robot       
Suite Setup      Open The Browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Holiday Packages Tab 
    Set Selenium Timeout    10s
    Sleep   2
    Wait Until Element Is Visible   ${logo}
    Sleep   2
    Click Element   ${HolidayPackages}
    Wait Until Element Is Visible   ${HolidayPackagesFrom}
    Click Element   ${HolidayPackagesFrom}
    Wait Until Element Is Visible   ${HolidayPackagesFromWait}
    Click Element   ${HolidayPackagesFromWait}
    Click Element   ${HolidayPackagesTo}
    Wait Until Element Is Visible   ${HolidayPackagesToWait}
    Click Element   ${HolidayPackagesToWait}
    #execute javascript  window.scrollTo(0,150)
    #Sleep   1
    ${choosedate}=  date     2
    ${CheckIn}=     Replace String   (//p[text()='DATE'])[1]   DATE  ${choosedate}
    Wait Until Element Is Visible   ${CheckIn}
    Click Element   ${CheckIn}
    Sleep   1
    #Click Element   ${Holidaypackagesclickrooms}
    Click Element   ${HolidayPackagesApply}
    Execute JavaScript document.querySelector("span[class='icSearchIcon ']").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${HolidayPackagesFilterApply}
    Click Element   ${HolidayPackagesSearchButton}
    Wait Until Element is Visible   ${HolidayPackagesWait}
    Go Back
    Wait Until Element Is Visible   ${logo}
    Sleep      2
    Click Element   ${HolidayPackagesDestinations}
    Wait Until Element Is Visible   ${HolidayPackagesEmerging}
    Click Element   ${HolidayPackagesEmerging}
    Click Element   ${Destination}
    Switch Window   New
    Element Text Should Be   ${TopHeading}   ${TopHeading}
    Close Window
    Switch window   Main
    Wait Until Element Is Visible   ${logo}
    Click Element   ${HolidayPackagesHoneymoon}
    Click Element   ${HoneymoonDestination}
    Switch Window   New
    Wait Until Element Is Visible   ${HoneymoonDestinationWait}
    Close Window
    Switch window   Main
    Wait Until Element Is Visible   ${logo}
    Click Element   ${HolidayPackagesFeatured}
    Wait Until Element Is Visible   ${FeaturedWait}
    Click Element   ${FeaturedWait}
    Switch Window   New
    Wait Until Element Is Visible   ${FeaturedAdventure}
    Close Window
    Switch window   Main
    Wait Until Element Is Visible   ${logo}
    #Click Element   ${HolidayPackagesTravelGuidlines}
    #Click Element   ${TravelGuidlinesInternational}
    #Click Element   ${ClickInternationalTravelGuidelines}
    #Wait Until Element Is Visible   ${logo}
    Execute JavaScript document.querySelector("${HolidayPackagesScroll}").scrollIntoView(true)
    Element Text Should Be   ${Heading1}    ${Heading1Text}
    Execute JavaScript document.querySelector("${HolidayPackagesScrollHeading}").scrollIntoView(true)
    Element Text Should Be   ${Heading2}    ${Heading2Text}
    Execute JavaScript document.querySelector("${HolidayPackagesScrollHeading1}").scrollIntoView(true)
    Element Text Should Be   ${Heading3}    ${Heading3Text}
    Execute JavaScript document.querySelector("${HolidayPackagesScrollHeading2}").scrollIntoView(true)
    Element Text Should Be ${Heading4}    ${Heading4Text}