*** Settings ***
Resource    ../../Common/testCase_resources.robot
Suite Setup      Open the browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani


*** Test Cases ***
Validate The Intranet Holiday List
    Go To Home And Then Holiday List
    Fetch The Holidays List     2023    Pune
    

*** Keywords ***
Fetch the Holidays list 
    Set Selenium Timeout    10 seconds
    [Arguments]     ${year}     ${location}
    Click Element   ${select_holiday_year_dropdown}
    Wait Until Element Is Visible   ${SelectHolidayYearDropdown} 
    Select From List By Label       ${SelectHolidayYearDropdown}      ${year}
    Click Element   ${SelectMonths}
    Click Button   ${SelectSubmitButton}
    @{ExpectedHolidayList1} =      Create List     ${DescriptionOfHolidayList}
    
    ${Elements1} =  Get WebElements     ${DescriptionOfHolidayList}
    Set Suite Variable     ${Elements1}   
    @{HolidayList} =      Create List 
    Set Suite Variable     @{HolidayList}
    
    FOR  ${Element}  IN      @{Elements1}
        Log    ${Element.text}
        Append To List      ${HolidayList}   ${Element.text}
    END
    
    ${Pagination}=  Get WebElements    ${ClickPagination}
    ${LengthPagination}=  Get Length  ${Pagination}
        
    FOR  ${i}  IN RANGE   1     ${LengthPagination+1}
        Click Element   (${DynamicPagination})[${i}]
            FOR  ${Element}  IN      @{Elements1}
                Log    ${Element.text}
                Append To List      ${HolidayList}   ${Element.text}
            END    
    END
    Log    ${HolidayList}
    Get Length  ${HolidayList}

    