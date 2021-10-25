*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

Resource  ./utils.robot

*** Keywords ***
go to homepage
  go to  ${HOMEPAGE}

check homepage scroll
  execute javascript  window.scrollTo(0,1300)

click Hızla İş Ara
  utils.javascript click  css=.features-list.jsx-1062549666 > li:nth-of-type(2)

check Hızla İş Ara
  wait until element is visible  css=.features-phone-detail-wrapper.jsx-1062549666 > .bg-lazy-loaded.features-phone-detail.item-1.jsx-1062549666  timeout=10

click Sana Uygun İlanlara Başvur
  utils.click  css=.features-list.jsx-1062549666 > li:nth-of-type(3)

check Sana Uygun İlanlara Başvur
  wait until element is visible  css=.features-phone-detail-wrapper.jsx-1062549666 > .bg-lazy-loaded.features-phone-detail.item-2.jsx-1062549666

click Mobil Uygulamayı İndir
  utils.click  css=.features-list.jsx-1062549666 > li:nth-of-type(1)

check Mobil Uygulamayı İndir
  wait until element is visible  css=.features-phone-detail-wrapper.jsx-1062549666 > .bg-lazy-loaded.features-phone-detail.item-0.jsx-1062549666  timeout=10


