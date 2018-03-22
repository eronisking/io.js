#ifndef INCLUDE_HTTP_PARSER_H_
#define INCLUDE_HTTP_PARSER_H_

#define HTTP_PARSER_VERSION_MAJOR 1
#define HTTP_PARSER_VERSION_MINOR 0
#define HTTP_PARSER_VERSION_PATCH 0

#ifndef INCLUDE_HTTP_PARSER_ITSELF_H_
#define INCLUDE_HTTP_PARSER_ITSELF_H_
#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

typedef struct http_parser_s http_parser_t;
struct http_parser_s {
  int32_t _index;
  void* _span_pos0;
  void* _span_cb0;
  int32_t error;
  const char* reason;
  const char* error_pos;
  void* data;
  void* _current;
  int64_t content_length;
  int8_t type;
  int8_t method;
  int8_t http_major;
  int8_t http_minor;
  int8_t header_state;
  int8_t flags;
  int8_t upgrade;
  int16_t status_code;
  int8_t finish;
  void* settings;
};

int http_parser_init(http_parser_t* s);
int http_parser_execute(http_parser_t* s, const char* p, const char* endp);

#ifdef __cplusplus
}  /* extern "C" */
#endif
#endif  /* INCLUDE_HTTP_PARSER_ITSELF_H_ */

#ifndef LLHTTP_PARSER_C_HEADERS_
#define LLHTTP_PARSER_C_HEADERS_
#ifdef __cplusplus
extern "C" {
#endif

enum http_parser_errno {
  HPE_OK = 0,
  HPE_INTERNAL = 1,
  HPE_STRICT = 2,
  HPE_LF_EXPECTED = 3,
  HPE_UNEXPECTED_CONTENT_LENGTH = 4,
  HPE_CLOSED_CONNECTION = 5,
  HPE_INVALID_METHOD = 6,
  HPE_INVALID_URL = 7,
  HPE_INVALID_CONSTANT = 8,
  HPE_INVALID_VERSION = 9,
  HPE_INVALID_HEADER_TOKEN = 10,
  HPE_INVALID_CONTENT_LENGTH = 11,
  HPE_INVALID_CHUNK_SIZE = 12,
  HPE_INVALID_STATUS = 13,
  HPE_INVALID_EOF_STATE = 14,
  HPE_CB_MESSAGE_BEGIN = 15,
  HPE_CB_HEADERS_COMPLETE = 16,
  HPE_CB_MESSAGE_COMPLETE = 17,
  HPE_CB_CHUNK_HEADER = 18,
  HPE_CB_CHUNK_COMPLETE = 19,
  HPE_PAUSED = 20,
  HPE_PAUSED_UPGRADE = 21
};

enum http_parser_flags {
  F_CONNECTION_KEEP_ALIVE = 0x1,
  F_CONNECTION_CLOSE = 0x2,
  F_CONNECTION_UPGRADE = 0x4,
  F_CHUNKED = 0x8,
  F_UPGRADE = 0x10,
  F_CONTENT_LENGTH = 0x20,
  F_SKIPBODY = 0x40,
  F_TRAILING = 0x80
};

enum http_parser_type {
  HTTP_BOTH = 0,
  HTTP_REQUEST = 1,
  HTTP_RESPONSE = 2
};

enum http_parser_finish {
  HTTP_FINISH_SAFE = 0,
  HTTP_FINISH_SAFE_WITH_CB = 1,
  HTTP_FINISH_UNSAFE = 2
};

enum http_parser_method {
  HTTP_DELETE = 0,
  HTTP_GET = 1,
  HTTP_HEAD = 2,
  HTTP_POST = 3,
  HTTP_PUT = 4,
  HTTP_CONNECT = 5,
  HTTP_OPTIONS = 6,
  HTTP_TRACE = 7,
  HTTP_COPY = 8,
  HTTP_LOCK = 9,
  HTTP_MKCOL = 10,
  HTTP_MOVE = 11,
  HTTP_PROPFIND = 12,
  HTTP_PROPPATCH = 13,
  HTTP_SEARCH = 14,
  HTTP_UNLOCK = 15,
  HTTP_BIND = 16,
  HTTP_REBIND = 17,
  HTTP_UNBIND = 18,
  HTTP_ACL = 19,
  HTTP_REPORT = 20,
  HTTP_MKACTIVITY = 21,
  HTTP_CHECKOUT = 22,
  HTTP_MERGE = 23,
  HTTP_MSEARCH = 24,
  HTTP_NOTIFY = 25,
  HTTP_SUBSCRIBE = 26,
  HTTP_UNSUBSCRIBE = 27,
  HTTP_PATCH = 28,
  HTTP_PURGE = 29,
  HTTP_MKCALENDAR = 30,
  HTTP_LINK = 31,
  HTTP_UNLINK = 32,
  HTTP_SOURCE = 33
};

#define HTTP_ERRNO_MAP(XX) \
  XX(0, OK, OK) \
  XX(1, INTERNAL, INTERNAL) \
  XX(2, STRICT, STRICT) \
  XX(3, LF_EXPECTED, LF_EXPECTED) \
  XX(4, UNEXPECTED_CONTENT_LENGTH, UNEXPECTED_CONTENT_LENGTH) \
  XX(5, CLOSED_CONNECTION, CLOSED_CONNECTION) \
  XX(6, INVALID_METHOD, INVALID_METHOD) \
  XX(7, INVALID_URL, INVALID_URL) \
  XX(8, INVALID_CONSTANT, INVALID_CONSTANT) \
  XX(9, INVALID_VERSION, INVALID_VERSION) \
  XX(10, INVALID_HEADER_TOKEN, INVALID_HEADER_TOKEN) \
  XX(11, INVALID_CONTENT_LENGTH, INVALID_CONTENT_LENGTH) \
  XX(12, INVALID_CHUNK_SIZE, INVALID_CHUNK_SIZE) \
  XX(13, INVALID_STATUS, INVALID_STATUS) \
  XX(14, INVALID_EOF_STATE, INVALID_EOF_STATE) \
  XX(15, CB_MESSAGE_BEGIN, CB_MESSAGE_BEGIN) \
  XX(16, CB_HEADERS_COMPLETE, CB_HEADERS_COMPLETE) \
  XX(17, CB_MESSAGE_COMPLETE, CB_MESSAGE_COMPLETE) \
  XX(18, CB_CHUNK_HEADER, CB_CHUNK_HEADER) \
  XX(19, CB_CHUNK_COMPLETE, CB_CHUNK_COMPLETE) \
  XX(20, PAUSED, PAUSED) \
  XX(21, PAUSED_UPGRADE, PAUSED_UPGRADE) \


#define HTTP_METHOD_MAP(XX) \
  XX(0, DELETE, DELETE) \
  XX(1, GET, GET) \
  XX(2, HEAD, HEAD) \
  XX(3, POST, POST) \
  XX(4, PUT, PUT) \
  XX(5, CONNECT, CONNECT) \
  XX(6, OPTIONS, OPTIONS) \
  XX(7, TRACE, TRACE) \
  XX(8, COPY, COPY) \
  XX(9, LOCK, LOCK) \
  XX(10, MKCOL, MKCOL) \
  XX(11, MOVE, MOVE) \
  XX(12, PROPFIND, PROPFIND) \
  XX(13, PROPPATCH, PROPPATCH) \
  XX(14, SEARCH, SEARCH) \
  XX(15, UNLOCK, UNLOCK) \
  XX(16, BIND, BIND) \
  XX(17, REBIND, REBIND) \
  XX(18, UNBIND, UNBIND) \
  XX(19, ACL, ACL) \
  XX(20, REPORT, REPORT) \
  XX(21, MKACTIVITY, MKACTIVITY) \
  XX(22, CHECKOUT, CHECKOUT) \
  XX(23, MERGE, MERGE) \
  XX(24, MSEARCH, M-SEARCH) \
  XX(25, NOTIFY, NOTIFY) \
  XX(26, SUBSCRIBE, SUBSCRIBE) \
  XX(27, UNSUBSCRIBE, UNSUBSCRIBE) \
  XX(28, PATCH, PATCH) \
  XX(29, PURGE, PURGE) \
  XX(30, MKCALENDAR, MKCALENDAR) \
  XX(31, LINK, LINK) \
  XX(32, UNLINK, UNLINK) \
  XX(33, SOURCE, SOURCE) \



#ifdef __cplusplus
}  /* extern "C" */
#endif
#endif  /* LLHTTP_PARSER_C_HEADERS_ */

