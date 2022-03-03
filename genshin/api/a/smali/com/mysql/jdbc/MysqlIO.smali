.class public Lcom/mysql/jdbc/MysqlIO;
.super Ljava/lang/Object;
.source "MysqlIO.java"


# static fields
.field protected static final AUTH_411_OVERHEAD:I = 0x21

.field private static final CLIENT_CAN_HANDLE_EXPIRED_PASSWORD:I = 0x400000

.field private static final CLIENT_COMPRESS:I = 0x20

.field private static final CLIENT_CONNECT_ATTRS:I = 0x100000

.field protected static final CLIENT_CONNECT_WITH_DB:I = 0x8

.field private static final CLIENT_DEPRECATE_EOF:I = 0x1000000

.field private static final CLIENT_FOUND_ROWS:I = 0x2

.field private static final CLIENT_INTERACTIVE:I = 0x400

.field private static final CLIENT_LOCAL_FILES:I = 0x80

.field private static final CLIENT_LONG_FLAG:I = 0x4

.field private static final CLIENT_LONG_PASSWORD:I = 0x1

.field private static final CLIENT_MULTI_RESULTS:I = 0x20000

.field private static final CLIENT_MULTI_STATEMENTS:I = 0x10000

.field private static final CLIENT_PLUGIN_AUTH:I = 0x80000

.field private static final CLIENT_PLUGIN_AUTH_LENENC_CLIENT_DATA:I = 0x200000

.field private static final CLIENT_PROTOCOL_41:I = 0x200

.field protected static final CLIENT_RESERVED:I = 0x4000

.field protected static final CLIENT_SECURE_CONNECTION:I = 0x8000

.field private static final CLIENT_SESSION_TRACK:I = 0x800000

.field protected static final CLIENT_SSL:I = 0x800

.field private static final CLIENT_TRANSACTIONS:I = 0x2000

.field private static final CODE_PAGE_1252:Ljava/lang/String; = "Cp1252"

.field protected static final COMP_HEADER_LENGTH:I = 0x3

.field private static final EXPLAINABLE_STATEMENT:Ljava/lang/String; = "SELECT"

.field private static final EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

.field private static final FALSE_SCRAMBLE:Ljava/lang/String; = "xxxxxxxx"

.field protected static final HEADER_LENGTH:I = 0x4

.field protected static final INITIAL_PACKET_SIZE:I = 0x400

.field private static final MAX_PACKET_DUMP_LENGTH:I = 0x400

.field protected static final MAX_QUERY_SIZE_TO_EXPLAIN:I = 0x100000

.field protected static final MAX_QUERY_SIZE_TO_LOG:I = 0x400

.field protected static final MIN_COMPRESS_LEN:I = 0x32

.field private static final NONE:Ljava/lang/String; = "none"

.field protected static final NULL_LENGTH:I = -0x1

.field public static final SEED_LENGTH:I = 0x14

.field static final SERVER_MORE_RESULTS_EXISTS:I = 0x8

.field private static final SERVER_QUERY_NO_GOOD_INDEX_USED:I = 0x10

.field private static final SERVER_QUERY_NO_INDEX_USED:I = 0x20

.field private static final SERVER_QUERY_WAS_SLOW:I = 0x800

.field private static final SERVER_STATUS_AUTOCOMMIT:I = 0x2

.field private static final SERVER_STATUS_CURSOR_EXISTS:I = 0x40

.field private static final SERVER_STATUS_IN_TRANS:I = 0x1

.field protected static final ZERO_DATETIME_VALUE_MARKER:Ljava/lang/String; = "0000-00-00 00:00:00"

.field protected static final ZERO_DATE_VALUE_MARKER:Ljava/lang/String; = "0000-00-00"

.field private static jvmPlatformCharset:Ljava/lang/String;

.field private static maxBufferSize:I


# instance fields
.field private authPluginDataLength:I

.field private authenticationPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/AuthenticationPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private autoGenerateTestcaseScript:Z

.field private checkPacketSequence:Z

.field private clientDefaultAuthenticationPlugin:Ljava/lang/String;

.field private clientDefaultAuthenticationPluginName:Ljava/lang/String;

.field protected clientParam:J

.field private colDecimalNeedsBump:Z

.field private commandCount:I

.field private compressBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private compressedPacketSequence:B

.field protected connection:Lcom/mysql/jdbc/MySQLConnection;

.field private deflater:Ljava/util/zip/Deflater;

.field private disabledAuthenticationPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enablePacketDebug:Z

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private hadWarnings:Z

.field private has41NewNewProt:Z

.field private hasLongColumnInfo:Z

.field protected host:Ljava/lang/String;

.field private isInteractiveClient:Z

.field protected lastPacketReceivedTimeMs:J

.field protected lastPacketSentTimeMs:J

.field private loadFileBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private logSlowQueries:Z

.field private maxAllowedPacket:I

.field protected maxThreeBytes:I

.field public mysqlConnection:Ljava/net/Socket;

.field protected mysqlInput:Ljava/io/InputStream;

.field protected mysqlOutput:Ljava/io/BufferedOutputStream;

.field private needToGrabQueryFromPacket:Z

.field private oldServerStatus:I

.field private packetDebugRingBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private packetHeaderBuf:[B

.field private packetSequence:B

.field private packetSequenceReset:Z

.field private platformDbCharsetMatches:Z

.field protected port:I

.field private profileSql:Z

.field private protocolVersion:B

.field private queryBadIndexUsed:Z

.field private queryNoIndexUsed:Z

.field private queryTimingUnits:Ljava/lang/String;

.field private readPacketSequence:B

.field private reusablePacket:Lcom/mysql/jdbc/Buffer;

.field protected seed:Ljava/lang/String;

.field private sendPacket:Lcom/mysql/jdbc/Buffer;

.field protected serverCapabilities:I

.field protected serverCharsetIndex:I

.field private serverDefaultAuthenticationPluginName:Ljava/lang/String;

.field private serverMajorVersion:I

.field private serverMinorVersion:I

.field private serverQueryWasSlow:Z

.field private serverStatus:I

.field private serverSubMinorVersion:I

.field private serverVersion:Ljava/lang/String;

.field private sharedSendPacket:Lcom/mysql/jdbc/Buffer;

.field private slowQueryThreshold:J

.field protected socketFactory:Lcom/mysql/jdbc/SocketFactory;

.field private socketFactoryClassName:Ljava/lang/String;

.field private splitBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private statementExecutionDepth:I

.field private statementInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private streamingData:Lcom/mysql/jdbc/RowData;

.field private threadId:J

.field private traceProtocol:Z

.field private use41Extensions:Z

.field private useAutoSlowLog:Z

.field private useBufferRowSizeThreshold:I

.field private useCompression:Z

.field private useConnectWithDb:Z

.field private useDirectRowUnpack:Z

.field private useNanosForElapsedTime:Z

.field private useNewLargePackets:Z

.field private useNewUpdateCounts:Z

.field private warningCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    const v0, 0xffff

    sput v0, Lcom/mysql/jdbc/MysqlIO;->maxBufferSize:I

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;

    .line 127
    const-string v0, "INSERT"

    const-string v1, "UPDATE"

    const-string v2, "REPLACE"

    const-string v3, "DELETE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MysqlIO;->EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 137
    .local v0, "outWriter":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 138
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    nop

    .line 148
    nop

    .line 141
    nop

    .line 142
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 146
    :goto_0
    nop

    .line 147
    nop

    .line 148
    .end local v0    # "outWriter":Ljava/io/OutputStreamWriter;
    return-void

    .line 140
    .restart local v0    # "outWriter":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v1

    .line 146
    nop

    .line 141
    if-eqz v0, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 144
    :catch_1
    move-exception v2

    goto :goto_2

    .line 146
    :cond_0
    :goto_1
    nop

    :goto_2
    nop

    .line 140
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;II)V
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "socketFactoryClassName"    # Ljava/lang/String;
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "socketTimeout"    # I
    .param p7, "useBufferRowSizeThreshold"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 159
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 160
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 163
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 165
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 166
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 167
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    .line 168
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    .line 171
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 172
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 187
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    .line 191
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    .line 192
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 193
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 194
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 197
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    .line 198
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    .line 199
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    .line 206
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    .line 207
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 208
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 209
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 212
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 213
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 214
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    .line 215
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    .line 216
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 217
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 218
    const/4 v3, -0x1

    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 219
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 220
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    .line 221
    const/high16 v3, 0x100000

    iput v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    .line 222
    const v3, 0xfd02ff

    iput v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 223
    const/16 v3, 0xcea

    iput v3, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    .line 225
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    .line 226
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I

    .line 227
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 228
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 229
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I

    .line 230
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 231
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 232
    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    .line 233
    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    .line 234
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    .line 235
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    .line 243
    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    .line 245
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    .line 248
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    .line 1381
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    .line 1386
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    .line 1390
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    .line 1394
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1398
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 2549
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 274
    iput-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 276
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    .line 281
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    .line 283
    iput p7, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    .line 284
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseDirectRowUnpack()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    .line 286
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    .line 288
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    const/16 v3, 0x400

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 289
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 291
    iput p2, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    .line 292
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    .line 294
    iput-object p4, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->createSocketFactory()Lcom/mysql/jdbc/SocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 296
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    invoke-interface {v1, v3, v4, p3}, Lcom/mysql/jdbc/SocketFactory;->connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    if-eqz p6, :cond_1

    .line 303
    :try_start_1
    invoke-virtual {v1, p6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 309
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v1}, Lcom/mysql/jdbc/SocketFactory;->beforeHandshake()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 311
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseReadAheadInput()Z

    move-result v1

    const/16 v3, 0x4000

    if-eqz v1, :cond_2

    .line 312
    new-instance v1, Lcom/mysql/jdbc/util/ReadAheadInputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v6

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/mysql/jdbc/util/ReadAheadInputStream;-><init>(Ljava/io/InputStream;IZLcom/mysql/jdbc/log/Log;)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto :goto_1

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->useUnbufferedInput()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto :goto_1

    .line 317
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 320
    :goto_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 322
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getInteractiveClient()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    .line 323
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    .line 324
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    .line 326
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->needToGrabQueryFromPacket:Z

    .line 328
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/mysql/jdbc/TimeUtil;->nanoTimeAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    .line 329
    if-eqz v0, :cond_7

    const-string v0, "Nanoseconds"

    goto :goto_4

    :cond_7
    const-string v0, "Milliseconds"

    :goto_4
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 332
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->calculateSlowQueryThreshold()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 336
    :cond_8
    nop

    .line 337
    return-void

    .line 334
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 335
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z
    .locals 8
    .param p1, "plugin"    # Lcom/mysql/jdbc/AuthenticationPlugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, "isDefault":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1505
    .local v1, "pluginClassName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, "pluginProtocolName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1507
    .local v3, "disabledByClassName":Z
    :goto_0
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    if-eqz v6, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1509
    .local v6, "disabledByMechanism":Z
    :goto_1
    if-nez v3, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1516
    :cond_2
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1518
    iput-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1519
    const/4 v0, 0x1

    goto :goto_4

    .line 1511
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1512
    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_4

    move-object v7, v1

    goto :goto_3

    :cond_4
    move-object v7, v2

    :goto_3
    aput-object v7, v4, v5

    const-string v5, "Connection.BadDisabledAuthenticationPlugin"

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1522
    :cond_5
    :goto_4
    return v0
.end method

.method private adjustStartForFieldLength(II)I
    .locals 2
    .param p1, "nameStart"    # I
    .param p2, "nameLength"    # I

    .line 757
    const/16 v0, 0xfb

    if-ge p2, v0, :cond_0

    .line 758
    return p1

    .line 761
    :cond_0
    const/high16 v1, 0x10000

    if-lt p2, v0, :cond_1

    if-ge p2, v1, :cond_1

    .line 762
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 765
    :cond_1
    if-lt p2, v1, :cond_2

    const/high16 v0, 0x1000000

    if-ge p2, v0, :cond_2

    .line 766
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 769
    :cond_2
    add-int/lit8 v0, p1, 0x8

    return v0
.end method

