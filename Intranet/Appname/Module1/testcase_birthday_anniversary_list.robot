*** Settings ***
Resource    ../../Common/testCase_resources.robot
Suite Setup      Open The browser
Suite TearDown  Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Intranet Birthday and Anniversary List
    Get The List Of The Employees Having Birthday And Anniversary Today
    
    Click On The Icon-View All Birthdays And Verify Filter Is Applied On Birthdate Column By Today's Date
    
    Click On The Icon-View All Anniversaries And Verify Filter Is Applied On Anniversary Column By Today's Date