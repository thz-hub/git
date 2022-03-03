.class public Lcom/mysql/jdbc/JDBC4UpdatableResultSet;
.super Lcom/mysql/jdbc/UpdatableResultSet;
.source "JDBC4UpdatableResultSet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p3, "tuples"    # Lcom/mysql/jdbc/RowData;
    .param p4, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p5, "creatorStmt"    # Lcom/mysql/jdbc/StatementImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 45
    return-void
.end method

.method private final getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;
    .locals 2
    .param p1, "stringVal"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method private getStringForNClob(I)Ljava/lang/String;
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    .line 513
    .local v0, "asString":Ljava/lang/String;
    const-string v1, "UTF-8"

    .line 516
    .local v1, "forcedEncoding":Ljava/lang/String;
    const/4 v2, 0x0

    .line 518
    .local v2, "asBytes":[B
    :try_start_0
    iget-boolean v3, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isBinaryEncoded:Z

    if-nez v3, :cond_0

    .line 519
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getBytes(I)[B

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 521
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNativeBytes(IZ)[B

    move-result-object v3

    move-object v2, v3

    .line 524
    :goto_0
    if-eqz v2, :cond_1

    .line 525
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 530
    .end local v2    # "asBytes":[B
    :cond_1
    nop

    .line 532
    return-object v0

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported character encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    .line 528
    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 336
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "fieldEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v1

    return-object v1

    .line 378
    :cond_0
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Can not call getNCharacterStream() when field\'s charset isn\'t UTF-8"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "fieldEncoding":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isBinaryEncoded:Z

    if-nez v1, :cond_1

    .line 422
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "asString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 425
    const/4 v2, 0x0

    return-object v2

    .line 428
    :cond_0
    new-instance v2, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v2

    .line 431
    .end local v1    # "asString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNativeNClob(I)Ljava/sql/NClob;

    move-result-object v1

    return-object v1

    .line 418
    :cond_2
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Can not call getNClob() when field\'s charset isn\'t UTF-8"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object v0

    return-object v0
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "fieldEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 470
    :cond_0
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Can not call getNString() when field\'s charset isn\'t UTF-8"

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeNClob(I)Ljava/sql/NClob;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "stringVal":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 354
    const/4 v1, 0x0

    return-object v1

    .line 357
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;

    move-result-object v1

    return-object v1
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 495
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object v0

    return-object v0
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;-><init>(Lcom/mysql/jdbc/ResultSetInternalMethods;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 536
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isClosed:Z

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 560
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 563
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 588
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unwrap to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;)V

    .line 126
    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    .line 130
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;)V

    .line 134
    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    .line 138
    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBlob(ILjava/io/InputStream;)V

    .line 142
    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBlob(ILjava/io/InputStream;J)V

    .line 146
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;)V

    .line 150
    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    .line 154
    return-void
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateClob(ILjava/io/Reader;)V

    .line 158
    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateClob(ILjava/io/Reader;J)V

    .line 162
    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNCharacterStream(ILjava/io/Reader;I)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "fieldEncoding":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    iget-boolean v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->onInsertRow:Z

    if-nez v2, :cond_1

    .line 212
    iget-boolean v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    if-nez v2, :cond_0

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    .line 214
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->syncUpdate()V

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v2, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    int-to-long v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v2, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    int-to-long v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 221
    if-nez p2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, p1, -0x1

    sget-object v4, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 227
    .end local v1    # "fieldEncoding":Ljava/lang/String;
    :goto_0
    monitor-exit v0

    .line 228
    return-void

    .line 208
    .restart local v1    # "fieldEncoding":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "Can not call updateNCharacterStream() when field\'s character set isn\'t UTF-8"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .end local p1    # "columnIndex":I
    .end local p2    # "x":Ljava/io/Reader;
    .end local p3    # "length":I
    throw v2

    .line 227
    .end local v1    # "fieldEncoding":Ljava/lang/String;
    .restart local p1    # "columnIndex":I
    .restart local p2    # "x":Ljava/io/Reader;
    .restart local p3    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    long-to-int v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 104
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;)V

    .line 167
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 249
    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    .line 171
    return-void
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "nClob"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "fieldEncoding":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    if-nez p2, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNull(I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {p0, p1, v2, v4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 266
    .end local v1    # "fieldEncoding":Ljava/lang/String;
    :goto_0
    monitor-exit v0

    .line 267
    return-void

    .line 258
    .restart local v1    # "fieldEncoding":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "Can not call updateNClob() when field\'s character set isn\'t UTF-8"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .end local p1    # "columnIndex":I
    .end local p2    # "nClob":Ljava/sql/NClob;
    throw v2

    .line 266
    .end local v1    # "fieldEncoding":Ljava/lang/String;
    .restart local p1    # "columnIndex":I
    .restart local p2    # "nClob":Ljava/sql/NClob;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/io/Reader;)V

    .line 176
    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/io/Reader;J)V

    .line 180
    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "nClob"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/sql/NClob;)V

    .line 274
    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 10
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "fieldEncoding":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    iget-boolean v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->onInsertRow:Z

    if-nez v2, :cond_1

    .line 298
    iget-boolean v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    if-nez v2, :cond_0

    .line 299
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    .line 300
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->syncUpdate()V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v2, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNString(ILjava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v2, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 307
    if-nez p2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v8, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v9, p1, -0x1

    iget-object v3, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 311
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    .line 310
    move-object v2, p2

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 314
    .end local v1    # "fieldEncoding":Ljava/lang/String;
    :goto_0
    monitor-exit v0

    .line 315
    return-void

    .line 294
    .restart local v1    # "fieldEncoding":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/sql/SQLException;

    const-string v3, "Can not call updateNString() when field\'s character set isn\'t UTF-8"

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .end local p1    # "columnIndex":I
    .end local p2    # "x":Ljava/lang/String;
    throw v2

    .line 314
    .end local v1    # "fieldEncoding":Ljava/lang/String;
    .restart local p1    # "columnIndex":I
    .restart local p2    # "x":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNString(ILjava/lang/String;)V

    .line 333
    return-void
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V

    .line 185
    return-void
.end method
