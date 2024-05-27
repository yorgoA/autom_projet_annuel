*** Settings ***
Library      SeleniumLibrary
Library      BuiltIn
Library      JSONLibrary
Library    OperatingSystem
Documentation  List of steps that we created from merging multiple keywords 

*** Variable ***
${URL}      http://localhost:3000/home
${BROWSER}       chrome
${REMOTE_URL}     http://172.20.10.3:4444

*** Keywords ***
Set Custom Screenshot Directory
    [Arguments]  ${SCREENSHOT_DIR}
    Set Screenshot Directory    ${SCREENSHOT_DIR}
    CREATE DIRECTORY    ${SCREENSHOT_DIR}