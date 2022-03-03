.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
.source "MysqlXAConnection.java"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# static fields
.field private static final JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final MAX_COMMAND_LENGTH:I = 0x12c

.field private static final MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private log:Lcom/mysql/jdbc/log/Log;

.field protected logXaCommands:Z

.field private underlyingConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v1, 0x575

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v1, 0x576

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v1, 0x577

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v1, 0x64d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v1, 0x64e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;

    .line 92
    .end local v0    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4MysqlXAConnection"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 106
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/Connection;Z)V
    .locals 1
    .param p1, "connection"    # Lcom/mysql/jdbc/Connection;
    .param p2, "logXaCommands"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 122
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    .line 123
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->log:Lcom/mysql/jdbc/log/Log;

    .line 124
    iput-boolean p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->logXaCommands:Z

    .line 125
    return-void
.end method

.method private static appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;

    .line 590
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object v0

    .line 591
    .local v0, "gtrid":[B
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v1

    .line 593
    .local v1, "btrid":[B
    if-eqz v0, :cond_0

    .line 594
    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;[B)V

    .line 597
    :cond_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    if-eqz v1, :cond_1

    .line 599
    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;[B)V

    .line 602
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;I)V

    .line 604
    return-void
.end method

.method private dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    .line 555
    .local v0, "stmt":Ljava/sql/Statement;
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->logXaCommands:Z

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing XA statement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    move-object v0, v1

    .line 562
    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 564
    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .local v1, "rs":Ljava/sql/ResultSet;
    nop

    .line 570
    .end local v1    # "rs":Ljava/sql/ResultSet;
    if-eqz v0, :cond_1

    .line 572
    :try_start_1
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    goto :goto_0

    .line 573
    :catch_0
    move-exception v2

    .line 574
    :cond_1
    :goto_0
    move-object v2, v1

    .line 566
    .local v2, "rs":Ljava/sql/ResultSet;
    return-object v1

    .line 570
    .end local v2    # "rs":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 567
    :catch_1
    move-exception v1

    .line 568
    .local v1, "sqlEx":Ljava/sql/SQLException;
    :try_start_2
    invoke-static {v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v2

    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local p1    # "command":Ljava/lang/String;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .restart local v0    # "stmt":Ljava/sql/Statement;
    .restart local p1    # "command":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    .line 572
    :try_start_3
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 573
    :catch_2
    move-exception v2

    goto :goto_3

    .line 574
    :cond_2
    :goto_2
    nop

    :goto_3
    nop

    .line 570
    throw v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
    .locals 4
    .param p0, "mysqlConnection"    # Lcom/mysql/jdbc/Connection;
    .param p1, "logXaCommands"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;-><init>(Lcom/mysql/jdbc/Connection;Z)V

    return-object v0

    .line 113
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    return-object v0
.end method

.method protected static mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;
    .locals 5
    .param p0, "sqlEx"    # Ljava/sql/SQLException;

    .line 580
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 582
    .local v0, "xaCode":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 583
    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/transaction/xa/XAException;

    return-object v1

    .line 586
    :cond_0
    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/4 v3, -0x7

    const-string v4, "MysqlXAConnection.003"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/transaction/xa/XAException;

    return-object v1
.end method

.method protected static recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;
    .locals 16
    .param p0, "c"    # Ljava/sql/Connection;
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 269
    const/high16 v0, 0x1000000

    and-int v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 270
    .local v3, "startRscan":Z
    const/high16 v0, 0x800000

    and-int v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v4, v0

    .line 272
    .local v4, "endRscan":Z
    const/4 v0, 0x0

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    .line 273
    :cond_2
    new-instance v1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/4 v2, -0x5

    const-string v5, "MysqlXAConnection.001"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 283
    new-array v0, v2, [Ljavax/transaction/xa/Xid;

    return-object v0

    .line 286
    :cond_4
    const/4 v5, 0x0

    .line 287
    .local v5, "rs":Ljava/sql/ResultSet;
    const/4 v6, 0x0

    .line 289
    .local v6, "stmt":Ljava/sql/Statement;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v7, "recoveredXidList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;>;"
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v8

    move-object v6, v8

    .line 295
    const-string v8, "XA RECOVER"

    invoke-interface {v6, v8}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8

    move-object v5, v8

    .line 297
    :goto_3
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 298
    invoke-interface {v5, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    .line 299
    .local v8, "formatId":I
    const/4 v9, 0x2

    invoke-interface {v5, v9}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v9

    .line 300
    .local v9, "gtridLength":I
    const/4 v10, 0x3

    invoke-interface {v5, v10}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v10

    .line 301
    .local v10, "bqualLength":I
    const/4 v11, 0x4

    invoke-interface {v5, v11}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v11

    .line 303
    .local v11, "gtridAndBqual":[B
    new-array v12, v9, [B

    .line 304
    .local v12, "gtrid":[B
    new-array v13, v10, [B

    .line 306
    .local v13, "bqual":[B
    array-length v14, v11

    add-int v15, v9, v10

    if-ne v14, v15, :cond_5

    .line 310
    invoke-static {v11, v2, v12, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    invoke-static {v11, v9, v13, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    new-instance v14, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;

    invoke-direct {v14, v12, v13, v8}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;-><init>([B[BI)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    nop

    .end local v8    # "formatId":I
    .end local v9    # "gtridLength":I
    .end local v10    # "bqualLength":I
    .end local v11    # "gtridAndBqual":[B
    .end local v12    # "gtrid":[B
    .end local v13    # "bqual":[B
    goto :goto_3

    .line 307
    .restart local v8    # "formatId":I
    .restart local v9    # "gtridLength":I
    .restart local v10    # "bqualLength":I
    .restart local v11    # "gtridAndBqual":[B
    .restart local v12    # "gtrid":[B
    .restart local v13    # "bqual":[B
    :cond_5
    new-instance v1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/16 v2, 0x69

    const-string v14, "MysqlXAConnection.002"

    invoke-static {v14}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v2, v14, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .end local v3    # "startRscan":Z
    .end local v4    # "endRscan":Z
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local v6    # "stmt":Ljava/sql/Statement;
    .end local v7    # "recoveredXidList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;>;"
    .end local p0    # "c":Ljava/sql/Connection;
    .end local p1    # "flag":I
    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v8    # "formatId":I
    .end local v9    # "gtridLength":I
    .end local v10    # "bqualLength":I
    .end local v11    # "gtridAndBqual":[B
    .end local v12    # "gtrid":[B
    .end local v13    # "bqual":[B
    .restart local v3    # "startRscan":Z
    .restart local v4    # "endRscan":Z
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local v6    # "stmt":Ljava/sql/Statement;
    .restart local v7    # "recoveredXidList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;>;"
    .restart local p0    # "c":Ljava/sql/Connection;
    .restart local p1    # "flag":I
    :cond_6
    nop

    .line 344
    if-eqz v5, :cond_7

    .line 320
    :try_start_1
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    goto :goto_4

    .line 321
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 322
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v1

    throw v1

    .line 326
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 328
    :try_start_2
    invoke-interface {v6}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 331
    goto :goto_5

    .line 329
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 330
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v1

    throw v1

    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_8
    :goto_5
    nop

    .line 333
    nop

    .line 335
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 337
    .local v0, "numXids":I
    new-array v1, v0, [Ljavax/transaction/xa/Xid;

    .line 338
    .local v1, "asXids":[Ljavax/transaction/xa/Xid;
    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 340
    .local v2, "asObjects":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v0, :cond_9

    .line 341
    aget-object v9, v2, v8

    check-cast v9, Ljavax/transaction/xa/Xid;

    aput-object v9, v1, v8

    .line 340
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 344
    .end local v8    # "i":I
    :cond_9
    return-object v1

    .line 318
    .end local v0    # "numXids":I
    .end local v1    # "asXids":[Ljavax/transaction/xa/Xid;
    .end local v2    # "asObjects":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 315
    :catch_2
    move-exception v0

    .line 316
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :try_start_3
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v1

    .end local v3    # "startRscan":Z
    .end local v4    # "endRscan":Z
    .end local v5    # "rs":Ljava/sql/ResultSet;
    .end local v6    # "stmt":Ljava/sql/Statement;
    .end local v7    # "recoveredXidList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;>;"
    .end local p0    # "c":Ljava/sql/Connection;
    .end local p1    # "flag":I
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "startRscan":Z
    .restart local v4    # "endRscan":Z
    .restart local v5    # "rs":Ljava/sql/ResultSet;
    .restart local v6    # "stmt":Ljava/sql/Statement;
    .restart local v7    # "recoveredXidList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;>;"
    .restart local p0    # "c":Ljava/sql/Connection;
    .restart local p1    # "flag":I
    :goto_7
    if-eqz v5, :cond_a

    .line 320
    :try_start_4
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 323
    goto :goto_8

    .line 321
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 322
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v1

    throw v1

    .line 326
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_a
    :goto_8
    if-eqz v6, :cond_b

    .line 328
    :try_start_5
    invoke-interface {v6}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4

    .line 331
    goto :goto_9

    .line 329
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 330
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object v1

    throw v1

    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_b
    :goto_9
    nop

    .line 318
    throw v0
.end method


# virtual methods
.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 4
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "onePhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 537
    .local v0, "commandBuf":Ljava/lang/StringBuilder;
    const-string v1, "XA COMMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 540
    if-eqz p2, :cond_0

    .line 541
    const-string v1, " ONE PHASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    nop

    .line 549
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 548
    nop

    .line 549
    return-void

    .line 547
    :catchall_0
    move-exception v2

    .line 549
    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 547
    throw v2
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 3
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 449
    .local v0, "commandBuf":Ljava/lang/StringBuilder;
    const-string v1, "XA END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 452
    sparse-switch p2, :sswitch_data_0

    .line 461
    new-instance v1, Ljavax/transaction/xa/XAException;

    const/4 v2, -0x5

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v1

    .line 459
    :sswitch_0
    goto :goto_0

    .line 454
    :sswitch_1
    goto :goto_0

    .line 456
    :sswitch_2
    const-string v1, " SUSPEND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    nop

    .line 464
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 465
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_1
        0x20000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 0
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 388
    return-void
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 613
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->getConnection(ZZ)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    .local v0, "connToWrap":Ljava/sql/Connection;
    monitor-exit p0

    return-object v0

    .line 612
    .end local v0    # "connToWrap":Ljava/sql/Connection;
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransactionTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 2
    .param p1, "xares"    # Ljavax/transaction/xa/XAResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 199
    instance-of v0, p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    move-object v1, p1

    check-cast v1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    iget-object v1, v1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Connection;->isSameResource(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    .local v0, "commandBuf":Ljava/lang/StringBuilder;
    const-string v1, "XA PREPARE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 372
    const/4 v1, 0x0

    return v1
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;

    move-result-object v0

    return-object v0
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 4
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    .local v0, "commandBuf":Ljava/lang/StringBuilder;
    const-string v1, "XA ROLLBACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 413
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    nop

    .line 417
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_0
    move-exception v2

    .line 417
    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 415
    throw v2
.end method

.method public setTransactionTimeout(I)Z
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 3
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .local v0, "commandBuf":Ljava/lang/StringBuilder;
    const-string v1, "XA START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 495
    sparse-switch p2, :sswitch_data_0

    .line 506
    new-instance v1, Ljavax/transaction/xa/XAException;

    const/4 v2, -0x5

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v1

    .line 500
    :sswitch_0
    const-string v1, " RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    goto :goto_0

    .line 497
    :sswitch_1
    const-string v1, " JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    goto :goto_0

    .line 504
    :sswitch_2
    nop

    .line 509
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 511
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 512
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x8000000 -> :sswitch_0
    .end sparse-switch
.end method
