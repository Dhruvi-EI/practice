*** Settings ***
Resource    ../../Common/testcase_resources_php.robot
Suite Setup      Open The browser
Suite TearDown      Close Browser Session
#Author: Dhruvi Virani

*** Test Cases ***
Validate Footer Logo
    Click Element   ${CookiesClick}
    Execute JavaScript    document.querySelector("${FooterScroll}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterLogo}
    Wait Until Element Is Visible  ${PhpLogo}

Validate Footer Contact Us
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScroll}").scrollIntoView(true)
    Sleep   0.5
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterContactUs}
    Wait Until Element Is Visible   ${WaitAfterContactUs}
    Go Back
    Wait Until Element Is Visible  ${PhpLogo}

Validate Footer Company Section
    Set Selenium Timeout    10s
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterCompany}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterAboutUs}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterAboutUs}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterTermsOfUse}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterTermsOfUse}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterCookiesPolicy}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterCookiesPolicy}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterPrivacyPolicy}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterPrivacyPolicy}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Wait Until Element Is Visible  ${PhpLogo}

Validate Footer Support Section
    Set Selenium Timeout    10s
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterSupport}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${Footersupplier}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${Footersupplier}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterFAQ}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterFAQ}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterBookingTips}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterBookingTips}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Sleep   1
    Wait Until Element Is Visible  ${FooterHowToBook}
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterHowToBook}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Wait Until Element Is Visible  ${PhpLogo}

Validate Footer Services Section
    Set Selenium Timeout    10s
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterServiceSection}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Switch Window   Main
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    #Wait Until Element Is Visible   ${FooterFileAClaim}
    Click Element   ${FooterFileAClaim}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${FooterOffers}
    Click Element   ${FooterOffers}
    Wait Until Element Is Visible   ${OfferHeading}
    Go Back
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${SignupSupplier}
    Click Element   ${SignupSupplier}
    Wait Until Element Is Visible   ${SupplierSignupHeading}
    Go Back
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Wait Until Element Is Visible   ${FooterCareers}
    Click Element   ${FooterCareers}
    Wait Until Element Is Visible   ${CompanyHeadings}
    Go Back
    Wait Until Element Is Visible  ${PhpLogo}

Validate Footer Facebook Icon
    Set Selenium Timeout    10s
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterFacebook}
    Switch Window   NEW
    Wait Until Element Is Visible   ${FacebookWait}
    Click Element   ${FacebookWait}
    Wait Until Element Is Visible   ${BackFromFacebook}
    Close Window

Validate Footer Twitter Icon
    Set Selenium Timeout    10s
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterTwitter}
    Switch Window   NEW
    Wait Until Element Is Visible   ${TwitterWait}
    Close Window

Validate Footer Youtube Icon
    Set Selenium Timeout    10s
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterYoutbe}
    Switch Window   NEW
    Wait Until Element Is Visible   ${YoutubeWait}
    Close Window

Validate Footer Whatsapp Icon
    Set Selenium Timeout    10s
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterWhatsapp}
    Switch Window   NEW
    Wait Until Element Is Visible   ${WhatsappWait}
    Close Window

Validate Footer Instagram Icon
    Set Selenium Timeout    10s
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${FooterInstagram}
    Switch Window   NEW
    Wait Until Element Is Visible   ${InstagramWait}
    Close Window

Validate Footer PHPTRAVELS href
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${FooterScrollHref}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${PhptravelsPage}
    Switch Window   NEW
    Wait Until Element Is Visible   ${PhpWait}
    Close Window