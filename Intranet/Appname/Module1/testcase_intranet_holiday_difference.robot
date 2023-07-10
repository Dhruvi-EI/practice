*** Settings ***
Resource    ../../Common/testCase_resources.robot
Suite Setup      Open the browser
Suite TearDown  Close Browser Session
#Author:Dhruvi Virani


*** Test Cases ***
Validate The Intranet Holiday List

    Go To Home And Then Holiday List
    ${Result}=      Fetch The Holidays List     2022    Pune
    Log  ${Result}
    Set Global Variable     ${Result}
    ${Result1}=  Fetch The Holidays List     2023    Noida
    Log   ${Result1}
    Set Global Variable     ${Result1}
    Compare And Find The Difference Between Holiday List Of Both The Years
    ${diff_list}=    List Difference    ${Result}  ${Result1}
    
Fetch HolidayList 
    holidaylist      