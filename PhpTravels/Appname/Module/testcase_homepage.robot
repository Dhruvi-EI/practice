*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Logo Of The Phptravels Website
    Wait Until Element Is Visible  ${PhpLogo} 
    Get Title

Validate Header Section
   Get Text    ${Header}
   Wait Until Element Is Visible   ${HeaderHotels}
   Click Element   ${HeaderHotels}
   Wait Until Element Is Visible   ${WaitHotelsHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderFlights}
   Wait Until Element Is Visible   ${WaitFlightsHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderTours}
   Wait Until Element Is Visible   ${WaitToursHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderTransfer}
   Wait Until Element Is Visible   ${WaitTransferHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderVisa}
   Wait Until Element Is Visible   ${WaitVisaHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderBlogs}
   Wait Until Element Is Visible   ${WaitBlogHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderOffers}
   Wait Until Element Is Visible   ${HeaderOffersWait}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderEnglishSection}
   Wait Until Element Is Visible   ${EnglishLanguages}
   Click Element   ${EnglishLanguage}
   Wait Until Element Is Visible   ${Header}

Validate Ghandi Drop-down Option In The Header section
   Mouse Over   ${HeaderGhandi}     
   Wait Until Element Is Visible   ${GhandiDrop-down}
   Click Element   ${HeaderGhandi}
   Wait Until Element Is Visible   ${GhandiHeading}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Mouse Over  ${HeaderGhandi}
   Wait Until Element Is Visible   ${GhandiDrop-down}
   Click Element   ${GhandiFAQ}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Mouse Over  ${HeaderGhandi}
   Wait Until Element Is Visible   ${GhandiDrop-down}
   Click Element   ${GhandiTermsOfUse}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Mouse Over  ${HeaderGhandi}
   Wait Until Element Is Visible   ${GhandiDrop-down}
   Click Element   ${GhandiHowToBook}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}
   Mouse Over  ${HeaderGhandi}
   Wait Until Element Is Visible   ${GhandiDrop-down}
   Click Element   ${GhandiAboutUs}
   Go Back
   Wait Until Element Is Visible   ${PhpMainHeading}

Validate English dropdown In The Header Section
   Click Element   ${HeaderEnglishSection}
   Wait Until Element Is Visible   ${EnglishLanguages}
   Click Element   ${EnglishTurkish}
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${HeaderEnglishSection}
   Wait Until Element Is Visible   ${EnglishLanguages}
   Click Element   ${EnglishLanguage}
   Wait Until Element Is Visible   ${PhpMainHeading}

Validate USD Drop-down In The Header Section
   Click Element   ${USDButton}
   Wait Until Element Is Visible   ${EnglishLanguages}
   Click Element   ${USDEuro}
   Wait Until Element Is Visible   ${PhpMainHeading}
   Click Element   ${USDButton}
   Wait Until Element Is Visible   ${EnglishLanguages}
   Click Element   ${USD}
   Wait Until Element Is Visible   ${PhpMainHeading}

Validate Account Drop-down In The Header section
    Set Selenium Timeout    10 seconds
    Click Element   ${AccountButton}
    Wait Until Element Is Visible   ${EnglishLanguages}
    Click Element   ${CustomerLogin}
    Wait Until Element Is Visible   ${CustomerLoginHeading}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}
    Click Element   ${AccountButton}
    Wait Until Element Is Visible   ${EnglishLanguages}
    Click Element   ${CustomerSignIn}
    Wait Until Element Is Visible   ${CustomerLoginHeading}
    Go Back
    Wait Until Element Is Visible   ${PhpMainHeading}
    Click Element   ${AccountButton}
    Wait Until Element Is Visible   ${EnglishLanguages}
    Click Element   ${SupplierLogin}
    Switch Window   NEW
    Wait Until Element Is Visible   ${SupplierLoginHeading}
    ${GetTitle}=    Get Text    ${SupplierLoginHeading}
    Log     ${GetTitle}
    Switch Window   MAIN

Validate Heading 
    Wait Until Element Is Visible   ${PhpMainHeading}
    Element Text Should Be  ${PhpMainHeading}     ${Heading1}
    ${title}=   Get Text   ${PhpMainHeading}
    Log     ${title}

Validate Heading 'Top Flight Destinations'
    Wait Until Element Is Visible   ${ValidateHeading1}
    Element Text Should Be  ${TopFlightDestinations}   ${Heading2}
    ${H1}=    Get Text    ${ValidateHeading1}
    Log     ${H1}

Validate Heading 'Featured Hotels'
    #Wait Until Element Is Visible   ${FeaturedHotels}   
    Element Text Should Be  ${FeaturedHotels}   ${Heading4} 
    ${H3}=    Get Text    ${ValidateHeading2}
    Log     ${H3}

Validate Heading 'Featured Tours'
    Element Text Should Be  ${FeaturedTours}   ${Heading3}
    ${H2}=    Get Text    ${ValidateHeading5}
    Log     ${H2}

Validate Heading 'Book Your Transfer Today'
    Wait Until Element Is Visible   ${ValidateHeading3}
    Element Text Should Be  ${BookYourTransferToday}   ${Heading5}
    ${H4}=    Get Text    ${ValidateHeading3}
    Log     ${H4}

Validate Heading 'Latest on blogs'
    Wait Until Element Is Visible   ${ValidateHeading4}
    Element Text Should Be  ${LatestOnBlogs}   ${Heading6}
    ${H5}=    Get Text    ${ValidateHeading4}
    Log     ${H5}


Validate Subscribe To See Secret Deals Heading
    Execute JavaScript document.querySelector("${ScrollToSubscribeButton}").scrollIntoView(true)
    Sleep  0.5
    Element Text Should Be  ${SubscribeHeading}  ${Heading7}
    Wait Until Element Is Visible   ${SubscribeHeading}
    ${SectionHeading}=  Get Text    ${SubscribeHeading}
    Log     ${SectionHeading}


Validate Top-Up Button
    Switch Window   MAIN
    Execute JavaScript document.querySelector("${ScrollToSubscribeButton}").scrollIntoView(true)
    Sleep  0.5
    Click Element   ${Top-Up}
    Wait Until Element Is Visible   ${PhpMainHeading}