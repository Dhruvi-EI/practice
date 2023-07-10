import bs4
from bs4 import BeautifulSoup
import requests
from robot.libraries.BuiltIn import BuiltIn

def holidaylist():
    url="https://intranet.einfochips.com/employee_intranet/portal/leave/holidaylist"
    open=BuiltIn().get_library_instance("SeleniumLibrary")
    open=requests.get(url)
    #soup=BeautifulSoup(open.content,'html.parser')
    # print(soup)
    open.open_browser(url,"Chrome")
    soup=BeautifulSoup(open,'html.parser')
    data=soup.find_all('table td:nth-child(4)')
    for i in data:
        print(i.text)
