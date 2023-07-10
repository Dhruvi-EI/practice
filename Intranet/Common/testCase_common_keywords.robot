
*** Keywords ***
Open The browser
    Set Selenium Timeout    10 seconds
    Open Browser   ${url}   Chrome
    Maximize Browser Window
    Wait Until Element Is Visible   ${ElementVisible}

Go To Home And Then Holiday List
        Wait Until Element Is Visible   ${MouseHoverToHome}
        Mouse Over    ${MouseHoverToHome}
        Wait Until Element Is Visible   ${ClickOnHolidayList}
        Click Element   ${ClickOnHolidayList}

Fetch The Holidays List 
        Set Selenium Timeout    10 seconds
        [Arguments]     ${year}     ${location}
        Click Element   ${SelectHolidayYearDropdown}
        Wait Until Element Is Visible   ${SelectHolidayYearDropdown} 
        Select From List By Label       ${SelectHolidayYearDropdown}      ${year}
        Click Element   ${SelectMonths}
        Click Button   ${SelectSubmitButton}
        @{ExpectedHolidayList} =      Create List     ${DescriptionOfHolidayList}
        
        ${Elements} =  Get WebElements     ${DescriptionOfHolidayList}
        Set Suite Variable     ${Elements}
        @{HolidayList} =      Create List 
        Set Suite Variable     @{HolidayList}
        
        
        FOR  ${Element}  IN      @{Elements}
            Log    ${Element.text}
            Append To List      ${HolidayList}   ${Element.text}
        END
        
            
        ${Pagination}=  Get WebElements    ${ClickPagination}
        ${LengthPagination}=  Get Length  ${Pagination}
        
        FOR  ${i}  IN RANGE    1    ${LengthPagination+1}
            Click Element   (${DynamicPagination})[${i}]
                FOR  ${Element}  IN      @{Elements}
                Log    ${Element.text}
                Append To List      ${HolidayList}   ${Element.text}
            END
        END
        #Remove Values From List     ${HolidayList}        
        [return]    ${HolidayList}
        
        
Compare And Find The Difference Between Holiday List Of Both The Years
        ${list1}=   Get Length  ${Result}
        Log     ${list1}
        ${list2}=   Get Length  ${Result1}
        Log     ${list2}
   
List Difference
    [Arguments]    ${arg1}    ${arg2}
    @{New_list}=    Create List    @{arg1}    @{arg2}
    FOR    ${item}    IN    @{arg1}
        Remove Values From List    ${New_list}    ${item}
    END
    Log    ${New_list}
    Get Length     ${New_list} 

Get The List Of The Employees Having Birthday And Anniversary Today
    Scroll Element Into View    ${ScrollDown}
    ${Values}=  Get WebElements     ${BirthdayListHomePage}
    Set Suite Variable     ${Values}
    @{list}=    Create List
    Set Suite Variable     @{list}
    FOR     ${i}    IN  @{Values}
        Log     ${i.text}
        Append To List  ${list}  ${i.text}
        Sleep   2.5
    END
    Log     ${list}
    

Click On The Icon-View All Birthdays And Verify Filter Is Applied On Birthdate Column By Today's Date
    Click Element   ${ClickOnViewBirthday}
    ${DataOfBirthday}=  Get WebElements     ${BirthdayAndAnniData}
    @{Data}=    Create List
    Set Suite Variable  @{Data}
    FOR     ${count}    IN  @{DataOfBirthday}
        Log     ${count.text}
        Append To List  ${Data}     ${count.text}
    END
    Remove From List    ${Data}     0
    Log     ${Data}
    List Should Contain Sub List    ${list}     ${Data}
    Go Back
    
Click On The Icon-View All Anniversaries And Verify Filter Is Applied On Anniversary Column By Today's Date
    Click Element   ${ClickOnViewAnni}
    ${DataOfAnni}=  Get WebElements     ${BirthdayAndAnniData}
    @{Data2}=    Create List
    Set Suite Variable  @{Data}
    FOR     ${count}    IN  @{DataOfAnni}
        Log     ${count.text}
        Append To List  ${Data2}     ${count.text}
    END
    Remove From List    ${Data2}     0
    Log     ${Data2} 
    List Should Contain Sub List    ${list}     ${Data2}
   

Close Browser Session
    Close Browser
    