#ifndef INCLUDE_HTTP_PARSER_API_H_
#define INCLUDE_HTTP_PARSER_API_H_
#ifdef __cplusplus
extern "C" {
#endif

typedef int (*http_parser_data_cb)(http_parser_t*, const char *at,
                                   size_t length);
typedef int (*http_parser_cb)(http_parser_t*);

typedef struct http_parser_settings_s http_parser_settings_t;

struct http_parser_settings_s {
  http_parser_cb      on_message_begin;
  http_parser_data_cb on_url;
  http_parser_data_cb on_status;
  http_parser_data_cb on_header_field;
  http_parser_data_cb on_header_value;
  http_parser_cb      on_headers_complete;
  http_parser_data_cb on_body;
  http_parser_cb      on_message_complete;
  /* When on_chunk_header is called, the current chunk length is stored
   * in parser->content_length.
   */
  http_parser_cb      on_chunk_header;
  http_parser_cb      on_chunk_complete;
};

void http_parser_set_type(http_parser_t* parser, enum http_parser_type type);
void http_parser_set_settings(http_parser_t* parser,
                              const http_parser_settings_t* settings);
void http_parser_settings_init(http_parser_settings_t* settings);

int http_parser_message_needs_eof(const http_parser_t* parser);
int http_parser_should_keep_alive(const http_parser_t* parser);
int http_parser_finish(http_parser_t* parser);
void http_parser_resume(http_parser_t* parser);
void http_parser_resume_after_upgrade(http_parser_t* parser);

const char* http_parser_errno_name(enum http_parser_errno err);

#ifdef __cplusplus
}  /* extern "C" */
#endif
#endif  /* INCLUDE_HTTP_PARSER_API_H_ */

#endif  /* INCLUDE_HTTP_PARSER_H_ */
