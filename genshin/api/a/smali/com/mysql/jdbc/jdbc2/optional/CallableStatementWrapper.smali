.class public Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.source "CallableStatementWrapper.java"

# interfaces
.implements Ljava/sql/CallableStatement;


# static fields
.field private static final JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC42CallableStatementWrapper"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4CallableStatementWrapper"

    .line 58
    .local v0, "jdbc4ClassName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/sql/CallableStatement;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "jdbc4ClassName":Ljava/lang/String;
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    .line 70
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0
    .param p1, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p2, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p3, "toWrap"    # Ljava/sql/CallableStatement;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    .line 88
    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
    .locals 3
    .param p0, "c"    # Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
    .param p1, "conn"    # Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    .param p2, "toWrap"    # Ljava/sql/CallableStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    return-object v0
.end method


# virtual methods
.method public getArray(I)Ljava/sql/Array;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 500
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 502
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1418
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getArray(Ljava/lang/String;)Ljava/sql/Array;

    move-result-object v0

    return-object v0

    .line 1421
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1426
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 407
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 410
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "scale":I
    :catch_0
    move-exception v0

    .line 298
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 301
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1334
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0

    .line 460
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 463
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 466
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object v0

    return-object v0

    .line 1384
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1390
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBoolean(I)Z

    move-result v0

    return v0

    .line 171
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 174
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 177
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1100
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1106
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getByte(I)B
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getByte(I)B

    move-result v0

    return v0

    .line 190
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 193
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 196
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getByte(Ljava/lang/String;)B

    move-result v0

    return v0

    .line 1119
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1125
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes(I)[B
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 317
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 320
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 1233
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1239
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0

    .line 479
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 482
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 484
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1400
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getClob(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object v0

    return-object v0

    .line 1403
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1406
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1408
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 331
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 334
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 515
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 520
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1258
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 1439
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1444
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 280
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 283
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 286
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 1214
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1220
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getFloat(I)F

    move-result v0

    return v0

    .line 266
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 269
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 272
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 1195
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1201
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getInt(I)I

    move-result v0

    return v0

    .line 228
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 231
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 234
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1157
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1163
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 250
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 253
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1176
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1182
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 388
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 391
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 420
    .local p2, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :catch_0
    move-exception v0

    .line 426
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 428
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1309
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1315
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1344
    .local p2, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1347
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1352
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    return-object v0

    .line 441
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 444
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 447
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRef(Ljava/lang/String;)Ljava/sql/Ref;

    move-result-object v0

    return-object v0

    .line 1365
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1371
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShort(I)S
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getShort(I)S

    move-result v0

    return v0

    .line 209
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 212
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 215
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0

    .line 1138
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1144
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 158
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1087
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 350
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 353
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 536
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 538
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 1271
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1277
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1454
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 1457
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1462
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 369
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 372
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 551
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 556
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 1290
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1296
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 1475
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1480
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 3
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getURL(I)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 637
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .restart local p1    # "parameterIndex":I
    :catch_0
    move-exception v0

    .line 640
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 643
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 1493
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    .restart local p1    # "parameterName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1499
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerOutParameter(II)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(II)V

    .line 104
    goto :goto_0

    .line 100
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":I
    :catch_0
    move-exception v0

    .line 103
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 105
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(III)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(III)V

    .line 121
    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterIndex":I
    .end local p2    # "sqlType":I
    .end local p3    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .restart local p1    # "parameterIndex":I
    .restart local p2    # "sqlType":I
    .restart local p3    # "scale":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 122
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(IILjava/lang/String;)V
    .locals 3
    .param p1, "paramIndex"    # I
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    .line 573
    goto :goto_0

    .line 569
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "paramIndex":I
    .end local p2    # "sqlType":I
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .restart local p1    # "paramIndex":I
    .restart local p2    # "sqlType":I
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 572
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 574
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;I)V

    .line 590
    goto :goto_0

    .line 586
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":I
    :catch_0
    move-exception v0

    .line 589
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 591
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;II)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;II)V

    .line 607
    goto :goto_0

    .line 603
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":I
    .end local p3    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":I
    .restart local p3    # "scale":I
    :catch_0
    move-exception v0

    .line 606
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 608
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V

    .line 624
    goto :goto_0

    .line 620
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":I
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":I
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 623
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 625
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 915
    goto :goto_0

    .line 911
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 914
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 917
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 813
    goto :goto_0

    .line 809
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/math/BigDecimal;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    .line 812
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 814
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 933
    goto :goto_0

    .line 929
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/io/InputStream;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/io/InputStream;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 932
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 934
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBoolean(Ljava/lang/String;Z)V

    .line 694
    goto :goto_0

    .line 690
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Z
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Z
    :catch_0
    move-exception v0

    .line 693
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 695
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setByte(Ljava/lang/String;B)V

    .line 711
    goto :goto_0

    .line 707
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":B
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":B
    :catch_0
    move-exception v0

    .line 710
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 712
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBytes(Ljava/lang/String;[B)V

    .line 847
    goto :goto_0

    .line 843
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":[B
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":[B
    :catch_0
    move-exception v0

    .line 846
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 848
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V

    .line 1001
    goto :goto_0

    .line 997
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "reader":Ljava/io/Reader;
    .end local p3    # "length":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "reader":Ljava/io/Reader;
    .restart local p3    # "length":I
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1002
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setDate(Ljava/lang/String;Ljava/sql/Date;)V

    .line 864
    goto :goto_0

    .line 860
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Date;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Date;
    :catch_0
    move-exception v0

    .line 863
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 865
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V

    .line 1018
    goto :goto_0

    .line 1014
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Date;
    .end local p3    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Date;
    .restart local p3    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1019
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setDouble(Ljava/lang/String;D)V

    .line 796
    goto :goto_0

    .line 792
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":D
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":D
    :catch_0
    move-exception v0

    .line 795
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 797
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setFloat(Ljava/lang/String;F)V

    .line 779
    goto :goto_0

    .line 775
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":F
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":F
    :catch_0
    move-exception v0

    .line 778
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 780
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setInt(Ljava/lang/String;I)V

    .line 745
    goto :goto_0

    .line 741
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":I
    :catch_0
    move-exception v0

    .line 744
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 746
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setLong(Ljava/lang/String;J)V

    .line 762
    goto :goto_0

    .line 758
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":J
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":J
    :catch_0
    move-exception v0

    .line 761
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 763
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNull(Ljava/lang/String;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNull(Ljava/lang/String;I)V

    .line 677
    goto :goto_0

    .line 673
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":I
    :catch_0
    move-exception v0

    .line 676
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 678
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "sqlType"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setNull(Ljava/lang/String;ILjava/lang/String;)V

    .line 1069
    goto :goto_0

    .line 1065
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "sqlType":I
    .end local p3    # "typeName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "sqlType":I
    .restart local p3    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1070
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    goto :goto_0

    .line 980
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 983
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 985
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 967
    goto :goto_0

    .line 963
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    :catch_0
    move-exception v0

    .line 966
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 968
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # I
    .param p4, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 950
    goto :goto_0

    .line 946
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/lang/Object;
    .end local p3    # "targetSqlType":I
    .end local p4    # "scale":I
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/lang/Object;
    .restart local p3    # "targetSqlType":I
    .restart local p4    # "scale":I
    :catch_0
    move-exception v0

    .line 949
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 951
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setShort(Ljava/lang/String;S)V

    .line 728
    goto :goto_0

    .line 724
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":S
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":S
    :catch_0
    move-exception v0

    .line 727
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 729
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    goto :goto_0

    .line 826
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 829
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 831
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setTime(Ljava/lang/String;Ljava/sql/Time;)V

    .line 881
    goto :goto_0

    .line 877
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Time;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Time;
    :catch_0
    move-exception v0

    .line 880
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 882
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1028
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V

    .line 1035
    goto :goto_0

    .line 1031
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Time;
    .end local p3    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Time;
    .restart local p3    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1036
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V

    .line 898
    goto :goto_0

    .line 894
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Timestamp;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Timestamp;
    :catch_0
    move-exception v0

    .line 897
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 899
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .param p3, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V

    .line 1052
    goto :goto_0

    .line 1048
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "x":Ljava/sql/Timestamp;
    .end local p3    # "cal":Ljava/util/Calendar;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "x":Ljava/sql/Timestamp;
    .restart local p3    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 1053
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public setURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setURL(Ljava/lang/String;Ljava/net/URL;)V

    .line 660
    goto :goto_0

    .line 656
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "parameterName":Ljava/lang/String;
    .end local p2    # "val":Ljava/net/URL;
    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .restart local p1    # "parameterName":Ljava/lang/String;
    .restart local p2    # "val":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 661
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_0
    return-void
.end method

.method public wasNull()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0}, Ljava/sql/CallableStatement;->wasNull()Z

    move-result v0

    return v0

    .line 134
    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    .line 140
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    const/4 v0, 0x0

    return v0
.end method
