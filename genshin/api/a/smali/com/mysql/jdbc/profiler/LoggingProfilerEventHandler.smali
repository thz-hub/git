.class public Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;
.super Ljava/lang/Object;
.source "LoggingProfilerEventHandler.java"

# interfaces
.implements Lcom/mysql/jdbc/profiler/ProfilerEventHandler;


# instance fields
.field private log:Lcom/mysql/jdbc/log/Log;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    .locals 1
    .param p1, "evt"    # Lcom/mysql/jdbc/profiler/ProfilerEvent;

    .line 46
    invoke-virtual {p1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 49
    nop

    .line 55
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    .line 59
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->log:Lcom/mysql/jdbc/log/Log;

    .line 63
    return-void
.end method

.method public processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V
    .locals 15
    .param p1, "eventType"    # B
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p3, "stmt"    # Lcom/mysql/jdbc/Statement;
    .param p4, "resultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;
    .param p5, "eventDuration"    # J
    .param p7, "eventCreationPoint"    # Ljava/lang/Throwable;
    .param p8, "message"    # Ljava/lang/String;

    .line 67
    const-string v1, ""

    .line 69
    .local v1, "catalog":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 70
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    nop

    .line 75
    :goto_1
    new-instance v0, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-nez p2, :cond_1

    const-string v2, ""

    goto :goto_2

    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v4, v2

    if-nez p2, :cond_2

    const-wide/16 v2, -0x1

    goto :goto_3

    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v2

    :goto_3
    move-wide v6, v2

    const/4 v2, -0x1

    if-nez p3, :cond_3

    const/4 v8, -0x1

    goto :goto_4

    :cond_3
    invoke-interface/range {p3 .. p3}, Lcom/mysql/jdbc/Statement;->getId()I

    move-result v3

    move v8, v3

    :goto_4
    if-nez p4, :cond_4

    const/4 v9, -0x1

    goto :goto_5

    :cond_4
    invoke-interface/range {p4 .. p4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getId()I

    move-result v2

    move v9, v2

    :goto_5
    if-nez p2, :cond_5

    sget-object v2, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    goto :goto_6

    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object v12, v2

    move-object v2, v0

    move/from16 v3, p1

    move-object v5, v1

    move-wide/from16 v10, p5

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v2 .. v14}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/profiler/LoggingProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 79
    return-void
.end method
