*** Settings ***
Documentation     This example demonstrates how to use current library
Library      Selenium2Library
Library      XvfbRobot

*** Test Cases ***
Create Headless Browser
    Start Virtual Display    1920    1080
    Open Browser   http://google.com
#    Open Browser   http://localhost:5000
    Set Window Size    1920    1080
  #  ${title}=    Get Title
    #Should Be Equal    Google    {title}
    Wait Until Page Contains    Google
    #Wait Until Page Contains   "hello"
    [Teardown]    Close Browser