*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate View More Button
    Click Element   ${CookiesClick}
    Execute JavaScript    document.querySelector("${ScrollToHelpUsIcon}").scrollIntoView(true)
    Sleep   0.5
    Element Text Should Be      ${LatestOnBlog}   ${LatestOnBlogText}
    Click Element   ${LatestOnBlogpage}
    Go Back

Validate Need Help Box
    Execute JavaScript    document.querySelector("${ScrollToLatestOnBlogPage}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${HelpUsIcon}
    Wait Until Element Is Visible   ${HelpUsPage}
    Go Back
    Sleep   1

Validate Enter Email Address Box
    Execute JavaScript    document.querySelector("${ScrollToSubscribeButton}").scrollIntoView(true)
    Sleep   0.5
    Element Text Should Be   ${ValidateSubscribeBox}      ${SubscribeBoxText}
    Input Text   ${EmailAddressBox}     ${EmailAddress}
    Sleep   1
    Click Button    ${SubscribeButton}
