#!/bin/sh
#//tb/1609

cd

mkdir -p source/git/7890
cd source/git/7890

for repo in \
0-lua \
3g_stick \
aclock \
arduino_sketches \
audio_rxtx_gui \
boilertest \
bskt \
csnip \
gengraph \
jack_tools \
java_files \
java_httpd \
java_osc \
java_osm_renderer \
java_pixelpipe \
java_record \
java_serial \
jlo \
jsnip \
librimage \
lv2_utils \
metarepo \
mman-win32 \
nmea_parser \
ntripclient \
oscc \
oscdoc \
oschema \
osck \
osmconvert \
osrm-backend \
osrm-bootstrap \
pled \
rfiddle \
rmp3 \
sc \
sendkeys \
shout \
silentjack_osc \
slippystitch \
stringtemplate4 \
txl \
wavegraph; do git clone https://github.com/7890/${repo}; cd ${repo}; git pull; cd ..; done

git clone -b fixmax https://github.com/7890/liblo liblo_fixmax; cd liblo_fixmax; git pull; cd ..
