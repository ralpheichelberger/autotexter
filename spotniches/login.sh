#!/bin/bash
wget -qO- --keep-session-cookies --save-cookies cookies.txt https://www.spotniches.com/Login.aspx > prelogin.html
wget -qO- --load-cookies cookies.txt --keep-session-cookies --save-cookies cookies.txt --post-file logindata.txt 'https://www.spotniches.com/Login.aspx?AspxAutoDetectCookieSupport=1' >/dev/null