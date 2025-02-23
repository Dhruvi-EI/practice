*** Variables ***

${Mmturl}      https://www.makemytrip.com/
${logo}     css=img[src='//imgak.mmtcdn.com/pwa_v3/pwa_hotel_assets/header/mmtLogoWhite.png']
${SuperOffers}  (//div[@class='flexOne'])[1]
${AfterSuperOffers}     //span[text()='FILTERS']
${BusinessTravelSolution}   //p[text()='Business Travel Solution']
${AfterBusinessTravelSolution}  css=span[data-cy='myBizLoginClose']
${CloseButton}  css=span[class='mbizUse__close']
${ChooseLanguage}   css=span[class='latoBold capText font11']
#${ApplyButtonInLanguage}    //button[text()='Apply']
${RoundTripFlights}     //li[text()='Round Trip']
${FlightsFromoneWay}    css=label[for='fromCity']
${FlightsFromoneWaywait}    (//p[@class='font14 appendBottom5 blackText'])[1]
${FlightsToOneWay}  css=label[for='toCity']
${FlightsToOneWayWait}  (//p[@class='font14 appendBottom5 blackText'])[2]
${FlightsOneWayDate}    (//p[text()='19'])[1]
${FlightsOneWayTravellers}  css=p[data-cy='travellerText']
${ScrollOneWayTravellers}   p[data-cy='travellerText']
${FlightsOneWayAdults}  css=li[data-cy='adults-2']
${FlightsOneWayClass}   css=li[data-cy='travelClass-2']
${FlightsOneWayApply}   css=button[data-cy='travellerApplyBtn']
${FlightsStudent}   //p[text()='Student ']
${FlightsJourneyTitle}  css=p[class*='journey-title']
${FlightsFrom}     (//p[@class='code makeRelative'])[1]
${FlightsFromWait}  //p[text()='Mumbai, India']
${FlightsTo}    (//p[@class='code makeRelative'])[1]
${FlightsToWait}    //p[text()='Bangkok, Thailand']
${FlightsDate}  (//p[@class='blackText font20 code lineHeight36'])[2]
${FlightsDepartureDate}     (//div[@class='dateInnerCell']/p[text()='1'])[1]
${FlightsReturnDate}    (//div[@class='dateInnerCell']/p[text()='15'])[1]
${FlightsSearchButton}  //a[text()='Search']
${FlightsWait}  css=p[class='font24 blackFont whiteText appendBottom20 journey-title']
${MultiCity}    //li[text()='Multi City']
${FlightsArmedForces}   //p[text()='Armed Forces ']
${FlightsStudent}   //p[text()='Student ']
${FlightsSeniorCitizen}     //p[text()='Senior Citizen ']
${FlightsDoctorsAndNurses}  //p[text()='Doctors & Nurses ']
${FlightsOffers}    //font[text()='Offers']
${FlightsValidateHeadings}      css=h3[class='appDnldCnt__heading']
${FlightsMultiCityClickCity}    css=input[id='fromAnotherCity0']
${FlightsMultiCityMumbai}   //p[text()='Mumbai, India']
${FlightsMultiCityDepartureCityWait}    //p[text()='Bengaluru, India']
${FlightsMultiCityDeparture}    //p[text()='New Delhi, India']
${FlightsMultiCityDate}     (//p[text()='13'])[1]
${FlightsMultiCityTravellers}   //span[text()='Travellers & Class']
${FlightsMultiCityTravellersAdults}     css=li[data-cy='adults-2']
${FlightsMultiCityTravellersClass}  css=li[data-cy='travelClass-2']
${FlightsMultiCityTravellersApplyButton}    css=button[data-cy='travellerApplyBtn']
${FlightsAddAnotherCity}    css=label[for='fromAnotherCity1']
${FlightsAddAnotherCityClickFromCity}  (//p[@class='font14 appendBottom5 blackText'])[2]
${FlightsAddAnotherCitySelectFromCity}  (//p[@class='font14 appendBottom5 blackText'])[3]
${FlightsAddAnotherCityDate}    (//p[text()='13'])[1]
${FlightsStudentFares}  //p[text()='Student ']
${FlightsMultiCityText}     //div[text()='Multi City']
${HotelsClickHereHref}  //a[text()='click here']
${HotelsClickHereHrefWait}  //h1[text()='LIST YOUR HOTEL']
${HotelsRooms}  (//div[@class='gstSlct'])[1]
${HotelsRoomsClick2}    //li[text()='2']
${HotelsRoomsApplyButton}   //button[text()='Apply']
${HotelsGroupDealsClickCity}    //span[text()='City, Property name or Location']
${HotelsEnterInput}     css=input[placeholder='Enter city/ Hotel/ Area/ Building']
${HotelsSelectCityDelhi}     (//p[text()='Delhi, India'])[1]
${Hotels}   css=span[class='chNavIcon appendBottom2 chSprite chHotels']
${HotelsFrom}   //span[text()='City, Property name or Location']
${HotelsSource}     (//p[text()='Delhi'])[1]
${HotelsPricePerNight}  (//span[@class='lbl_input latoBold appendBottom5'])[5]
${HotelsPrice}  //li[text()='₹2500-₹5000']
${HotelsClickGroupDeals}    //span[text()='GROUP DEALS']
${Search}     //button[text()='Search']
${HotelsShowProperties}     //p[text()='Showing Properties in Delhi']
${HotelsOffers}     //font[text()='Offers']
${HomeStays}    //span[text()='Homestays']
${HomeFrom}     (//p[@class='font12 greyText appendBottom5'])[1]
${HomeChechIn}  css=input[id='checkin']
${HomeDepartureDate}    (//div[text()='15'])[1]
${HomeReturnDate}   (//div[text()='25'])[1]
${HomeApplyButton}  //button[contains(@class,'primaryBtn btnApply')]
${HomeTravellers}   //p[text()='Select a Reason (optional)']
${HomeLeisure}  //li[text()='Leisure']
${HomeWait}     //p[text()='Showing Properties in Delhi']
${HomeHeadingValidate}  //p[text()='Find Your Wonderland']
${HomeOffers}   //font[text()='Offers']
${HolidayPackages}  //span[text()='Holiday Packages']
${HolidayPackagesFrom}  css=input[id='fromCity']
${HolidayPackagesFromWait}  //li[text()='Chennai']
${HolidayPackagesTo}    //span[text()='To City/Country/Category']
${HolidayPackagesToWait}    //div[text()='Kashmir']
${Holidaypackagesclickrooms}  (//div[@class='field-label down-arrow'])[1]
${HolidayPackagesApply}     //button[text()='APPLY']
${HolidayPackagesFilterApply}   //div[@class='action-container']/button
${HolidayPackagesSearchButton}  css=button[class='primaryBtn font24 latoBlack widgetSearchBtn lineHeight29']
${HolidayPackagesWait}  //h1[text()='Kashmir']
${HolidayPackagesDestinations}  //span[text()='Destinations']
${HolidayPackagesEmerging}  //li[text()='Emerging']
${Destination}  //a[text()='Gujarat']
${TopHeading}   css=h1[class='topHeading']
${HolidayPackagesHoneymoon}     //span[text()='Honeymoon']
${HoneymoonDestination}     //a[text()='Maldives']
${HoneymoonDestinationWait}     //h1[text()='Maldives']
${HolidayPackagesFeatured}  //span[text()='Featured']
${FeaturedWait}     //a[text()='Adventure']
${FeaturedAdventure}    //h1[text()='Adventure']
${HolidayPackagesTravelGuidlines}   //span[text()='Travel Guidelines']
${TravelGuidlinesInternational}     //li[text()='International']
${ClickInternationalTravelGuidelines}   //a[text()='International Travel Guidelines']
${Heading1}     //h2[text()='Jackpot Deals on Top Selling Packages']
${Heading2}     //h2[text()='International Destinations!']
${Heading3}     //h2[text()='Explore the Unexplored']
${Heading4}     //font[text()='Offers']
${Trains}   //span[text()='Trains']
${TrainsCheckStatus}    //a[text()='CHECK STATUS']
${TrainsEnterPNR}   //a[@class='appendRight10']
${TRainsClickLogo}  css=a[class='chMmtLogo']
${TrainsFrom}   //span[text()='From']
${TrainsFromWait}   //span[text()='Kolkata Howrah Junction']
${TrainInputWait}     //span[text()='Delhi']
${TrainsClass}  //li[text()='Third AC']
${TrainsSearch}     css=a[class='primaryBtn font24 latoBold widgetSearchBtn']
${TrainsWait}   css=span[class='font14 latoBlack capText']
${TrainsClick}  //span[text()='Trains']
${TrainsPNRStatus}  //span[text()='CHECK PNR STATUS']
${TrainNumber}      css=input[id='trainNum']
${TrainLiveStatusInput}     css=input[class*='autosuggest__input ']
${ValidatePNRStatus}    css=input[placeholder='Enter 10 digit PNR'] 
${LiveTrainStatus}  //span[text()='LIVE TRAIN STATUS']
${LiveTrainStatusWait}  css=label[class='lbl_input makeFlex column latoBold']
${TrainLokShakti}   (//span[text()='LOK SHAKTI EXP'])[1]
${TrainBandraTerminus}  //span[text()='Bandra Terminus']
${TrainYourStopTab}     //span[text()='Your Stop']
${TrainStartDate}   //span[text()='TRAIN START DATE']
${TrainSelectTomorrow}  //span[text()='Tomorrow']
${TrainStatusNumber}    //h2[text()='22927']
${ClickBuses}   css=span[class='chNavIcon appendBottom2 chSprite chBuses']
${BusesFrom}    //span[text()='Pune, Maharashtra']
${BusesTo}  //span[text()='Delhi, Delhi']
${BusesDate}    (//div[text()='15'])[1]
${BusesSearch}  css=button[id='search_button']
${BusesSearchWait}  css=button[class='primaryBtn font18 latoBlack widgetSearchBtn']
${ForexClick}   //span[text()='Forex']
${ForexWait}    //p[text()='Global INR Card']
${ForextSearch}     css=a[class='primaryBtn font24 latoBlack widgetSearchBtn']
${ForexLogo}    css=a[class='navbar-brand navbar-logo']
${CharterFlights}     css=span[class='chNavIcon appendBottom2 chSprite chCharterFlights']
${CharterFlightsClickOneWay}    //li[text()='Oneway']
${CharterFlightsClickBanglore}  //p[text()='Bangalore, India']
${CharterFlightsDepartureTime}  //li[text()='01:00']
${CharterFlightsPassengers}     //li[text()='1']
${CharterFlightsWait}   //label[text()=' TRIP TYPE ']
${CharterFlightsRoundTrip}  //li[text()='Round Trip']
${NoCharterFound}   //p[text()='Sorry, No Charters found for this search']
${Activities}   //span[text()='Activities']
${ActivitiesWait}   (//input[@placeholder='Activities, Tours or Destination'])[1]
${ActivitiesClick}  //span[text()='Search']
${ActivitiesInputText}  (//input[@placeholder='Activities, Tours or Destination'])[2]
${ActivitiesBali}   //p[text()='Bali Hai - Sunset Dinner ']
${ActivitiesSearchingFor}   //p[text()='Searching for']
${Twitter}    css=span[class='twiiterIcon landingSprite']
${TwitterLogo}  css=div[class='css-1dbjc4n r-1awozwy r-1pz39u2 r-6koalj r-16y2uox r-1777fci r-4wgw6l']
${FacebookLogo}     css=span[class='facebookIcon landingSprite']
${FacebookLogoVisible}  css=div[class='x92rtbv x10l6tqk x1tk7jg1 x1vjfegm']
${ClickCabs}    css=span[class='chNavIcon appendBottom2 chSprite chCabs']
${OutstationRoundTrip}  //li[text()='OUTSTATION ROUND TRIP']
${CabsFrom}     //span[text()='Bangalore']
${CabsTo}   //span[text()='To']
${CabsDestination}  //span[text()='Mumbai']
${CabsDeparture}    //span[text()='DEPARTURE']
${CabsOneWayPassengers}     (//li[@class='hrSlotItemParent'])[3]
${PickUpTime}   //span[text()='PICKUP TIME']
${SelectPickupTimeForCab}   (//li[@class='hrSlotItemParent'])[8]
${PickUpTime}   (//li[@class='hrSlotItemParent'])[3]
${DropTimeApply}    //span[text()='APPLY']
${PickUpTimeApply}   css=span[class='applyBtnText']
${CabsPickUp}   //span[text()='PICKUP TIME']
${CabsOffersScroll}     a[class='primaryBtn font24 latoBold widgetSearchBtn']
${CabsScrollTillForex}  span[class='latoRegular']
${SelectTime}   (//span[@class='hrSlotItemChild '])[2]
${CabsApplyButton}  //span[text()='APPLY']
${CabsScroll}   (//a[@class='blackText'])[1]
${CabsDropTime}     (//p[@class='code font30 blackText'])[2]
${CabsDropTimeHours}    (//li[@class='hrSlotItemParent'])[1]
${CabsSearch}   //a[text()='Search']
${CabsSearchBlueButton}     css=button[class='bluePrimarybtn widgetSearchBtn']
${CabsAirportTransfers}     //li[text()='Airport Transfers']
${CabsDateWait}     css=div[class='makeFlex row newTimeSlotHeader']
${SelectAirportTo}  //div[text()='To Airport']
${ClickAirportTo}   //li[text()='To the Airport']
${InputAirportFrom}   css=input[placeholder='From']
${WaitAirportFrom}  (//span[@class='sr_city blackText'])[1]
${AirportTo}    css=input[placeholder='AIRPORT']
${WaitAirportTo}    //span[text()='Terminal 1, Kempegowda International Airport, Bengaluru']
${AirportPickupDate}    (//li[@class='hrSlotItemParent'])[7]
${AirportSearch}    css=a[class='primaryBtn font24 latoBold widgetSearchBtn']
${AirportSearchWait}    //button[text()='Search']
${ClickHourlyRentals}   css=li[data-cy='hourlyRental']
${HourlyRentalPickupDate}   //span[text()='PICKUP DATE']
${HourlyRentalPickupTime}   //span[text()='PICKUP TIME']
${SelectPackage}    //span[text()='SELECT PACKAGE']
${SelectdDuration}  (//li[@data-cy='Duration_43'])[3]
${CabsType}     //p[text()='Cab Type']
${ScrollText}   p[class='widgetTitle flexOne']
${CharterFlightsScroll}     div[class='pushRight']
${FlightsOffersScroll}  span[class='choosFrom__header--text defaultCursor']
${FlightsDownloadScroll}    div[id='Offers_Listing']
${FooterScroll}     section[class='aboutMMT']
${FooterTwitterScroll}  span[class='twiiterIcon landingSprite']
${HolidayPackagesScroll}    div[class='didUKnowSldr commonSlider V2 appendBottom40 holidayLandingV2 ']
${HolidayPackagesScrollHeading}     div[class='makeFlex row']
${HolidayPackagesScrollHeading1}     div[class='rcmndedSldr commonSlider appendBottom40 ']
${HolidayPackagesScrollHeading2}    div[class='rcmndedSldr commonSlider appendBottom40 moveBtn']
${HomeStaysScroll}  a[href='/homestays/']
${HomeStaysScrollHeading}   button[class='primaryBtn font24 latoBold widgetSearchBtn']
${HomeStaysScrollHeading1}   div[class='landingCard makeFlex appendBottom20']
${HotelsScroll}     h1[data-cy='HotelSearchWidget_310']
${HotelsApplyScroll}    div[class='luxeSel appendBottom20']
${BuseScroll}   a[href='//www.makemytrip.com/bus-tickets/']
${TrainsScroll}     p[class='font12 lineHeight16 latoRegular']