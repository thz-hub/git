.class public Lcom/mysql/jdbc/util/ResultSetUtil;
.super Ljava/lang/Object;
.source "ResultSetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendResultSetSlashGStyle(Ljava/lang/StringBuilder;Ljava/sql/ResultSet;)Ljava/lang/StringBuilder;
    .locals 10
    .param p0, "appendTo"    # Ljava/lang/StringBuilder;
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 38
    .local v0, "rsmd":Ljava/sql/ResultSetMetaData;
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    .line 39
    .local v1, "numFields":I
    const/4 v2, 0x0

    .line 41
    .local v2, "maxWidth":I
    new-array v3, v1, [Ljava/lang/String;

    .line 43
    .local v3, "fieldNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 44
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v0, v5}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 46
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 47
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x1

    .line 53
    .local v4, "rowCount":I
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 54
    const-string v5, "*************************** "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "rowCount":I
    .local v5, "rowCount":I
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v4, ". row ***************************\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const-string v6, "\n"

    if-ge v4, v1, :cond_4

    .line 59
    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v2, v7

    .line 61
    .local v7, "leftPad":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v7, :cond_2

    .line 62
    const-string v9, " "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 65
    .end local v8    # "j":I
    :cond_2
    aget-object v8, v3, v4

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v8, ": "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v8, v4, 0x1

    invoke-interface {p1, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "stringVal":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 71
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 73
    :cond_3
    const-string v9, "NULL"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .end local v7    # "leftPad":I
    .end local v8    # "stringVal":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 79
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_1

    .line 82
    .end local v5    # "rowCount":I
    .local v4, "rowCount":I
    :cond_5
    return-object p0
.end method
