.class public Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;
.super Ljava/lang/Object;
.source "JDBC4PreparedStatementHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/io/Reader;)V
    .locals 0
    .param p0, "pstmt"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    .line 65
    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/io/Reader;J)V
    .locals 1
    .param p0, "pstmt"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p1, "parameterIndex"    # I
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 81
    if-nez p2, :cond_0

    .line 82
    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 86
    :goto_0
    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V
    .locals 3
    .param p0, "pstmt"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p1, "parameterIndex"    # I
    .param p2, "value"    # Ljava/sql/NClob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    if-nez p2, :cond_0

    .line 57
    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    .line 61
    :goto_0
    return-void
.end method

.method static setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V
    .locals 1
    .param p0, "pstmt"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p1, "parameterIndex"    # I
    .param p2, "x"    # Ljava/sql/RowId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method static setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V
    .locals 1
    .param p0, "pstmt"    # Lcom/mysql/jdbc/PreparedStatement;
    .param p1, "parameterIndex"    # I
    .param p2, "xmlObject"    # Ljava/sql/SQLXML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    if-nez p2, :cond_0

    .line 90
    const/16 v0, 0x7d9

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 93
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->serializeAsCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    .line 95
    :goto_0
    return-void
.end method
