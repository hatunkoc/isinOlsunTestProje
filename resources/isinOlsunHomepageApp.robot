*** Settings ***
Resource  ./po/isinOlsunFilter.robot
Resource  ./po/isinOlsunHomepage.robot

*** Keywords ***
open the browser
    isinOlsunHomepage.go to homepage

enter the position
    isinOlsunHomepage.check homepage scroll
    isinOlsunHomepage.click Hızla İş Ara
    isinOlsunHomepage.check Hızla İş Ara
    isinOlsunHomepage.click Mobil Uygulamayı İndir
    isinOlsunHomepage.check Mobil Uygulamayı İndir
    isinOlsunHomepage.click Sana Uygun İlanlara Başvur
    isinOlsunHomepage.check Sana Uygun İlanlara Başvur