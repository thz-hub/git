.class Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;
.super Ljava/lang/Object;
.source "PreparedStatement.java"

# interfaces
.implements Lcom/mysql/jdbc/ParameterBindings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmulatedPreparedStatementBindings"
.end annotation


# instance fields
.field private bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

.field private parameterIsNull:[Z

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4961
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4963
    .local v0, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget v1, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    .line 4964
    iget-object v1, p1, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    iget v3, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4965
    iget v1, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [[B

    .line 4966
    .local v1, "rowData":[[B
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    .line 4968
    .local v2, "typeMetadata":[Lcom/mysql/jdbc/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-ge v3, v4, :cond_3

    .line 4969
    iget v4, p1, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 4970
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 4972
    :cond_0
    iget v4, p1, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-virtual {p1, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentationForBatch(II)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 4975
    :goto_1
    const/4 v4, 0x0

    .line 4977
    .local v4, "charsetIndex":I
    iget-object v5, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v5, v5, v3

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2

    iget-object v5, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v5, v5, v3

    const/16 v6, 0x7d4

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 4981
    :cond_1
    :try_start_0
    iget-object v5, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v5, v6}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 4989
    goto :goto_3

    .line 4985
    :catch_0
    move-exception p1

    .line 4986
    .local p1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "S1009"

    invoke-static {v5, v7, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .line 4987
    .local v5, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v5, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4988
    throw v5

    .line 4983
    .end local v5    # "sqlEx":Ljava/sql/SQLException;
    .end local p1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception p1

    .line 4984
    .local p1, "ex":Ljava/sql/SQLException;
    throw p1

    .line 4978
    .end local p1    # "ex":Ljava/sql/SQLException;
    :cond_2
    :goto_2
    const/16 v4, 0x3f

    .line 4992
    :goto_3
    new-instance v11, Lcom/mysql/jdbc/Field;

    const/4 v6, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parameter_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v9, v5, v3

    aget-object v5, v1, v3

    array-length v10, v5

    move-object v5, v11

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 4993
    .local v5, "parameterMetadata":Lcom/mysql/jdbc/Field;
    iget-object v6, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4994
    aput-object v5, v2, v3

    .line 4968
    .end local v4    # "charsetIndex":I
    .end local v5    # "parameterMetadata":Lcom/mysql/jdbc/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4997
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p1}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4999
    new-instance v9, Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v3, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v6, v0}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v7, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    iput-object v9, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    .line 5001
    invoke-virtual {v9}, Lcom/mysql/jdbc/ResultSetImpl;->next()Z

    .line 5002
    return-void
.end method


# virtual methods
.method public getArray(I)Ljava/sql/Array;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5005
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5009
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5013
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5017
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5021
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5025
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5029
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5033
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5037
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5041
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5045
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5049
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5053
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5057
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5061
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5065
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getNClob(I)Ljava/io/Reader;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5069
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5073
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 5075
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    add-int/lit8 v1, p1, -0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 5076
    const/4 v0, 0x0

    return-object v0

    .line 5081
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 5095
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5093
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 5091
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 5085
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 5087
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5089
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 5083
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getByte(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5100
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    return-object v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5104
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5108
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5112
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5116
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 1
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5120
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getURL(I)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5124
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 5126
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    add-int/lit8 v1, p1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method
