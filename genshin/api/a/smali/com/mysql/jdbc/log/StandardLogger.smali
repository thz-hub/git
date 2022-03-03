.class public Lcom/mysql/jdbc/log/StandardLogger;
.super Ljava/lang/Object;
.source "StandardLogger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# static fields
.field private static final DEBUG:I = 0x4

.field private static final ERROR:I = 0x1

.field private static final FATAL:I = 0x0

.field private static final INFO:I = 0x3

.field private static final TRACE:I = 0x5

.field private static final WARN:I = 0x2


# instance fields
.field private logLocationInfo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/log/StandardLogger;-><init>(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "logLocationInfo"    # Z

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    .line 64
    iput-boolean p2, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    .line 65
    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 117
    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 128
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 129
    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 139
    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 151
    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 161
    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 173
    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 182
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 183
    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 195
    return-void
.end method

.method protected logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "msgBuf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    const-string v2, "TRACE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :pswitch_1
    const-string v2, "DEBUG: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    goto :goto_0

    .line 263
    :pswitch_2
    const-string v2, "INFO: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    goto :goto_0

    .line 258
    :pswitch_3
    const-string v2, "WARN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    goto :goto_0

    .line 253
    :pswitch_4
    const-string v2, "ERROR: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    goto :goto_0

    .line 248
    :pswitch_5
    const-string v2, "FATAL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    nop

    .line 278
    :goto_0
    instance-of v2, p2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 282
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    .line 283
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 284
    .local v2, "locationException":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .end local v2    # "locationException":Ljava/lang/Throwable;
    :cond_1
    if-eqz p2, :cond_2

    .line 289
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 294
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v2, "EXCEPTION STACK TRACE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p3}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "messageAsString":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 204
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 205
    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 216
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 217
    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 227
    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 238
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 239
    return-void
.end method
