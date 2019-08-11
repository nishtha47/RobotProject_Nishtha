***Settings***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Suite up
Suite Teardown    Log    I am inside Suite teardown
Test Setup    Log    I am inside Test Suite setup
Test Teardown    Log    I am inside Test teardown setup

Default Tags    Sanity  


*** Test Cases ***
MyFirstTest
    Log    "test"
    Set Tags    regression1
    Remove Tags    regression1
    


FirstSeleniumTest
    [Tags]    SelTest

    Open Browser    http://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    Automation Step By Step
    Press Keys    name=q    ENTER
    Sleep    2    
    Close Browser
    Log    Test Completed
    
SampleLoginTest
        [Tags]    SelTest

    [Documentation]    This is a sample Login Test
    Open Browser    https://opensource-demo.orangehrmlive.com    chrome
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    Admin
    Input Text    id=txtPassword    admin123
    Click Button  id=btnLogin
    Click Element    id=welcome
    Click Element    link=Logout
    Log    Test Completed                                