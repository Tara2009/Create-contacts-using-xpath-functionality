# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource          ../Resources/Common.robot
Library           SeleniumLibrary
Library           QForce
Library           QMobile
Library           QNow
Library           QVision
Suite Setup       Setup Browser
Suite Teardown    End suite


*** Test Cases ***
Entering a Contacts
    [Tags]        Contact
    Appstate      Home
    LaunchApp     Sales
    ClickText     Contacts
    ClickUntil    New Contact                 New
    UseModal      On
    TypeText      Phone                       +917396647548
    Picklist      Salutation                  Mr.
    TypeText      First Name                  tara srinivas17
    TypeText      Last Name                   chandika
    ComboBox      Search Accounts...          Greenwich Media
    # ${value}=      GetInputValue               //*[@id\="input-347"]
    TypeText      //*[@id\="input-347"]       xpath@gmail.com
    TypeText      Title                       project17
    TypeText      Mailing Street              hanuman nagar 4th line
    TypeText      Mailing City                guntur
    TypeText      Mailing State/Province      ap
    TypeText      Mailing Zip/Postal Code     522006
    TypeText      Mailing Country             india
    TypeText      Other Street                vijayapuri colony
    TypeText      Other City                  guntur
    TypeText      Other State/Province        ap
    TypeText      Other Zip/Postal Code       52206
    TypeText      Other Country               india
    TypeText      Fax                         7396647548
    PickList      Lead Source                 Web
    TypeText      Home Phone                  8987
    ClickText     Birthdate                   anchor=Home Phone
    DropDown      Pick a Year                 1979
    ClickText     Previous                    Month
    ClickText     Previous                    Month
    ClickText     Previous                    Month
    ClickText     20
    TypeText      Other Phone                 987946
    TypeText      Department                  testing department
    TypeText      Assistant                   no assistant
    TypeText      Asst. Phone                 00000034
    TypeText      Description                 learning copado robotic testing
    ClickText     Save                        partial_match=False
    UseModal      Off
    ClickText     Details

    # End creation of contacts
