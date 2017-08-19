#ifndef CGI_SOCKETS_H
#define CGI_SOCKETS_H

#define URL_WS_UPDATE "/term/update.ws"

#include <cgiwebsocket.h>
#include "screen.h"

/** Update websocket connect callback */
void updateSockConnect(Websock *ws);
void screen_notifyChange(ScreenNotifyChangeTopic topic);

void send_beep(void);

// defined in the makefile
#if DEBUG_INPUT
#define ws_warn warn
#define ws_dbg dbg
#define ws_info info
#else
#define ws_warn(...)
#define ws_dbg(...)
#define ws_info(...)
#endif

#endif //CGI_SOCKETS_H
