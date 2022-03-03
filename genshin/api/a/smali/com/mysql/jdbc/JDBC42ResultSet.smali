.class public Lcom/mysql/jdbc/JDBC42ResultSet;
.super Lcom/mysql/jdbc/JDBC4ResultSet;
.source "JDBC42ResultSet.java"


# direct methods
.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .param p1, "updateCount"    # J
    .param p3, "updateID"    # J
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "creatorStmt"    # Lcom/mysql/jdbc/StatementImpl;

    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/mysql/jdbc/JDBC4ResultSet;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 47
    return-void
.end method

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

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4ResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_a

    .line 66
    const-class v0, Ljava/time/LocalDate;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    .line 68
    .local v0, "date":Ljava/sql/Date;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/sql/Date;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 69
    .end local v0    # "date":Ljava/sql/Date;
    :cond_1
    const-class v0, Ljava/time/LocalDateTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    .line 71
    .local v0, "timestamp":Ljava/sql/Timestamp;
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/sql/Timestamp;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 72
    .end local v0    # "timestamp":Ljava/sql/Timestamp;
    :cond_3
    const-class v0, Ljava/time/LocalTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    .line 74
    .local v0, "time":Ljava/sql/Time;
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/sql/Time;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    return-object v1

    .line 75
    .end local v0    # "time":Ljava/sql/Time;
    :cond_5
    const-class v0, Ljava/time/OffsetDateTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_6

    :goto_3
    goto :goto_4

    :cond_6
    invoke-static {v0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    return-object v1

    .line 79
    .end local v0    # "string":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    goto :goto_7

    .line 82
    :cond_7
    const-class v0, Ljava/time/OffsetTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "string":Ljava/lang/String;
    if-nez v0, :cond_8

    :goto_5
    goto :goto_6

    :cond_8
    invoke-static {v0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_6
    return-object v1

    .line 86
    .end local v0    # "string":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 91
    :cond_9
    :goto_7
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 63
    :cond_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Type parameter can not be null"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .param p4, "scaleOrLength"    # I
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

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "targetSqlType"    # Ljava/sql/SQLType;
    .param p4, "scaleOrLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method
