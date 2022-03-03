.class public Lcom/mysql/jdbc/log/Jdk14Logger;
.super Ljava/lang/Object;
.source "Jdk14Logger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# static fields
.field private static final DEBUG:Ljava/util/logging/Level;

.field private static final ERROR:Ljava/util/logging/Level;

.field private static final FATAL:Ljava/util/logging/Level;

.field private static final INFO:Ljava/util/logging/Level;

.field private static final TRACE:Ljava/util/logging/Level;

.field private static final WARN:Ljava/util/logging/Level;


# instance fields
.field protected jdkLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    .line 37
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    .line 39
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    .line 41
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    .line 43
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    .line 45
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    .line 58
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    .line 59
    return-void
.end method

.method private static final findCallerStackDepth([Ljava/lang/StackTraceElement;)I
    .locals 4
    .param p0, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 236
    array-length v0, p0

    .line 238
    .local v0, "numFrames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 239
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "callerClassName":Ljava/lang/String;
    const-string v3, "com.mysql.jdbc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.mysql.jdbc.compliance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 238
    .end local v2    # "callerClassName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .restart local v2    # "callerClassName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 246
    .end local v1    # "i":I
    .end local v2    # "callerClassName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 12
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "messageAsString":Ljava/lang/String;
    const-string v1, "N/A"

    .line 257
    .local v1, "callerMethodName":Ljava/lang/String;
    const-string v2, "N/A"

    .line 261
    .local v2, "callerClassName":Ljava/lang/String;
    instance-of v3, p2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 265
    .local v3, "locationException":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 267
    .local v4, "locations":[Ljava/lang/StackTraceElement;
    invoke-static {v4}, Lcom/mysql/jdbc/log/Jdk14Logger;->findCallerStackDepth([Ljava/lang/StackTraceElement;)I

    move-result v5

    .line 269
    .local v5, "frameIdx":I
    if-eqz v5, :cond_1

    .line 270
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 271
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 276
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .end local v3    # "locationException":Ljava/lang/Throwable;
    .end local v4    # "locations":[Ljava/lang/StackTraceElement;
    .end local v5    # "frameIdx":I
    :goto_0
    if-nez p3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    invoke-virtual {v3, p1, v2, v1, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_2
    iget-object v6, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    move-object v7, p1

    move-object v8, v2

    move-object v9, v1

    move-object v10, v0

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v0    # "messageAsString":Ljava/lang/String;
    .end local v1    # "callerMethodName":Ljava/lang/String;
    .end local v2    # "callerClassName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 122
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 144
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 145
    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 155
    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 166
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 188
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 210
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 221
    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 232
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    return-void
.end method
