*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Library  String

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Get Title  ==  Laskuri
    Click  button >> text=Nollaa
    ${number} =  Generate Random String  2  0123456789
    Fill Text  input[name="value"]  ${number}
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu ${number} kertaa 