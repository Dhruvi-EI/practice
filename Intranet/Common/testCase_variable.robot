*** Variables ***
${url}  https://intranet.einfochips.com/ 
${ElementVisible}     //a[text()='Dhruvi Virani']
${MouseHoverToHome}   css=div[class='collapse navbar-collapse navbar-ex1-collapse']>ul>li>a[class='dropdown-toggle nav-link']
${ClickOnHolidayList}     //a[text()='Holiday List']
${SelectHolidayYearDropdown}     css=select[id='holiday_year']
${ClickYear}     css=option[value='2022']
${SelectMonths}     css=select[id='month_id']>option
${SelectSubmitButton}     css=button[class='btn btn-success']
${DescriptionOfHolidayList}     css=table[id='mt'] tbody td:nth-child(4)
${ClickPagination}      css=ul[class='pagination pagination-lg'] li
${DynamicPagination}    //a[@class='green normal']
${SelectYear}     css=option[value='2023'] 
${ScrollDown}   (//ul[@class='pagination '])[1]
${BirthdayListHomePage}     //div[@class='usr-name']/a[@title='click to view profile']
${ClickOnViewBirthday}      css=img[title='View all birthdays']
${BirthdayAndAnniData}     css=td[data-title='Name']
${ClickOnViewAnni}  css=img[title='View all anniversaries']
${GetAnniAndBIrthday}      (//div[@class='float-left']/div[@class='occ-ttl'])[1]