*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

Resource          /Users/sonal/Code/WebDemo-master/Resources/xpath.robot

*** Variables ***
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      https://www.guru99.com/using-robot-api-selenium.html
${HOST}     

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Capture Page Screenshot    
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open
    Close the pop-up screen

Login Page Should Be Open
    Title Should Be    Robot Class in Selenium Webdriver

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page
    
Click on the RPA sub header
    Wait Until Element Is Visible    ${testing_header}    30
    Click Element    ${testing_header}
    Click Element    ${rpa_header}
    Log To Console      User clicked on RPA

RPA header is reflected page should be open
    Wait Until Element Is Visible    ${rpa_sub_header}    20
    Log To Console    User is able to navigate to RPA

Close the pop-up screen
    Wait Until Element Is Visible    ${pop-up-agree_btn}    20
    Click Element    ${pop-up-agree_btn}
    Log To Console    User clicked on Agree Button
    
SAP header reflected
    Wait Until Element Is Visible    ${SAP_header}        10
    Log to Console     User able to view the SAP header

Wait until the Udemy pop-up and close
    Wait Until Element Is Visible    ${udemy_pop_up}    300
    Click Element    ${udemy_pop_up}
    Log  Pop-up closed of udemy

Capture all header and print
    Click Element    ${SAP_header}
    Wait Until Element Is Visible    //ul[@class="sub-menu clicked"]/li/a    20
    ${dropdown_locator}    Set Variable    //ul[@class="sub-menu clicked"]/li/a
    ${dropdown_texts}    Get List Items    ${dropdown_locator}
    FOR    ${text}    IN    @{dropdown_texts}
        Log    Dropdown Text: ${text}
    END