*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

Resource  ./utils.robot

*** Variables ***

*** Keywords ***
click release date filter
  ${TXT}=    Get Text    css=[class='jsx-3033598793 total-title'] b
  ${NUMBER_OF_ADVERT}=    Convert To Number  ${TXT}
  set global variable  ${NUMBER_OF_ADVERT}
  utils.click  css=[data-test='publish-date-filter-button']
  utils.click  css=[data-test='publish-date-filter1']

check release date filter
  wait until location contains  publishDateFilter=2  timeout=10

click working type filter
  utils.click  css=[data-test='work-type-filter-button']
  utils.click  css=[data-test='work-type-filter1']

check working type filter
  wait until location contains  workType=1  timeout=10
  ${TXT}=    Get Text    css=[class='jsx-3033598793 total-title'] b
  ${NUMBER_OF_ADVERT2}=    Convert To Number  ${TXT}
  set global variable  ${NUMBER_OF_ADVERT2}
  should be true  ${NUMBER_OF_ADVERT2} < ${NUMBER_OF_ADVERT}


