*** Settings ***
Library  SeleniumLibrary
Suite Setup     Open browser    ${URL}   ${BROWSER}
Suite Teardown  Close All Browsers

*** Variables ***
${URL}          http://blazedemo.com/
${BROWSER}      Chrome

*** Test Cases ***
The user can search for flights
    [Tags]	   search_flights
        Set Browser Implicit Wait    5

    Select From List By Value   xpath://select[@name='fromPort']  Paris
    Set Browser Implicit Wait    5

    Select From List by Value   xpath://select[@name='toPort']    London
    Set Browser Implicit Wait    5
    Click Button    css:input[type='submit']
    Set Browser Implicit Wait    5
    @{flights}=  Get WebElements    css:table[class='table']>tbody tr
    Should Not Be Empty     ${flights}
    Log Variables    ${flights} 
#*** Test Cases ***