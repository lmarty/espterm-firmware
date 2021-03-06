cmake_minimum_required(VERSION 3.7)

###################################################################
# This is a fake CMake config to make the project work in CLion   #
# Do not attempt to build it with cmake, use make instead.        #
###################################################################

project(ESPTerm)

set(CMAKE_CXX_STANDARD GNU99)

set(SOURCE_FILES
        libesphttpd/core/auth.c
        libesphttpd/core/base64.c
        libesphttpd/core/httpd.c
        libesphttpd/core/httpdespfs.c
        libesphttpd/core/httpd-freertos.c
        libesphttpd/core/httpd-nonos.c
        libesphttpd/core/sha1.c
        libesphttpd/core/uptime.c
        libesphttpd/core/httpd-platform.h

        libesphttpd/espfs/heatshrink_decoder.c
        libesphttpd/espfs/heatshrink_config_custom.h
        libesphttpd/espfs/espfsformat.h
        libesphttpd/espfs/espfs.c

        libesphttpd/include/webpages-espfs.h
        libesphttpd/include/user_config.h
        libesphttpd/include/uptime.h
        libesphttpd/include/sha1.h
        libesphttpd/include/platform.h
        libesphttpd/include/logging.h
        libesphttpd/include/httpd.h
        libesphttpd/include/httpdespfs.h
        libesphttpd/include/espmissingincludes.h
        libesphttpd/include/espfs.h
        libesphttpd/include/esp8266.h
        libesphttpd/include/cgiwebsocket.h
        libesphttpd/include/cgiflash.h
        libesphttpd/include/captdns.h
        libesphttpd/include/base64.h
        libesphttpd/include/auth.h
        libesphttpd/lib/heatshrink/heatshrink_encoder.h
        libesphttpd/lib/heatshrink/heatshrink_decoder.h
        libesphttpd/lib/heatshrink/heatshrink_config.h
        libesphttpd/lib/heatshrink/heatshrink_common.h
        libesphttpd/lib/heatshrink/greatest.h
        libesphttpd/lib/heatshrink/test_heatshrink_static.c
        libesphttpd/lib/heatshrink/test_heatshrink_dynamic_theft.c
        libesphttpd/lib/heatshrink/test_heatshrink_dynamic.c
        libesphttpd/lib/heatshrink/heatshrink_encoder.c
        libesphttpd/lib/heatshrink/heatshrink_decoder.c
        libesphttpd/lib/heatshrink/heatshrink.c
        libesphttpd/mkupgimg/mkupgimg.c
        libesphttpd/util/cgiwebsocket.c
        libesphttpd/util/cgiflash.c
        libesphttpd/util/captdns.c

        esp_iot_sdk_v1.5.2/include/user_interface.h
        esp_iot_sdk_v1.5.2/include/upgrade.h
        esp_iot_sdk_v1.5.2/include/uart_register.h
        esp_iot_sdk_v1.5.2/include/spi_register.h
        esp_iot_sdk_v1.5.2/include/spi_flash.h
        esp_iot_sdk_v1.5.2/include/sntp.h
        esp_iot_sdk_v1.5.2/include/smartconfig.h
        esp_iot_sdk_v1.5.2/include/slc_register.h
        esp_iot_sdk_v1.5.2/include/queue.h
        esp_iot_sdk_v1.5.2/include/pwm.h
        esp_iot_sdk_v1.5.2/include/ping.h
        esp_iot_sdk_v1.5.2/include/os_type.h
        esp_iot_sdk_v1.5.2/include/osapi.h
        esp_iot_sdk_v1.5.2/include/mesh.h
        esp_iot_sdk_v1.5.2/include/mem.h
        esp_iot_sdk_v1.5.2/include/ip_addr.h
        esp_iot_sdk_v1.5.2/include/gpio.h
        esp_iot_sdk_v1.5.2/include/ets_sys.h
        esp_iot_sdk_v1.5.2/include/esp_sdk_ver.h
        esp_iot_sdk_v1.5.2/include/espnow.h
        esp_iot_sdk_v1.5.2/include/espconn.h
        esp_iot_sdk_v1.5.2/include/eagle_soc.h
        esp_iot_sdk_v1.5.2/include/c_types.h
        esp_iot_sdk_v1.5.2/include/at_custom.h
        esp_iot_sdk_v1.5.2/include/airkiss.h
        esp_iot_sdk_v1.5.2/include/json/jsontree.h
        esp_iot_sdk_v1.5.2/include/json/jsonparse.h
        esp_iot_sdk_v1.5.2/include/json/json.h

        include/user_config.h
        include/ets_sys_extra.h
        user/io.c
        user/io.h
        user/cgi_wifi.c
        user/cgi_wifi.h
        user/cgi_persist.c
        user/cgi_persist.h
        user/cgi_network.c
        user/cgi_network.h
        user/cgi_term_cfg.c
        user/cgi_term_cfg.h
        user/cgi_system.c
        user/uart_driver.c
        user/uart_handler.c
        user/ansi_parser.c
        user/ansi_parser.h
        user/ansi_parser.rl
        user/screen.c
        user/user_main.c
        user/serial.c
        user/serial.h
        user/routes.c
        user/routes.h
        user/cgi_main.c
        user/cgi_main.h
        user/cgi_sockets.c
        user/cgi_sockets.c
        user/cgi_sockets.h
        user/ansi_parser_callbacks.c
        user/ansi_parser_callbacks.h
        user/wifimgr.c
        user/wifimgr.h
        user/persist.c
        user/persist.h
        include/helpers.h
        user/syscfg.c
        user/syscfg.h
        user/ascii.h
        user/sgr.h
        user/apars_utf8.c
        user/apars_utf8.h
        user/apars_logging.h
        user/version.h
        user/apars_csi.c
        user/apars_csi.h
        user/apars_short.c
        user/apars_short.h
        user/apars_string.c
        user/apars_string.h
        user/apars_osc.c
        user/apars_osc.h
        user/apars_dcs.c
        user/apars_dcs.h user/uart_buffer.c user/uart_buffer.h user/jstring.c user/jstring.h user/character_sets.h user/utf8.h user/utf8.c user/cgi_logging.h)

include_directories(include)
include_directories(user)
include_directories(libesphttpd/include)
include_directories(libesphttpd/espfs)
include_directories(libesphttpd/core)
include_directories(libesphttpd/lib/heatshrink)

include_directories(esp_iot_sdk_v1.5.2/include)

add_definitions(
        -D__ets__
        -DICACHE_FLASH
        -DUSE_OPTIMIZE_PRINTF=1
        -DHTTPD_MAX_CONNECTIONS=5
        -DHTTPD_STACKSIZE=1000
        -DICACHE_FLASH_ATTR=
        -DICACHE_RODATA_ATTR=
        -DFLAG_GZIP=2
        -DADMIN_PASSWORD="asdf"
        -DGIT_HASH="blabla"
        -DDEBUG_HEAP=1
        -DDEBUG_MALLOC=1
        -DESPFS_HEATSHRINK)

add_executable(ESPTerm ${SOURCE_FILES})