.method private alignPacketSize(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "l"    # I

    .line 3078
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p2, -0x1

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method private appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V
    .locals 4
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4999
    const/4 v0, 0x0

    .line 5000
    .local v0, "charsetIndex":I
    if-eqz p2, :cond_0

    .line 5001
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p2, v1}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v0

    .line 5003
    :cond_0
    if-nez v0, :cond_1

    .line 5004
    const/16 v0, 0x21

    .line 5006
    :cond_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 5010
    int-to-byte v1, v0

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 5011
    return-void

    .line 5007
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character set index for encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private appendDeadlockStatusInformation(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "xOpen"    # Ljava/lang/String;
    .param p2, "errorBuf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3954
    const-string v0, "\n\n"

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeInnodbStatusInDeadlockExceptions()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    const-string v1, "40"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "41"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez v1, :cond_4

    .line 3956
    const/4 v1, 0x0

    .line 3959
    .local v1, "rs":Ljava/sql/ResultSet;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SHOW ENGINE INNODB STATUS"

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x3eb

    const/16 v9, 0x3ef

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2

    move-object v1, v2

    .line 3962
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3963
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    const-string v2, "Status"

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3966
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    const-string v2, "MysqlIO.NoInnoDBStatusFound"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3969
    :goto_0
    nop

    .line 4040
    if-eqz v1, :cond_2

    .line 3976
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    goto :goto_1

    .line 3975
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3969
    :catch_0
    move-exception v2

    .line 3970
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    const-string v3, "MysqlIO.InnoDBStatusFailed"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3972
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3973
    invoke-static {v2}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3974
    nop

    .line 3976
    .end local v2    # "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    :goto_1
    nop

    .line 3978
    goto :goto_3

    .line 3976
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 3975
    :cond_3
    throw v0

    .line 3981
    .end local v1    # "rs":Ljava/sql/ResultSet;
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadDumpInDeadlockExceptions()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3982
    const-string v0, "\n\n*** Java threads running at time of deadlock ***\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3984
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    .line 3985
    .local v0, "threadMBean":Ljava/lang/management/ThreadMXBean;
    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->getAllThreadIds()[J

    move-result-object v1

    .line 3987
    .local v1, "threadIds":[J
    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Ljava/lang/management/ThreadMXBean;->getThreadInfo([JI)[Ljava/lang/management/ThreadInfo;

    move-result-object v2

    .line 3988
    .local v2, "threads":[Ljava/lang/management/ThreadInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3990
    .local v3, "activeThreads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/management/ThreadInfo;>;"
    move-object v4, v2

    .local v4, "arr$":[Ljava/lang/management/ThreadInfo;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 3991
    .local v7, "info":Ljava/lang/management/ThreadInfo;
    if-eqz v7, :cond_5

    .line 3992
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3990
    .end local v7    # "info":Ljava/lang/management/ThreadInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 3996
    .end local v4    # "arr$":[Ljava/lang/management/ThreadInfo;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/management/ThreadInfo;

    .line 3999
    .local v5, "threadInfo":Ljava/lang/management/ThreadInfo;
    const/16 v6, 0x22

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4000
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4001
    const-string v6, "\" tid="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4002
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4003
    const-string v6, " "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4006
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 4007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " on lock="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    :cond_7
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->isSuspended()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4010
    const-string v6, " (suspended)"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4012
    :cond_8
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->isInNative()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4013
    const-string v6, " (running in native)"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    :cond_9
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 4018
    .local v6, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v7, v6

    if-lez v7, :cond_a

    .line 4019
    const-string v7, " in "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    const-string v8, "."

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4023
    const-string v7, "()"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    :cond_a
    const-string v7, "\n"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4028
    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 4029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t owned by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    :cond_b
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6
    array-length v9, v6

    if-ge v8, v9, :cond_c

    .line 4034
    aget-object v9, v6, v8

    .line 4035
    .local v9, "ste":Ljava/lang/StackTraceElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\tat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    .end local v9    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 4038
    .end local v5    # "threadInfo":Ljava/lang/management/ThreadInfo;
    .end local v6    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v8    # "j":I
    :cond_c
    goto/16 :goto_5

    .line 4040
    .end local v0    # "threadMBean":Ljava/lang/management/ThreadMXBean;
    .end local v1    # "threadIds":[J
    .end local v2    # "threads":[Ljava/lang/management/ThreadInfo;
    .end local v3    # "activeThreads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/management/ThreadInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_d
    return-void
.end method

.method private buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p4, "rows"    # Lcom/mysql/jdbc/RowData;
    .param p5, "resultSetType"    # I
    .param p6, "resultSetConcurrency"    # I
    .param p7, "isBinaryEncoded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3083
    const/4 v0, 0x0

    .line 3085
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetImpl;
    packed-switch p6, :pswitch_data_0

    .line 3101
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    return-object v1

    .line 3096
    :pswitch_0
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 3098
    goto :goto_0

    .line 3087
    :pswitch_1
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 3089
    if-eqz p7, :cond_0

    .line 3090
    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetImpl;->setBinaryEncoded()V

    .line 3104
    :cond_0
    :goto_0
    invoke-virtual {v0, p5}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetType(I)V

    .line 3105
    invoke-virtual {v0, p6}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetConcurrency(I)V

    .line 3107
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 11
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "resultPacket"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3111
    const-wide/16 v0, -0x1

    .line 3112
    .local v0, "updateCount":J
    const-wide/16 v2, -0x1

    .line 3113
    .local v2, "updateID":J
    const/4 v4, 0x0

    .line 3116
    .local v4, "info":Ljava/lang/String;
    :try_start_0
    iget-boolean v5, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    if-eqz v5, :cond_0

    .line 3117
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    move-result-wide v5

    move-wide v0, v5

    .line 3118
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    move-result-wide v5

    move-wide v2, v5

    goto :goto_0

    .line 3120
    :cond_0
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readLength()J

    move-result-wide v5

    move-wide v0, v5

    .line 3121
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readLength()J

    move-result-wide v5

    move-wide v2, v5

    .line 3124
    :goto_0
    iget-boolean v5, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v5, :cond_2

    .line 3126
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3128
    iget v5, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v5}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3130
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3132
    if-lez v5, :cond_1

    .line 3133
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3136
    :cond_1
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3138
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 3141
    :cond_2
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3142
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 3150
    :cond_3
    nop

    .line 3152
    iget-object v9, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-wide v5, v0

    move-wide v7, v2

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v5

    .line 3154
    .local v5, "updateRs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v4, :cond_4

    .line 3155
    move-object v6, v5

    check-cast v6, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v6, v4}, Lcom/mysql/jdbc/ResultSetImpl;->setServerInfo(Ljava/lang/String;)V

    .line 3158
    :cond_4
    move-object v6, v5

    check-cast v6, Lcom/mysql/jdbc/ResultSetImpl;

    return-object v6

    .line 3144
    .end local v5    # "updateRs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catch_0
    move-exception v5

    .line 3145
    .local v5, "ex":Ljava/lang/Exception;
    const-string v6, "S1000"

    invoke-static {v6}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v7, v6, v8, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .line 3147
    .local v6, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v6, v5}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3149
    throw v6
.end method

.method private calculateSlowQueryThreshold()V
    .locals 6

    .line 2860
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    .line 2862
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2863
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdNanos()J

    move-result-wide v0

    .line 2865
    .local v0, "nanosThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2866
    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    goto :goto_0

    .line 2868
    :cond_0
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    .line 2871
    .end local v0    # "nanosThreshold":J
    :cond_1
    :goto_0
    return-void
.end method

.method private changeDatabaseTo(Ljava/lang/String;)V
    .locals 17
    .param p1, "database"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1951
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1956
    :cond_0
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    goto :goto_0

    .line 1957
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v15, v1

    .line 1958
    .local v15, "ex":Ljava/lang/Exception;
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    const/4 v2, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE DATABASE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 1960
    const/4 v2, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 1966
    .end local v15    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1962
    .restart local v15    # "ex":Ljava/lang/Exception;
    :cond_1
    iget-object v10, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v11, v8, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v13, v8, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v16

    invoke-static/range {v10 .. v16}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1952
    .end local v15    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/mysql/jdbc/AuthenticationPlugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1567
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->requiresConfidentiality()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1568
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Connection.AuthenticationPluginRequiresSSL"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1571
    :cond_1
    :goto_0
    return-void
.end method

.method private checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;
    .locals 9
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3854
    const/4 v0, 0x0

    .line 3855
    .local v0, "resultPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v1, 0x0

    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3860
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3867
    nop

    .line 3869
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    .line 3871
    return-object v0

    .line 3864
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 3865
    .local v7, "fallThru":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 3861
    .end local v7    # "fallThru":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3863
    .local v1, "sqlEx":Ljava/sql/SQLException;
    throw v1
.end method

.method private checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V
    .locals 17
    .param p1, "resultPacket"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3876
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    .line 3879
    .local v2, "statusCode":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 3881
    const/16 v4, 0x7d0

    .line 3883
    .local v4, "errno":I
    iget-byte v5, v0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v6, 0x9

    const-string v7, "\""

    if-le v5, v6, :cond_6

    .line 3884
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v3

    .line 3886
    .end local v4    # "errno":I
    .local v3, "errno":I
    const/4 v4, 0x0

    .line 3888
    .local v4, "xOpen":Ljava/lang/String;
    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v5

    .line 3890
    .local v5, "serverErrorMessage":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x23

    if-ne v6, v8, :cond_1

    .line 3893
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x6

    if-le v6, v8, :cond_0

    .line 3894
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3895
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3897
    const-string v6, "HY000"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3898
    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v6

    invoke-static {v3, v6}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3901
    :cond_0
    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v6

    invoke-static {v3, v6}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3904
    :cond_1
    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v6

    invoke-static {v3, v6}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v4

    .line 3907
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3911
    .local v6, "errorBuf":Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3913
    .local v15, "xOpenErrorMessage":Ljava/lang/String;
    iget-object v8, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3914
    if-eqz v15, :cond_3

    .line 3915
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3916
    const-string v8, "MysqlIO.68"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3920
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3922
    iget-object v8, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result v8

    if-nez v8, :cond_4

    .line 3923
    if-eqz v15, :cond_4

    .line 3924
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3928
    :cond_4
    invoke-direct {v0, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->appendDeadlockStatusInformation(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3930
    if-eqz v4, :cond_5

    const-string v7, "22"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3931
    new-instance v7, Lcom/mysql/jdbc/MysqlDataTruncation;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v7

    move-object/from16 v16, v15

    .end local v15    # "xOpenErrorMessage":Ljava/lang/String;
    .local v16, "xOpenErrorMessage":Ljava/lang/String;
    move v15, v3

    invoke-direct/range {v8 .. v15}, Lcom/mysql/jdbc/MysqlDataTruncation;-><init>(Ljava/lang/String;IZZIII)V

    throw v7

    .line 3930
    .end local v16    # "xOpenErrorMessage":Ljava/lang/String;
    .restart local v15    # "xOpenErrorMessage":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v15

    .line 3933
    .end local v15    # "xOpenErrorMessage":Ljava/lang/String;
    .restart local v16    # "xOpenErrorMessage":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    iget-object v13, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v9, v4

    move v10, v3

    invoke-static/range {v8 .. v13}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v7

    throw v7

    .line 3936
    .end local v3    # "errno":I
    .end local v5    # "serverErrorMessage":Ljava/lang/String;
    .end local v6    # "errorBuf":Ljava/lang/StringBuilder;
    .end local v16    # "xOpenErrorMessage":Ljava/lang/String;
    .local v4, "errno":I
    :cond_6
    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v5

    .line 3937
    .restart local v5    # "serverErrorMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3939
    const-string v6, "MysqlIO.70"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v8, ", "

    if-eq v6, v3, :cond_7

    .line 3940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "S0022"

    invoke-static {v6}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    iget-object v14, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v10, "S0022"

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 3944
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "MysqlIO.72"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3945
    .local v3, "errorBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S1000"

    invoke-static {v7}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    iget-object v13, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v9, "S1000"

    invoke-static/range {v8 .. v13}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6

    .line 3951
    .end local v3    # "errorBuf":Ljava/lang/StringBuilder;
    .end local v4    # "errno":I
    .end local v5    # "serverErrorMessage":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private checkForOutstandingStreamingData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3168
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_1

    .line 3169
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v0

    .line 3171
    .local v0, "shouldClobber":Z
    if-eqz v0, :cond_0

    .line 3177
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 3180
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    goto :goto_0

    .line 3172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.39"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "MysqlIO.40"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MysqlIO.41"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MysqlIO.42"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 3182
    .end local v0    # "shouldClobber":Z
    :cond_1
    :goto_0
    return-void
.end method

.method private checkPacketSequencing(B)V
    .locals 10
    .param p1, "multiPacketSeq"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3592
    const/16 v0, -0x80

    if-ne p1, v0, :cond_1

    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3593
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v6, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v8, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packets out of order, expected packet # -128, but received packet # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3597
    :cond_1
    :goto_0
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 3598
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v6, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v8, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packets out of order, expected packet # -1, but received packet # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3602
    :cond_3
    :goto_1
    if-eq p1, v0, :cond_5

    if-eq v1, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 3603
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v7, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packets out of order, expected packet # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but received packet # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3607
    :cond_5
    :goto_2
    return-void
.end method

.method private checkTransactionState(I)V
    .locals 3
    .param p1, "oldStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4927
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4928
    .local v0, "previouslyInTrans":Z
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v1

    .line 4930
    .local v1, "currentlyInTrans":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 4931
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->transactionCompleted()V

    goto :goto_1

    .line 4932
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 4933
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->transactionBegun()V

    .line 4935
    :cond_2
    :goto_1
    return-void
.end method

.method private compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;
    .locals 6
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "offset"    # I
    .param p3, "packetLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3197
    move v0, p3

    .line 3198
    .local v0, "compressedLength":I
    const/4 v1, 0x0

    .line 3199
    .local v1, "uncompressedLength":I
    const/4 v2, 0x0

    .line 3200
    .local v2, "compressedBytes":[B
    move v3, p2

    .line 3202
    .local v3, "offsetWrite":I
    const/16 v4, 0x32

    if-ge p3, v4, :cond_0

    .line 3203
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    goto :goto_0

    .line 3206
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    .line 3207
    .local v4, "bytesToCompress":[B
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    .line 3209
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    if-nez v5, :cond_1

    .line 3210
    new-instance v5, Ljava/util/zip/Deflater;

    invoke-direct {v5}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 3212
    :cond_1
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->reset()V

    .line 3213
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5, v4, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 3214
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->finish()V

    .line 3216
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 3218
    if-le v0, p3, :cond_2

    .line 3220
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    .line 3221
    move v0, p3

    goto :goto_0

    .line 3223
    :cond_2
    move v1, p3

    .line 3224
    const/4 v3, 0x0

    .line 3228
    .end local v4    # "bytesToCompress":[B
    :goto_0
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v5, v0, 0x7

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3230
    .local v4, "compressedPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3231
    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3232
    iget-byte v5, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3233
    invoke-virtual {v4, v1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3234
    invoke-virtual {v4, v2, v3, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3236
    return-object v4
.end method

.method private createSocketFactory()Lcom/mysql/jdbc/SocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3281
    const-string v0, "08001"

    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3286
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/SocketFactory;

    check-cast v1, Lcom/mysql/jdbc/SocketFactory;

    return-object v1

    .line 3282
    :cond_0
    const-string v1, "MysqlIO.75"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3287
    :catch_0
    move-exception v1

    .line 3288
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MysqlIO.76"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.77"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 3291
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3293
    throw v0
.end method

.method private enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V
    .locals 15
    .param p1, "isPacketBeingSent"    # Z
    .param p2, "isPacketReused"    # Z
    .param p3, "sendLength"    # I
    .param p4, "header"    # [B
    .param p5, "packet"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3299
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p5

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPacketDebugBufferSize()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 3300
    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3303
    :cond_0
    const/4 v3, 0x0

    .line 3305
    .local v3, "packetDump":Ljava/lang/StringBuilder;
    const-string v4, " bytes.\n"

    const-string v5, " bytes truncated to "

    const-string v6, "\nNote: Packet of "

    const-string v7, "\nPacket payload:\n\n"

    const/16 v8, 0x400

    if-nez p1, :cond_3

    .line 3306
    invoke-virtual/range {p5 .. p5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3308
    .local v9, "bytesToDump":I
    new-instance v10, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v11, v9, 0x4

    invoke-direct {v10, v11}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3310
    .local v10, "packetToDump":Lcom/mysql/jdbc/Buffer;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3311
    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 3312
    invoke-virtual {v2, v11, v9}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 3314
    invoke-virtual {v10, v9}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v11

    .line 3316
    .local v11, "packetPayload":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x60

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v13

    .line 3318
    const-string v13, "Server "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3320
    if-eqz p2, :cond_1

    const-string v13, "(re-used) "

    goto :goto_0

    :cond_1
    const-string v13, "(new) "

    :goto_0
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    invoke-virtual/range {p5 .. p5}, Lcom/mysql/jdbc/Buffer;->toSuperString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    const-string v13, " --------------------> Client\n"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3327
    if-ne v9, v8, :cond_2

    .line 3328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3330
    .end local v9    # "bytesToDump":I
    .end local v10    # "packetToDump":Lcom/mysql/jdbc/Buffer;
    .end local v11    # "packetPayload":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 3331
    :cond_3
    move-object/from16 v12, p4

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3333
    .restart local v9    # "bytesToDump":I
    invoke-virtual {v2, v9}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v10

    .line 3335
    .local v10, "packetPayload":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x44

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v11

    .line 3337
    const-string v11, "Client "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    invoke-virtual/range {p5 .. p5}, Lcom/mysql/jdbc/Buffer;->toSuperString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3339
    const-string v11, "--------------------> Server\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3340
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3341
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    if-ne v9, v8, :cond_4

    .line 3344
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    .end local v9    # "bytesToDump":I
    .end local v10    # "packetPayload":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3349
    return-void
.end method

.method private final extractNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V
    .locals 5
    .param p1, "binaryData"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p3, "columnIndex"    # I
    .param p4, "unpackedRowData"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4457
    aget-object v0, p2, p3

    .line 4459
    .local v0, "curField":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    move v1, v4

    .line 4526
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MysqlIO.97"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.98"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.99"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.100"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1000"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 4492
    .end local v1    # "length":I
    :sswitch_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v1

    long-to-int v2, v1

    .line 4494
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v1

    aput-object v1, p4, p3

    .line 4496
    goto :goto_0

    .line 4459
    .end local v2    # "length":I
    :sswitch_1
    move v1, v4

    .line 4499
    .restart local v1    # "length":I
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    long-to-int v1, v2

    .line 4501
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v2

    aput-object v2, p4, p3

    .line 4503
    goto :goto_0

    .line 4480
    .end local v1    # "length":I
    :sswitch_2
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v1

    aput-object v1, p4, p3

    .line 4481
    goto :goto_0

    .line 4459
    :sswitch_3
    move v1, v4

    .line 4506
    .restart local v1    # "length":I
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    long-to-int v1, v2

    .line 4508
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v2

    aput-object v2, p4, p3

    .line 4509
    goto :goto_0

    .line 4461
    .end local v1    # "length":I
    :sswitch_4
    goto :goto_0

    .line 4488
    :sswitch_5
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v1

    aput-object v1, p4, p3

    .line 4489
    goto :goto_0

    .line 4484
    :sswitch_6
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v1

    aput-object v1, p4, p3

    .line 4485
    goto :goto_0

    .line 4476
    :sswitch_7
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v1

    aput-object v1, p4, p3

    .line 4477
    goto :goto_0

    .line 4471
    :sswitch_8
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v1

    aput-object v1, p4, p3

    .line 4472
    goto :goto_0

    .line 4465
    :sswitch_9
    const/4 v1, 0x1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    aput-byte v2, v1, v4

    aput-object v1, p4, p3

    .line 4466
    goto :goto_0

    .line 4459
    :sswitch_a
    move v1, v4

    .line 4522
    .restart local v1    # "length":I
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v2

    aput-object v2, p4, p3

    .line 4524
    nop

    .line 4531
    .end local v1    # "length":I
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_3
        0xd -> :sswitch_8
        0xf -> :sswitch_a
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_a
        0xf6 -> :sswitch_a
        0xf9 -> :sswitch_a
        0xfa -> :sswitch_a
        0xfb -> :sswitch_a
        0xfc -> :sswitch_a
        0xfd -> :sswitch_a
        0xfe -> :sswitch_a
        0xff -> :sswitch_a
    .end sparse-switch
.end method

.method private getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;
    .locals 5
    .param p1, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/AuthenticationPlugin;

    .line 1545
    .local v0, "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mysql/jdbc/AuthenticationPlugin;->isReusable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1547
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/AuthenticationPlugin;

    move-object v0, v1

    .line 1548
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    goto :goto_0

    .line 1549
    :catchall_0
    move-exception v1

    .line 1550
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Connection.BadAuthenticationPlugin"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 1552
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1553
    throw v2

    .line 1557
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getConnectionAttributesAsProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 9
    .param p1, "atts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1904
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1906
    .local v0, "props":Ljava/util/Properties;
    if-eqz p1, :cond_1

    .line 1907
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1908
    .local v1, "pairs":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1909
    .local v5, "pair":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1910
    .local v6, "keyEnd":I
    if-lez v6, :cond_0

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1911
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1908
    .end local v5    # "pair":Ljava/lang/String;
    .end local v6    # "keyEnd":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1919
    .end local v1    # "pairs":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    const-string v1, "_client_name"

    const-string v2, "MySQL Connector Java"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1920
    const-string v1, "_client_version"

    const-string v2, "5.1.49"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1921
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VENDOR:Ljava/lang/String;

    const-string v2, "_runtime_vendor"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1922
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VERSION:Ljava/lang/String;

    const-string v2, "_runtime_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1923
    const-string v1, "_client_license"

    const-string v2, "GPL"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1925
    return-object v0
.end method

.method static getMaxBuf()I
    .locals 1

    .line 960
    sget v0, Lcom/mysql/jdbc/MysqlIO;->maxBufferSize:I

    return v0
.end method

.method private static final getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 3
    .param p0, "packetToDump"    # Lcom/mysql/jdbc/Buffer;
    .param p1, "packetLength"    # I

    .line 2945
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 2946
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2949
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2950
    .local v1, "packetDumpBuf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    const-string v2, "MysqlIO.36"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2953
    const-string v0, "MysqlIO.37"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadAuthenticationPlugins()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultAuthenticationPlugin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    .line 1420
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1427
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDisabledAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "disabledPlugins":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1429
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    .line 1430
    const-string v4, ","

    invoke-static {v0, v4, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 1431
    .local v4, "pluginsToDisable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1432
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1433
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1437
    .end local v4    # "pluginsToDisable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    .line 1440
    new-instance v4, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;

    invoke-direct {v4}, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;-><init>()V

    .line 1441
    .local v4, "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1442
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v5

    .line 1444
    .local v5, "defaultIsFound":Z
    new-instance v6, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;

    invoke-direct {v6}, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;-><init>()V

    move-object v4, v6

    .line 1445
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1446
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1447
    const/4 v5, 0x1

    .line 1450
    :cond_1
    new-instance v6, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;

    invoke-direct {v6}, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;-><init>()V

    move-object v4, v6

    .line 1451
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1452
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1453
    const/4 v5, 0x1

    .line 1456
    :cond_2
    new-instance v6, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;

    invoke-direct {v6}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;-><init>()V

    move-object v4, v6

    .line 1457
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1458
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1459
    const/4 v5, 0x1

    .line 1462
    :cond_3
    new-instance v6, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;

    invoke-direct {v6}, Lcom/mysql/jdbc/authentication/CachingSha2PasswordPlugin;-><init>()V

    move-object v4, v6

    .line 1463
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1464
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1465
    const/4 v5, 0x1

    .line 1469
    :cond_4
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getAuthenticationPlugins()Ljava/lang/String;

    move-result-object v6

    .line 1470
    .local v6, "authenticationPluginClasses":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1472
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    const-string v9, "Connection.BadAuthenticationPlugin"

    invoke-static {v3, v7, v6, v9, v8}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v3

    .line 1475
    .local v3, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Extension;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/Extension;

    .line 1476
    .local v8, "object":Lcom/mysql/jdbc/Extension;
    move-object v4, v8

    check-cast v4, Lcom/mysql/jdbc/AuthenticationPlugin;

    .line 1477
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1478
    const/4 v5, 0x1

    .end local v8    # "object":Lcom/mysql/jdbc/Extension;
    :cond_5
    goto :goto_1

    .line 1484
    .end local v3    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Extension;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    if-eqz v5, :cond_7

    .line 1490
    return-void

    .line 1485
    :cond_7
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Connection.DefaultAuthenticationPluginIsNotListed"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1421
    .end local v0    # "disabledPlugins":Ljava/lang/String;
    .end local v4    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .end local v5    # "defaultIsFound":Z
    .end local v6    # "authenticationPluginClasses":Ljava/lang/String;
    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Connection.BadDefaultAuthenticationPlugin"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;
    .param p4, "packLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4846
    invoke-static {}, Lcom/mysql/jdbc/ExportControlled;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4850
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4851
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 4854
    :cond_0
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 4856
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, p4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4858
    .local v0, "packet":Lcom/mysql/jdbc/Buffer;
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_1

    .line 4859
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4860
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4861
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 4862
    const/16 v1, 0x17

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_0

    .line 4864
    :cond_1
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4867
    :goto_0
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4869
    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->transformSocketToSSLSocket(Lcom/mysql/jdbc/MysqlIO;)V

    .line 4870
    return-void

    .line 4847
    .end local v0    # "packet":Lcom/mysql/jdbc/Buffer;
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;-><init>(Lcom/mysql/jdbc/MySQLConnection;JLjava/lang/Exception;)V

    throw v0
.end method

.method private preserveOldTransactionState()V
    .locals 2

    .line 4938
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 4939
    return-void
.end method

.method private proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V
    .locals 33
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;
    .param p4, "challenge"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1598
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1599
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->loadAuthenticationPlugins()V

    .line 1602
    :cond_0
    const/4 v0, 0x0

    .line 1603
    .local v0, "skipPassword":Z
    const/16 v4, 0x10

    .line 1604
    .local v4, "passwordLength":I
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1605
    .local v6, "userLength":I
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 1607
    .local v7, "databaseLength":I
    :goto_1
    add-int v8, v6, v4

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0x21

    .line 1609
    .local v8, "packLength":I
    const/4 v9, 0x0

    .line 1610
    .local v9, "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    const/4 v10, 0x0

    .line 1611
    .local v10, "fromServer":Lcom/mysql/jdbc/Buffer;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1612
    .local v11, "toServer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/Buffer;>;"
    const/4 v12, 0x0

    .line 1613
    .local v12, "done":Z
    const/4 v13, 0x0

    .line 1615
    .local v13, "last_sent":Lcom/mysql/jdbc/Buffer;
    const/4 v14, 0x0

    .line 1617
    .local v14, "old_raw_challenge":Z
    const/16 v15, 0x64

    move/from16 v16, v15

    move v15, v14

    move-object v14, v13

    move v13, v12

    move-object v12, v10

    move-object v10, v9

    move v9, v0

    move-object/from16 v0, p4

    .line 1619
    .end local p4    # "challenge":Lcom/mysql/jdbc/Buffer;
    .local v0, "challenge":Lcom/mysql/jdbc/Buffer;
    .local v9, "skipPassword":Z
    .local v10, "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .local v12, "fromServer":Lcom/mysql/jdbc/Buffer;
    .local v13, "done":Z
    .local v14, "last_sent":Lcom/mysql/jdbc/Buffer;
    .local v15, "old_raw_challenge":Z
    .local v16, "counter":I
    :goto_2
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "counter":I
    .local v17, "counter":I
    if-lez v16, :cond_27

    .line 1621
    const/high16 v16, 0x200000

    const/high16 v18, 0x80000

    const-wide/32 v19, 0x100000

    const-string v5, "ASCII"

    move/from16 v21, v4

    .end local v4    # "passwordLength":I
    .local v21, "passwordLength":I
    if-nez v13, :cond_10

    .line 1623
    if-eqz v0, :cond_e

    .line 1625
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isOKPacket()Z

    move-result v22

    if-nez v22, :cond_d

    .line 1633
    move-object/from16 v22, v5

    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v24, 0xaa201

    or-long v4, v4, v24

    iput-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1638
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1639
    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v24, 0x10000

    or-long v4, v4, v24

    iput-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1642
    :cond_3
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getDisconnectOnExpiredPasswords()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1643
    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v24, 0x400000

    or-long v4, v4, v24

    iput-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1645
    :cond_4
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1646
    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    or-long v4, v4, v19

    iput-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1648
    :cond_5
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v4, v4, v16

    if-eqz v4, :cond_6

    .line 1649
    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v24, 0x200000

    or-long v4, v4, v24

    iput-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1652
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 1653
    iput-boolean v4, v1, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 1655
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1656
    move-object/from16 v4, p2

    invoke-direct {v1, v2, v4, v3, v8}, Lcom/mysql/jdbc/MysqlIO;->negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 1655
    :cond_7
    move-object/from16 v4, p2

    .line 1659
    :goto_3
    const/4 v5, 0x0

    .line 1661
    .local v5, "pluginName":Ljava/lang/String;
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v4, v4, v18

    if-eqz v4, :cond_a

    .line 1662
    const/16 v4, 0xa

    move-object/from16 v24, v5

    const/4 v5, 0x5

    .end local v5    # "pluginName":Ljava/lang/String;
    .local v24, "pluginName":Ljava/lang/String;
    invoke-virtual {v1, v5, v5, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x6

    move/from16 v25, v6

    const/4 v6, 0x0

    .end local v6    # "userLength":I
    .local v25, "userLength":I
    invoke-virtual {v1, v5, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v23

    if-eqz v23, :cond_8

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v5, v22

    goto :goto_4

    .line 1665
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    move-object/from16 v5, v22

    invoke-virtual {v0, v5, v4}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v5

    .end local v24    # "pluginName":Ljava/lang/String;
    .restart local v5    # "pluginName":Ljava/lang/String;
    goto :goto_5

    .line 1662
    .end local v5    # "pluginName":Ljava/lang/String;
    .end local v25    # "userLength":I
    .restart local v6    # "userLength":I
    .restart local v24    # "pluginName":Ljava/lang/String;
    :cond_9
    move/from16 v25, v6

    move-object/from16 v5, v22

    .line 1663
    .end local v6    # "userLength":I
    .restart local v25    # "userLength":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    iget v6, v1, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    invoke-virtual {v0, v5, v4, v6}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v5

    .end local v24    # "pluginName":Ljava/lang/String;
    .restart local v5    # "pluginName":Ljava/lang/String;
    goto :goto_5

    .line 1661
    .end local v25    # "userLength":I
    .restart local v6    # "userLength":I
    :cond_a
    move-object/from16 v24, v5

    move/from16 v25, v6

    .line 1669
    .end local v6    # "userLength":I
    .restart local v25    # "userLength":I
    :goto_5
    invoke-direct {v1, v5}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    .line 1670
    .end local v10    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .local v4, "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    if-nez v4, :cond_b

    .line 1674
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    goto :goto_6

    .line 1675
    :cond_b
    sget-object v6, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getAllowPublicKeyRetrieval()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1683
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    .line 1684
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x1

    xor-int/2addr v6, v10

    move v9, v6

    .line 1687
    :cond_c
    :goto_6
    invoke-interface {v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1689
    invoke-direct {v1, v4}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1690
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    iget-object v10, v1, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v10}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v5, v6

    .line 1691
    .end local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .local v5, "fromServer":Lcom/mysql/jdbc/Buffer;
    move-object v10, v4

    move-object v12, v5

    move-object v4, v0

    goto/16 :goto_9

    .line 1626
    .end local v4    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .end local v5    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .end local v25    # "userLength":I
    .restart local v6    # "userLength":I
    .restart local v10    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .restart local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    :cond_d
    move/from16 v25, v6

    .end local v6    # "userLength":I
    .restart local v25    # "userLength":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Connection.UnexpectedAuthenticationApproval"

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1693
    .end local v25    # "userLength":I
    .restart local v6    # "userLength":I
    :cond_e
    move/from16 v25, v6

    .end local v6    # "userLength":I
    .restart local v25    # "userLength":I
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    :cond_f
    invoke-direct {v1, v4}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    .line 1696
    .end local v10    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .restart local v4    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    invoke-direct {v1, v4}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1701
    new-instance v5, Lcom/mysql/jdbc/Buffer;

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v10, v4

    move-object v12, v5

    move-object v4, v0

    .end local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .restart local v5    # "fromServer":Lcom/mysql/jdbc/Buffer;
    goto/16 :goto_9

    .line 1707
    .end local v4    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .end local v5    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .end local v25    # "userLength":I
    .restart local v6    # "userLength":I
    .restart local v10    # "plugin":Lcom/mysql/jdbc/AuthenticationPlugin;
    .restart local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    :cond_10
    move/from16 v25, v6

    .end local v6    # "userLength":I
    .restart local v25    # "userLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 1708
    const/4 v15, 0x0

    .line 1709
    iget-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    const/4 v6, 0x1

    add-int/2addr v4, v6

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 1710
    iget-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/2addr v4, v6

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 1712
    if-nez v10, :cond_12

    .line 1715
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    if-eqz v4, :cond_11

    goto :goto_7

    :cond_11
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    :goto_7
    invoke-direct {v1, v4}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v4

    move-object v10, v4

    .line 1719
    :cond_12
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isOKPacket()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1721
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 1722
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 1724
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v4, v1, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 1725
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v4

    iput v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 1728
    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->destroy()V

    .line 1729
    move-object v4, v0

    move/from16 v24, v7

    goto/16 :goto_10

    .line 1731
    :cond_13
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1732
    const/4 v4, 0x0

    .line 1735
    .end local v9    # "skipPassword":Z
    .local v4, "skipPassword":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v6

    .line 1738
    .local v6, "pluginName":Ljava/lang/String;
    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1739
    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->destroy()V

    .line 1740
    invoke-direct {v1, v6}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v10

    .line 1742
    if-eqz v10, :cond_14

    goto :goto_8

    .line 1743
    :cond_14
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const-string v9, "Connection.BadAuthenticationPlugin"

    invoke-static {v9, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 1747
    :cond_15
    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->reset()V

    .line 1750
    :goto_8
    invoke-direct {v1, v10}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1751
    new-instance v9, Lcom/mysql/jdbc/Buffer;

    move/from16 p4, v4

    .end local v4    # "skipPassword":Z
    .local p4, "skipPassword":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v4, v9

    .line 1753
    .end local v6    # "pluginName":Ljava/lang/String;
    .end local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .local v4, "fromServer":Lcom/mysql/jdbc/Buffer;
    move/from16 v9, p4

    move-object v12, v4

    move-object v4, v0

    goto :goto_9

    .line 1755
    .end local v4    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "skipPassword":Z
    .restart local v9    # "skipPassword":Z
    .restart local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    :cond_16
    const/16 v4, 0x10

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v5, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1756
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v22

    sub-int v6, v6, v22

    invoke-virtual {v0, v5, v6}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v12, v4

    move-object v4, v0

    .end local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .restart local v4    # "fromServer":Lcom/mysql/jdbc/Buffer;
    goto :goto_9

    .line 1758
    .end local v4    # "fromServer":Lcom/mysql/jdbc/Buffer;
    .restart local v12    # "fromServer":Lcom/mysql/jdbc/Buffer;
    :cond_17
    const/4 v4, 0x1

    .line 1759
    .end local v15    # "old_raw_challenge":Z
    .local v4, "old_raw_challenge":Z
    new-instance v5, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v6

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v22

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v15, v22, 0x1

    invoke-virtual {v0, v6, v15}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move v15, v4

    move-object v12, v5

    move-object v4, v0

    .line 1767
    .end local v0    # "challenge":Lcom/mysql/jdbc/Buffer;
    .local v4, "challenge":Lcom/mysql/jdbc/Buffer;
    .restart local v15    # "old_raw_challenge":Z
    :goto_9
    if-eqz v9, :cond_18

    const/4 v0, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v0, p2

    :goto_a
    :try_start_0
    invoke-interface {v10, v2, v0}, Lcom/mysql/jdbc/AuthenticationPlugin;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    invoke-interface {v10, v12, v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v0

    .line 1771
    nop

    .line 1774
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 1775
    if-nez v4, :cond_1d

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, "enc":Ljava/lang/String;
    new-instance v5, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v6, v8, 0x1

    invoke-direct {v5, v6}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v14, v5

    .line 1780
    const/16 v5, 0x11

    invoke-virtual {v14, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1783
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v2, v0, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1786
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    const/16 v5, 0x100

    if-ge v6, v5, :cond_19

    .line 1788
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v14, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1789
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mysql/jdbc/Buffer;

    move/from16 v24, v7

    .end local v7    # "databaseLength":I
    .local v24, "databaseLength":I
    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v7

    invoke-virtual {v14, v6, v5, v7}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    goto :goto_b

    .line 1791
    .end local v24    # "databaseLength":I
    .restart local v7    # "databaseLength":I
    :cond_19
    move/from16 v24, v7

    const/4 v5, 0x0

    .end local v7    # "databaseLength":I
    .restart local v24    # "databaseLength":I
    invoke-virtual {v14, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1794
    :goto_b
    iget-boolean v6, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v6, :cond_1a

    .line 1795
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v3, v0, v6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_c

    .line 1798
    :cond_1a
    invoke-virtual {v14, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1801
    :goto_c
    invoke-direct {v1, v14, v0}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 1803
    invoke-virtual {v14, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1806
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v5, v5, v18

    if-eqz v5, :cond_1b

    .line 1807
    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v5, v0, v6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1811
    :cond_1b
    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    and-long v5, v5, v19

    const-wide/16 v18, 0x0

    cmp-long v7, v5, v18

    if-eqz v7, :cond_1c

    .line 1812
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {v1, v14, v0, v5}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1813
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1816
    :cond_1c
    invoke-virtual {v14}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    invoke-direct {v1, v14, v5}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 1818
    .end local v0    # "enc":Ljava/lang/String;
    move-object v0, v4

    move/from16 v16, v17

    move/from16 v4, v21

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_2

    .end local v24    # "databaseLength":I
    .restart local v7    # "databaseLength":I
    :cond_1d
    move/from16 v24, v7

    .end local v7    # "databaseLength":I
    .restart local v24    # "databaseLength":I
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1820
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v0, v6}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v14, v0

    .line 1821
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    invoke-virtual {v14, v0, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1822
    invoke-virtual {v14}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {v1, v14, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move-object v0, v4

    move/from16 v16, v17

    move/from16 v4, v21

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_2

    .line 1824
    :cond_1e
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->isRawPacket()Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz v15, :cond_1f

    goto/16 :goto_e

    .line 1834
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v0

    .line 1836
    .restart local v0    # "enc":Ljava/lang/String;
    new-instance v5, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v5, v8}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v14, v5

    .line 1837
    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v14, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1838
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v5, v5

    invoke-virtual {v14, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1840
    invoke-direct {v1, v14, v0}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 1842
    const/16 v5, 0x17

    new-array v5, v5, [B

    invoke-virtual {v14, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1845
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v2, v0, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1847
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v5, v5, v16

    if-eqz v5, :cond_20

    .line 1849
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V

    goto :goto_d

    .line 1852
    :cond_20
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v14, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1853
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v7

    invoke-virtual {v14, v6, v5, v7}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1856
    :goto_d
    iget-boolean v5, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v5, :cond_21

    .line 1857
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v3, v0, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1860
    :cond_21
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v5, v5, v18

    if-eqz v5, :cond_22

    .line 1861
    invoke-interface {v10}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v14, v5, v0, v6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1865
    :cond_22
    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    and-long v5, v5, v19

    const-wide/16 v18, 0x0

    cmp-long v7, v5, v18

    if-eqz v7, :cond_23

    .line 1866
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {v1, v14, v0, v5}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1869
    :cond_23
    invoke-virtual {v14}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    invoke-direct {v1, v14, v5}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 1870
    .end local v0    # "enc":Ljava/lang/String;
    move-object v0, v4

    move/from16 v16, v17

    move/from16 v4, v21

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_2

    .line 1826
    :cond_24
    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/Buffer;

    .line 1827
    .local v5, "buffer":Lcom/mysql/jdbc/Buffer;
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v6, v7}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v14, v6

    .line 1828
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mysql/jdbc/Buffer;

    move-object/from16 p4, v0

    .end local v0    # "i$":Ljava/util/Iterator;
    .local p4, "i$":Ljava/util/Iterator;
    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {v14, v6, v7, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1829
    invoke-virtual {v14}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {v1, v14, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move-object/from16 v0, p4

    .end local v5    # "buffer":Lcom/mysql/jdbc/Buffer;
    goto :goto_f

    .line 1826
    .end local p4    # "i$":Ljava/util/Iterator;
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_25
    move-object/from16 p4, v0

    const/4 v7, 0x0

    .line 1829
    .end local v0    # "i$":Ljava/util/Iterator;
    move-object v0, v4

    move/from16 v16, v17

    move/from16 v4, v21

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_2

    .line 1774
    .end local v24    # "databaseLength":I
    .restart local v7    # "databaseLength":I
    :cond_26
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "databaseLength":I
    .restart local v24    # "databaseLength":I
    move-object v0, v4

    move/from16 v16, v17

    move/from16 v4, v21

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_2

    .line 1769
    .end local v24    # "databaseLength":I
    .restart local v7    # "databaseLength":I
    :catch_0
    move-exception v0

    move/from16 v24, v7

    .line 1770
    .end local v7    # "databaseLength":I
    .local v0, "e":Ljava/sql/SQLException;
    .restart local v24    # "databaseLength":I
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v0, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 1619
    .end local v21    # "passwordLength":I
    .end local v24    # "databaseLength":I
    .end local v25    # "userLength":I
    .local v0, "challenge":Lcom/mysql/jdbc/Buffer;
    .local v4, "passwordLength":I
    .local v6, "userLength":I
    .restart local v7    # "databaseLength":I
    :cond_27
    move/from16 v21, v4

    move/from16 v25, v6

    move/from16 v24, v7

    .end local v4    # "passwordLength":I
    .end local v6    # "userLength":I
    .end local v7    # "databaseLength":I
    .restart local v21    # "passwordLength":I
    .restart local v24    # "databaseLength":I
    .restart local v25    # "userLength":I
    move-object v4, v0

    .line 1876
    .end local v0    # "challenge":Lcom/mysql/jdbc/Buffer;
    .local v4, "challenge":Lcom/mysql/jdbc/Buffer;
    :goto_10
    if-eqz v17, :cond_2a

    .line 1883
    iget v0, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/mysql/jdbc/CompressedInputStream;

    if-nez v0, :cond_28

    .line 1885
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 1886
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 1887
    new-instance v0, Lcom/mysql/jdbc/CompressedInputStream;

    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v0, v5, v6}, Lcom/mysql/jdbc/CompressedInputStream;-><init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 1890
    :cond_28
    iget-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v0, :cond_29

    .line 1891
    invoke-direct {v1, v3}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 1895
    :cond_29
    :try_start_1
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1899
    nop

    .line 1900
    return-void

    .line 1896
    :catch_1
    move-exception v0

    move-object/from16 v31, v0

    .line 1897
    .local v31, "ioEx":Ljava/io/IOException;
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v2, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v32

    move-object/from16 v26, v0

    move-wide/from16 v27, v5

    move-wide/from16 v29, v2

    invoke-static/range {v26 .. v32}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1877
    .end local v31    # "ioEx":Ljava/io/IOException;
    :cond_2a
    const-string v0, "CommunicationsException.TooManyAuthenticationPluginNegotiations"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private final readFully(Ljava/io/InputStream;[BII)I
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2959
    if-ltz p4, :cond_2

    .line 2963
    const/4 v0, 0x0

    .line 2965
    .local v0, "n":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 2966
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2968
    .local v1, "count":I
    if-ltz v1, :cond_0

    .line 2972
    add-int/2addr v0, v1

    .line 2973
    .end local v1    # "count":I
    goto :goto_0

    .line 2969
    .restart local v1    # "count":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "MysqlIO.EOF"

    invoke-static {v4, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2975
    .end local v1    # "count":I
    :cond_1
    return v0

    .line 2960
    .end local v0    # "n":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private readRemainingMultiPackets(Lcom/mysql/jdbc/Buffer;B)I
    .locals 18
    .param p1, "reuse"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "multiPacketSeq"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 3536
    .local v2, "packetLength":I
    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    move/from16 v2, p2

    .line 3539
    .end local p2    # "multiPacketSeq":B
    .local v2, "multiPacketSeq":B
    .local v3, "packetLength":I
    .local v4, "multiPacket":Lcom/mysql/jdbc/Buffer;
    :cond_0
    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 3540
    .local v5, "lengthRead":I
    if-lt v5, v8, :cond_5

    .line 3545
    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v8, v6, v7

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    aget-byte v10, v6, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v8, v10

    const/4 v10, 0x2

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int v3, v8, v6

    .line 3546
    if-nez v4, :cond_1

    .line 3547
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v6, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v4, v6

    .line 3550
    :cond_1
    iget-boolean v6, v0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    if-nez v6, :cond_2

    if-ne v3, v9, :cond_2

    .line 3551
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3552
    goto :goto_0

    .line 3555
    :cond_2
    add-int/lit8 v6, v2, 0x1

    int-to-byte v2, v6

    .line 3556
    iget-object v6, v0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v8, 0x3

    aget-byte v6, v6, v8

    if-ne v2, v6, :cond_4

    .line 3561
    invoke-virtual {v4, v7}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3564
    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 3567
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    .line 3568
    .local v6, "byteBuf":[B
    move v8, v3

    .line 3570
    .local v8, "lengthToWrite":I
    iget-object v10, v0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v0, v10, v6, v7, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v10

    .line 3572
    .local v10, "bytesRead":I
    if-ne v10, v8, :cond_3

    .line 3579
    invoke-virtual {v1, v6, v7, v8}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3580
    .end local v5    # "lengthRead":I
    .end local v6    # "byteBuf":[B
    .end local v8    # "lengthToWrite":I
    .end local v10    # "bytesRead":I
    iget v5, v0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-eq v3, v5, :cond_0

    .line 3582
    :goto_0
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3583
    invoke-virtual {v1, v9}, Lcom/mysql/jdbc/Buffer;->setWasMultiPacket(Z)V

    .line 3584
    return v3

    .line 3573
    .restart local v5    # "lengthRead":I
    .restart local v6    # "byteBuf":[B
    .restart local v8    # "lengthToWrite":I
    .restart local v10    # "bytesRead":I
    :cond_3
    iget-object v11, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v12, v0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v14, v0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MysqlIO.50"

    invoke-static {v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "MysqlIO.51"

    invoke-static {v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v17

    invoke-static/range {v11 .. v17}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v7

    throw v7

    .line 3557
    .end local v6    # "byteBuf":[B
    .end local v8    # "lengthToWrite":I
    .end local v10    # "bytesRead":I
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v7, "MysqlIO.49"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3541
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 3542
    new-instance v6, Ljava/io/IOException;

    const-string v7, "MysqlIO.47"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private final readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V
    .locals 2
    .param p1, "rowPacket"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3240
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_4

    .line 3241
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3243
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3245
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 3246
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 3248
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 3249
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3250
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3252
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3253
    if-lez v0, :cond_0

    .line 3254
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3257
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3259
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3260
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    goto :goto_0

    .line 3265
    :cond_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3266
    if-lez v0, :cond_2

    .line 3267
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3270
    :cond_2
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 3271
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3272
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3275
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 3277
    :cond_4
    return-void
.end method

.method private readSingleRowSet(JIIZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/RowData;
    .locals 16
    .param p1, "columnCount"    # J
    .param p3, "maxRows"    # I
    .param p4, "resultSetConcurrency"    # I
    .param p5, "isBinaryEncoded"    # Z
    .param p6, "fields"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3353
    move-wide/from16 v0, p1

    move/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3355
    .local v3, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-static/range {p6 .. p6}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result v13

    .line 3358
    .local v13, "useBufferRowExplicit":Z
    long-to-int v6, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move/from16 v7, p5

    move/from16 v8, p4

    move v10, v13

    invoke-virtual/range {v4 .. v12}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v4

    .line 3360
    .local v4, "row":Lcom/mysql/jdbc/ResultSetRow;
    const/4 v5, 0x0

    .line 3362
    .local v5, "rowCount":I
    if-eqz v4, :cond_0

    .line 3363
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3364
    const/4 v5, 0x1

    move-object v14, v4

    move v15, v5

    goto :goto_0

    .line 3362
    :cond_0
    move-object v14, v4

    move v15, v5

    .line 3367
    .end local v4    # "row":Lcom/mysql/jdbc/ResultSetRow;
    .end local v5    # "rowCount":I
    .local v14, "row":Lcom/mysql/jdbc/ResultSetRow;
    .local v15, "rowCount":I
    :cond_1
    :goto_0
    if-eqz v14, :cond_3

    .line 3368
    long-to-int v6, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move/from16 v7, p5

    move/from16 v8, p4

    move v10, v13

    invoke-virtual/range {v4 .. v12}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v14

    .line 3370
    if-eqz v14, :cond_1

    .line 3371
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-ge v15, v2, :cond_1

    .line 3372
    :cond_2
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3373
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 3378
    :cond_3
    new-instance v4, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v4, v3}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    .line 3380
    .local v4, "rowData":Lcom/mysql/jdbc/RowData;
    return-object v4
.end method

.method private reclaimLargeReusablePacket()V
    .locals 2

    .line 3405
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getCapacity()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_0

    .line 3406
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 3408
    :cond_0
    return-void
.end method

.method private reclaimLargeSharedSendPacket()V
    .locals 2

    .line 4137
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getCapacity()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_0

    .line 4138
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 4140
    :cond_0
    return-void
.end method

.method private final reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;
    .locals 1
    .param p1, "reuse"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3417
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    return-object v0
.end method

.method private final reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;
    .locals 13
    .param p1, "reuse"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "existingPacketLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3423
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setWasMultiPacket(Z)V

    .line 3424
    const/4 v2, 0x0

    .line 3426
    .local v2, "packetLength":I
    const/4 v3, -0x1

    const/4 v4, 0x4

    if-ne p2, v3, :cond_1

    .line 3427
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-direct {p0, v3, v5, v1, v4}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v3

    .line 3429
    .local v3, "lengthRead":I
    if-lt v3, v4, :cond_0

    .line 3434
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, v5, v0

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v6, v5

    .line 3435
    .end local v2    # "packetLength":I
    .end local v3    # "lengthRead":I
    .local v6, "packetLength":I
    goto :goto_0

    .line 3430
    .end local v6    # "packetLength":I
    .restart local v2    # "packetLength":I
    .restart local v3    # "lengthRead":I
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 3431
    new-instance v4, Ljava/io/IOException;

    const-string v5, "MysqlIO.43"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "reuse":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "existingPacketLength":I
    throw v4

    .line 3436
    .end local v3    # "lengthRead":I
    .restart local p1    # "reuse":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "existingPacketLength":I
    :cond_1
    move v6, p2

    .line 3439
    .end local v2    # "packetLength":I
    .restart local v6    # "packetLength":I
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v2, :cond_2

    .line 3440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3442
    .local v2, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v3, "MysqlIO.44"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3444
    const-string v3, "MysqlIO.45"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3450
    .end local v2    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    .line 3452
    .local v2, "multiPacketSeq":B
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v3, :cond_3

    .line 3453
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v3, :cond_4

    .line 3454
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    goto :goto_1

    .line 3457
    :cond_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 3460
    :cond_4
    :goto_1
    iput-byte v2, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 3463
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3469
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, v6, :cond_5

    .line 3470
    add-int/lit8 v3, v6, 0x1

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->setByteBuffer([B)V

    .line 3474
    :cond_5
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 3477
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v3

    .line 3479
    .local v3, "numBytesRead":I
    if-ne v3, v6, :cond_b

    .line 3483
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v4, :cond_6

    .line 3484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3486
    .local v4, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v5, "MysqlIO.46"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    invoke-static {p1, v6}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3492
    .end local v4    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_6
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v4, :cond_7

    .line 3493
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v7 .. v12}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 3496
    :cond_7
    const/4 v4, 0x0

    .line 3498
    .local v4, "isMultiPacket":Z
    iget v5, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ne v6, v5, :cond_8

    .line 3499
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3502
    const/4 v4, 0x1

    .line 3504
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/MysqlIO;->readRemainingMultiPackets(Lcom/mysql/jdbc/Buffer;B)I

    move-result v5

    move v6, v5

    .line 3507
    :cond_8
    if-nez v4, :cond_9

    .line 3508
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    aput-byte v1, v5, v6

    .line 3511
    :cond_9
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    .line 3515
    :cond_a
    return-object p1

    .line 3480
    .end local v4    # "isMultiPacket":Z
    :cond_b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Short read, expected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes, only read "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "reuse":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "existingPacketLength":I
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3519
    .end local v2    # "multiPacketSeq":B
    .end local v3    # "numBytesRead":I
    .end local v6    # "packetLength":I
    .restart local p1    # "reuse":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "existingPacketLength":I
    :catch_0
    move-exception v2

    .line 3522
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3524
    goto :goto_2

    .line 3523
    :catch_1
    move-exception v3

    .line 3526
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v1, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3528
    goto :goto_3

    .line 3527
    :catch_2
    move-exception v0

    .line 3529
    :goto_3
    throw v2

    .line 3516
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 3517
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "packLength"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "database"    # Ljava/lang/String;
    .param p6, "writeClientParams"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4168
    move-object/from16 v1, p0

    move/from16 v2, p2

    if-nez p1, :cond_0

    .line 4169
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v3, v0

    .end local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v0, "packet":Lcom/mysql/jdbc/Buffer;
    goto :goto_0

    .line 4168
    .end local v0    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    :cond_0
    move-object/from16 v3, p1

    .line 4172
    .end local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v3, "packet":Lcom/mysql/jdbc/Buffer;
    :goto_0
    const/4 v0, 0x1

    const/4 v4, 0x4

    if-eqz p6, :cond_3

    .line 4173
    iget-boolean v5, v1, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v5, :cond_2

    .line 4174
    invoke-virtual {v1, v4, v0, v0}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4175
    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v3, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4176
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4179
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4182
    const/16 v5, 0x17

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_1

    .line 4184
    :cond_1
    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v3, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4185
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_1

    .line 4188
    :cond_2
    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v6, v5

    invoke-virtual {v3, v6}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4189
    iget v5, v1, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v3, v5}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 4194
    :cond_3
    :goto_1
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v6, "Cp1252"

    move-object/from16 v7, p3

    invoke-virtual {v3, v7, v6, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4196
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 4198
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v8, "xxxxxxxx"

    invoke-virtual {v3, v8, v6, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_2

    .line 4201
    :cond_4
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v8, ""

    invoke-virtual {v3, v8, v6, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4204
    :goto_2
    iget-boolean v5, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v5, :cond_5

    .line 4205
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v8, p5

    invoke-virtual {v3, v8, v6, v5}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_3

    .line 4204
    :cond_5
    move-object/from16 v8, p5

    .line 4208
    :goto_3
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    invoke-direct {v1, v3, v5}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4213
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 4214
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 4216
    .local v5, "b":Lcom/mysql/jdbc/Buffer;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4218
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v10

    .line 4220
    .local v10, "replyAsBytes":[B
    array-length v11, v10

    const/16 v12, 0x18

    if-ne v11, v12, :cond_7

    aget-byte v11, v10, v9

    if-eqz v11, :cond_7

    .line 4222
    aget-byte v11, v10, v9

    const/16 v13, 0x2a

    const-string v14, "S1000"

    const-string v15, "MysqlIO.92"

    const-string v16, "MysqlIO.91"

    const/16 v12, 0x14

    if-eq v11, v13, :cond_6

    .line 4225
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/mysql/jdbc/Security;->passwordHashStage1(Ljava/lang/String;)[B

    move-result-object v6

    .line 4228
    .local v6, "buff":[B
    array-length v11, v6

    new-array v11, v11, [B

    .line 4229
    .local v11, "passwordHash":[B
    array-length v13, v6

    invoke-static {v6, v9, v11, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4232
    invoke-static {v11, v10}, Lcom/mysql/jdbc/Security;->passwordHashStage2([B[B)[B

    move-result-object v13

    move-object v11, v13

    .line 4234
    array-length v13, v10

    sub-int/2addr v13, v4

    new-array v13, v13, [B

    .line 4236
    .local v13, "packetDataAfterSalt":[B
    array-length v0, v10

    sub-int/2addr v0, v4

    invoke-static {v10, v4, v13, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4238
    new-array v0, v12, [B

    .line 4241
    .local v0, "mysqlScrambleBuff":[B
    invoke-static {v13, v0, v11, v12}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4244
    invoke-static {v0, v6, v6, v12}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4246
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    const/16 v9, 0x19

    invoke-direct {v4, v9}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4247
    .local v4, "packet2":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v4, v6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 4249
    iget-byte v9, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    const/4 v12, 0x1

    add-int/2addr v9, v12

    int-to-byte v9, v9

    iput-byte v9, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4251
    const/16 v9, 0x18

    invoke-direct {v1, v4, v9}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4255
    .end local v0    # "mysqlScrambleBuff":[B
    .end local v4    # "packet2":Lcom/mysql/jdbc/Buffer;
    .end local v6    # "buff":[B
    .end local v11    # "passwordHash":[B
    .end local v13    # "packetDataAfterSalt":[B
    move-object/from16 v12, p4

    goto/16 :goto_5

    .line 4252
    :catch_0
    move-exception v0

    .line 4253
    .local v0, "nse":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v14, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 4259
    .end local v0    # "nse":Ljava/security/NoSuchAlgorithmException;
    :cond_6
    :try_start_1
    invoke-static/range {p4 .. p4}, Lcom/mysql/jdbc/Security;->createKeyFromOldPassword(Ljava/lang/String;)[B

    move-result-object v0

    .line 4262
    .local v0, "passwordHash":[B
    array-length v11, v10

    sub-int/2addr v11, v4

    new-array v11, v11, [B

    .line 4264
    .local v11, "netReadPos4":[B
    array-length v13, v10

    sub-int/2addr v13, v4

    invoke-static {v10, v4, v11, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4266
    new-array v4, v12, [B

    .line 4269
    .local v4, "mysqlScrambleBuff":[B
    invoke-static {v11, v4, v0, v12}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4272
    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v12, p4

    :try_start_2
    invoke-static {v9, v12}, Lcom/mysql/jdbc/Util;->scramble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4274
    .local v9, "scrambledPassword":Ljava/lang/String;
    new-instance v13, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v13, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4275
    .local v13, "packet2":Lcom/mysql/jdbc/Buffer;
    move-object/from16 v17, v0

    .end local v0    # "passwordHash":[B
    .local v17, "passwordHash":[B
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v13, v9, v6, v0}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4276
    iget-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    const/4 v6, 0x1

    add-int/2addr v0, v6

    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4278
    const/16 v0, 0x18

    invoke-direct {v1, v13, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4282
    .end local v4    # "mysqlScrambleBuff":[B
    .end local v9    # "scrambledPassword":Ljava/lang/String;
    .end local v11    # "netReadPos4":[B
    .end local v13    # "packet2":Lcom/mysql/jdbc/Buffer;
    .end local v17    # "passwordHash":[B
    goto :goto_5

    .line 4279
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v12, p4

    .line 4280
    .local v0, "nse":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v14, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 4220
    .end local v0    # "nse":Ljava/security/NoSuchAlgorithmException;
    :cond_7
    move-object/from16 v12, p4

    goto :goto_5

    .line 4213
    .end local v5    # "b":Lcom/mysql/jdbc/Buffer;
    .end local v10    # "replyAsBytes":[B
    :cond_8
    move-object/from16 v12, p4

    .line 4286
    :goto_5
    return-void
.end method

.method private final send(Lcom/mysql/jdbc/Buffer;I)V
    .locals 7
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "packetLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3637
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-lez v0, :cond_1

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 3638
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/PacketTooBigException;

    int-to-long v1, p2

    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/PacketTooBigException;-><init>(JJ)V

    .end local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local p2    # "packetLen":I
    throw v0

    .line 3641
    .restart local p1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local p2    # "packetLen":I
    :cond_1
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, p2, -0x4

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, -0x4

    add-int/lit8 v1, v1, -0x3

    if-lt v0, v1, :cond_3

    .line 3643
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->sendSplitPackets(Lcom/mysql/jdbc/Buffer;I)V

    goto/16 :goto_2

    .line 3646
    :cond_3
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 3648
    move-object v0, p1

    .line 3649
    .local v0, "packetToSend":Lcom/mysql/jdbc/Buffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3650
    add-int/lit8 v2, p2, -0x4

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3651
    iget-byte v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3653
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v2, :cond_5

    .line 3654
    iget-byte v2, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 3655
    move v2, p2

    .line 3657
    .local v2, "originalPacketLen":I
    invoke-direct {p0, v0, v1, p2}, Lcom/mysql/jdbc/MysqlIO;->compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    move-object v0, v3

    .line 3658
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    move p2, v3

    .line 3660
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_4

    .line 3661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3663
    .local v3, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v4, "MysqlIO.57"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    invoke-static {v0, p2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    const-string v4, "MysqlIO.58"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    invoke-static {p1, v2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3668
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3670
    .end local v2    # "originalPacketLen":I
    .end local v3    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_4
    goto :goto_1

    .line 3672
    :cond_5
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v2, :cond_6

    .line 3673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3675
    .local v2, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v3, "MysqlIO.59"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    const-string v3, "host: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3677
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3678
    const-string v3, "\' threadId: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3680
    const-string v3, "\'\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3683
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3687
    .end local v2    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3, v1, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 3688
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3691
    .end local v0    # "packetToSend":Lcom/mysql/jdbc/Buffer;
    :goto_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v0, :cond_7

    .line 3692
    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x5

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 3698
    :cond_7
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-ne p1, v0, :cond_8

    .line 3699
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeSharedSendPacket()V

    .line 3702
    :cond_8
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3708
    :cond_9
    nop

    .line 3709
    return-void

    .line 3705
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 3706
    .local v5, "ioEx":Ljava/io/IOException;
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 20
    .param p1, "buf"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "enc"    # Ljava/lang/String;
    .param p3, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1929
    move-object/from16 v1, p1

    invoke-interface/range {p3 .. p3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v2

    .line 1931
    .local v2, "atts":Ljava/lang/String;
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    const/16 v0, 0x64

    invoke-direct {v3, v0}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1934
    .local v3, "lb":Lcom/mysql/jdbc/Buffer;
    move-object/from16 v10, p0

    :try_start_0
    invoke-direct {v10, v2}, Lcom/mysql/jdbc/MysqlIO;->getConnectionAttributesAsProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 1936
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v11, v4

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    .line 1937
    .local v12, "key":Ljava/lang/Object;
    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface/range {p3 .. p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V

    .line 1938
    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p3 .. p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {p3 .. p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v18

    move-object v13, v3

    move-object/from16 v15, p2

    move-object/from16 v19, p3

    invoke-virtual/range {v13 .. v19}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 1943
    .end local v0    # "props":Ljava/util/Properties;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 1941
    :catch_0
    move-exception v0

    .line 1945
    :goto_1
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    const/4 v4, 0x4

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1946
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1948
    return-void
.end method

.method private final sendFileToServer(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 17
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3722
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "\'"

    const-string v5, "MysqlIO.65"

    const-string v6, "S1000"

    iget-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_0

    .line 3723
    iget-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 3726
    :cond_0
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    :goto_0
    move-object v7, v0

    .line 3728
    .local v7, "filePacket":Lcom/mysql/jdbc/Buffer;
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v8

    add-int/lit8 v8, v8, -0x10

    const/16 v9, 0x1000

    invoke-direct {v1, v8, v9}, Lcom/mysql/jdbc/MysqlIO;->alignPacketSize(II)I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3731
    .local v8, "bigPacketLength":I
    const/high16 v10, 0x100000

    .line 3733
    .local v10, "oneMeg":I
    add-int/lit8 v0, v10, -0xc

    add-int/lit8 v11, v10, -0x10

    invoke-direct {v1, v11, v9}, Lcom/mysql/jdbc/MysqlIO;->alignPacketSize(II)I

    move-result v9

    add-int/lit8 v9, v9, -0xc

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3735
    .local v9, "smallerPacketSizeAligned":I
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3737
    .local v11, "packetLength":I
    if-nez v7, :cond_2

    .line 3739
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v12, v11, 0x4

    invoke-direct {v0, v12}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v7, v0

    .line 3740
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3747
    goto :goto_1

    .line 3741
    :catch_0
    move-exception v0

    .line 3742
    .local v0, "oom":Ljava/lang/OutOfMemoryError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not allocate packet of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes required for LOAD DATA LOCAL INFILE operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Try increasing max heap allocation for JVM or decreasing server variable \'max_allowed_packet\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    const-string v6, "S1001"

    invoke-static {v4, v6, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 3750
    .end local v0    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3751
    const/4 v12, 0x0

    invoke-direct {v1, v7, v12}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3753
    new-array v13, v11, [B

    .line 3755
    .local v13, "fileBuf":[B
    const/4 v14, 0x0

    .line 3758
    .local v14, "fileIn":Ljava/io/BufferedInputStream;
    :try_start_1
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_8

    .line 3763
    const/4 v0, 0x0

    .line 3765
    .local v0, "hookedStream":Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 3766
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getLocalInfileInputStream()Ljava/io/InputStream;

    move-result-object v15

    move-object v0, v15

    goto :goto_2

    .line 3813
    .end local v0    # "hookedStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move/from16 v16, v8

    goto/16 :goto_7

    .line 3795
    :catch_1
    move-exception v0

    move/from16 v16, v8

    goto/16 :goto_6

    .line 3765
    .restart local v0    # "hookedStream":Ljava/io/InputStream;
    :cond_3
    move-object v15, v0

    .line 3769
    .end local v0    # "hookedStream":Ljava/io/InputStream;
    .local v15, "hookedStream":Ljava/io/InputStream;
    :goto_2
    if-eqz v15, :cond_4

    .line 3770
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v0

    move/from16 v16, v8

    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .local v0, "fileIn":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 3771
    .end local v0    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAllowUrlInLocalInfile()Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_5

    .line 3772
    :try_start_4
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v0

    move/from16 v16, v8

    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "fileIn":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 3775
    .end local v0    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    :cond_5
    const/16 v0, 0x3a

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v12, -0x1

    if-eq v0, v12, :cond_6

    .line 3777
    :try_start_6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3778
    .local v0, "urlFromFileName":Ljava/net/URL;
    new-instance v12, Ljava/io/BufferedInputStream;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v16, v8

    .end local v8    # "bigPacketLength":I
    .local v16, "bigPacketLength":I
    :try_start_7
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v8, v12

    .line 3782
    .end local v0    # "urlFromFileName":Ljava/net/URL;
    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .local v8, "fileIn":Ljava/io/BufferedInputStream;
    move-object v14, v8

    goto :goto_4

    .line 3779
    .end local v8    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v0

    goto :goto_3

    .end local v16    # "bigPacketLength":I
    .local v8, "bigPacketLength":I
    :catch_3
    move-exception v0

    move/from16 v16, v8

    .line 3781
    .end local v8    # "bigPacketLength":I
    .local v0, "badUrlEx":Ljava/net/MalformedURLException;
    .restart local v16    # "bigPacketLength":I
    :goto_3
    :try_start_8
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v8

    .line 3782
    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .local v0, "fileIn":Ljava/io/BufferedInputStream;
    move-object v14, v0

    goto :goto_4

    .line 3784
    .end local v0    # "fileIn":Ljava/io/BufferedInputStream;
    .end local v16    # "bigPacketLength":I
    .restart local v8    # "bigPacketLength":I
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    :cond_6
    move/from16 v16, v8

    .end local v8    # "bigPacketLength":I
    .restart local v16    # "bigPacketLength":I
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v14, v0

    .line 3788
    :goto_4
    const/4 v0, 0x0

    .line 3790
    .local v0, "bytesRead":I
    :goto_5
    invoke-virtual {v14, v13}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    move v0, v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_7

    .line 3791
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3792
    const/4 v8, 0x0

    invoke-virtual {v7, v13, v8, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3793
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v8

    invoke-direct {v1, v7, v8}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    .line 3795
    .end local v0    # "bytesRead":I
    .end local v15    # "hookedStream":Ljava/io/InputStream;
    :cond_7
    nop

    .line 3838
    nop

    .line 3815
    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 3821
    nop

    .line 3823
    const/4 v0, 0x0

    .line 3828
    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .local v0, "fileIn":Ljava/io/BufferedInputStream;
    nop

    .line 3830
    nop

    .line 3833
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3834
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {v1, v7, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3836
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 3838
    .local v4, "resultPacket":Lcom/mysql/jdbc/Buffer;
    invoke-direct {v1, v2, v4}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v5

    return-object v5

    .line 3816
    .end local v0    # "fileIn":Ljava/io/BufferedInputStream;
    .end local v4    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3817
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v6, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 3820
    .local v4, "sqlEx":Ljava/sql/SQLException;
    throw v4

    .line 3759
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    .end local v16    # "bigPacketLength":I
    .restart local v8    # "bigPacketLength":I
    :cond_8
    move/from16 v16, v8

    .end local v8    # "bigPacketLength":I
    .restart local v16    # "bigPacketLength":I
    :try_start_a
    const-string v0, "MysqlIO.LoadDataLocalNotAllowed"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v0, v6, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v7    # "filePacket":Lcom/mysql/jdbc/Buffer;
    .end local v9    # "smallerPacketSizeAligned":I
    .end local v10    # "oneMeg":I
    .end local v11    # "packetLength":I
    .end local v13    # "fileBuf":[B
    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .end local v16    # "bigPacketLength":I
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "fileName":Ljava/lang/String;
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3795
    .restart local v7    # "filePacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "smallerPacketSizeAligned":I
    .restart local v10    # "oneMeg":I
    .restart local v11    # "packetLength":I
    .restart local v13    # "fileBuf":[B
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local v16    # "bigPacketLength":I
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "fileName":Ljava/lang/String;
    :catch_5
    move-exception v0

    goto :goto_6

    .line 3813
    .end local v16    # "bigPacketLength":I
    .restart local v8    # "bigPacketLength":I
    :catchall_1
    move-exception v0

    move/from16 v16, v8

    .end local v8    # "bigPacketLength":I
    .restart local v16    # "bigPacketLength":I
    goto :goto_7

    .line 3795
    .end local v16    # "bigPacketLength":I
    .restart local v8    # "bigPacketLength":I
    :catch_6
    move-exception v0

    move/from16 v16, v8

    .line 3796
    .end local v8    # "bigPacketLength":I
    .local v0, "ioEx":Ljava/io/IOException;
    .restart local v16    # "bigPacketLength":I
    :goto_6
    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "MysqlIO.60"

    invoke-static {v12}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3798
    .local v8, "messageBuf":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_9

    iget-object v12, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v12

    if-nez v12, :cond_9

    .line 3799
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3804
    :cond_9
    const-string v4, "MysqlIO.63"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3806
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3807
    const-string v4, "MysqlIO.64"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3811
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v12, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-static {v4, v12, v15}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v7    # "filePacket":Lcom/mysql/jdbc/Buffer;
    .end local v9    # "smallerPacketSizeAligned":I
    .end local v10    # "oneMeg":I
    .end local v11    # "packetLength":I
    .end local v13    # "fileBuf":[B
    .end local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .end local v16    # "bigPacketLength":I
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "fileName":Ljava/lang/String;
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3813
    .end local v0    # "ioEx":Ljava/io/IOException;
    .end local v8    # "messageBuf":Ljava/lang/StringBuilder;
    .restart local v7    # "filePacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "smallerPacketSizeAligned":I
    .restart local v10    # "oneMeg":I
    .restart local v11    # "packetLength":I
    .restart local v13    # "fileBuf":[B
    .restart local v14    # "fileIn":Ljava/io/BufferedInputStream;
    .restart local v16    # "bigPacketLength":I
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "fileName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    .line 3828
    :goto_7
    if-eqz v14, :cond_b

    .line 3815
    :try_start_c
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 3821
    nop

    .line 3823
    const/4 v14, 0x0

    goto :goto_8

    .line 3816
    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3817
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v6, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .line 3820
    .restart local v4    # "sqlEx":Ljava/sql/SQLException;
    throw v4

    .line 3826
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "sqlEx":Ljava/sql/SQLException;
    :cond_b
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3827
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {v1, v7, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3828
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    :goto_8
    nop

    .line 3813
    throw v0
.end method

.method private final sendSplitPackets(Lcom/mysql/jdbc/Buffer;I)V
    .locals 12
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "packetLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4052
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    .line 4053
    .local v0, "packetToSend":Lcom/mysql/jdbc/Buffer;
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/Buffer;

    .line 4059
    .local v1, "toCompress":Lcom/mysql/jdbc/Buffer;
    :cond_2
    :goto_1
    const/4 v2, 0x4

    if-nez v0, :cond_3

    .line 4060
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v0, v3

    .line 4061
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    .line 4063
    :cond_3
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v3, :cond_5

    .line 4064
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    div-int v3, p2, v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p2

    .line 4065
    .local v3, "cbuflen":I
    if-nez v1, :cond_4

    .line 4066
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v4, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v1, v4

    .line 4067
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    goto :goto_2

    .line 4068
    :cond_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    if-ge v4, v3, :cond_5

    .line 4069
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4070
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 4074
    .end local v3    # "cbuflen":I
    :cond_5
    :goto_2
    add-int/lit8 v3, p2, -0x4

    .line 4075
    .local v3, "len":I
    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 4076
    .local v4, "splitSize":I
    const/4 v5, 0x4

    .line 4077
    .local v5, "originalPacketPos":I
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    .line 4079
    .local v6, "origPacketBytes":[B
    const/4 v7, 0x0

    .line 4082
    .local v7, "toCompressPosition":I
    :goto_3
    const/4 v8, 0x0

    if-ltz v3, :cond_9

    .line 4083
    iget-byte v9, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    iput-byte v9, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4085
    if-ge v3, v4, :cond_6

    .line 4086
    move v4, v3

    .line 4089
    :cond_6
    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4090
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 4091
    iget-byte v9, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    invoke-virtual {v0, v9}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4092
    if-lez v3, :cond_7

    .line 4093
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v9

    invoke-static {v6, v5, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4096
    :cond_7
    iget-boolean v9, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v9, :cond_8

    .line 4097
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v9

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v10

    add-int/lit8 v11, v4, 0x4

    invoke-static {v9, v8, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4098
    add-int/lit8 v8, v4, 0x4

    add-int/2addr v7, v8

    goto :goto_4

    .line 4100
    :cond_8
    iget-object v9, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v10

    add-int/lit8 v11, v4, 0x4

    invoke-virtual {v9, v10, v8, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4101
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4104
    :goto_4
    add-int/2addr v5, v4

    .line 4105
    iget v8, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    sub-int/2addr v3, v8

    goto :goto_3

    .line 4110
    :cond_9
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v2, :cond_b

    .line 4111
    move v2, v7

    .line 4112
    .end local v3    # "len":I
    .local v2, "len":I
    const/4 v3, 0x0

    .line 4113
    .end local v7    # "toCompressPosition":I
    .local v3, "toCompressPosition":I
    iget v7, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/lit8 v7, v7, -0x3

    .line 4114
    .end local v4    # "splitSize":I
    .local v7, "splitSize":I
    :goto_5
    if-ltz v2, :cond_b

    .line 4115
    iget-byte v4, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 4117
    if-ge v2, v7, :cond_a

    .line 4118
    move v4, v2

    move v7, v4

    .line 4121
    :cond_a
    invoke-direct {p0, v1, v3, v7}, Lcom/mysql/jdbc/MysqlIO;->compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 4122
    .local v4, "compressedPacketToSend":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v9

    move p2, v9

    .line 4123
    iget-object v9, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v10

    invoke-virtual {v9, v10, v8, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4124
    iget-object v9, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4126
    add-int/2addr v3, v7

    .line 4127
    iget v9, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, -0x3

    sub-int/2addr v2, v9

    .line 4128
    .end local v4    # "compressedPacketToSend":Lcom/mysql/jdbc/Buffer;
    goto :goto_5

    .line 4133
    .end local v0    # "packetToSend":Lcom/mysql/jdbc/Buffer;
    .end local v1    # "toCompress":Lcom/mysql/jdbc/Buffer;
    .end local v2    # "len":I
    .end local v3    # "toCompressPosition":I
    .end local v5    # "originalPacketPos":I
    .end local v6    # "origPacketBytes":[B
    .end local v7    # "splitSize":I
    :cond_b
    nop

    .line 4134
    return-void

    .line 4130
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 4131
    .local v5, "ioEx":Ljava/io/IOException;
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private setServerSlowQueryFlags()V
    .locals 4

    .line 3162
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 3163
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 3164
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 3165
    return-void
.end method

.method private final skipFully(Ljava/io/InputStream;J)J
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2979
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 2983
    const-wide/16 v2, 0x0

    .line 2985
    .local v2, "n":J
    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    .line 2986
    sub-long v4, p2, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 2988
    .local v4, "count":J
    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    .line 2992
    add-long/2addr v2, v4

    .line 2993
    .end local v4    # "count":J
    goto :goto_0

    .line 2989
    .restart local v4    # "count":J
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    const-string v6, "MysqlIO.EOF"

    invoke-static {v6, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2995
    .end local v4    # "count":J
    :cond_1
    return-wide v2

    .line 2980
    .end local v2    # "n":J
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Negative skip length not allowed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final skipLengthEncodedInteger(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2999
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3001
    .local v0, "sw":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3012
    return v1

    .line 3009
    :pswitch_0
    const-wide/16 v2, 0x8

    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    long-to-int v3, v2

    add-int/2addr v3, v1

    return v3

    .line 3006
    :pswitch_1
    const-wide/16 v2, 0x3

    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    long-to-int v3, v2

    add-int/2addr v3, v1

    return v3

    .line 3003
    :pswitch_2
    const-wide/16 v2, 0x2

    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    long-to-int v3, v2

    add-int/2addr v3, v1

    return v3

    :pswitch_data_0
    .packed-switch 0xfc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final unpackBinaryResultSetRow([Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/ResultSetRow;
    .locals 7
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "binaryData"    # Lcom/mysql/jdbc/Buffer;
    .param p3, "resultSetConcurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4418
    array-length v0, p1

    .line 4420
    .local v0, "numFields":I
    new-array v1, v0, [[B

    .line 4426
    .local v1, "unpackedRowData":[[B
    add-int/lit8 v2, v0, 0x9

    div-int/lit8 v2, v2, 0x8

    .line 4427
    .local v2, "nullCount":I
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 4428
    .local v3, "nullMaskPos":I
    add-int v4, v3, v2

    invoke-virtual {p2, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4429
    const/4 v4, 0x4

    .line 4435
    .local v4, "bit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 4436
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v6

    and-int/2addr v6, v4

    if-eqz v6, :cond_0

    .line 4437
    const/4 v6, 0x0

    aput-object v6, v1, v5

    goto :goto_1

    .line 4439
    :cond_0
    const/16 v6, 0x3f0

    if-eq p3, v6, :cond_1

    .line 4440
    invoke-direct {p0, p2, p1, v5, v1}, Lcom/mysql/jdbc/MysqlIO;->extractNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V

    goto :goto_1

    .line 4442
    :cond_1
    invoke-direct {p0, p2, p1, v5, v1}, Lcom/mysql/jdbc/MysqlIO;->unpackNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V

    .line 4446
    :goto_1
    shl-int/lit8 v6, v4, 0x1

    move v4, v6

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_2

    .line 4447
    const/4 v4, 0x1

    .line 4449
    add-int/lit8 v3, v3, 0x1

    .line 4435
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4453
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v5
.end method

.method private final unpackNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V
    .locals 38
    .param p1, "binaryData"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p3, "columnIndex"    # I
    .param p4, "unpackedRowData"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4534
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    aget-object v3, v1, v2

    .line 4536
    .local v3, "curField":Lcom/mysql/jdbc/Field;
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const-string v5, "S1009"

    const-string v6, "exception"

    const-string v7, "convertToNull"

    const/4 v13, 0x2

    const/16 v15, 0x3a

    const/16 v16, 0x1

    const/16 v8, 0x8

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xa

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    sparse-switch v4, :sswitch_data_0

    move-object/from16 v4, p1

    const/4 v0, 0x0

    move v5, v0

    .local v5, "nanosOffset":I
    move v6, v0

    .local v6, "nanos":I
    move-wide/from16 v7, v22

    .local v7, "doubleVal":D
    move v9, v0

    .local v9, "intVal":I
    move-wide/from16 v10, v24

    .local v10, "longVal":J
    move-object/from16 v12, v19

    .local v12, "datetimeAsBytes":[B
    move v13, v0

    .local v13, "after100":I
    move-object/from16 v14, v19

    .local v14, "timeAsBytes":[B
    move v15, v0

    .local v15, "stringLength":I
    move/from16 v16, v0

    .local v16, "minute":I
    move/from16 v17, v0

    .local v17, "seconds":I
    move/from16 v18, v0

    .local v18, "year":I
    move/from16 v20, v0

    .local v20, "after1000":I
    move/from16 v21, v0

    .local v21, "month":I
    move-object/from16 v22, v19

    .local v22, "dateAsBytes":[B
    move/from16 v23, v0

    .local v23, "day":I
    move/from16 v24, v0

    .local v19, "nanosAsBytes":[B
    .local v24, "tinyVal":B
    move/from16 v25, v0

    .local v25, "hour":I
    move/from16 v27, v0

    .line 4827
    .local v0, "shortVal":S
    .local v26, "floatVal":F
    .local v27, "length":I
    move/from16 v28, v0

    .end local v0    # "shortVal":S
    .local v28, "shortVal":S
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MysqlIO.97"

    invoke-static/range {v29 .. v29}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.98"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.99"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.100"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v1, "S1000"

    invoke-static {v0, v1, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4536
    .end local v5    # "nanosOffset":I
    .end local v6    # "nanos":I
    .end local v7    # "doubleVal":D
    .end local v9    # "intVal":I
    .end local v10    # "longVal":J
    .end local v12    # "datetimeAsBytes":[B
    .end local v13    # "after100":I
    .end local v14    # "timeAsBytes":[B
    .end local v15    # "stringLength":I
    .end local v16    # "minute":I
    .end local v17    # "seconds":I
    .end local v18    # "year":I
    .end local v19    # "nanosAsBytes":[B
    .end local v20    # "after1000":I
    .end local v21    # "month":I
    .end local v22    # "dateAsBytes":[B
    .end local v23    # "day":I
    .end local v24    # "tinyVal":B
    .end local v25    # "hour":I
    .end local v26    # "floatVal":F
    .end local v27    # "length":I
    .end local v28    # "shortVal":S
    :sswitch_0
    move v4, v9

    .local v4, "tinyVal":B
    move-wide/from16 v5, v22

    .local v5, "doubleVal":D
    move v7, v9

    .local v7, "intVal":I
    move-wide/from16 v17, v24

    .local v17, "longVal":J
    move/from16 v19, v26

    .local v19, "floatVal":F
    move/from16 v22, v9

    .line 4616
    .local v22, "shortVal":S
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v11

    long-to-int v12, v11

    .line 4618
    .local v12, "length":I
    const/4 v11, 0x0

    .line 4619
    .local v11, "hour":I
    const/16 v23, 0x0

    .line 4620
    .local v23, "minute":I
    const/16 v24, 0x0

    .line 4622
    .local v24, "seconds":I
    if-eqz v12, :cond_0

    .line 4623
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 4624
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    .line 4625
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v11

    .line 4626
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v23

    .line 4627
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v24

    .line 4629
    if-le v12, v8, :cond_0

    .line 4630
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    .line 4634
    :cond_0
    new-array v8, v8, [B

    .line 4636
    .local v8, "timeAsBytes":[B
    div-int/lit8 v14, v11, 0xa

    invoke-static {v14, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v8, v9

    .line 4637
    rem-int/lit8 v9, v11, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v8, v16

    .line 4639
    aput-byte v15, v8, v13

    .line 4641
    div-int/lit8 v9, v23, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    const/4 v13, 0x3

    aput-byte v9, v8, v13

    .line 4642
    rem-int/lit8 v9, v23, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    const/4 v13, 0x4

    aput-byte v9, v8, v13

    .line 4644
    const/4 v9, 0x5

    aput-byte v15, v8, v9

    .line 4646
    div-int/lit8 v9, v24, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    const/4 v13, 0x6

    aput-byte v9, v8, v13

    .line 4647
    rem-int/lit8 v9, v24, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    const/4 v10, 0x7

    aput-byte v9, v8, v10

    .line 4649
    aput-object v8, p4, v2

    .line 4651
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    .end local v4    # "tinyVal":B
    .end local v5    # "doubleVal":D
    .end local v7    # "intVal":I
    .end local v8    # "timeAsBytes":[B
    .end local v11    # "hour":I
    .end local v12    # "length":I
    .end local v17    # "longVal":J
    .end local v19    # "floatVal":F
    .end local v22    # "shortVal":S
    .end local v23    # "minute":I
    .end local v24    # "seconds":I
    :sswitch_1
    move v4, v9

    .restart local v4    # "tinyVal":B
    move v11, v9

    .restart local v11    # "hour":I
    move v12, v9

    .restart local v12    # "length":I
    move-wide/from16 v14, v22

    .local v14, "doubleVal":D
    move/from16 v22, v9

    .local v22, "intVal":I
    move-wide/from16 v23, v24

    .local v23, "longVal":J
    move/from16 v25, v26

    .local v25, "floatVal":F
    move/from16 v26, v9

    .local v26, "shortVal":S
    move/from16 v30, v9

    .local v30, "minute":I
    move/from16 v31, v9

    .local v31, "seconds":I
    move-object/from16 v32, v19

    .line 4654
    .local v32, "timeAsBytes":[B
    move-wide/from16 v33, v14

    .end local v14    # "doubleVal":D
    .local v33, "doubleVal":D
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v13

    long-to-int v12, v13

    .line 4656
    const/4 v13, 0x0

    .line 4657
    .local v13, "year":I
    const/4 v14, 0x0

    .line 4658
    .local v14, "month":I
    const/4 v15, 0x0

    .line 4660
    .local v15, "day":I
    const/4 v11, 0x0

    .line 4661
    const/16 v30, 0x0

    .line 4662
    const/16 v31, 0x0

    .line 4664
    if-eqz v12, :cond_1

    .line 4665
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v13

    .line 4666
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v14

    .line 4667
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v15

    .line 4670
    :cond_1
    if-nez v13, :cond_4

    if-nez v14, :cond_4

    if-nez v15, :cond_4

    .line 4671
    iget-object v8, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4672
    aput-object v19, p4, v2

    .line 4674
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4675
    :cond_2
    iget-object v7, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4680
    const/4 v13, 0x1

    .line 4681
    const/4 v14, 0x1

    .line 4682
    const/4 v15, 0x1

    goto :goto_0

    .line 4676
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    const-string v7, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    invoke-static {v7, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 4685
    :cond_4
    :goto_0
    new-array v5, v10, [B

    .line 4687
    .local v5, "dateAsBytes":[B
    div-int/lit16 v6, v13, 0x3e8

    invoke-static {v6, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v9

    .line 4689
    rem-int/lit16 v6, v13, 0x3e8

    .line 4691
    .local v6, "after1000":I
    div-int/lit8 v7, v6, 0x64

    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v16

    .line 4693
    rem-int/lit8 v7, v6, 0x64

    .line 4695
    .local v7, "after100":I
    div-int/lit8 v8, v7, 0xa

    invoke-static {v8, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x2

    aput-byte v8, v5, v9

    .line 4696
    rem-int/lit8 v8, v7, 0xa

    invoke-static {v8, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v5, v9

    .line 4698
    const/16 v8, 0x2d

    const/4 v9, 0x4

    aput-byte v8, v5, v9

    .line 4700
    div-int/lit8 v8, v14, 0xa

    invoke-static {v8, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x5

    aput-byte v8, v5, v9

    .line 4701
    rem-int/lit8 v8, v14, 0xa

    invoke-static {v8, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x6

    aput-byte v8, v5, v9

    .line 4703
    const/4 v8, 0x7

    const/16 v9, 0x2d

    aput-byte v9, v5, v8

    .line 4705
    div-int/lit8 v8, v15, 0xa

    invoke-static {v8, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/16 v9, 0x8

    aput-byte v8, v5, v9

    .line 4706
    rem-int/lit8 v8, v15, 0xa

    invoke-static {v8, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/16 v9, 0x9

    aput-byte v8, v5, v9

    .line 4708
    aput-object v5, p4, v2

    .line 4710
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    .end local v4    # "tinyVal":B
    .end local v5    # "dateAsBytes":[B
    .end local v6    # "after1000":I
    .end local v7    # "after100":I
    .end local v11    # "hour":I
    .end local v12    # "length":I
    .end local v13    # "year":I
    .end local v14    # "month":I
    .end local v15    # "day":I
    .end local v22    # "intVal":I
    .end local v23    # "longVal":J
    .end local v25    # "floatVal":F
    .end local v26    # "shortVal":S
    .end local v30    # "minute":I
    .end local v31    # "seconds":I
    .end local v32    # "timeAsBytes":[B
    .end local v33    # "doubleVal":D
    :sswitch_2
    move v4, v9

    .restart local v4    # "tinyVal":B
    move v5, v9

    .local v5, "intVal":I
    move v6, v9

    .line 4586
    .local v6, "shortVal":S
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v7

    .line 4588
    .local v7, "longVal":J
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v9

    if-nez v9, :cond_5

    .line 4589
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, p4, v2

    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4591
    :cond_5
    invoke-static {v7, v8}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 4593
    .local v9, "asBigInteger":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, p4, v2

    .line 4596
    .end local v9    # "asBigInteger":Ljava/math/BigInteger;
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    .end local v4    # "tinyVal":B
    .end local v5    # "intVal":I
    .end local v6    # "shortVal":S
    .end local v7    # "longVal":J
    :sswitch_3
    move v4, v9

    .restart local v4    # "tinyVal":B
    move v8, v9

    .local v8, "hour":I
    move v11, v9

    .local v11, "length":I
    move-wide/from16 v12, v22

    .local v12, "doubleVal":D
    move v14, v9

    .local v14, "intVal":I
    move-wide/from16 v22, v24

    .local v22, "longVal":J
    move/from16 v24, v26

    .local v24, "floatVal":F
    move/from16 v25, v9

    .local v25, "after100":I
    move/from16 v26, v9

    .restart local v26    # "shortVal":S
    move/from16 v30, v9

    .local v30, "after1000":I
    move/from16 v31, v9

    .local v31, "minute":I
    move/from16 v32, v9

    .local v32, "seconds":I
    move/from16 v33, v9

    .local v33, "year":I
    move-object/from16 v34, v19

    .local v34, "timeAsBytes":[B
    move-object/from16 v35, v19

    .local v35, "dateAsBytes":[B
    move/from16 v36, v9

    .local v36, "day":I
    move/from16 v37, v9

    .line 4714
    .local v37, "month":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v9

    long-to-int v10, v9

    .line 4716
    .end local v11    # "length":I
    .local v10, "length":I
    const/4 v9, 0x0

    .line 4717
    .end local v33    # "year":I
    .local v9, "year":I
    const/4 v11, 0x0

    .line 4718
    .end local v37    # "month":I
    .local v11, "month":I
    const/16 v33, 0x0

    .line 4720
    .end local v36    # "day":I
    .local v33, "day":I
    const/4 v8, 0x0

    .line 4721
    const/16 v31, 0x0

    .line 4722
    const/16 v32, 0x0

    .line 4724
    const/16 v36, 0x0

    .line 4726
    .local v36, "nanos":I
    if-eqz v10, :cond_6

    .line 4727
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v9

    .line 4728
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v11

    .line 4729
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v33

    .line 4731
    const/4 v15, 0x4

    if-le v10, v15, :cond_6

    .line 4732
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v8

    .line 4733
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v31

    .line 4734
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v32

    .line 4742
    :cond_6
    if-nez v9, :cond_9

    if-nez v11, :cond_9

    if-nez v33, :cond_9

    .line 4743
    iget-object v15, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4744
    aput-object v19, p4, v2

    .line 4746
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4747
    :cond_7
    iget-object v7, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 4752
    const/4 v9, 0x1

    .line 4753
    const/4 v11, 0x1

    .line 4754
    const/16 v33, 0x1

    goto :goto_1

    .line 4748
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    const-string v7, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    invoke-static {v7, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 4757
    :cond_9
    :goto_1
    const/16 v5, 0x13

    .line 4759
    .local v5, "stringLength":I
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 4761
    .local v6, "nanosAsBytes":[B
    array-length v7, v6

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v5, v7

    .line 4763
    new-array v7, v5, [B

    .line 4765
    .local v7, "datetimeAsBytes":[B
    div-int/lit16 v15, v9, 0x3e8

    const/16 v0, 0xa

    invoke-static {v15, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v15

    int-to-byte v15, v15

    const/16 v19, 0x0

    aput-byte v15, v7, v19

    .line 4767
    rem-int/lit16 v15, v9, 0x3e8

    .line 4769
    .end local v30    # "after1000":I
    .local v15, "after1000":I
    move/from16 v30, v4

    .end local v4    # "tinyVal":B
    .local v30, "tinyVal":B
    div-int/lit8 v4, v15, 0x64

    invoke-static {v4, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v16

    .line 4771
    rem-int/lit8 v4, v15, 0x64

    .line 4773
    .end local v25    # "after100":I
    .local v4, "after100":I
    move/from16 v16, v5

    .end local v5    # "stringLength":I
    .local v16, "stringLength":I
    div-int/lit8 v5, v4, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v19, 0x2

    aput-byte v5, v7, v19

    .line 4774
    rem-int/lit8 v5, v4, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v19, 0x3

    aput-byte v5, v7, v19

    .line 4776
    const/16 v5, 0x2d

    const/16 v18, 0x4

    aput-byte v5, v7, v18

    .line 4778
    div-int/lit8 v5, v11, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v19, 0x5

    aput-byte v5, v7, v19

    .line 4779
    rem-int/lit8 v5, v11, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v19, 0x6

    aput-byte v5, v7, v19

    .line 4781
    const/4 v5, 0x7

    const/16 v18, 0x2d

    aput-byte v18, v7, v5

    .line 4783
    div-int/lit8 v5, v33, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v18, 0x8

    aput-byte v5, v7, v18

    .line 4784
    rem-int/lit8 v5, v33, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v17, 0x9

    aput-byte v5, v7, v17

    .line 4786
    const/16 v5, 0x20

    aput-byte v5, v7, v0

    .line 4788
    div-int/lit8 v5, v8, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v17, 0xb

    aput-byte v5, v7, v17

    .line 4789
    rem-int/lit8 v5, v8, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v17, 0xc

    aput-byte v5, v7, v17

    .line 4791
    const/16 v5, 0xd

    const/16 v17, 0x3a

    aput-byte v17, v7, v5

    .line 4793
    div-int/lit8 v5, v31, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v17, 0xe

    aput-byte v5, v7, v17

    .line 4794
    rem-int/lit8 v5, v31, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v17, 0xf

    aput-byte v5, v7, v17

    .line 4796
    const/16 v5, 0x10

    const/16 v17, 0x3a

    aput-byte v17, v7, v5

    .line 4798
    div-int/lit8 v5, v32, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/16 v17, 0x11

    aput-byte v5, v7, v17

    .line 4799
    rem-int/lit8 v5, v32, 0xa

    invoke-static {v5, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    int-to-byte v0, v0

    const/16 v5, 0x12

    aput-byte v0, v7, v5

    .line 4801
    const/16 v0, 0x13

    const/16 v5, 0x2e

    aput-byte v5, v7, v0

    .line 4803
    const/16 v0, 0x14

    .line 4805
    .local v0, "nanosOffset":I
    const/16 v5, 0x14

    move/from16 v17, v0

    .end local v0    # "nanosOffset":I
    .local v17, "nanosOffset":I
    array-length v0, v6

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "after100":I
    .local v18, "after100":I
    invoke-static {v6, v4, v7, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4807
    aput-object v7, p4, v2

    .line 4809
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4538
    .end local v6    # "nanosAsBytes":[B
    .end local v7    # "datetimeAsBytes":[B
    .end local v8    # "hour":I
    .end local v9    # "year":I
    .end local v10    # "length":I
    .end local v11    # "month":I
    .end local v12    # "doubleVal":D
    .end local v14    # "intVal":I
    .end local v15    # "after1000":I
    .end local v16    # "stringLength":I
    .end local v17    # "nanosOffset":I
    .end local v18    # "after100":I
    .end local v22    # "longVal":J
    .end local v24    # "floatVal":F
    .end local v26    # "shortVal":S
    .end local v30    # "tinyVal":B
    .end local v31    # "minute":I
    .end local v32    # "seconds":I
    .end local v33    # "day":I
    .end local v34    # "timeAsBytes":[B
    .end local v35    # "dateAsBytes":[B
    .end local v36    # "nanos":I
    :sswitch_4
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    :sswitch_5
    const/4 v4, 0x0

    move v0, v4

    .local v0, "tinyVal":B
    move v5, v4

    .local v5, "intVal":I
    move-wide/from16 v6, v24

    .local v6, "longVal":J
    move/from16 v8, v26

    .line 4608
    .local v4, "shortVal":S
    .local v8, "floatVal":F
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 4610
    .local v9, "doubleVal":D
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, p4, v2

    .line 4612
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    .end local v0    # "tinyVal":B
    .end local v4    # "shortVal":S
    .end local v5    # "intVal":I
    .end local v6    # "longVal":J
    .end local v8    # "floatVal":F
    .end local v9    # "doubleVal":D
    :sswitch_6
    const/4 v4, 0x0

    move v0, v4

    .restart local v0    # "tinyVal":B
    move v5, v4

    .restart local v5    # "intVal":I
    move-wide/from16 v6, v24

    .line 4600
    .restart local v4    # "shortVal":S
    .restart local v6    # "longVal":J
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readIntAsLong()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 4602
    .restart local v8    # "floatVal":F
    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, p4, v2

    .line 4604
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    .end local v0    # "tinyVal":B
    .end local v4    # "shortVal":S
    .end local v5    # "intVal":I
    .end local v6    # "longVal":J
    .end local v8    # "floatVal":F
    :sswitch_7
    const/4 v4, 0x0

    move v0, v4

    .line 4572
    .restart local v0    # "tinyVal":B
    .restart local v4    # "shortVal":S
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v5

    long-to-int v6, v5

    .line 4574
    .local v6, "intVal":I
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v5

    if-nez v5, :cond_a

    .line 4575
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p4, v2

    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4577
    :cond_a
    int-to-long v7, v6

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 4579
    .local v7, "longVal":J
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p4, v2

    .line 4582
    .end local v7    # "longVal":J
    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4536
    .end local v0    # "tinyVal":B
    .end local v4    # "shortVal":S
    .end local v6    # "intVal":I
    :sswitch_8
    const/4 v0, 0x0

    .line 4557
    .restart local v0    # "tinyVal":B
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v4

    int-to-short v4, v4

    .line 4559
    .restart local v4    # "shortVal":S
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4560
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p4, v2

    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 4562
    :cond_b
    const v5, 0xffff

    and-int/2addr v5, v4

    .line 4564
    .local v5, "unsignedShortVal":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, p4, v2

    .line 4567
    .end local v5    # "unsignedShortVal":I
    move-object/from16 v4, p1

    goto :goto_2

    .line 4542
    .end local v0    # "tinyVal":B
    .end local v4    # "shortVal":S
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    .line 4544
    .restart local v0    # "tinyVal":B
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_c

    .line 4545
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, p4, v2

    move-object/from16 v4, p1

    goto :goto_2

    .line 4547
    :cond_c
    and-int/lit16 v4, v0, 0xff

    int-to-short v4, v4

    .line 4549
    .local v4, "unsignedTinyVal":S
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, p4, v2

    .line 4552
    .end local v4    # "unsignedTinyVal":S
    move-object/from16 v4, p1

    goto :goto_2

    .line 4536
    .end local v0    # "tinyVal":B
    :sswitch_a
    const/4 v0, 0x0

    move v4, v0

    .local v4, "nanosOffset":I
    move v5, v0

    .local v5, "nanos":I
    move-wide/from16 v6, v22

    .local v6, "doubleVal":D
    move v8, v0

    .local v8, "intVal":I
    move-wide/from16 v9, v24

    .local v9, "longVal":J
    move-object/from16 v11, v19

    .local v11, "datetimeAsBytes":[B
    move v12, v0

    .local v12, "after100":I
    move-object/from16 v13, v19

    .local v13, "timeAsBytes":[B
    move v14, v0

    .local v14, "stringLength":I
    move v15, v0

    .local v15, "minute":I
    move/from16 v16, v0

    .local v16, "seconds":I
    move/from16 v17, v0

    .local v17, "year":I
    move/from16 v18, v0

    .local v18, "after1000":I
    move/from16 v20, v0

    .local v20, "month":I
    move-object/from16 v21, v19

    .local v21, "dateAsBytes":[B
    move/from16 v22, v0

    .local v22, "day":I
    move/from16 v23, v0

    .local v19, "nanosAsBytes":[B
    .local v23, "tinyVal":B
    move/from16 v24, v0

    .local v24, "hour":I
    move/from16 v25, v0

    .local v25, "length":I
    .local v26, "floatVal":F
    move/from16 v27, v0

    .line 4822
    .local v27, "shortVal":S
    move/from16 v28, v4

    move-object/from16 v4, p1

    .end local v4    # "nanosOffset":I
    .local v28, "nanosOffset":I
    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v0

    aput-object v0, p4, v2

    .line 4824
    nop

    .line 4832
    .end local v5    # "nanos":I
    .end local v6    # "doubleVal":D
    .end local v8    # "intVal":I
    .end local v9    # "longVal":J
    .end local v11    # "datetimeAsBytes":[B
    .end local v12    # "after100":I
    .end local v13    # "timeAsBytes":[B
    .end local v14    # "stringLength":I
    .end local v15    # "minute":I
    .end local v16    # "seconds":I
    .end local v17    # "year":I
    .end local v18    # "after1000":I
    .end local v19    # "nanosAsBytes":[B
    .end local v20    # "month":I
    .end local v21    # "dateAsBytes":[B
    .end local v22    # "day":I
    .end local v23    # "tinyVal":B
    .end local v24    # "hour":I
    .end local v25    # "length":I
    .end local v26    # "floatVal":F
    .end local v27    # "shortVal":S
    .end local v28    # "nanosOffset":I
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_3
        0xd -> :sswitch_8
        0xf -> :sswitch_a
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_a
        0xf6 -> :sswitch_a
        0xf9 -> :sswitch_a
        0xfa -> :sswitch_a
        0xfb -> :sswitch_a
        0xfc -> :sswitch_a
        0xfd -> :sswitch_a
        0xfe -> :sswitch_a
    .end sparse-switch
.end method

.method public static useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z
    .locals 3
    .param p0, "fields"    # [Lcom/mysql/jdbc/Field;

    .line 3384
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3385
    return v0

    .line 3388
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3389
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3394
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 3398
    .end local v1    # "i":I
    :cond_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected changeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 803
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, -0x1

    iput-byte v0, v8, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 804
    iput-byte v0, v8, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 806
    const/16 v12, 0x10

    .line 807
    .local v12, "passwordLength":I
    const/4 v0, 0x0

    if-eqz v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v13, v1

    .line 808
    .local v13, "userLength":I
    if-eqz v11, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v14, v1

    .line 810
    .local v14, "databaseLength":I
    add-int v1, v13, v12

    add-int/2addr v1, v14

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v15, v1, 0x21

    .line 812
    .local v15, "packLength":I
    iget v1, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v3, 0x80000

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 814
    const/4 v0, 0x0

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/mysql/jdbc/MysqlIO;->proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V

    goto/16 :goto_4

    .line 816
    :cond_2
    const v3, 0x8000

    and-int/2addr v1, v3

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 817
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v15, 0x1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v7, v0

    .line 818
    .local v7, "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v7, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 820
    invoke-virtual {v8, v2, v4, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    const/4 v6, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v17, v7

    .end local v7    # "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    .local v17, "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 823
    .end local v17    # "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v7    # "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    :cond_3
    move-object/from16 v17, v7

    .end local v7    # "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v17    # "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 825
    .end local v17    # "changeUserPacket":Lcom/mysql/jdbc/Buffer;
    :goto_2
    goto :goto_4

    .line 827
    :cond_4
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v15}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 828
    .local v1, "packet":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 831
    invoke-virtual {v1, v9}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 833
    iget-byte v2, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v3, 0x9

    if-le v2, v3, :cond_5

    .line 834
    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 836
    :cond_5
    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 839
    :goto_3
    iget-boolean v2, v8, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v2, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v0, 0x1

    .line 841
    .local v0, "localUseConnectWithDb":Z
    :cond_6
    if-eqz v0, :cond_7

    .line 842
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 845
    :cond_7
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 848
    if-nez v0, :cond_8

    .line 849
    invoke-direct {v8, v11}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 852
    .end local v0    # "localUseConnectWithDb":Z
    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    :cond_8
    :goto_4
    return-void
.end method

.method protected checkErrorPacket()Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 864
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    return-object v0
.end method

.method protected checkForCharsetMismatch()V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 872
    sget-object v0, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;

    .line 874
    .local v0, "encodingToCheck":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 875
    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    :cond_0
    if-nez v0, :cond_1

    .line 879
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    goto :goto_0

    .line 881
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    .line 884
    .end local v0    # "encodingToCheck":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method protected clearInputStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 892
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    move v1, v0

    .local v1, "len":I
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 893
    goto :goto_0

    .line 898
    .end local v1    # "len":I
    :cond_0
    nop

    .line 899
    return-void

    .line 895
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 896
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method closeStreamer(Lcom/mysql/jdbc/RowData;)V
    .locals 2
    .param p1, "streamer"    # Lcom/mysql/jdbc/RowData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_1

    .line 2281
    if-ne p1, v0, :cond_0

    .line 2286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    .line 2287
    return-void

    .line 2282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.19"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.20"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.21"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.22"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2278
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.17"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.18"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method disableMultiQueries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3620
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    .line 3622
    .local v7, "buf":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3623
    const/16 v0, 0x1b

    invoke-virtual {v7, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3624
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 3625
    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 3626
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 3627
    return-void
.end method

.method doHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "database"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1004
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 1005
    iput-byte v1, v9, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v13

    .line 1010
    .local v13, "buf":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    iput-byte v0, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    .line 1012
    const/4 v2, -0x1

    const-string v3, "ASCII"

    if-eq v0, v2, :cond_31

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-virtual {v13, v3, v0}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    .line 1037
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1039
    .local v5, "point":I
    if-eq v5, v2, :cond_3

    .line 1041
    :try_start_0
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1042
    .local v0, "n":I
    iput v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v0    # "n":I
    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1047
    :goto_0
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1048
    .local v6, "remaining":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1050
    if-eq v5, v2, :cond_2

    .line 1052
    :try_start_1
    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1053
    .restart local v0    # "n":I
    iput v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1056
    .end local v0    # "n":I
    goto :goto_1

    .line 1054
    :catch_1
    move-exception v0

    .line 1058
    :goto_1
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1060
    .end local v6    # "remaining":Ljava/lang/String;
    .local v2, "remaining":Ljava/lang/String;
    const/4 v0, 0x0

    move v4, v0

    .line 1062
    .local v4, "pos":I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 1063
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x30

    if-lt v0, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x39

    if-le v0, v6, :cond_0

    .line 1064
    goto :goto_3

    .line 1067
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1071
    :cond_1
    :goto_3
    :try_start_2
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1072
    .restart local v0    # "n":I
    iput v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1075
    .end local v0    # "n":I
    goto :goto_4

    .line 1073
    :catch_2
    move-exception v0

    .line 1079
    .end local v2    # "remaining":Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_2
    :goto_4
    move v14, v5

    goto :goto_5

    .line 1039
    :cond_3
    move v14, v5

    .line 1079
    .end local v5    # "point":I
    .local v14, "point":I
    :goto_5
    const/4 v0, 0x4

    const/16 v2, 0x8

    invoke-virtual {v9, v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    const/4 v15, 0x1

    if-eqz v4, :cond_4

    .line 1080
    const v4, 0xffffff

    iput v4, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 1081
    iput-boolean v15, v9, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    goto :goto_6

    .line 1083
    :cond_4
    const v4, 0xfd02ff

    iput v4, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 1084
    iput-boolean v1, v9, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    .line 1087
    :goto_6
    const/4 v4, 0x3

    const/16 v5, 0x17

    invoke-virtual {v9, v4, v5, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v6

    iput-boolean v6, v9, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 1088
    const/16 v6, 0xf

    invoke-virtual {v9, v4, v5, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v6

    xor-int/2addr v6, v15

    iput-boolean v6, v9, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 1089
    const/16 v6, 0x16

    const/4 v7, 0x5

    invoke-virtual {v9, v4, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v6

    iput-boolean v6, v9, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    .line 1092
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v5

    iput-wide v5, v9, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    .line 1094
    iget-byte v5, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v6, 0x9

    if-le v5, v6, :cond_5

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-virtual {v13, v3, v5, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1098
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readByte()B

    goto :goto_7

    .line 1101
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-virtual {v13, v3, v5}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1104
    :goto_7
    iput v1, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1107
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 1108
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    iput v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1111
    :cond_6
    invoke-virtual {v9, v0, v15, v15}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v5

    const/high16 v8, 0x80000

    const v17, 0x8000

    if-nez v5, :cond_7

    iget-byte v5, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v5, v6, :cond_a

    iget v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_a

    .line 1115
    :cond_7
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 1117
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v5

    iput v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 1118
    invoke-direct {v9, v1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 1121
    iget v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v18

    shl-int/lit8 v18, v18, 0x10

    or-int v5, v5, v18

    iput v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1123
    and-int/2addr v5, v8

    if-eqz v5, :cond_8

    .line 1125
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v9, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    goto :goto_8

    .line 1128
    :cond_8
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 1131
    :goto_8
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v13, v5}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1133
    iget v5, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v5, v5, v17

    if-eqz v5, :cond_a

    .line 1137
    iget v5, v9, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    if-lez v5, :cond_9

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    iget v4, v9, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    sub-int/2addr v4, v2

    invoke-virtual {v13, v3, v5, v4}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "seedPart2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, "newSeed":Ljava/lang/StringBuilder;
    goto :goto_9

    .line 1147
    .end local v3    # "seedPart2":Ljava/lang/String;
    .end local v4    # "newSeed":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v3

    .line 1148
    .restart local v3    # "seedPart2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1150
    .restart local v4    # "newSeed":Ljava/lang/StringBuilder;
    :goto_9
    iget-object v5, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1156
    .end local v3    # "seedPart2":Ljava/lang/String;
    .end local v4    # "newSeed":Ljava/lang/StringBuilder;
    :cond_a
    iget v3, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    iget-object v3, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1157
    iget-wide v3, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x20

    or-long v3, v3, v19

    iput-wide v3, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1160
    :cond_b
    if-eqz v12, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v9, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    .line 1162
    if-eqz v3, :cond_d

    .line 1163
    iget-wide v3, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x8

    or-long v3, v3, v19

    iput-wide v3, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1167
    :cond_d
    const/4 v3, 0x7

    invoke-virtual {v9, v7, v3, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isUseSSLExplicit()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1168
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v15}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    .line 1169
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v1}, Lcom/mysql/jdbc/MySQLConnection;->setVerifyServerCertificate(Z)V

    .line 1170
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    const-string v5, "MysqlIO.SSLWarning"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 1174
    :cond_e
    iget v4, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_10

    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1175
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getRequireSSL()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1182
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v1}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    goto :goto_b

    .line 1176
    :cond_f
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 1178
    const-string v0, "MysqlIO.15"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "08001"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1185
    :cond_10
    :goto_b
    iget v4, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_11

    .line 1187
    iget-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x4

    or-long v4, v4, v19

    iput-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1188
    iput-boolean v15, v9, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    .line 1192
    :cond_11
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseAffectedRows()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1193
    iget-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x2

    or-long v4, v4, v19

    iput-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1196
    :cond_12
    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1197
    iget-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x80

    or-long v4, v4, v19

    iput-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1200
    :cond_13
    iget-boolean v4, v9, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    if-eqz v4, :cond_14

    .line 1201
    iget-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x400

    or-long v4, v4, v19

    iput-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1204
    :cond_14
    iget v4, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1209
    const/high16 v5, 0x1000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_15

    .line 1210
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v19, 0x1000000

    or-long v2, v2, v19

    iput-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1216
    :cond_15
    and-int v2, v4, v8

    if-eqz v2, :cond_16

    .line 1217
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/mysql/jdbc/MysqlIO;->proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V

    .line 1218
    return-void

    .line 1222
    :cond_16
    iget-byte v2, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v6, :cond_17

    .line 1223
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x1

    or-long v2, v2, v19

    iput-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    goto :goto_c

    .line 1225
    :cond_17
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, -0x2

    and-long v2, v2, v19

    iput-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1231
    :goto_c
    invoke-virtual {v9, v0, v15, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v2

    const-wide/16 v3, 0x4000

    if-nez v2, :cond_18

    iget-byte v2, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v6, :cond_1c

    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1c

    .line 1232
    :cond_18
    invoke-virtual {v9, v0, v15, v15}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-byte v2, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v6, :cond_19

    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_19

    goto :goto_d

    .line 1249
    :cond_19
    iget-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    or-long/2addr v7, v3

    iput-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1250
    iput-boolean v1, v9, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    goto :goto_e

    .line 1233
    :cond_1a
    :goto_d
    iget-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v19, 0x200

    or-long v7, v7, v19

    iput-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1234
    iput-boolean v15, v9, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 1237
    const-wide/16 v19, 0x2000

    or-long v7, v7, v19

    iput-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1240
    const-wide/32 v19, 0x20000

    or-long v7, v7, v19

    iput-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1245
    iget-object v7, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1246
    iget-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v19, 0x10000

    or-long v7, v7, v19

    iput-wide v7, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1253
    :cond_1b
    :goto_e
    iput-boolean v15, v9, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 1256
    :cond_1c
    const/16 v19, 0x10

    .line 1257
    .local v19, "passwordLength":I
    if-eqz v10, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_f

    :cond_1d
    const/4 v7, 0x0

    :goto_f
    move/from16 v20, v7

    .line 1258
    .local v20, "userLength":I
    if-eqz v12, :cond_1e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1e
    move/from16 v21, v1

    .line 1260
    .local v21, "databaseLength":I
    add-int v1, v20, v19

    add-int v1, v1, v21

    const/4 v7, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x7

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/lit8 v8, v1, 0x21

    .line 1262
    .local v8, "packLength":I
    const/16 v18, 0x0

    .line 1264
    .local v18, "packet":Lcom/mysql/jdbc/Buffer;
    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1265
    iget v1, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v1, v1, v17

    if-eqz v1, :cond_21

    .line 1266
    iget-wide v1, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v3, 0x8000

    or-long/2addr v1, v3

    iput-wide v1, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1268
    invoke-virtual {v9, v0, v15, v15}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_20

    iget-byte v1, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v1, v6, :cond_1f

    iget v1, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1f

    goto :goto_10

    .line 1271
    :cond_1f
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move v3, v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v15, v8

    const/16 v0, 0x9

    goto/16 :goto_16

    .line 1269
    :cond_20
    :goto_10
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v3, v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v15, v8

    .end local v8    # "packLength":I
    .local v15, "packLength":I
    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/16 v0, 0x9

    goto/16 :goto_16

    .line 1275
    .end local v15    # "packLength":I
    .restart local v8    # "packLength":I
    :cond_21
    move v15, v8

    .end local v8    # "packLength":I
    .restart local v15    # "packLength":I
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v15}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1277
    .end local v18    # "packet":Lcom/mysql/jdbc/Buffer;
    .local v1, "packet":Lcom/mysql/jdbc/Buffer;
    iget-wide v6, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    and-long v2, v6, v3

    const-wide/16 v17, 0x0

    cmp-long v4, v2, v17

    if-eqz v4, :cond_24

    .line 1278
    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v3

    if-nez v3, :cond_23

    iget-byte v2, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v8, 0x9

    if-le v2, v8, :cond_22

    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_22

    goto :goto_11

    .line 1288
    :cond_22
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1289
    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_12

    .line 1278
    :cond_23
    const/16 v8, 0x9

    .line 1279
    :goto_11
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1280
    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1283
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1286
    const/16 v2, 0x17

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_12

    .line 1292
    :cond_24
    const/16 v8, 0x9

    long-to-int v2, v6

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1293
    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 1297
    :goto_12
    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v3, "Cp1252"

    invoke-virtual {v1, v10, v3, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1299
    iget-byte v2, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v8, :cond_25

    .line 1300
    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_13

    .line 1302
    :cond_25
    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1305
    :goto_13
    iget-boolean v2, v9, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v2, :cond_26

    .line 1306
    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v12, v3, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1309
    :cond_26
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    invoke-direct {v9, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move-object/from16 v18, v1

    const/16 v0, 0x9

    goto/16 :goto_16

    .line 1312
    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v15    # "packLength":I
    .restart local v8    # "packLength":I
    .restart local v18    # "packet":Lcom/mysql/jdbc/Buffer;
    :cond_27
    move v15, v8

    const/16 v8, 0x9

    .end local v8    # "packLength":I
    .restart local v15    # "packLength":I
    invoke-direct {v9, v10, v11, v12, v15}, Lcom/mysql/jdbc/MysqlIO;->negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1314
    iget v1, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v1, v1, v17

    if-eqz v1, :cond_29

    .line 1315
    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1316
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    const/16 v0, 0x9

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_16

    .line 1318
    :cond_28
    const/16 v0, 0x9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_16

    .line 1322
    :cond_29
    const/16 v0, 0x9

    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v15}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1324
    .end local v18    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    iget-boolean v2, v9, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v2, :cond_2a

    .line 1325
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1326
    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_14

    .line 1328
    :cond_2a
    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1329
    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 1333
    :goto_14
    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1335
    iget-byte v2, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v0, :cond_2b

    .line 1336
    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v3, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v2, v3}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    goto :goto_15

    .line 1338
    :cond_2b
    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1341
    :goto_15
    iget v2, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_2c

    if-eqz v12, :cond_2c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 1342
    invoke-virtual {v1, v12}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1345
    :cond_2c
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    invoke-direct {v9, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    move-object/from16 v18, v1

    .line 1350
    .end local v1    # "packet":Lcom/mysql/jdbc/Buffer;
    .restart local v18    # "packet":Lcom/mysql/jdbc/Buffer;
    :goto_16
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-byte v1, v9, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v1, v0, :cond_2d

    iget v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2e

    .line 1351
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 1357
    :cond_2e
    iget v0, v9, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2f

    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/mysql/jdbc/CompressedInputStream;

    if-nez v0, :cond_2f

    .line 1359
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 1360
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 1361
    new-instance v0, Lcom/mysql/jdbc/CompressedInputStream;

    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, v9, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/CompressedInputStream;-><init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V

    iput-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 1364
    :cond_2f
    iget-boolean v0, v9, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v0, :cond_30

    .line 1365
    invoke-direct {v9, v12}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 1369
    :cond_30
    :try_start_3
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1373
    nop

    .line 1374
    return-void

    .line 1370
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 1371
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, v9, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, v9, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1014
    .end local v6    # "ioEx":Ljava/io/IOException;
    .end local v14    # "point":I
    .end local v15    # "packLength":I
    .end local v18    # "packet":Lcom/mysql/jdbc/Buffer;
    .end local v19    # "passwordLength":I
    .end local v20    # "userLength":I
    .end local v21    # "databaseLength":I
    :cond_31
    :try_start_4
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1017
    goto :goto_17

    .line 1015
    :catch_4
    move-exception v0

    .line 1019
    :goto_17
    const/16 v0, 0x7d0

    .line 1021
    .local v0, "errno":I
    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v13, v3, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "serverErrorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.10"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v2, "errorBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget-object v3, v9, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v3

    .line 1031
    .local v3, "xOpen":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v3, v0, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
.end method

.method protected dumpPacketRingBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .local v0, "dumpBuffer":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packets received from server, from oldest->newest:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ringBufIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/StringBuilder;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 913
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 917
    .end local v2    # "ringBufIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/StringBuilder;>;"
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 919
    .end local v0    # "dumpBuffer":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method enableMultiQueries()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3610
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    .line 3612
    .local v7, "buf":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3613
    const/16 v0, 0x1b

    invoke-virtual {v7, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3614
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 3615
    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 3616
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 3617
    return-void
.end method

.method protected explainSlowQuery([BLjava/lang/String;)V
    .locals 5
    .param p1, "querySQL"    # [B
    .param p2, "truncatedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 930
    const-string v0, "SELECT"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/mysql/jdbc/MysqlIO;->EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 933
    :cond_0
    const/4 v0, 0x0

    .line 934
    .local v0, "stmt":Lcom/mysql/jdbc/PreparedStatement;
    const/4 v1, 0x0

    .line 937
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v3, "EXPLAIN ?"

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/PreparedStatement;

    move-object v0, v2

    .line 938
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 939
    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.8"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.9"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .local v2, "explainResults":Ljava/lang/StringBuilder;
    invoke-static {v2, v1}, Lcom/mysql/jdbc/util/ResultSetUtil;->appendResultSetSlashGStyle(Ljava/lang/StringBuilder;Ljava/sql/ResultSet;)Ljava/lang/StringBuilder;

    .line 945
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    .end local v2    # "explainResults":Ljava/lang/StringBuilder;
    nop

    .line 957
    if-eqz v1, :cond_1

    .line 949
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 952
    :cond_1
    if-eqz v0, :cond_5

    .line 953
    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v2

    .line 953
    if-eqz v1, :cond_2

    .line 949
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 952
    :cond_2
    if-eqz v0, :cond_3

    .line 953
    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    :cond_3
    nop

    .line 948
    throw v2

    .line 946
    :catch_0
    move-exception v2

    .line 947
    nop

    .line 953
    if-eqz v1, :cond_4

    .line 949
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 952
    :cond_4
    if-eqz v0, :cond_5

    .line 953
    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    :cond_5
    :goto_0
    nop

    .line 955
    nop

    .line 957
    .end local v0    # "stmt":Lcom/mysql/jdbc/PreparedStatement;
    .end local v1    # "rs":Ljava/sql/ResultSet;
    :cond_6
    return-void
.end method

.method protected fetchRowsViaCursor(Ljava/util/List;J[Lcom/mysql/jdbc/Field;IZ)Ljava/util/List;
    .locals 16
    .param p2, "statementId"    # J
    .param p4, "columnTypes"    # [Lcom/mysql/jdbc/Field;
    .param p5, "fetchSize"    # I
    .param p6, "useBufferRowExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;J[",
            "Lcom/mysql/jdbc/Field;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4883
    .local p1, "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    move-object/from16 v9, p0

    move/from16 v10, p5

    if-nez p1, :cond_0

    .line 4884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .end local p1    # "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .local v0, "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    goto :goto_0

    .line 4886
    .end local v0    # "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local p1    # "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    move-object/from16 v11, p1

    .line 4889
    .end local p1    # "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .local v11, "fetchedRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    :goto_0
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 4891
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4892
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    move-wide/from16 v12, p2

    invoke-virtual {v0, v12, v13}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4893
    iget-object v0, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4895
    const/16 v1, 0x1c

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 4897
    const/4 v0, 0x0

    move-object v14, v0

    .line 4899
    .local v14, "row":Lcom/mysql/jdbc/ResultSetRow;
    :goto_1
    move-object/from16 v15, p4

    array-length v2, v15

    const/4 v3, 0x1

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    move-object v14, v0

    if-eqz v0, :cond_1

    .line 4900
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4903
    :cond_1
    return-object v11
.end method

.method protected final forceClose()V
    .locals 2

    .line 487
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getNetworkResources()Lcom/mysql/jdbc/NetworkResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/NetworkResources;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    nop

    .line 493
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 490
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 491
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 492
    nop

    .line 493
    return-void

    .line 489
    :catchall_0
    move-exception v1

    .line 491
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 490
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 491
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 489
    throw v1
.end method

.method protected getCommandCount()I
    .locals 1

    .line 4923
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    return v0
.end method

.method protected getCurrentTimeNanosOrMillis()J
    .locals 2

    .line 2874
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/TimeUtil;->getCurrentTimeNanosOrMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method getEncodingForHandshake()Ljava/lang/String;
    .locals 1

    .line 4975
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 4976
    .local v0, "enc":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4977
    const-string v0, "UTF-8"

    .line 4979
    :cond_0
    return-object v0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 4946
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method getHost()Ljava/lang/String;
    .locals 1

    .line 2881
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected getLastPacketReceivedTimeMs()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    return-wide v0
.end method

.method protected getLastPacketSentTimeMs()J
    .locals 2

    .line 361
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    return-wide v0
.end method

.method protected getNetworkResources()Lcom/mysql/jdbc/NetworkResources;
    .locals 4

    .line 479
    new-instance v0, Lcom/mysql/jdbc/NetworkResources;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1, v2, v3}, Lcom/mysql/jdbc/NetworkResources;-><init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getQueryTimingUnits()Ljava/lang/String;
    .locals 1

    .line 4919
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultSet(Lcom/mysql/jdbc/StatementImpl;JIIIZLjava/lang/String;Z[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 15
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "columnCount"    # J
    .param p4, "maxRows"    # I
    .param p5, "resultSetType"    # I
    .param p6, "resultSetConcurrency"    # I
    .param p7, "streamResults"    # Z
    .param p8, "catalog"    # Ljava/lang/String;
    .param p9, "isBinaryEncoded"    # Z
    .param p10, "metadataFromCache"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 401
    move-object v8, p0

    move-wide/from16 v9, p2

    move/from16 v11, p9

    const/4 v0, 0x0

    .line 405
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v1, 0x0

    if-nez p10, :cond_1

    .line 406
    long-to-int v2, v9

    new-array v0, v2, [Lcom/mysql/jdbc/Field;

    .line 408
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, v9

    if-gez v5, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 411
    .local v3, "fieldPacket":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 412
    invoke-virtual {p0, v3, v1}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v4

    aput-object v4, v0, v2

    .line 408
    .end local v3    # "fieldPacket":Lcom/mysql/jdbc/Buffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v12, v0

    .end local v2    # "i":I
    goto :goto_2

    .line 415
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    int-to-long v3, v2

    cmp-long v5, v3, v9

    if-gez v5, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->skipPacket()V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v12, v0

    .line 421
    .end local v0    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v2    # "i":I
    .local v12, "fields":[Lcom/mysql/jdbc/Field;
    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->isCursorRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    :cond_3
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 426
    .local v0, "packet":Lcom/mysql/jdbc/Buffer;
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    .line 433
    .end local v0    # "packet":Lcom/mysql/jdbc/Buffer;
    :cond_4
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCursorFetch()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v11, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getFetchSize()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getResultSetType()I

    move-result v0

    const/16 v2, 0x3eb

    if-ne v0, v2, :cond_8

    .line 435
    move-object/from16 v13, p1

    check-cast v13, Lcom/mysql/jdbc/ServerPreparedStatement;

    .line 437
    .local v13, "prepStmt":Lcom/mysql/jdbc/ServerPreparedStatement;
    const/4 v0, 0x1

    .line 444
    .local v0, "usingCursor":Z
    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v3, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 445
    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    move v0, v1

    move v14, v0

    goto :goto_3

    .line 444
    :cond_6
    move v14, v0

    .line 448
    .end local v0    # "usingCursor":Z
    .local v14, "usingCursor":Z
    :goto_3
    if-eqz v14, :cond_8

    .line 449
    new-instance v4, Lcom/mysql/jdbc/RowDataCursor;

    invoke-direct {v4, p0, v13, v12}, Lcom/mysql/jdbc/RowDataCursor;-><init>(Lcom/mysql/jdbc/MysqlIO;Lcom/mysql/jdbc/ServerPreparedStatement;[Lcom/mysql/jdbc/Field;)V

    .line 451
    .local v4, "rows":Lcom/mysql/jdbc/RowData;
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object v3, v12

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 453
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetImpl;
    if-eqz v14, :cond_7

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getFetchSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->setFetchSize(I)V

    .line 457
    :cond_7
    return-object v0

    .line 461
    .end local v0    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    .end local v4    # "rows":Lcom/mysql/jdbc/RowData;
    .end local v13    # "prepStmt":Lcom/mysql/jdbc/ServerPreparedStatement;
    .end local v14    # "usingCursor":Z
    :cond_8
    const/4 v7, 0x0

    .line 463
    .local v7, "rowData":Lcom/mysql/jdbc/RowData;
    if-nez p7, :cond_a

    .line 464
    if-nez p10, :cond_9

    move-object v6, v12

    goto :goto_4

    :cond_9
    move-object/from16 v6, p10

    :goto_4
    move-object v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p9

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->readSingleRowSet(JIIZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/RowData;

    move-result-object v0

    move-object v13, v0

    .end local v7    # "rowData":Lcom/mysql/jdbc/RowData;
    .local v0, "rowData":Lcom/mysql/jdbc/RowData;
    goto :goto_6

    .line 466
    .end local v0    # "rowData":Lcom/mysql/jdbc/RowData;
    .restart local v7    # "rowData":Lcom/mysql/jdbc/RowData;
    :cond_a
    new-instance v0, Lcom/mysql/jdbc/RowDataDynamic;

    long-to-int v1, v9

    if-nez p10, :cond_b

    move-object v2, v12

    goto :goto_5

    :cond_b
    move-object/from16 v2, p10

    :goto_5
    invoke-direct {v0, p0, v1, v2, v11}, Lcom/mysql/jdbc/RowDataDynamic;-><init>(Lcom/mysql/jdbc/MysqlIO;I[Lcom/mysql/jdbc/Field;Z)V

    .line 467
    .end local v7    # "rowData":Lcom/mysql/jdbc/RowData;
    .restart local v0    # "rowData":Lcom/mysql/jdbc/RowData;
    iput-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    move-object v13, v0

    .line 470
    .end local v0    # "rowData":Lcom/mysql/jdbc/RowData;
    .local v13, "rowData":Lcom/mysql/jdbc/RowData;
    :goto_6
    if-nez p10, :cond_c

    move-object v3, v12

    goto :goto_7

    :cond_c
    move-object/from16 v3, p10

    :goto_7
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object v4, v13

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 473
    .local v0, "rs":Lcom/mysql/jdbc/ResultSetImpl;
    return-object v0
.end method

.method final getServerMajorVersion()I
    .locals 1

    .line 967
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    return v0
.end method

.method final getServerMinorVersion()I
    .locals 1

    .line 974
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I

    return v0
.end method

.method protected getServerStatus()I
    .locals 1

    .line 4877
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    return v0
.end method

.method final getServerSubMinorVersion()I
    .locals 1

    .line 981
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I

    return v0
.end method

.method getServerVersion()Ljava/lang/String;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method getSharedSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 2

    .line 2269
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v0, :cond_0

    .line 2270
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    return-object v0
.end method

.method protected getSlowQueryThreshold()J
    .locals 2

    .line 4915
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    return-wide v0
.end method

.method protected getThreadId()J
    .locals 2

    .line 4907
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    return-wide v0
.end method

.method hadWarnings()Z
    .locals 1

    .line 4143
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    return v0
.end method

.method public hasLongColumnInfo()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    return v0
.end method

.method protected inTransactionOnServer()Z
    .locals 2

    .line 790
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 16
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "originalResultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p4, "forceExecute"    # Z
    .param p5, "statementException"    # Ljava/sql/SQLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2838
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v12, v1

    move-object/from16 v1, p3

    .end local p3    # "originalResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v1, "originalResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v2, "s":I
    .local v12, "i":I
    :goto_0
    if-ge v12, v2, :cond_4

    .line 2839
    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 2841
    .local v13, "interceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    invoke-interface {v13}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v14

    .line 2842
    .local v14, "executeTopLevelOnly":Z
    const/4 v3, 0x1

    if-eqz v14, :cond_0

    iget v4, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    if-eq v4, v3, :cond_1

    if-nez p4, :cond_1

    :cond_0
    if-nez v14, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v15, v3

    .line 2844
    .local v15, "shouldExecute":Z
    if-eqz v15, :cond_3

    .line 2845
    move-object/from16 v4, p1

    .line 2847
    .local v4, "sqlToInterceptor":Ljava/lang/String;
    iget-object v7, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v8, v0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    iget-boolean v9, v0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    iget-boolean v10, v0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    move-object v3, v13

    move-object/from16 v5, p2

    move-object v6, v1

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v11}, Lcom/mysql/jdbc/StatementInterceptorV2;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    .line 2850
    .local v3, "interceptedResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v3, :cond_3

    .line 2851
    move-object v1, v3

    .line 2838
    .end local v3    # "interceptedResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v4    # "sqlToInterceptor":Ljava/lang/String;
    .end local v13    # "interceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    .end local v14    # "executeTopLevelOnly":Z
    .end local v15    # "shouldExecute":Z
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2856
    .end local v2    # "s":I
    .end local v12    # "i":I
    :cond_4
    return-object v1
.end method

.method invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "interceptedStatement"    # Lcom/mysql/jdbc/Statement;
    .param p3, "forceExecute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2808
    const/4 v0, 0x0

    .line 2810
    .local v0, "previousResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2811
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 2813
    .local v3, "interceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    invoke-interface {v3}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v4

    .line 2814
    .local v4, "executeTopLevelOnly":Z
    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget v6, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    if-eq v6, v5, :cond_1

    if-nez p3, :cond_1

    :cond_0
    if-nez v4, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 2816
    .local v5, "shouldExecute":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 2817
    move-object v6, p1

    .line 2824
    .local v6, "sqlToInterceptor":Ljava/lang/String;
    iget-object v7, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v6, p2, v7}, Lcom/mysql/jdbc/StatementInterceptorV2;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v7

    .line 2826
    .local v7, "interceptedResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v7, :cond_3

    .line 2827
    move-object v0, v7

    .line 2810
    .end local v3    # "interceptor":Lcom/mysql/jdbc/StatementInterceptorV2;
    .end local v4    # "executeTopLevelOnly":Z
    .end local v5    # "shouldExecute":Z
    .end local v6    # "sqlToInterceptor":Ljava/lang/String;
    .end local v7    # "interceptedResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2832
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_4
    return-object v0
.end method

.method protected isDataAvailable()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 351
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 352
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isEOFDeprecated()Z
    .locals 5

    .line 5014
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSSLEstablished()Z
    .locals 1

    .line 4873
    invoke-static {}, Lcom/mysql/jdbc/ExportControlled;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-static {v0}, Lcom/mysql/jdbc/ExportControlled;->isSSLEstablished(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSetNeededForAutoCommitMode(Z)Z
    .locals 4
    .param p1, "autoCommitFlag"    # Z

    .line 773
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getElideSetAutoCommits()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 776
    .local v0, "autoCommitModeOnServer":Z
    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 780
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 783
    :cond_1
    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 786
    .end local v0    # "autoCommitModeOnServer":Z
    :cond_3
    return v1
.end method

.method isVersion(III)Z
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "subminor"    # I

    .line 2899
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v0

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 5
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "columnCount"    # I
    .param p3, "isBinaryEncoded"    # Z
    .param p4, "resultSetConcurrency"    # I
    .param p5, "useBufferRowIfPossible"    # Z
    .param p6, "useBufferRowExplicit"    # Z
    .param p7, "canReuseRowPacketForBufferRow"    # Z
    .param p8, "existingRowPacket"    # Lcom/mysql/jdbc/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1984
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    if-eqz v0, :cond_0

    if-nez p8, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 1985
    invoke-virtual/range {p0 .. p7}, Lcom/mysql/jdbc/MysqlIO;->nextRowFast([Lcom/mysql/jdbc/Field;IZIZZZ)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    return-object v0

    .line 1989
    :cond_0
    const/4 v0, 0x0

    .line 1991
    .local v0, "rowPacket":Lcom/mysql/jdbc/Buffer;
    if-nez p8, :cond_1

    .line 1992
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 1994
    if-nez p6, :cond_2

    if-eqz p5, :cond_2

    .line 1995
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    if-le v1, v2, :cond_2

    .line 1996
    const/4 p6, 0x1

    goto :goto_0

    .line 2001
    :cond_1
    move-object v0, p8

    .line 2002
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    .line 2005
    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x3f0

    const/4 v3, 0x1

    if-nez p3, :cond_a

    .line 2009
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2011
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isEOFPacket()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isResultSetOKPacket()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 2031
    :cond_4
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    .line 2033
    return-object v1

    .line 2012
    :cond_5
    :goto_1
    const/4 v1, 0x0

    if-eq p4, v2, :cond_8

    if-nez p5, :cond_6

    if-nez p6, :cond_6

    goto :goto_2

    .line 2023
    :cond_6
    if-nez p7, :cond_7

    .line 2024
    new-instance v2, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 2027
    :cond_7
    new-instance v2, Lcom/mysql/jdbc/BufferRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/mysql/jdbc/BufferRow;-><init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v2

    .line 2014
    :cond_8
    :goto_2
    new-array v2, p2, [[B

    .line 2016
    .local v2, "rowData":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, p2, :cond_9

    .line 2017
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 2016
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2020
    .end local v3    # "i":I
    :cond_9
    new-instance v1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v1

    .line 2039
    .end local v2    # "rowData":[[B
    :cond_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isEOFPacket()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->isResultSetOKPacket()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 2051
    :cond_c
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2052
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    .line 2054
    return-object v1

    .line 2040
    :cond_d
    :goto_4
    if-eq p4, v2, :cond_10

    if-nez p5, :cond_e

    if-nez p6, :cond_e

    goto :goto_5

    .line 2044
    :cond_e
    if-nez p7, :cond_f

    .line 2045
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 2048
    :cond_f
    new-instance v1, Lcom/mysql/jdbc/BufferRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, v0, p1, v3, v2}, Lcom/mysql/jdbc/BufferRow;-><init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v1

    .line 2041
    :cond_10
    :goto_5
    invoke-direct {p0, p1, v0, p4}, Lcom/mysql/jdbc/MysqlIO;->unpackBinaryResultSetRow([Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    return-object v1
.end method

.method final nextRowFast([Lcom/mysql/jdbc/Field;IZIZZZ)Lcom/mysql/jdbc/ResultSetRow;
    .locals 25
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "columnCount"    # I
    .param p3, "isBinaryEncoded"    # Z
    .param p4, "resultSetConcurrency"    # I
    .param p5, "useBufferRowIfPossible"    # Z
    .param p6, "useBufferRowExplicit"    # Z
    .param p7, "canReuseRowPacket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p2

    .line 2060
    :try_start_0
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v10, v0, v1, v3, v2}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    .local v0, "lengthRead":I
    const-string v1, "MysqlIO.43"

    if-lt v0, v2, :cond_e

    .line 2067
    :try_start_1
    iget-object v4, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v5, v4, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    const/4 v7, 0x1

    aget-byte v8, v4, v7

    and-int/2addr v8, v6

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x2

    aget-byte v4, v4, v8

    and-int/2addr v4, v6

    const/16 v12, 0x10

    shl-int/2addr v4, v12

    add-int v13, v5, v4

    .line 2070
    .local v13, "packetLength":I
    iget v4, v10, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ne v13, v4, :cond_0

    .line 2071
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {v10, v1, v13}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    .line 2074
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    return-object v1

    .line 2080
    :cond_0
    iget v4, v10, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    if-le v13, v4, :cond_1

    .line 2081
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {v10, v1, v13}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    .line 2084
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    return-object v1

    .line 2087
    :cond_1
    move v4, v13

    .line 2089
    .local v4, "remaining":I
    const/4 v5, 0x1

    .line 2091
    .local v5, "firstTime":Z
    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, [[B

    .line 2093
    .local v15, "rowData":[[B
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_c

    .line 2095
    iget-object v14, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v14

    and-int/2addr v14, v6

    .line 2096
    .local v14, "sw":I
    add-int/lit8 v4, v4, -0x1

    .line 2098
    if-eqz v5, :cond_8

    .line 2099
    if-ne v14, v6, :cond_2

    .line 2102
    new-instance v9, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v6, v13, 0x4

    invoke-direct {v9, v6}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object v6, v9

    .line 2103
    .local v6, "errorPacket":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v6, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2104
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v9, v9, v3

    invoke-virtual {v6, v9}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2105
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v9, v9, v7

    invoke-virtual {v6, v9}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2106
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v9, v9, v8

    invoke-virtual {v6, v9}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2107
    invoke-virtual {v6, v7}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2108
    int-to-byte v9, v14

    invoke-virtual {v6, v9}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2109
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    const/4 v3, 0x5

    add-int/lit8 v7, v13, -0x1

    invoke-direct {v10, v9, v8, v3, v7}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    .line 2110
    invoke-virtual {v6, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2111
    invoke-direct {v10, v6}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    .line 2114
    .end local v6    # "errorPacket":Lcom/mysql/jdbc/Buffer;
    :cond_2
    const/16 v3, 0xfe

    if-ne v14, v3, :cond_7

    const v3, 0xffffff

    if-ge v13, v3, :cond_7

    .line 2121
    iget-boolean v1, v10, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_6

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2124
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v10, v1}, Lcom/mysql/jdbc/MysqlIO;->skipLengthEncodedInteger(Ljava/io/InputStream;)I

    move-result v1

    sub-int/2addr v4, v1

    .line 2125
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v10, v1}, Lcom/mysql/jdbc/MysqlIO;->skipLengthEncodedInteger(Ljava/io/InputStream;)I

    move-result v1

    sub-int/2addr v4, v1

    .line 2127
    iget v1, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v1, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2128
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    iget-object v3, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/2addr v3, v2

    const/16 v2, 0x8

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    iput v1, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2129
    iget v1, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {v10, v1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 2130
    add-int/lit8 v4, v4, -0x2

    .line 2132
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    iget-object v3, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v10, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2133
    add-int/lit8 v4, v4, -0x2

    .line 2135
    if-lez v1, :cond_5

    .line 2136
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    goto :goto_1

    .line 2141
    :cond_3
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    iget-object v3, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/2addr v3, v2

    const/16 v2, 0x8

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    iput v1, v10, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2142
    add-int/lit8 v4, v4, -0x2

    .line 2144
    if-lez v1, :cond_4

    .line 2145
    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2148
    :cond_4
    iget v1, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v1, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2150
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    iget-object v3, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/2addr v2, v3

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2151
    iget v1, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {v10, v1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 2153
    add-int/lit8 v4, v4, -0x2

    .line 2156
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 2158
    if-lez v4, :cond_6

    .line 2159
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v2, v4

    invoke-direct {v10, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 2163
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 2114
    :cond_7
    const/4 v3, 0x1

    .line 2166
    new-array v6, v11, [[B

    .line 2168
    .end local v15    # "rowData":[[B
    .local v6, "rowData":[[B
    const/4 v5, 0x0

    move-object v15, v6

    goto :goto_2

    .line 2098
    .end local v6    # "rowData":[[B
    .restart local v15    # "rowData":[[B
    :cond_8
    const/4 v3, 0x1

    .line 2171
    :goto_2
    const/4 v6, 0x0

    .line 2173
    .local v6, "len":I
    packed-switch v14, :pswitch_data_0

    .line 2198
    const/16 v3, 0x10

    const/16 v7, 0xff

    const/16 v9, 0x8

    move v2, v14

    .end local v6    # "len":I
    .local v2, "len":I
    goto/16 :goto_3

    .line 2190
    .end local v2    # "len":I
    .restart local v6    # "len":I
    :pswitch_0
    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v2, v7

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    and-int/2addr v7, v8

    int-to-long v8, v7

    const/16 v7, 0x8

    shl-long/2addr v8, v7

    or-long/2addr v2, v8

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v8, v7

    const/16 v7, 0x10

    shl-long/2addr v8, v7

    or-long/2addr v2, v8

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v8, v7

    const/16 v7, 0x18

    shl-long v7, v8, v7

    or-long/2addr v2, v7

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v8, v7

    const/16 v7, 0x20

    shl-long v7, v8, v7

    or-long/2addr v2, v7

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v8, v7

    const/16 v7, 0x28

    shl-long v7, v8, v7

    or-long/2addr v2, v7

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v8, v7

    const/16 v7, 0x30

    shl-long v7, v8, v7

    or-long/2addr v2, v7

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    long-to-int v3, v2

    .line 2194
    .end local v6    # "len":I
    .local v3, "len":I
    add-int/lit8 v4, v4, -0x8

    .line 2195
    move v2, v3

    const/16 v3, 0x10

    const/16 v7, 0xff

    const/16 v9, 0x8

    goto :goto_3

    .line 2184
    .end local v3    # "len":I
    .restart local v6    # "len":I
    :pswitch_1
    iget-object v2, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    and-int/2addr v7, v3

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v2, v7

    iget-object v7, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    and-int/2addr v7, v3

    const/16 v3, 0x10

    shl-int/2addr v7, v3

    or-int/2addr v2, v7

    .line 2186
    .end local v6    # "len":I
    .restart local v2    # "len":I
    add-int/lit8 v4, v4, -0x3

    .line 2187
    const/16 v7, 0xff

    const/16 v9, 0x8

    goto :goto_3

    .line 2179
    .end local v2    # "len":I
    .restart local v6    # "len":I
    :pswitch_2
    const/16 v3, 0x10

    iget-object v2, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v7, 0xff

    and-int/2addr v2, v7

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v7

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v2, v8

    .line 2180
    .end local v6    # "len":I
    .restart local v2    # "len":I
    add-int/lit8 v4, v4, -0x2

    .line 2181
    goto :goto_3

    .line 2175
    .end local v2    # "len":I
    .restart local v6    # "len":I
    :pswitch_3
    const/16 v3, 0x10

    const/16 v7, 0xff

    const/16 v9, 0x8

    const/4 v2, -0x1

    .line 2176
    .end local v6    # "len":I
    .restart local v2    # "len":I
    nop

    .line 2201
    :goto_3
    const/4 v6, -0x1

    if-ne v2, v6, :cond_9

    .line 2202
    const/4 v6, 0x0

    aput-object v6, v15, v12

    goto :goto_4

    .line 2203
    :cond_9
    const/4 v6, 0x0

    if-nez v2, :cond_a

    .line 2204
    sget-object v8, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    aput-object v8, v15, v12

    .line 2093
    .end local v2    # "len":I
    .end local v14    # "sw":I
    :goto_4
    const/4 v6, 0x0

    goto :goto_5

    .line 2206
    .restart local v2    # "len":I
    .restart local v14    # "sw":I
    :cond_a
    new-array v8, v2, [B

    aput-object v8, v15, v12

    .line 2208
    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    aget-object v3, v15, v12

    const/4 v6, 0x0

    invoke-direct {v10, v8, v3, v6, v2}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v3

    .line 2210
    .local v3, "bytesRead":I
    if-ne v3, v2, :cond_b

    .line 2215
    sub-int/2addr v4, v3

    .line 2093
    .end local v2    # "len":I
    .end local v3    # "bytesRead":I
    .end local v14    # "sw":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2211
    .restart local v2    # "len":I
    .restart local v3    # "bytesRead":I
    .restart local v14    # "sw":I
    :cond_b
    iget-object v6, v10, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v7, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    move v9, v2

    move/from16 v16, v3

    .end local v2    # "len":I
    .end local v3    # "bytesRead":I
    .local v9, "len":I
    .local v16, "bytesRead":I
    iget-wide v2, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    move/from16 v17, v0

    .end local v0    # "lengthRead":I
    .local v17, "lengthRead":I
    new-instance v0, Ljava/io/IOException;

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v24

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    move-wide/from16 v21, v2

    move-object/from16 v23, v0

    invoke-static/range {v18 .. v24}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "fields":[Lcom/mysql/jdbc/Field;
    .end local p2    # "columnCount":I
    .end local p3    # "isBinaryEncoded":Z
    .end local p4    # "resultSetConcurrency":I
    .end local p5    # "useBufferRowIfPossible":Z
    .end local p6    # "useBufferRowExplicit":Z
    .end local p7    # "canReuseRowPacket":Z
    throw v0

    .line 2093
    .end local v9    # "len":I
    .end local v14    # "sw":I
    .end local v16    # "bytesRead":I
    .end local v17    # "lengthRead":I
    .restart local v0    # "lengthRead":I
    .restart local p1    # "fields":[Lcom/mysql/jdbc/Field;
    .restart local p2    # "columnCount":I
    .restart local p3    # "isBinaryEncoded":Z
    .restart local p4    # "resultSetConcurrency":I
    .restart local p5    # "useBufferRowIfPossible":Z
    .restart local p6    # "useBufferRowExplicit":Z
    .restart local p7    # "canReuseRowPacket":Z
    :cond_c
    move/from16 v17, v0

    .line 2219
    .end local v0    # "lengthRead":I
    .end local v12    # "i":I
    .restart local v17    # "lengthRead":I
    if-lez v4, :cond_d

    .line 2220
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v1, v4

    invoke-direct {v10, v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 2223
    :cond_d
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    .line 2063
    .end local v4    # "remaining":I
    .end local v5    # "firstTime":Z
    .end local v13    # "packetLength":I
    .end local v15    # "rowData":[[B
    .end local v17    # "lengthRead":I
    .restart local v0    # "lengthRead":I
    :cond_e
    move/from16 v17, v0

    .end local v0    # "lengthRead":I
    .restart local v17    # "lengthRead":I
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2064
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "fields":[Lcom/mysql/jdbc/Field;
    .end local p2    # "columnCount":I
    .end local p3    # "isBinaryEncoded":Z
    .end local p4    # "resultSetConcurrency":I
    .end local p5    # "useBufferRowIfPossible":Z
    .end local p6    # "useBufferRowExplicit":Z
    .end local p7    # "canReuseRowPacket":Z
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2224
    .end local v17    # "lengthRead":I
    .restart local p1    # "fields":[Lcom/mysql/jdbc/Field;
    .restart local p2    # "columnCount":I
    .restart local p3    # "isBinaryEncoded":Z
    .restart local p4    # "resultSetConcurrency":I
    .restart local p5    # "useBufferRowIfPossible":Z
    .restart local p6    # "useBufferRowExplicit":Z
    .restart local p7    # "canReuseRowPacket":Z
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2225
    .local v7, "ioEx":Ljava/io/IOException;
    iget-object v2, v10, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final quit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2238
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-static {v0}, Lcom/mysql/jdbc/ExportControlled;->isSSLEstablished(Ljava/net/Socket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2242
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2245
    goto :goto_0

    .line 2243
    :catch_0
    move-exception v0

    .line 2250
    :cond_0
    :goto_0
    goto :goto_1

    .line 2258
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2248
    :catch_1
    move-exception v0

    .line 2252
    :goto_1
    :try_start_2
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 2253
    .local v0, "packet":Lcom/mysql/jdbc/Buffer;
    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2254
    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2256
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2257
    .end local v0    # "packet":Lcom/mysql/jdbc/Buffer;
    nop

    .line 2260
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2259
    nop

    .line 2260
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2258
    throw v0
.end method

.method readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 21
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "maxRows"    # I
    .param p3, "resultSetType"    # I
    .param p4, "resultSetConcurrency"    # I
    .param p5, "streamResults"    # Z
    .param p6, "catalog"    # Ljava/lang/String;
    .param p7, "resultPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p8, "isBinaryEncoded"    # Z
    .param p9, "preSentColumnCount"    # J
    .param p11, "metadataFromCache"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2336
    move-object/from16 v12, p0

    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move-object/from16 v14, p7

    invoke-virtual {v14, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2338
    invoke-virtual/range {p0 .. p11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v15

    .line 2341
    .local v15, "topLevelResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    move-object v0, v15

    .line 2343
    .local v0, "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    iget-wide v1, v12, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v3, 0x20000

    and-long/2addr v1, v3

    const/4 v11, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v16, v1

    .line 2345
    .local v16, "checkForMoreResults":Z
    iget v1, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v17, v1

    .line 2350
    .local v17, "serverHasMoreResults":Z
    if-eqz v17, :cond_3

    if-eqz p5, :cond_3

    .line 2355
    invoke-virtual {v15}, Lcom/mysql/jdbc/ResultSetImpl;->getUpdateCount()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 2356
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/MysqlIO;->tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z

    .line 2359
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeReusablePacket()V

    .line 2361
    return-object v15

    .line 2364
    :cond_3
    and-int v1, v16, v17

    move-object v9, v0

    move/from16 v18, v1

    .line 2366
    .end local v0    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .local v9, "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .local v18, "moreRowSetsExist":Z
    :goto_2
    if-eqz v18, :cond_5

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v10

    .line 2368
    .local v10, "fieldPacket":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v10, v11}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v10

    move/from16 v8, p8

    move-object v13, v9

    move-object/from16 v19, v10

    .end local v9    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .end local v10    # "fieldPacket":Lcom/mysql/jdbc/Buffer;
    .local v13, "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .local v19, "fieldPacket":Lcom/mysql/jdbc/Buffer;
    move-wide/from16 v9, p9

    const/16 v20, 0x0

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 2373
    .local v0, "newResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    invoke-virtual {v13, v0}, Lcom/mysql/jdbc/ResultSetImpl;->setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2375
    move-object v9, v0

    .line 2377
    .end local v13    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local v9    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    iget v1, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    move/from16 v18, v11

    .line 2378
    .end local v0    # "newResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .end local v19    # "fieldPacket":Lcom/mysql/jdbc/Buffer;
    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_2

    .line 2380
    :cond_5
    move-object v13, v9

    .end local v9    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local v13    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    if-nez p5, :cond_6

    .line 2381
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 2384
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeReusablePacket()V

    .line 2386
    return-object v15
.end method

.method protected final readPacket()Lcom/mysql/jdbc/Buffer;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 563
    .local v2, "lengthRead":I
    if-lt v2, v4, :cond_8

    .line 568
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v5, v3

    .line 570
    .local v5, "packetLength":I
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-gt v5, v3, :cond_7

    .line 574
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_0

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v3, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v6, "MysqlIO.2"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    const-string v6, "MysqlIO.3"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-static {v6, v4}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 585
    .end local v3    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    .line 587
    .local v3, "multiPacketSeq":B
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v4, :cond_1

    .line 588
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v4, :cond_2

    .line 589
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    goto :goto_0

    .line 592
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 595
    :cond_2
    :goto_0
    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 598
    new-array v4, v5, [B

    .line 599
    .local v4, "buffer":[B
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {p0, v6, v4, v1, v5}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    .line 601
    .local v6, "numBytesRead":I
    if-ne v6, v5, :cond_6

    .line 605
    new-instance v7, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v7, v4}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 607
    .local v7, "packet":Lcom/mysql/jdbc/Buffer;
    iget-boolean v8, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v8, :cond_3

    .line 608
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v8, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v9, "MysqlIO.4"

    invoke-static {v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {v7, v5}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v9, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 616
    .end local v8    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_3
    iget-boolean v8, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v8, :cond_4

    .line 617
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v8, p0

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 620
    :cond_4
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    .line 624
    :cond_5
    return-object v7

    .line 602
    .end local v7    # "packet":Lcom/mysql/jdbc/Buffer;
    :cond_6
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Short read, expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes, only read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 571
    .end local v3    # "multiPacketSeq":B
    .end local v4    # "buffer":[B
    .end local v6    # "numBytesRead":I
    :cond_7
    new-instance v3, Lcom/mysql/jdbc/PacketTooBigException;

    int-to-long v6, v5

    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    int-to-long v8, v4

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/mysql/jdbc/PacketTooBigException;-><init>(JJ)V

    throw v3

    .line 564
    .end local v5    # "packetLength":I
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 565
    new-instance v3, Ljava/io/IOException;

    const-string v4, "MysqlIO.1"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v2    # "lengthRead":I
    :catch_0
    move-exception v2

    .line 630
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v1, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    goto :goto_1

    .line 631
    :catch_1
    move-exception v0

    .line 633
    :goto_1
    throw v2

    .line 625
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 626
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected final readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 16
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "maxRows"    # I
    .param p3, "resultSetType"    # I
    .param p4, "resultSetConcurrency"    # I
    .param p5, "streamResults"    # Z
    .param p6, "catalog"    # Ljava/lang/String;
    .param p7, "resultPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p8, "isBinaryEncoded"    # Z
    .param p9, "preSentColumnCount"    # J
    .param p11, "metadataFromCache"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3049
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p7

    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v14

    .line 3051
    .local v14, "columnCount":J
    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-nez v2, :cond_0

    .line 3052
    invoke-direct {v11, v12, v13}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0

    .line 3053
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, v14, v0

    if-nez v2, :cond_4

    .line 3054
    const/4 v0, 0x0

    .line 3056
    .local v0, "charEncoding":Ljava/lang/String;
    iget-object v1, v11, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3057
    iget-object v1, v11, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 3060
    :cond_1
    const/4 v1, 0x0

    .line 3062
    .local v1, "fileName":Ljava/lang/String;
    iget-boolean v2, v11, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    if-eqz v2, :cond_3

    .line 3063
    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 3065
    :cond_3
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3068
    :goto_1
    invoke-direct {v11, v12, v1}, Lcom/mysql/jdbc/MysqlIO;->sendFileToServer(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v2

    return-object v2

    .line 3070
    .end local v0    # "charEncoding":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v14

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/MysqlIO;->getResultSet(Lcom/mysql/jdbc/StatementImpl;JIIIZLjava/lang/String;Z[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 3073
    .local v0, "results":Lcom/mysql/jdbc/ResultSetImpl;
    return-object v0
.end method

.method protected releaseResources()V
    .locals 1

    .line 4964
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_0

    .line 4965
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 4966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 4968
    :cond_0
    return-void
.end method

.method resetMaxBuf()V
    .locals 1

    .line 2393
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    .line 2394
    return-void
.end method

.method protected resetReadPacketSequence()V
    .locals 1

    .line 902
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 903
    return-void
.end method

.method scanForAndThrowDataTruncation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4147
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_0

    .line 4148
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 4149
    .local v1, "warningCountOld":I
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v0, v2}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;

    .line 4150
    iput v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 4152
    .end local v1    # "warningCountOld":I
    :cond_0
    return-void
.end method

.method secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "packLength"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "database"    # Ljava/lang/String;
    .param p6, "writeClientParams"    # Z
    .param p7, "forChangeUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4303
    const-string v0, "S1000"

    const-string v1, "MysqlIO.92"

    const-string v2, "MysqlIO.91"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v3

    .line 4322
    .local v3, "enc":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 4323
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v4, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    move-object p1, v4

    .line 4326
    :cond_0
    if-eqz p6, :cond_3

    .line 4327
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v4, :cond_2

    .line 4328
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v5}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4329
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4330
    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4332
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 4335
    const/16 v4, 0x17

    new-array v4, v4, [B

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_0

    .line 4337
    :cond_1
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4338
    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_0

    .line 4341
    :cond_2
    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v5, v4

    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4342
    iget v4, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 4347
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 4348
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4351
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 4352
    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4355
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-static {p4, v4, v6}, Lcom/mysql/jdbc/Security;->scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4362
    goto :goto_1

    .line 4359
    :catch_0
    move-exception v4

    .line 4360
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4356
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 4357
    .local v4, "nse":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4365
    .end local v4    # "nse":Ljava/security/NoSuchAlgorithmException;
    :cond_5
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4368
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v0, :cond_6

    .line 4369
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p5, v3, v0}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_2

    .line 4370
    :cond_6
    if-eqz p7, :cond_7

    .line 4372
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4376
    :cond_7
    :goto_2
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 4377
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {p0, p1, v3, v0}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4380
    :cond_8
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4382
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4384
    .local v0, "savePacketSequence":B
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    .line 4386
    .local v1, "reply":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4390
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4391
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 4393
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4394
    .local v2, "seed323":Ljava/lang/String;
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v2, v4}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 4395
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4398
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 4401
    .end local v2    # "seed323":Ljava/lang/String;
    :cond_9
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v2, :cond_a

    .line 4402
    invoke-direct {p0, p5}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 4404
    :cond_a
    return-void
.end method

.method final sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    .locals 21
    .param p1, "command"    # I
    .param p2, "extraData"    # Ljava/lang/String;
    .param p3, "queryPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p4, "skipCheck"    # Z
    .param p5, "extraDataCharEncoding"    # Ljava/lang/String;
    .param p6, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2424
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p6

    iget v0, v1, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v1, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    .line 2430
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    iput-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    .line 2431
    const/4 v0, 0x0

    iput-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2433
    const/4 v3, 0x0

    .line 2435
    .local v3, "oldTimeout":I
    if-eqz v11, :cond_0

    .line 2437
    :try_start_0
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result v4

    move v3, v4

    .line 2438
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v4, v11}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2442
    move v13, v3

    goto :goto_0

    .line 2439
    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 2440
    .local v17, "e":Ljava/net/SocketException;
    iget-object v12, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v13, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v18

    move-wide v15, v4

    invoke-static/range {v12 .. v18}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2435
    .end local v17    # "e":Ljava/net/SocketException;
    :cond_0
    move v13, v3

    .line 2447
    .end local v3    # "oldTimeout":I
    .local v13, "oldTimeout":I
    :goto_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkForOutstandingStreamingData()V

    .line 2450
    iget v3, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v3, v1, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2451
    iput v0, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2452
    iput-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2453
    iput v0, v1, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2455
    iput-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 2456
    iput-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 2457
    iput-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 2462
    iget-boolean v3, v1, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v3, :cond_1

    .line 2463
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 2465
    .local v3, "bytesLeft":I
    if-lez v3, :cond_1

    .line 2466
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2471
    .end local v3    # "bytesLeft":I
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 2478
    const/4 v3, -0x1

    if-nez v10, :cond_7

    .line 2479
    const/16 v4, 0x8

    if-eqz v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    const/4 v5, 0x2

    add-int/lit8 v14, v4, 0x2

    .line 2481
    .local v14, "packLength":I
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v4, :cond_3

    .line 2482
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v4, v14}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2485
    :cond_3
    iput-byte v3, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2486
    iput-byte v3, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2487
    iput-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2488
    iput-boolean v12, v1, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 2489
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2491
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    int-to-byte v4, v2

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2493
    if-eq v2, v5, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/16 v3, 0x16

    if-ne v2, v3, :cond_6

    .line 2494
    :cond_4
    if-nez p5, :cond_5

    .line 2495
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3, v9}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    goto :goto_2

    .line 2497
    :cond_5
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    .line 2502
    :cond_6
    :goto_2
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 2503
    .end local v14    # "packLength":I
    goto :goto_3

    .line 2504
    :cond_7
    iput-byte v3, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2505
    iput-byte v3, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2506
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    invoke-direct {v1, v10, v3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2514
    :goto_3
    nop

    .line 2516
    const/4 v3, 0x0

    .line 2518
    .local v3, "returnPacket":Lcom/mysql/jdbc/Buffer;
    if-nez p4, :cond_a

    .line 2519
    const/16 v4, 0x17

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_9

    .line 2520
    :cond_8
    :try_start_3
    iput-byte v0, v1, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2521
    iput-boolean v12, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 2524
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    .line 2527
    :cond_a
    nop

    .line 2538
    .end local v3    # "returnPacket":Lcom/mysql/jdbc/Buffer;
    if-eqz v11, :cond_b

    .line 2540
    :try_start_4
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0, v13}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2544
    goto :goto_4

    .line 2541
    :catch_1
    move-exception v0

    move-object/from16 v19, v0

    .line 2542
    .local v19, "e":Ljava/net/SocketException;
    iget-object v14, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v20

    move-wide v15, v3

    move-wide/from16 v17, v5

    invoke-static/range {v14 .. v20}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .end local v19    # "e":Ljava/net/SocketException;
    :cond_b
    :goto_4
    move-object v0, v3

    .line 2527
    .local v0, "returnPacket":Lcom/mysql/jdbc/Buffer;
    return-object v3

    .line 2511
    .end local v0    # "returnPacket":Lcom/mysql/jdbc/Buffer;
    :catch_2
    move-exception v0

    move-object/from16 v19, v0

    .line 2512
    .local v19, "ex":Ljava/lang/Exception;
    :try_start_5
    iget-object v14, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v20

    move-wide v15, v3

    move-wide/from16 v17, v5

    invoke-static/range {v14 .. v20}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v13    # "oldTimeout":I
    .end local p1    # "command":I
    .end local p2    # "extraData":Ljava/lang/String;
    .end local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "skipCheck":Z
    .end local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .end local p6    # "timeoutMillis":I
    throw v0

    .line 2508
    .end local v19    # "ex":Ljava/lang/Exception;
    .restart local v13    # "oldTimeout":I
    .restart local p1    # "command":I
    .restart local p2    # "extraData":Ljava/lang/String;
    .restart local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "skipCheck":Z
    .restart local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .restart local p6    # "timeoutMillis":I
    :catch_3
    move-exception v0

    .line 2510
    .local v0, "sqlEx":Ljava/sql/SQLException;
    nop

    .end local v13    # "oldTimeout":I
    .end local p1    # "command":I
    .end local p2    # "extraData":Ljava/lang/String;
    .end local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "skipCheck":Z
    .end local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .end local p6    # "timeoutMillis":I
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2538
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v13    # "oldTimeout":I
    .restart local p1    # "command":I
    .restart local p2    # "extraData":Ljava/lang/String;
    .restart local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "skipCheck":Z
    .restart local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .restart local p6    # "timeoutMillis":I
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2533
    :catch_4
    move-exception v0

    .line 2534
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 2535
    nop

    .end local v13    # "oldTimeout":I
    .end local p1    # "command":I
    .end local p2    # "extraData":Ljava/lang/String;
    .end local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "skipCheck":Z
    .end local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .end local p6    # "timeoutMillis":I
    throw v0

    .line 2528
    .end local v0    # "e":Ljava/sql/SQLException;
    .restart local v13    # "oldTimeout":I
    .restart local p1    # "command":I
    .restart local p2    # "extraData":Ljava/lang/String;
    .restart local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "skipCheck":Z
    .restart local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .restart local p6    # "timeoutMillis":I
    :catch_5
    move-exception v0

    move-object/from16 v19, v0

    .line 2529
    .local v19, "ioEx":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 2530
    iget-object v14, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v20

    move-wide v15, v3

    move-wide/from16 v17, v5

    invoke-static/range {v14 .. v20}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v13    # "oldTimeout":I
    .end local p1    # "command":I
    .end local p2    # "extraData":Ljava/lang/String;
    .end local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p4    # "skipCheck":Z
    .end local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .end local p6    # "timeoutMillis":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2542
    .end local v19    # "ioEx":Ljava/io/IOException;
    .restart local v13    # "oldTimeout":I
    .restart local p1    # "command":I
    .restart local p2    # "extraData":Ljava/lang/String;
    .restart local p3    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "skipCheck":Z
    .restart local p5    # "extraDataCharEncoding":Ljava/lang/String;
    .restart local p6    # "timeoutMillis":I
    :goto_5
    if-eqz v11, :cond_c

    .line 2540
    :try_start_7
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v3, v13}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_6

    .line 2544
    goto :goto_6

    .line 2541
    :catch_6
    move-exception v0

    move-object/from16 v19, v0

    .line 2542
    .local v19, "e":Ljava/net/SocketException;
    iget-object v14, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v20

    move-wide v15, v3

    move-wide/from16 v17, v5

    invoke-static/range {v14 .. v20}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .end local v19    # "e":Ljava/net/SocketException;
    :cond_c
    :goto_6
    nop

    .line 2538
    throw v0
.end method

.method protected setSocketTimeout(I)V
    .locals 4
    .param p1, "milliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4951
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 4952
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4960
    :cond_0
    nop

    .line 4961
    return-void

    .line 4954
    :catch_0
    move-exception v0

    .line 4955
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Invalid socket timeout value or state"

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 4957
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4959
    throw v1
.end method

.method protected setStatementInterceptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;)V"
        }
    .end annotation

    .line 4942
    .local p1, "statementInterceptors":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/StatementInterceptorV2;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    .line 4943
    return-void
.end method

.method protected shouldIntercept()Z
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final skipPacket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 507
    .local v2, "lengthRead":I
    if-lt v2, v4, :cond_3

    .line 512
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v3, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v5, v3

    .line 514
    .local v5, "packetLength":I
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_0

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v3, "traceMessageBuf":Ljava/lang/StringBuilder;
    const-string v6, "MysqlIO.2"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    const-string v6, "MysqlIO.3"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-static {v6, v4}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 525
    .end local v3    # "traceMessageBuf":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    .line 527
    .local v3, "multiPacketSeq":B
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v4, :cond_1

    .line 528
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v4, :cond_2

    .line 529
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    goto :goto_0

    .line 532
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 535
    :cond_2
    :goto_0
    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 537
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v6, v5

    invoke-direct {p0, v4, v6, v7}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 547
    nop

    .line 548
    .end local v2    # "lengthRead":I
    .end local v3    # "multiPacketSeq":B
    .end local v5    # "packetLength":I
    return-void

    .line 508
    .restart local v2    # "lengthRead":I
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 509
    new-instance v3, Ljava/io/IOException;

    const-string v4, "MysqlIO.1"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v2    # "lengthRead":I
    :catch_0
    move-exception v2

    .line 543
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v1, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    goto :goto_1

    .line 544
    :catch_1
    move-exception v0

    .line 546
    :goto_1
    throw v2

    .line 538
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 539
    .local v6, "ioEx":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method final sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 39
    .param p1, "callingStatement"    # Lcom/mysql/jdbc/StatementImpl;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "characterEncoding"    # Ljava/lang/String;
    .param p4, "queryPacket"    # Lcom/mysql/jdbc/Buffer;
    .param p5, "maxRows"    # I
    .param p6, "resultSetType"    # I
    .param p7, "resultSetConcurrency"    # I
    .param p8, "streamResults"    # Z
    .param p9, "catalog"    # Ljava/lang/String;
    .param p10, "cachedMetadata"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2576
    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    iget v0, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    const/16 v28, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 2579
    :try_start_0
    iget-object v0, v13, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 2580
    :try_start_1
    invoke-virtual {v13, v14, v15, v12}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2582
    .local v0, "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v0, :cond_0

    .line 2583
    nop

    .line 2803
    .end local v0    # "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    iget v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    move-object v1, v0

    .line 2583
    .local v1, "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    return-object v0

    .line 2803
    .end local v1    # "interceptedResults":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_0
    move-exception v0

    move-object/from16 v10, p4

    move-object v7, v15

    goto/16 :goto_13

    .line 2778
    :catch_0
    move-exception v0

    move-object/from16 v10, p4

    move-object v7, v15

    goto/16 :goto_10

    .line 2587
    :cond_0
    :try_start_2
    iget-object v0, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v0

    .line 2589
    .local v0, "statementComment":Ljava/lang/String;
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadNamesAsStatementComment()Z

    move-result v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v1, :cond_2

    .line 2590
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2593
    :cond_2
    const/16 v16, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x5

    if-eqz v14, :cond_9

    .line 2596
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v11

    add-int/lit8 v7, v1, 0x2

    .line 2598
    .local v7, "packLength":I
    const/4 v8, 0x0

    .line 2600
    .local v8, "commentAsBytes":[B
    if-eqz v0, :cond_3

    .line 2601
    const/4 v2, 0x0

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, v0

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    move-object v8, v1

    .line 2604
    array-length v1, v8

    add-int/2addr v7, v1

    .line 2605
    add-int/lit8 v7, v7, 0x6

    .line 2608
    :cond_3
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v1, :cond_4

    .line 2609
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v7}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    goto :goto_1

    .line 2611
    :cond_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2614
    :goto_1
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2616
    if-eqz v8, :cond_5

    .line 2617
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    sget-object v2, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2618
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2619
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    sget-object v2, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2622
    :cond_5
    if-eqz p3, :cond_8

    .line 2623
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    if-eqz v1, :cond_6

    .line 2624
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_2

    .line 2627
    :cond_6
    const-string v1, "LOAD DATA"

    invoke-static {v14, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2628
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_2

    .line 2630
    :cond_7
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_2

    .line 2635
    :cond_8
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1, v14}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 2638
    :goto_2
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v1

    .end local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local v1, "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto :goto_3

    .line 2593
    .end local v1    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local v7    # "packLength":I
    .end local v8    # "commentAsBytes":[B
    .restart local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :cond_9
    move-object/from16 v9, p4

    .line 2641
    .end local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local v9, "queryPacket":Lcom/mysql/jdbc/Buffer;
    :goto_3
    const/4 v1, 0x0

    .line 2642
    .local v1, "queryBuf":[B
    const/4 v2, 0x0

    .line 2643
    .local v2, "oldPacketPosition":I
    const-wide/16 v3, 0x0

    .line 2645
    .local v3, "queryStartTime":J
    :try_start_4
    iget-boolean v5, v13, Lcom/mysql/jdbc/MysqlIO;->needToGrabQueryFromPacket:Z
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v5, :cond_a

    .line 2646
    :try_start_5
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    move-object v1, v5

    .line 2649
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v5

    move v2, v5

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v5
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v3, v5

    move-object v8, v1

    move v7, v2

    move-wide/from16 v29, v3

    goto :goto_4

    .line 2803
    .end local v0    # "statementComment":Ljava/lang/String;
    .end local v1    # "queryBuf":[B
    .end local v2    # "oldPacketPosition":I
    .end local v3    # "queryStartTime":J
    :catchall_1
    move-exception v0

    move-object v10, v9

    move-object v7, v15

    goto/16 :goto_13

    .line 2778
    :catch_1
    move-exception v0

    move-object v10, v9

    move-object v7, v15

    goto/16 :goto_10

    .line 2645
    .restart local v0    # "statementComment":Ljava/lang/String;
    .restart local v1    # "queryBuf":[B
    .restart local v2    # "oldPacketPosition":I
    .restart local v3    # "queryStartTime":J
    :cond_a
    move-object v8, v1

    move v7, v2

    move-wide/from16 v29, v3

    .line 2654
    .end local v1    # "queryBuf":[B
    .end local v2    # "oldPacketPosition":I
    .end local v3    # "queryStartTime":J
    .local v7, "oldPacketPosition":I
    .local v8, "queryBuf":[B
    .local v29, "queryStartTime":J
    :goto_4
    :try_start_6
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v1, :cond_d

    .line 2655
    const/4 v1, 0x0

    .line 2657
    .local v1, "testcaseQuery":Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 2658
    if-eqz v0, :cond_b

    .line 2659
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/* "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " */ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_5

    .line 2661
    :cond_b
    move-object/from16 v1, p2

    goto :goto_5

    .line 2664
    :cond_c
    add-int/lit8 v2, v7, -0x5

    invoke-static {v8, v11, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2667
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2668
    .local v2, "debugBuf":Ljava/lang/StringBuilder;
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v2}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2669
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2671
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2675
    .end local v1    # "testcaseQuery":Ljava/lang/String;
    .end local v2    # "debugBuf":Ljava/lang/StringBuilder;
    :cond_d
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v4, v9

    move/from16 p4, v7

    .end local v7    # "oldPacketPosition":I
    .local p4, "oldPacketPosition":I
    move/from16 v7, v17

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    move-object v7, v8

    .end local v8    # "queryBuf":[B
    .local v7, "queryBuf":[B
    move-object v8, v1

    .line 2677
    .local v8, "resultPacket":Lcom/mysql/jdbc/Buffer;
    const-wide/16 v1, 0x0

    .line 2679
    .local v1, "fetchBeginTime":J
    const/4 v3, 0x0

    .line 2681
    .local v3, "profileQueryToLog":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2683
    .local v4, "queryWasSlow":Z
    const-wide/16 v5, 0x0

    .line 2685
    .local v5, "queryEndTime":J
    iget-boolean v10, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v10, :cond_f

    :try_start_9
    iget-boolean v10, v13, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v10, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v12, p4

    move-wide/from16 v31, v1

    move-object v10, v3

    move/from16 v33, v4

    move-wide/from16 v34, v5

    move-object/from16 p4, v9

    goto/16 :goto_a

    .line 2686
    :cond_f
    :goto_6
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 2688
    const/4 v10, 0x0

    .line 2690
    .local v10, "shouldExtractQuery":Z
    iget-boolean v12, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v12, :cond_10

    .line 2691
    const/4 v10, 0x1

    move-wide/from16 v20, v1

    goto :goto_8

    .line 2692
    :cond_10
    iget-boolean v12, v13, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v12, :cond_13

    .line 2693
    sub-long v11, v5, v29

    .line 2695
    .local v11, "queryTime":J
    move-wide/from16 v20, v1

    .end local v1    # "fetchBeginTime":J
    .local v20, "fetchBeginTime":J
    :try_start_b
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    if-eqz v1, :cond_11

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, v11, v12}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v1

    goto :goto_7

    :cond_11
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v1
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    int-to-long v1, v1

    cmp-long v22, v11, v1

    if-lez v22, :cond_12

    const/4 v1, 0x1

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    .line 2698
    .local v1, "logSlow":Z
    :goto_7
    if-eqz v1, :cond_14

    .line 2699
    const/4 v10, 0x1

    .line 2700
    const/4 v2, 0x1

    move v4, v2

    .end local v4    # "queryWasSlow":Z
    .local v2, "queryWasSlow":Z
    goto :goto_8

    .line 2692
    .end local v2    # "queryWasSlow":Z
    .end local v11    # "queryTime":J
    .end local v20    # "fetchBeginTime":J
    .local v1, "fetchBeginTime":J
    .restart local v4    # "queryWasSlow":Z
    :cond_13
    move-wide/from16 v20, v1

    .line 2704
    .end local v1    # "fetchBeginTime":J
    .restart local v20    # "fetchBeginTime":J
    :cond_14
    :goto_8
    if-eqz v10, :cond_16

    .line 2706
    const/4 v1, 0x0

    .line 2708
    .local v1, "truncated":Z
    move/from16 v2, p4

    .line 2710
    .local v2, "extractPosition":I
    :try_start_c
    iget-object v11, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v11
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move/from16 v12, p4

    .end local p4    # "oldPacketPosition":I
    .local v12, "oldPacketPosition":I
    if-le v12, v11, :cond_15

    .line 2711
    :try_start_d
    iget-object v11, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v11
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/16 v19, 0x5

    add-int/lit8 v2, v11, 0x5

    .line 2712
    const/4 v1, 0x1

    .line 2715
    :cond_15
    add-int/lit8 v11, v2, -0x5

    move-object/from16 p4, v9

    const/4 v9, 0x5

    .end local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local p4, "queryPacket":Lcom/mysql/jdbc/Buffer;
    :try_start_e
    invoke-static {v7, v9, v11}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 2717
    if-eqz v1, :cond_17

    .line 2718
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "MysqlIO.25"

    invoke-static/range {v19 .. v19}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v3, v9

    goto :goto_9

    .line 2803
    .end local v0    # "statementComment":Ljava/lang/String;
    .end local v1    # "truncated":Z
    .end local v2    # "extractPosition":I
    .end local v3    # "profileQueryToLog":Ljava/lang/String;
    .end local v4    # "queryWasSlow":Z
    .end local v5    # "queryEndTime":J
    .end local v7    # "queryBuf":[B
    .end local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v10    # "shouldExtractQuery":Z
    .end local v12    # "oldPacketPosition":I
    .end local v20    # "fetchBeginTime":J
    .end local v29    # "queryStartTime":J
    .end local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catchall_2
    move-exception v0

    move-object/from16 p4, v9

    move-object/from16 v10, p4

    move-object v7, v15

    .end local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto/16 :goto_13

    .line 2778
    .end local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catch_2
    move-exception v0

    move-object/from16 p4, v9

    move-object/from16 v10, p4

    move-object v7, v15

    .end local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto/16 :goto_10

    .line 2704
    .restart local v0    # "statementComment":Ljava/lang/String;
    .restart local v3    # "profileQueryToLog":Ljava/lang/String;
    .restart local v4    # "queryWasSlow":Z
    .restart local v5    # "queryEndTime":J
    .restart local v7    # "queryBuf":[B
    .restart local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "shouldExtractQuery":Z
    .restart local v20    # "fetchBeginTime":J
    .restart local v29    # "queryStartTime":J
    .local p4, "oldPacketPosition":I
    :cond_16
    move/from16 v12, p4

    move-object/from16 p4, v9

    .line 2722
    .end local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v12    # "oldPacketPosition":I
    .local p4, "queryPacket":Lcom/mysql/jdbc/Buffer;
    :cond_17
    :goto_9
    move-wide v1, v5

    move-wide/from16 v31, v1

    move-object v10, v3

    move/from16 v33, v4

    move-wide/from16 v34, v5

    .line 2725
    .end local v3    # "profileQueryToLog":Ljava/lang/String;
    .end local v4    # "queryWasSlow":Z
    .end local v5    # "queryEndTime":J
    .end local v20    # "fetchBeginTime":J
    .local v10, "profileQueryToLog":Ljava/lang/String;
    .local v31, "fetchBeginTime":J
    .local v33, "queryWasSlow":Z
    .local v34, "queryEndTime":J
    :goto_a
    const/4 v9, 0x0

    const-wide/16 v19, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v36, v7

    .end local v7    # "queryBuf":[B
    .local v36, "queryBuf":[B
    move-object/from16 v7, p9

    move-object/from16 v11, p4

    const/16 v21, 0x5

    .end local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local v11, "queryPacket":Lcom/mysql/jdbc/Buffer;
    move-object v15, v10

    move-object/from16 v37, v11

    const/16 v17, 0x3

    .end local v10    # "profileQueryToLog":Ljava/lang/String;
    .end local v11    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local v15, "profileQueryToLog":Ljava/lang/String;
    .local v37, "queryPacket":Lcom/mysql/jdbc/Buffer;
    move-wide/from16 v10, v19

    move-object/from16 v38, v0

    move v0, v12

    const/16 v19, 0x0

    .end local v12    # "oldPacketPosition":I
    .local v0, "oldPacketPosition":I
    .local v38, "statementComment":Ljava/lang/String;
    move-object/from16 v12, p10

    :try_start_f
    invoke-virtual/range {v1 .. v12}, Lcom/mysql/jdbc/MysqlIO;->readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v18

    .line 2728
    .local v18, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    if-eqz v33, :cond_1b

    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    if-nez v1, :cond_1b

    .line 2729
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    sub-long v4, v34, v29

    long-to-int v5, v4

    int-to-long v4, v5

    new-instance v21, Ljava/lang/Throwable;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Throwable;-><init>()V

    const-string v6, "Protocol.SlowQuery"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v9, v13, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v9, :cond_18

    :try_start_10
    const-string v9, " 95% of all queries "
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_b

    .line 2803
    .end local v0    # "oldPacketPosition":I
    .end local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v15    # "profileQueryToLog":Ljava/lang/String;
    .end local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v29    # "queryStartTime":J
    .end local v31    # "fetchBeginTime":J
    .end local v33    # "queryWasSlow":Z
    .end local v34    # "queryEndTime":J
    .end local v36    # "queryBuf":[B
    .end local v38    # "statementComment":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v10, v37

    goto/16 :goto_13

    .line 2778
    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v10, v37

    goto/16 :goto_10

    .line 2729
    .restart local v0    # "oldPacketPosition":I
    .restart local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v15    # "profileQueryToLog":Ljava/lang/String;
    .restart local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v29    # "queryStartTime":J
    .restart local v31    # "fetchBeginTime":J
    .restart local v33    # "queryWasSlow":Z
    .restart local v34    # "queryEndTime":J
    .restart local v36    # "queryBuf":[B
    .restart local v38    # "statementComment":Ljava/lang/String;
    :cond_18
    :try_start_11
    iget-wide v9, v13, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    :goto_b
    aput-object v9, v7, v19

    iget-object v9, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    aput-object v9, v7, v28

    sub-long v9, v34, v29

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v16

    aput-object v15, v7, v17

    invoke-static {v6, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object v14, v1

    move-object/from16 v7, p1

    move-object v9, v15

    .end local v15    # "profileQueryToLog":Ljava/lang/String;
    .local v9, "profileQueryToLog":Ljava/lang/String;
    move v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, p1

    move-wide/from16 v19, v4

    :try_start_12
    invoke-interface/range {v14 .. v22}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2735
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v1
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v1, :cond_1a

    .line 2736
    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_19

    .line 2737
    add-int/lit8 v1, v0, -0x5

    move-object/from16 v10, v37

    const/4 v2, 0x5

    .end local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local v10, "queryPacket":Lcom/mysql/jdbc/Buffer;
    :try_start_13
    invoke-virtual {v10, v2, v1}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v1

    invoke-virtual {v13, v1, v9}, Lcom/mysql/jdbc/MysqlIO;->explainSlowQuery([BLjava/lang/String;)V

    goto :goto_c

    .line 2739
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :cond_19
    move-object/from16 v10, v37

    .end local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.28"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.29"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    goto :goto_c

    .line 2735
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :cond_1a
    move-object/from16 v10, v37

    .end local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto :goto_c

    .line 2803
    .end local v0    # "oldPacketPosition":I
    .end local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v9    # "profileQueryToLog":Ljava/lang/String;
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v29    # "queryStartTime":J
    .end local v31    # "fetchBeginTime":J
    .end local v33    # "queryWasSlow":Z
    .end local v34    # "queryEndTime":J
    .end local v36    # "queryBuf":[B
    .end local v38    # "statementComment":Ljava/lang/String;
    .restart local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catchall_4
    move-exception v0

    goto/16 :goto_e

    .line 2778
    :catch_4
    move-exception v0

    goto/16 :goto_f

    .line 2728
    .restart local v0    # "oldPacketPosition":I
    .restart local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v15    # "profileQueryToLog":Ljava/lang/String;
    .restart local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v29    # "queryStartTime":J
    .restart local v31    # "fetchBeginTime":J
    .restart local v33    # "queryWasSlow":Z
    .restart local v34    # "queryEndTime":J
    .restart local v36    # "queryBuf":[B
    .restart local v38    # "statementComment":Ljava/lang/String;
    :cond_1b
    move-object/from16 v7, p1

    move-object v9, v15

    move-object/from16 v10, v37

    .line 2744
    .end local v15    # "profileQueryToLog":Ljava/lang/String;
    .end local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "profileQueryToLog":Ljava/lang/String;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :goto_c
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v1, :cond_1e

    .line 2745
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v1, :cond_1c

    .line 2746
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    const/16 v20, 0x6

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    sub-long v24, v34, v29

    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MysqlIO.33"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move-object/from16 v23, v18

    invoke-interface/range {v19 .. v27}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2750
    :cond_1c
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v1, :cond_1d

    .line 2751
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    const/16 v20, 0x6

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    sub-long v24, v34, v29

    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MysqlIO.35"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move-object/from16 v23, v18

    invoke-interface/range {v19 .. v27}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2755
    :cond_1d
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v1, :cond_1e

    .line 2756
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    const/16 v20, 0x6

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    sub-long v24, v34, v29

    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MysqlIO.ServerSlowQuery"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move-object/from16 v23, v18

    invoke-interface/range {v19 .. v27}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2761
    :cond_1e
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v1, :cond_1f

    .line 2762
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    const/16 v20, 0x3

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    sub-long v24, v34, v29

    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move-object/from16 v23, v18

    move-object/from16 v27, v9

    invoke-interface/range {v19 .. v27}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2765
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v19

    const/16 v20, 0x5

    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v2

    sub-long v24, v2, v31

    new-instance v26, Ljava/lang/Throwable;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Throwable;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, p1

    move-object/from16 v23, v18

    invoke-interface/range {v19 .. v27}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 2769
    :cond_1f
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    if-eqz v1, :cond_20

    .line 2770
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->scanForAndThrowDataTruncation()V

    .line 2773
    :cond_20
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v1, :cond_21

    .line 2774
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .end local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    goto :goto_d

    .line 2773
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :cond_21
    move-object/from16 v1, v18

    .line 2777
    .end local v18    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .restart local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :goto_d
    nop

    .line 2803
    .end local v0    # "oldPacketPosition":I
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v8    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v9    # "profileQueryToLog":Ljava/lang/String;
    .end local v29    # "queryStartTime":J
    .end local v31    # "fetchBeginTime":J
    .end local v33    # "queryWasSlow":Z
    .end local v34    # "queryEndTime":J
    .end local v36    # "queryBuf":[B
    .end local v38    # "statementComment":Ljava/lang/String;
    iget v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    move-wide/from16 v2, v29

    .local v2, "queryStartTime":J
    move-object/from16 v4, v36

    .restart local v0    # "oldPacketPosition":I
    .local v4, "queryBuf":[B
    move-object/from16 v5, v38

    .local v5, "statementComment":Ljava/lang/String;
    move-object v6, v8

    .local v6, "resultPacket":Lcom/mysql/jdbc/Buffer;
    move-wide/from16 v11, v31

    .local v11, "fetchBeginTime":J
    move-object v8, v9

    .local v8, "profileQueryToLog":Ljava/lang/String;
    move-object v9, v1

    .local v9, "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    move-wide/from16 v14, v34

    .local v14, "queryEndTime":J
    move/from16 v16, v33

    .line 2777
    .local v16, "queryWasSlow":Z
    return-object v1

    .line 2778
    .end local v0    # "oldPacketPosition":I
    .end local v2    # "queryStartTime":J
    .end local v4    # "queryBuf":[B
    .end local v5    # "statementComment":Ljava/lang/String;
    .end local v6    # "resultPacket":Lcom/mysql/jdbc/Buffer;
    .end local v8    # "profileQueryToLog":Ljava/lang/String;
    .end local v9    # "rs":Lcom/mysql/jdbc/ResultSetInternalMethods;
    .end local v11    # "fetchBeginTime":J
    .end local v14    # "queryEndTime":J
    .end local v16    # "queryWasSlow":Z
    :catch_5
    move-exception v0

    goto :goto_10

    .line 2803
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catchall_5
    move-exception v0

    move-object/from16 v7, p1

    :goto_e
    move-object/from16 v10, v37

    .end local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto :goto_13

    .line 2778
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catch_6
    move-exception v0

    move-object/from16 v7, p1

    :goto_f
    move-object/from16 v10, v37

    .end local v37    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto :goto_10

    .line 2803
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .local v9, "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catchall_6
    move-exception v0

    move-object v10, v9

    move-object v7, v15

    .end local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto :goto_13

    .line 2778
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catch_7
    move-exception v0

    move-object v10, v9

    move-object v7, v15

    .end local v9    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    goto :goto_10

    .line 2803
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :catchall_7
    move-exception v0

    move-object v7, v15

    move-object/from16 v10, p4

    goto :goto_13

    .line 2778
    :catch_8
    move-exception v0

    move-object v7, v15

    move-object/from16 v10, p4

    .end local p4    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    :goto_10
    move-object v8, v0

    .line 2779
    .local v8, "sqlEx":Ljava/sql/SQLException;
    :try_start_14
    iget-object v0, v13, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 2780
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2783
    :cond_22
    if-eqz v7, :cond_25

    .line 2784
    iget-object v1, v7, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 2785
    :try_start_15
    iget-boolean v0, v7, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v0, :cond_24

    .line 2786
    const/4 v0, 0x0

    .line 2788
    .local v0, "cause":Ljava/sql/SQLException;
    iget-boolean v2, v7, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v2, :cond_23

    .line 2789
    new-instance v2, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v2}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    move-object v0, v2

    goto :goto_11

    .line 2791
    :cond_23
    new-instance v2, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v2}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    move-object v0, v2

    .line 2794
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 2796
    nop

    .end local v8    # "sqlEx":Ljava/sql/SQLException;
    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "query":Ljava/lang/String;
    .end local p3    # "characterEncoding":Ljava/lang/String;
    .end local p5    # "maxRows":I
    .end local p6    # "resultSetType":I
    .end local p7    # "resultSetConcurrency":I
    .end local p8    # "streamResults":Z
    .end local p9    # "catalog":Ljava/lang/String;
    .end local p10    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    throw v0

    .line 2798
    .end local v0    # "cause":Ljava/sql/SQLException;
    .restart local v8    # "sqlEx":Ljava/sql/SQLException;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "query":Ljava/lang/String;
    .restart local p3    # "characterEncoding":Ljava/lang/String;
    .restart local p5    # "maxRows":I
    .restart local p6    # "resultSetType":I
    .restart local p7    # "resultSetConcurrency":I
    .restart local p8    # "streamResults":Z
    .restart local p9    # "catalog":Ljava/lang/String;
    .restart local p10    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    :cond_24
    monitor-exit v1

    goto :goto_12

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "query":Ljava/lang/String;
    .end local p3    # "characterEncoding":Ljava/lang/String;
    .end local p5    # "maxRows":I
    .end local p6    # "resultSetType":I
    .end local p7    # "resultSetConcurrency":I
    .end local p8    # "streamResults":Z
    .end local p9    # "catalog":Ljava/lang/String;
    .end local p10    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    :try_start_16
    throw v0

    .line 2801
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "query":Ljava/lang/String;
    .restart local p3    # "characterEncoding":Ljava/lang/String;
    .restart local p5    # "maxRows":I
    .restart local p6    # "resultSetType":I
    .restart local p7    # "resultSetConcurrency":I
    .restart local p8    # "streamResults":Z
    .restart local p9    # "catalog":Ljava/lang/String;
    .restart local p10    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    :cond_25
    :goto_12
    nop

    .end local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .end local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .end local p2    # "query":Ljava/lang/String;
    .end local p3    # "characterEncoding":Ljava/lang/String;
    .end local p5    # "maxRows":I
    .end local p6    # "resultSetType":I
    .end local p7    # "resultSetConcurrency":I
    .end local p8    # "streamResults":Z
    .end local p9    # "catalog":Ljava/lang/String;
    .end local p10    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    throw v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 2803
    .end local v8    # "sqlEx":Ljava/sql/SQLException;
    .restart local v10    # "queryPacket":Lcom/mysql/jdbc/Buffer;
    .restart local p1    # "callingStatement":Lcom/mysql/jdbc/StatementImpl;
    .restart local p2    # "query":Ljava/lang/String;
    .restart local p3    # "characterEncoding":Ljava/lang/String;
    .restart local p5    # "maxRows":I
    .restart local p6    # "resultSetType":I
    .restart local p7    # "resultSetConcurrency":I
    .restart local p8    # "streamResults":Z
    .restart local p9    # "catalog":Ljava/lang/String;
    .restart local p10    # "cachedMetadata":[Lcom/mysql/jdbc/Field;
    :catchall_9
    move-exception v0

    :goto_13
    iget v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    throw v0
.end method

.method tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z
    .locals 23
    .param p1, "addingTo"    # Lcom/mysql/jdbc/ResultSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2290
    move-object/from16 v12, p0

    iget v0, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x8

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    .line 2292
    const/4 v0, 0x1

    .line 2293
    .local v0, "moreRowSetsExist":Z
    move-object/from16 v1, p1

    .line 2294
    .local v1, "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    const/4 v2, 0x1

    move v14, v0

    move-object v15, v1

    .line 2296
    .end local v0    # "moreRowSetsExist":Z
    .end local v1    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .local v2, "firstTime":Z
    .local v14, "moreRowSetsExist":Z
    .local v15, "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    :goto_0
    const/16 v16, 0x1

    if-eqz v14, :cond_3

    .line 2297
    if-nez v2, :cond_0

    invoke-virtual {v15}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    goto :goto_2

    .line 2301
    :cond_0
    const/16 v17, 0x0

    .line 2303
    .end local v2    # "firstTime":Z
    .local v17, "firstTime":Z
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v11

    .line 2304
    .local v11, "fieldPacket":Lcom/mysql/jdbc/Buffer;
    invoke-virtual {v11, v13}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2306
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStatement()Ljava/sql/Statement;

    move-result-object v18

    .line 2308
    .local v18, "owningStatement":Ljava/sql/Statement;
    invoke-interface/range {v18 .. v18}, Ljava/sql/Statement;->getMaxRows()I

    move-result v19

    .line 2312
    .local v19, "maxRows":I
    move-object/from16 v1, v18

    check-cast v1, Lcom/mysql/jdbc/StatementImpl;

    invoke-interface/range {v18 .. v18}, Ljava/sql/Statement;->getResultSetType()I

    move-result v3

    invoke-interface/range {v18 .. v18}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, p1

    iget-boolean v8, v9, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v19

    move-object v7, v11

    move-wide/from16 v9, v20

    move-object/from16 v20, v11

    .end local v11    # "fieldPacket":Lcom/mysql/jdbc/Buffer;
    .local v20, "fieldPacket":Lcom/mysql/jdbc/Buffer;
    move-object/from16 v11, v22

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 2316
    .local v0, "newResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    invoke-virtual {v15, v0}, Lcom/mysql/jdbc/ResultSetImpl;->setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2318
    move-object v15, v0

    .line 2320
    iget v1, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    move/from16 v14, v16

    .line 2322
    invoke-virtual {v15}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v14, :cond_2

    .line 2324
    return v13

    .line 2326
    .end local v0    # "newResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    .end local v18    # "owningStatement":Ljava/sql/Statement;
    .end local v19    # "maxRows":I
    .end local v20    # "fieldPacket":Lcom/mysql/jdbc/Buffer;
    :cond_2
    move/from16 v2, v17

    goto :goto_0

    .line 2328
    .end local v17    # "firstTime":Z
    .restart local v2    # "firstTime":Z
    :cond_3
    :goto_2
    return v16

    .line 2331
    .end local v2    # "firstTime":Z
    .end local v14    # "moreRowSetsExist":Z
    .end local v15    # "currentResultSet":Lcom/mysql/jdbc/ResultSetImpl;
    :cond_4
    return v13
.end method

.method protected final unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;
    .locals 41
    .param p1, "packet"    # Lcom/mysql/jdbc/Buffer;
    .param p2, "extractDefaultValues"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 651
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_4

    .line 654
    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    if-eqz v1, :cond_0

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 657
    .local v1, "catalogNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v2

    .line 658
    .local v2, "catalogNameLength":I
    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    .line 661
    .end local v1    # "catalogNameStart":I
    .end local v2    # "catalogNameLength":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 662
    .local v1, "databaseNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v15

    .line 663
    .local v15, "databaseNameLength":I
    invoke-direct {v0, v1, v15}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v1

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 666
    .local v2, "tableNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v14

    .line 667
    .local v14, "tableNameLength":I
    invoke-direct {v0, v2, v14}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v23

    .line 670
    .end local v2    # "tableNameStart":I
    .local v23, "tableNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 671
    .local v2, "originalTableNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v13

    .line 672
    .local v13, "originalTableNameLength":I
    invoke-direct {v0, v2, v13}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v24

    .line 675
    .end local v2    # "originalTableNameStart":I
    .local v24, "originalTableNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 676
    .local v2, "nameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v12

    .line 678
    .local v12, "nameLength":I
    invoke-direct {v0, v2, v12}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v25

    .line 681
    .end local v2    # "nameStart":I
    .local v25, "nameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 682
    .local v2, "originalColumnNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v11

    .line 683
    .local v11, "originalColumnNameLength":I
    invoke-direct {v0, v2, v11}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v26

    .line 685
    .end local v2    # "originalColumnNameStart":I
    .local v26, "originalColumnNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v2

    int-to-short v10, v2

    .line 689
    .local v10, "charSetNumber":S
    const-wide/16 v2, 0x0

    .line 691
    .local v2, "colLength":J
    iget-boolean v4, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    if-eqz v4, :cond_1

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v2

    move-wide/from16 v27, v2

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v4

    int-to-long v2, v4

    move-wide/from16 v27, v2

    .line 697
    .end local v2    # "colLength":J
    .local v27, "colLength":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v9, v2, 0xff

    .line 699
    .local v9, "colType":I
    const/4 v2, 0x0

    .line 701
    .local v2, "colFlag":S
    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    if-eqz v3, :cond_2

    .line 702
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v3

    int-to-short v2, v3

    move/from16 v29, v2

    goto :goto_1

    .line 704
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    move/from16 v29, v2

    .line 707
    .end local v2    # "colFlag":S
    .local v29, "colFlag":S
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v8, v2, 0xff

    .line 709
    .local v8, "colDecimals":I
    const/4 v2, -0x1

    .line 710
    .local v2, "defaultValueStart":I
    const/4 v3, -0x1

    .line 712
    .local v3, "defaultValueLength":I
    if-eqz p2, :cond_3

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v3

    move/from16 v30, v2

    move/from16 v31, v3

    goto :goto_2

    .line 712
    :cond_3
    move/from16 v30, v2

    move/from16 v31, v3

    .line 717
    .end local v2    # "defaultValueStart":I
    .end local v3    # "defaultValueLength":I
    .local v30, "defaultValueStart":I
    .local v31, "defaultValueLength":I
    :goto_2
    new-instance v32, Lcom/mysql/jdbc/Field;

    move-object/from16 v2, v32

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    move v5, v1

    move v6, v15

    move/from16 v7, v23

    move/from16 v33, v8

    .end local v8    # "colDecimals":I
    .local v33, "colDecimals":I
    move v8, v14

    move/from16 v34, v9

    .end local v9    # "colType":I
    .local v34, "colType":I
    move/from16 v9, v24

    move/from16 v35, v10

    .end local v10    # "charSetNumber":S
    .local v35, "charSetNumber":S
    move v10, v13

    move/from16 v36, v11

    .end local v11    # "originalColumnNameLength":I
    .local v36, "originalColumnNameLength":I
    move/from16 v11, v25

    move/from16 v37, v12

    .end local v12    # "nameLength":I
    .local v37, "nameLength":I
    move/from16 v38, v13

    .end local v13    # "originalTableNameLength":I
    .local v38, "originalTableNameLength":I
    move/from16 v13, v26

    move/from16 v39, v14

    .end local v14    # "tableNameLength":I
    .local v39, "tableNameLength":I
    move/from16 v14, v36

    move/from16 v40, v15

    .end local v15    # "databaseNameLength":I
    .local v40, "databaseNameLength":I
    move-wide/from16 v15, v27

    move/from16 v17, v34

    move/from16 v18, v29

    move/from16 v19, v33

    move/from16 v20, v30

    move/from16 v21, v31

    move/from16 v22, v35

    invoke-direct/range {v2 .. v22}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V

    .line 721
    .local v2, "field":Lcom/mysql/jdbc/Field;
    return-object v2

    .line 724
    .end local v1    # "databaseNameStart":I
    .end local v2    # "field":Lcom/mysql/jdbc/Field;
    .end local v23    # "tableNameStart":I
    .end local v24    # "originalTableNameStart":I
    .end local v25    # "nameStart":I
    .end local v26    # "originalColumnNameStart":I
    .end local v27    # "colLength":J
    .end local v29    # "colFlag":S
    .end local v30    # "defaultValueStart":I
    .end local v31    # "defaultValueLength":I
    .end local v33    # "colDecimals":I
    .end local v34    # "colType":I
    .end local v35    # "charSetNumber":S
    .end local v36    # "originalColumnNameLength":I
    .end local v37    # "nameLength":I
    .end local v38    # "originalTableNameLength":I
    .end local v39    # "tableNameLength":I
    .end local v40    # "databaseNameLength":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 725
    .local v1, "tableNameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v13

    .line 726
    .local v13, "tableNameLength":I
    invoke-direct {v0, v1, v13}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v1

    .line 728
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 729
    .local v2, "nameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v14

    .line 730
    .local v14, "nameLength":I
    invoke-direct {v0, v2, v14}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v15

    .line 732
    .end local v2    # "nameStart":I
    .local v15, "nameStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readnBytes()I

    move-result v16

    .line 733
    .local v16, "colLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readnBytes()I

    move-result v17

    .line 734
    .local v17, "colType":I
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 736
    const/4 v2, 0x0

    .line 738
    .local v2, "colFlag":S
    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    if-eqz v3, :cond_5

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v3

    int-to-short v2, v3

    move/from16 v18, v2

    goto :goto_3

    .line 741
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    move/from16 v18, v2

    .line 744
    .end local v2    # "colFlag":S
    .local v18, "colFlag":S
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 746
    .local v2, "colDecimals":I
    iget-boolean v3, v0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    if-eqz v3, :cond_6

    .line 747
    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v2

    goto :goto_4

    .line 746
    :cond_6
    move/from16 v19, v2

    .line 750
    .end local v2    # "colDecimals":I
    .local v19, "colDecimals":I
    :goto_4
    new-instance v20, Lcom/mysql/jdbc/Field;

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    move-object/from16 v2, v20

    move v5, v15

    move v6, v14

    move v7, v1

    move v8, v13

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    invoke-direct/range {v2 .. v12}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIISI)V

    .line 753
    .local v2, "field":Lcom/mysql/jdbc/Field;
    return-object v2
.end method

.method protected useNanosForElapsedTime()Z
    .locals 1

    .line 4911
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    return v0
.end method

.method versionMeetsMinimum(III)Z
    .locals 3
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "subminor"    # I

    .line 2911
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p1, :cond_4

    .line 2912
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_3

    .line 2913
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    if-lt v0, p2, :cond_2

    .line 2914
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 2915
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v0

    if-lt v0, p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2919
    :cond_1
    return v2

    .line 2923
    :cond_2
    return v1

    .line 2927
    :cond_3
    return v2

    .line 2930
    :cond_4
    return v1
.end method
