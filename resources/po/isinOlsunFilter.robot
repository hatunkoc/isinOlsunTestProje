*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

Resource  ./utils.robot

*** Keywords ***

enter the position input
  utils.input  css=[data-test='position-search-input']   Garson
  utils.click  css=li:nth-of-type(1) > .dropdown-item > span
  utils.input  css=[data-test='location-search-input']   istanbul
  utils.click  css=li:nth-of-type(1) > .dropdown-item

click find job button
  utils.click   css=[data-test='main-search-button']

check find job page
  wait until page contains  garson
  wait until page contains  İstanbul Garson
  location should contain  is-ilanlari