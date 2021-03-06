# --------------- esphttpd config options ---------------

# If GZIP_COMPRESSION is set to "yes" then the static css, js, and html files will be compressed with gzip before added to the espfs image
# and will be served with gzip Content-Encoding header.
# This could speed up the downloading of these files, but might break compatibility with older web browsers not supporting gzip encoding
# because Accept-Encoding is simply ignored. Enable this option if you have large static files to serve (for e.g. JQuery, Twitter bootstrap)
# By default only js, css and html files are compressed.
# If you have text based static files with different extensions what you want to serve compressed then you will need to add the extension to the following places:
# - Add the extension to this Makefile at the webpages.espfs target to the find command
# - Add the extension to the gzippedFileTypes array in the user/httpd.c file
#
# Adding JPG or PNG files (and any other compressed formats) is not recommended, because GZIP compression does not works effectively on compressed files.

#Static gzipping is disabled by default.
GZIP_COMPRESSION = yes

# If COMPRESS_W_YUI is set to "yes" then the static css and js files will be compressed with yui-compressor
# This option works only when GZIP_COMPRESSION is set to "yes"
# http://yui.github.io/yuicompressor/
#Disabled by default.
COMPRESS_W_YUI = no

YUI-COMPRESSOR = /usr/bin/yui-compressor

#If USE_HEATSHRINK is set to "yes" then the espfs files will be compressed with Heatshrink and decompressed
#on the fly while reading the file. Because the decompression is done in the esp8266, it does not require
#any support in the browser.
USE_HEATSHRINK = yes

USE_OPENSDK = yes

# this ugly trick is needed to allow a relative path
SDK_BASE=$(dir $(lastword $(MAKEFILE_LIST)))/esp_iot_sdk_v1.5.2/

# combined / separate / ota
OUTPUT_TYPE = combined

# SPI flash size, in K
ESP_SPI_FLASH_SIZE_K = 1024

# Admin password, used to store settings to flash as defaults
ADMIN_PASSWORD = "19738426"

GLOBAL_CFLAGS = \
    -DDEBUG_ROUTER=0 \
    -DDEBUG_CAPTDNS=0 \
    -DDEBUG_HTTP=0 \
    -DDEBUG_ESPFS=0 \
    -DDEBUG_PERSIST=0 \
    -DDEBUG_UTFCACHE=0 \
    -DDEBUG_CGI=0 \
    -DDEBUG_WIFI=0 \
    -DDEBUG_WS=0 \
    -DDEBUG_ANSI=1 \
    -DDEBUG_ANSI_NOIMPL=1 \
    -DDEBUG_INPUT=0 \
    -DDEBUG_HEAP=1 \
    -DDEBUG_MALLOC=0 \
    -DHTTPD_MAX_BACKLOG_SIZE=8192 \
    -DHTTPD_MAX_HEAD_LEN=1024 \
    -DHTTPD_MAX_POST_LEN=512 \
    -mforce-l32 \
    -DUSE_OPTIMIZE_PRINTF=1
