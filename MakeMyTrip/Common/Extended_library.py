import datetime
def date(d1):    
# using now() to get current time
    current_time = datetime.datetime.now()
    DATE=current_time.day+int(d1)
    DATE=str(DATE)
    return DATE
