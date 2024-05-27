*** Settings ***
Library  pabot.PabotLib
Library  SeleniumLibrary 
Resource  ../Resources/Common_steps/given.robot
Test Teardown  Close browser

*** Variables ***
*** Test Cases ***
test Launch
    Open Tennis Site
    Sleep  10