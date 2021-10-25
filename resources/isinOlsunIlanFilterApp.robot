*** Settings ***
Resource  ./po/isinOlsunFilter.robot
Resource  ./po/isinOlsunHomepage.robot
Resource  ./po/isinOlsunIlanFilter.robot

*** Keywords ***
go to homepage
  isinOlsunHomepage.go to homepage

go to find a job page
  isinOlsunFilter.click find job button

click find a job filter
  isinOlsunIlanFilter.click release date filter
  isinOlsunIlanFilter.check release date filter
  isinOlsunIlanFilter.click working type filter
  isinOlsunIlanFilter.check working type filter





