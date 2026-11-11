*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter changes to the specified value
   Go To  ${HOME_URL}
   Get Title  ==  Laskuri
   ${str} =  Get Text  body
   Should Not Be Equal  ${str}  nappia painettu 2 kertaa
   Click  button >> text=Nollaa
   Get Text  body  *=  nappia painettu 0 kertaa