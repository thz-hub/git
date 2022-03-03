.class Lcom/mysql/jdbc/EscapeProcessor;
.super Ljava/lang/Object;
.source "EscapeProcessor.java"


# static fields
.field private static JDBC_CONVERT_TO_MYSQL_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static JDBC_NO_CONVERT_TO_MYSQL_EXPRESSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "BIGINT"

    const-string v2, "0 + ?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "BINARY"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "BIT"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "CHAR"

    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v4, "DATE"

    invoke-interface {v0, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v5, "DECIMAL"

    const-string v6, "0.0 + ?"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v5, "DOUBLE"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v5, "FLOAT"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v5, "INTEGER"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "LONGVARBINARY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "LONGVARCHAR"

    const-string v7, "CONCAT(?)"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v5, "REAL"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v5, "SMALLINT"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v5, "TIME"

    invoke-interface {v0, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v6, "TIMESTAMP"

    const-string v8, "DATETIME"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v8, "TINYINT"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v8, "VARBINARY"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v9, "VARCHAR"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/mysql/jdbc/EscapeProcessor;->JDBC_CONVERT_TO_MYSQL_TYPE_MAP:Ljava/util/Map;

    .line 70
    new-instance v9, Ljava/util/HashMap;

    sget-object v10, Lcom/mysql/jdbc/EscapeProcessor;->JDBC_CONVERT_TO_MYSQL_TYPE_MAP:Ljava/util/Map;

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v9

    .line 72
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/EscapeProcessor;->JDBC_NO_CONVERT_TO_MYSQL_EXPRESSION_MAP:Ljava/util/Map;

    .line 82
    .end local v0    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;
    .locals 23
    .param p0, "sql"    # Ljava/lang/String;
    .param p1, "serverSupportsConvertFn"    # Z
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "-"

    const-string v5, "\'"

    const/4 v0, 0x0

    .line 97
    .local v0, "replaceEscapeSequence":Z
    const/4 v6, 0x0

    .line 99
    .local v6, "escapeSequence":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 100
    const/4 v4, 0x0

    return-object v4

    .line 106
    :cond_0
    const/16 v7, 0x7b

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 107
    .local v8, "beginBrace":I
    const/16 v9, 0x7d

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    const/4 v11, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 109
    .local v11, "nextEndBrace":I
    :goto_0
    if-ne v11, v10, :cond_2

    .line 110
    return-object v1

    .line 113
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v12, "newSql":Ljava/lang/StringBuilder;
    new-instance v13, Lcom/mysql/jdbc/EscapeTokenizer;

    invoke-direct {v13, v1}, Lcom/mysql/jdbc/EscapeTokenizer;-><init>(Ljava/lang/String;)V

    .line 117
    .local v13, "escapeTokenizer":Lcom/mysql/jdbc/EscapeTokenizer;
    const/4 v14, 0x0

    .line 118
    .local v14, "usesVariables":B
    const/4 v15, 0x0

    move-object/from16 v22, v6

    move v6, v0

    move v0, v14

    move-object/from16 v14, v22

    .line 120
    .local v0, "usesVariables":B
    .local v6, "replaceEscapeSequence":Z
    .local v14, "escapeSequence":Ljava/lang/String;
    .local v15, "callingStoredFunction":Z
    :goto_1
    invoke-virtual {v13}, Lcom/mysql/jdbc/EscapeTokenizer;->hasMoreTokens()Z

    move-result v16

    const/4 v9, 0x0

    if-eqz v16, :cond_19

    .line 121
    invoke-virtual {v13}, Lcom/mysql/jdbc/EscapeTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "token":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_18

    .line 124
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_17

    .line 126
    const-string v1, "}"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 130
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v9, 0x2

    if-le v1, v9, :cond_6

    .line 131
    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 133
    .local v1, "nestedBrace":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_5

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v17, v1

    const/4 v1, 0x1

    const/4 v7, 0x0

    .end local v1    # "nestedBrace":I
    .local v17, "nestedBrace":I
    invoke-virtual {v10, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 136
    .local v7, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v10, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v3}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "remainingResults":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 140
    .local v9, "remaining":Ljava/lang/String;
    move/from16 v18, v8

    .end local v8    # "beginBrace":I
    .local v18, "beginBrace":I
    instance-of v8, v1, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 141
    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .end local v9    # "remaining":Ljava/lang/String;
    .local v8, "remaining":Ljava/lang/String;
    goto :goto_2

    .line 143
    .end local v8    # "remaining":Ljava/lang/String;
    .restart local v9    # "remaining":Ljava/lang/String;
    :cond_3
    move-object v8, v1

    check-cast v8, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v8, v8, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    .line 145
    .end local v9    # "remaining":Ljava/lang/String;
    .restart local v8    # "remaining":Ljava/lang/String;
    const/4 v9, 0x1

    if-eq v0, v9, :cond_4

    .line 146
    move-object v9, v1

    check-cast v9, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-byte v0, v9, Lcom/mysql/jdbc/EscapeProcessorResult;->usesVariables:B

    .line 150
    :cond_4
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/16 v9, 0x7d

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v1, v0

    goto :goto_4

    .line 133
    .end local v7    # "buf":Ljava/lang/StringBuilder;
    .end local v17    # "nestedBrace":I
    .end local v18    # "beginBrace":I
    .local v1, "nestedBrace":I
    .local v8, "beginBrace":I
    :cond_5
    move/from16 v17, v1

    move/from16 v18, v8

    const/16 v9, 0x7d

    .end local v1    # "nestedBrace":I
    .end local v8    # "beginBrace":I
    .restart local v17    # "nestedBrace":I
    .restart local v18    # "beginBrace":I
    goto :goto_3

    .line 130
    .end local v17    # "nestedBrace":I
    .end local v18    # "beginBrace":I
    .restart local v8    # "beginBrace":I
    :cond_6
    move/from16 v18, v8

    const/16 v9, 0x7d

    .line 160
    .end local v8    # "beginBrace":I
    .restart local v18    # "beginBrace":I
    :goto_3
    move v1, v0

    .end local v0    # "usesVariables":B
    .local v1, "usesVariables":B
    :goto_4
    invoke-static {v10}, Lcom/mysql/jdbc/EscapeProcessor;->removeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "collapsedToken":Ljava/lang/String;
    const-string v0, "{escape"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x3

    if-eqz v0, :cond_8

    .line 167
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v9, " \'"

    invoke-direct {v0, v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    .line 171
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_7

    .line 172
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 175
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v14, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v14    # "escapeSequence":Ljava/lang/String;
    .local v8, "escapeSequence":Ljava/lang/String;
    const/4 v6, 0x1

    move-object v14, v8

    goto :goto_5

    .line 178
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "escapeSequence":Ljava/lang/String;
    .restart local v14    # "escapeSequence":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_5
    move/from16 v17, v1

    goto/16 :goto_c

    .line 181
    :cond_8
    const-string v0, "{fn"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 182
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v9, "fn "

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    .line 183
    .local v0, "startPos":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 185
    .local v8, "endPos":I
    invoke-virtual {v10, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "fnToken":Ljava/lang/String;
    move/from16 v16, v0

    .end local v0    # "startPos":I
    .local v16, "startPos":I
    const-string v0, "convert"

    invoke-static {v9, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    invoke-static {v9, v2, v3}, Lcom/mysql/jdbc/EscapeProcessor;->processConvertToken(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 193
    :cond_9
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .end local v8    # "endPos":I
    .end local v9    # "fnToken":Ljava/lang/String;
    .end local v16    # "startPos":I
    :goto_6
    move/from16 v17, v1

    goto/16 :goto_c

    :cond_a
    const-string v0, "{d"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 196
    const/16 v0, 0x27

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 197
    .local v8, "startPos":I
    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 199
    .local v9, "endPos":I
    move/from16 v17, v1

    const/4 v1, -0x1

    .end local v1    # "usesVariables":B
    .local v17, "usesVariables":B
    if-eq v8, v1, :cond_c

    if-ne v9, v1, :cond_b

    goto :goto_7

    .line 203
    :cond_b
    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "argument":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " -"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "year4":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    .line 209
    .local v19, "month2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v16

    .line 210
    .local v20, "day2":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .local v16, "st":Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    .end local v19    # "month2":Ljava/lang/String;
    .local v2, "month2":Ljava/lang/String;
    .local v21, "year4":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    .end local v20    # "day2":Ljava/lang/String;
    .local v2, "day2":Ljava/lang/String;
    .restart local v19    # "month2":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    nop

    .end local v0    # "dateString":Ljava/lang/String;
    .end local v2    # "day2":Ljava/lang/String;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    .end local v19    # "month2":Ljava/lang/String;
    .end local v21    # "year4":Ljava/lang/String;
    goto :goto_8

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Syntax error for DATE escape sequence \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "42000"

    invoke-static {v2, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 200
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v1    # "argument":Ljava/lang/String;
    :cond_c
    :goto_7
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v8    # "startPos":I
    .end local v9    # "endPos":I
    :goto_8
    goto/16 :goto_c

    .end local v17    # "usesVariables":B
    .local v1, "usesVariables":B
    :cond_d
    move/from16 v17, v1

    .end local v1    # "usesVariables":B
    .restart local v17    # "usesVariables":B
    const-string v0, "{ts"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    invoke-static {v3, v12, v10}, Lcom/mysql/jdbc/EscapeProcessor;->processTimestampToken(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 219
    :cond_e
    const-string v0, "{t"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 220
    invoke-static {v3, v12, v10}, Lcom/mysql/jdbc/EscapeProcessor;->processTimeToken(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 221
    :cond_f
    const-string v0, "{call"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "{?=call"

    if-nez v0, :cond_12

    invoke-static {v7, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    .line 249
    :cond_10
    const-string v0, "{oj"

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 254
    :cond_11
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 223
    :cond_12
    :goto_9
    const-string v0, "CALL"

    invoke-static {v10, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 224
    .local v0, "startPos":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    .line 226
    .local v2, "endPos":I
    invoke-static {v7, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 227
    const/4 v1, 0x1

    .line 228
    .end local v15    # "callingStoredFunction":Z
    .local v1, "callingStoredFunction":Z
    const-string v8, "SELECT "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v1

    goto :goto_a

    .line 231
    .end local v1    # "callingStoredFunction":Z
    .restart local v15    # "callingStoredFunction":Z
    :cond_13
    const/4 v1, 0x0

    .line 232
    .end local v15    # "callingStoredFunction":Z
    .restart local v1    # "callingStoredFunction":Z
    const-string v8, "CALL "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v1

    .line 236
    .end local v1    # "callingStoredFunction":Z
    .restart local v15    # "callingStoredFunction":Z
    :goto_a
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_b
    if-lt v1, v0, :cond_15

    .line 237
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 239
    .local v8, "c":C
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 240
    nop

    .line 236
    .end local v8    # "c":C
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 243
    .restart local v8    # "c":C
    :cond_14
    const/16 v9, 0x29

    if-eq v8, v9, :cond_15

    .line 244
    const-string v9, "()"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .end local v0    # "startPos":I
    .end local v1    # "i":I
    .end local v2    # "endPos":I
    .end local v8    # "c":C
    :cond_15
    nop

    .line 256
    .end local v7    # "collapsedToken":Ljava/lang/String;
    :goto_c
    move/from16 v0, v17

    goto :goto_d

    .line 127
    .end local v17    # "usesVariables":B
    .end local v18    # "beginBrace":I
    .local v0, "usesVariables":B
    .local v8, "beginBrace":I
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid escape sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 257
    :cond_17
    move/from16 v18, v8

    .end local v8    # "beginBrace":I
    .restart local v18    # "beginBrace":I
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 123
    .end local v18    # "beginBrace":I
    .restart local v8    # "beginBrace":I
    :cond_18
    move/from16 v18, v8

    .line 260
    .end local v8    # "beginBrace":I
    .end local v10    # "token":Ljava/lang/String;
    .restart local v18    # "beginBrace":I
    :goto_d
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v8, v18

    const/16 v7, 0x7b

    const/16 v9, 0x7d

    const/4 v10, -0x1

    goto/16 :goto_1

    .line 262
    .end local v18    # "beginBrace":I
    .restart local v8    # "beginBrace":I
    :cond_19
    move/from16 v18, v8

    .end local v8    # "beginBrace":I
    .restart local v18    # "beginBrace":I
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "escapedSql":Ljava/lang/String;
    if-eqz v6, :cond_1b

    .line 268
    move-object v2, v1

    .line 270
    .local v2, "currentSql":Ljava/lang/String;
    :goto_e
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 271
    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 272
    .local v4, "escapePos":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "lhs":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "rhs":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .end local v4    # "escapePos":I
    .end local v7    # "rhs":Ljava/lang/String;
    .end local v8    # "lhs":Ljava/lang/String;
    goto :goto_e

    .line 277
    :cond_1a
    move-object v1, v2

    .line 280
    .end local v2    # "currentSql":Ljava/lang/String;
    :cond_1b
    new-instance v2, Lcom/mysql/jdbc/EscapeProcessorResult;

    invoke-direct {v2}, Lcom/mysql/jdbc/EscapeProcessorResult;-><init>()V

    .line 281
    .local v2, "epr":Lcom/mysql/jdbc/EscapeProcessorResult;
    iput-object v1, v2, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    .line 282
    iput-boolean v15, v2, Lcom/mysql/jdbc/EscapeProcessorResult;->callingStoredFunction:Z

    .line 284
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1d

    .line 285
    invoke-virtual {v13}, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 286
    iput-byte v4, v2, Lcom/mysql/jdbc/EscapeProcessorResult;->usesVariables:B

    goto :goto_f

    .line 288
    :cond_1c
    const/4 v4, 0x0

    iput-byte v4, v2, Lcom/mysql/jdbc/EscapeProcessorResult;->usesVariables:B

    .line 292
    :cond_1d
    :goto_f
    return-object v2
.end method

.method private static processConvertToken(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .locals 11
    .param p0, "functionToken"    # Ljava/lang/String;
    .param p1, "serverSupportsConvertFn"    # Z
    .param p2, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 519
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, "firstIndexOfParen":I
    const-string v1, "42000"

    const-string v2, "\'."

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 527
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 529
    .local v4, "indexOfComma":I
    if-eq v4, v3, :cond_6

    .line 534
    const/16 v5, 0x29

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 536
    .local v5, "indexOfCloseParen":I
    if-eq v5, v3, :cond_5

    .line 543
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "expression":Ljava/lang/String;
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 548
    .local v6, "newType":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "trimmedType":Ljava/lang/String;
    const-string v8, "SQL_"

    invoke-static {v7, v8}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 551
    const/4 v8, 0x4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 554
    :cond_0
    const-string v8, "S1000"

    if-eqz p1, :cond_1

    .line 555
    sget-object v9, Lcom/mysql/jdbc/EscapeProcessor;->JDBC_CONVERT_TO_MYSQL_TYPE_MAP:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 557
    :cond_1
    sget-object v9, Lcom/mysql/jdbc/EscapeProcessor;->JDBC_NO_CONVERT_TO_MYSQL_EXPRESSION_MAP:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    .line 562
    if-eqz v6, :cond_4

    .line 569
    :goto_0
    if-eqz v6, :cond_3

    .line 574
    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 576
    .local v8, "replaceIndex":I
    if-eq v8, v3, :cond_2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .local v3, "convertRewrite":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 584
    .end local v3    # "convertRewrite":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "CAST("

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, "castRewrite":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v9, " AS "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v9, ")"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 570
    .end local v3    # "castRewrite":Ljava/lang/StringBuilder;
    .end local v8    # "replaceIndex":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported conversion type \'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' found while processing escape token."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 563
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find conversion re-write for type \'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' that is applicable for this server version while processing escape tokens."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 537
    .end local v1    # "expression":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v6    # "newType":Ljava/lang/String;
    .end local v7    # "trimmedType":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Syntax error while processing {fn convert (... , ...)} token, missing closing parenthesis in token \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 530
    .end local v5    # "indexOfCloseParen":I
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Syntax error while processing {fn convert (... , ...)} token, missing comma in token \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 522
    .end local v4    # "indexOfComma":I
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Syntax error while processing {fn convert (... , ...)} token, missing opening parenthesis in token \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private static processTimeToken(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 24
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "newSql"    # Ljava/lang/StringBuilder;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 296
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, ":"

    const-string v3, "\'"

    const/16 v4, 0x27

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 297
    .local v5, "startPos":I
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 299
    .local v4, "endPos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    if-ne v4, v6, :cond_0

    move/from16 v23, v4

    goto/16 :goto_4

    .line 303
    :cond_0
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "argument":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " :."

    invoke-direct {v7, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "hour":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "minute":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "second":Ljava/lang/String;
    const/4 v11, 0x0

    .line 312
    .local v11, "serverSupportsFractionalSecond":Z
    const-string v12, ""

    .line 314
    .local v12, "fractionalSecond":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v13, :cond_1

    .line 315
    const/4 v13, 0x5

    const/4 v14, 0x6

    const/4 v15, 0x4

    move/from16 v23, v4

    move-object/from16 v4, p0

    .end local v4    # "endPos":I
    .local v23, "endPos":I
    :try_start_1
    invoke-interface {v4, v13, v14, v15}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 316
    const/4 v11, 0x1

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_0

    .line 314
    .end local v23    # "endPos":I
    .restart local v4    # "endPos":I
    :cond_1
    move/from16 v23, v4

    move-object/from16 v4, p0

    .line 321
    .end local v4    # "endPos":I
    .restart local v23    # "endPos":I
    :cond_2
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_1

    .line 331
    :cond_3
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v0

    .line 334
    .local v13, "sessionCalendar":Ljava/util/Calendar;
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "hourInt":I
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 336
    .local v14, "minuteInt":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 338
    .local v15, "secondInt":I
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v13, v0, v14, v15, v4}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v19

    .line 340
    .local v19, "toBeAdjusted":Ljava/sql/Time;
    const/16 v18, 0x0

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v20

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v13

    invoke-static/range {v16 .. v22}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v4

    .line 343
    .local v4, "inServerTimezone":Ljava/sql/Time;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    move/from16 v16, v0

    .end local v0    # "hourInt":I
    .local v16, "hourInt":I
    invoke-virtual {v4}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    if-eqz v11, :cond_4

    .line 347
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 355
    .end local v4    # "inServerTimezone":Ljava/sql/Time;
    .end local v14    # "minuteInt":I
    .end local v15    # "secondInt":I
    .end local v16    # "hourInt":I
    .end local v19    # "toBeAdjusted":Ljava/sql/Time;
    goto :goto_2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Syntax error in TIMESTAMP escape sequence \'"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\'."

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "S1009"

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-static {v4, v14, v15}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local v5    # "startPos":I
    .end local v6    # "argument":Ljava/lang/String;
    .end local v23    # "endPos":I
    .end local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "newSql":Ljava/lang/StringBuilder;
    .end local p2    # "token":Ljava/lang/String;
    throw v4

    .line 322
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v13    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v5    # "startPos":I
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v23    # "endPos":I
    .restart local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "newSql":Ljava/lang/StringBuilder;
    .restart local p2    # "token":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    .line 359
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "hour":Ljava/lang/String;
    .end local v9    # "minute":Ljava/lang/String;
    .end local v10    # "second":Ljava/lang/String;
    .end local v11    # "serverSupportsFractionalSecond":Z
    .end local v12    # "fractionalSecond":Ljava/lang/String;
    :goto_2
    goto :goto_5

    .line 357
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v23    # "endPos":I
    .local v4, "endPos":I
    :catch_2
    move-exception v0

    move/from16 v23, v4

    .line 358
    .end local v4    # "endPos":I
    .local v0, "e":Ljava/util/NoSuchElementException;
    .restart local v23    # "endPos":I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Syntax error for escape sequence \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v7, "42000"

    invoke-static {v3, v7, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 299
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v6    # "argument":Ljava/lang/String;
    .end local v23    # "endPos":I
    .restart local v4    # "endPos":I
    :cond_6
    move/from16 v23, v4

    .line 300
    .end local v4    # "endPos":I
    .restart local v23    # "endPos":I
    :goto_4
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :goto_5
    return-void
.end method

.method private static processTimestampToken(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 39
    .param p0, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "newSql"    # Ljava/lang/StringBuilder;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 364
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, ":"

    const-string v1, "-"

    const-string v11, "42000"

    const-string v12, "Syntax error for TIMESTAMP escape sequence \'"

    const-string v13, "\'"

    const/16 v2, 0x27

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v14, v3, 0x1

    .line 365
    .local v14, "startPos":I
    invoke-virtual {v10, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 367
    .local v15, "endPos":I
    const/4 v7, -0x1

    if-eq v14, v7, :cond_a

    if-ne v15, v7, :cond_0

    goto/16 :goto_8

    .line 371
    :cond_0
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "argument":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_e

    const/4 v5, 0x4

    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x6

    if-nez v3, :cond_3

    .line 375
    :try_start_1
    invoke-static {v6}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    .line 377
    .local v0, "ts":Ljava/sql/Timestamp;
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->isServerTruncatesFracSecs()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v4, v1}, Lcom/mysql/jdbc/TimeUtil;->adjustTimestampNanosPrecision(Ljava/sql/Timestamp;IZ)Ljava/sql/Timestamp;

    move-result-object v1

    move-object v0, v1

    .line 379
    const-string v1, "\'\'yyyy-MM-dd HH:mm:ss"

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v2, v1, v2, v3}, Lcom/mysql/jdbc/TimeUtil;->getSimpleDateFormat(Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 381
    .local v1, "tsdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v8, v7, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const/16 v2, 0x2e

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/sql/Timestamp;->getNanos()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    const/16 v2, 0x27

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    move-object/from16 v38, v6

    .end local v0    # "ts":Ljava/sql/Timestamp;
    .end local v1    # "tsdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_4

    .line 471
    :catch_0
    move-exception v0

    move-object v2, v6

    goto/16 :goto_7

    .line 391
    :cond_3
    :try_start_2
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v2, " .-:"

    invoke-direct {v3, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_e

    move-object/from16 v19, v3

    .line 393
    .local v19, "st":Ljava/util/StringTokenizer;
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 394
    .local v3, "year4":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "month2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    .line 396
    .local v21, "day2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    .line 397
    .local v22, "hour":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v23, v20

    .line 398
    .local v23, "minute":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v24, v20

    .line 400
    .local v24, "second":Ljava/lang/String;
    const/16 v20, 0x0

    .line 401
    .local v20, "serverSupportsFractionalSecond":Z
    const-string v25, ""

    .line 402
    .local v25, "fractionalSecond":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v26
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a

    const-string v4, "."

    if-eqz v26, :cond_4

    .line 403
    move-object/from16 v26, v6

    const/4 v6, 0x6

    .end local v6    # "argument":Ljava/lang/String;
    .local v26, "argument":Ljava/lang/String;
    :try_start_4
    invoke-interface {v8, v7, v6, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 404
    const/16 v20, 0x1

    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v25, v5

    move-object/from16 v7, v25

    goto :goto_1

    .line 471
    .end local v2    # "month2":Ljava/lang/String;
    .end local v3    # "year4":Ljava/lang/String;
    .end local v19    # "st":Ljava/util/StringTokenizer;
    .end local v20    # "serverSupportsFractionalSecond":Z
    .end local v21    # "day2":Ljava/lang/String;
    .end local v22    # "hour":Ljava/lang/String;
    .end local v23    # "minute":Ljava/lang/String;
    .end local v24    # "second":Ljava/lang/String;
    .end local v25    # "fractionalSecond":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v2, v26

    goto/16 :goto_7

    .line 466
    .restart local v19    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v0

    move-object/from16 v38, v26

    goto/16 :goto_6

    .line 402
    .end local v26    # "argument":Ljava/lang/String;
    .restart local v2    # "month2":Ljava/lang/String;
    .restart local v3    # "year4":Ljava/lang/String;
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v20    # "serverSupportsFractionalSecond":Z
    .restart local v21    # "day2":Ljava/lang/String;
    .restart local v22    # "hour":Ljava/lang/String;
    .restart local v23    # "minute":Ljava/lang/String;
    .restart local v24    # "second":Ljava/lang/String;
    .restart local v25    # "fractionalSecond":Ljava/lang/String;
    :cond_4
    move-object/from16 v26, v6

    .line 421
    .end local v6    # "argument":Ljava/lang/String;
    .restart local v26    # "argument":Ljava/lang/String;
    :cond_5
    move-object/from16 v7, v25

    .end local v25    # "fractionalSecond":Ljava/lang/String;
    .local v7, "fractionalSecond":Ljava/lang/String;
    :goto_1
    :try_start_5
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v5
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8

    if-nez v5, :cond_6

    :try_start_6
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v5

    if-nez v5, :cond_6

    .line 422
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    .end local v21    # "day2":Ljava/lang/String;
    .local v6, "day2":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    .end local v22    # "hour":Ljava/lang/String;
    .local v5, "hour":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    .end local v23    # "minute":Ljava/lang/String;
    .local v1, "minute":Ljava/lang/String;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    .end local v24    # "second":Ljava/lang/String;
    .local v4, "second":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v38, v26

    goto/16 :goto_3

    .line 421
    .end local v1    # "minute":Ljava/lang/String;
    .end local v4    # "second":Ljava/lang/String;
    .end local v5    # "hour":Ljava/lang/String;
    .end local v6    # "day2":Ljava/lang/String;
    .restart local v21    # "day2":Ljava/lang/String;
    .restart local v22    # "hour":Ljava/lang/String;
    .restart local v23    # "minute":Ljava/lang/String;
    .restart local v24    # "second":Ljava/lang/String;
    :cond_6
    move-object/from16 v6, v21

    move-object/from16 v5, v22

    move-object/from16 v1, v23

    move-object/from16 v21, v24

    .line 425
    .end local v22    # "hour":Ljava/lang/String;
    .end local v23    # "minute":Ljava/lang/String;
    .end local v24    # "second":Ljava/lang/String;
    .restart local v1    # "minute":Ljava/lang/String;
    .restart local v5    # "hour":Ljava/lang/String;
    .restart local v6    # "day2":Ljava/lang/String;
    .local v21, "second":Ljava/lang/String;
    :try_start_7
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v29
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8

    .line 428
    .local v29, "sessionCalendar":Ljava/util/Calendar;
    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 429
    .local v30, "year4Int":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 430
    .local v31, "month2Int":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 431
    .local v32, "day2Int":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 432
    .local v33, "hourInt":I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 433
    .local v34, "minuteInt":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 435
    .local v35, "secondInt":I
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 437
    .local v0, "useGmtMillis":Z
    if-eqz v0, :cond_7

    :try_start_9
    const-string v17, "GMT"

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v17
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v28, v17

    goto :goto_2

    .line 461
    .end local v0    # "useGmtMillis":Z
    .end local v30    # "year4Int":I
    .end local v31    # "month2Int":I
    .end local v32    # "day2Int":I
    .end local v33    # "hourInt":I
    .end local v34    # "minuteInt":I
    .end local v35    # "secondInt":I
    :catch_3
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v18, v2

    move-object/from16 v27, v3

    move-object/from16 v17, v5

    move-object/from16 v22, v6

    move-object v8, v7

    move-object/from16 v38, v26

    goto/16 :goto_5

    .line 437
    .restart local v0    # "useGmtMillis":Z
    .restart local v30    # "year4Int":I
    .restart local v31    # "month2Int":I
    .restart local v32    # "day2Int":I
    .restart local v33    # "hourInt":I
    .restart local v34    # "minuteInt":I
    .restart local v35    # "secondInt":I
    :cond_7
    const/16 v28, 0x0

    :goto_2
    const/16 v36, 0x0

    move/from16 v27, v0

    :try_start_a
    invoke-static/range {v27 .. v36}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v17

    move-object/from16 v37, v4

    move-object/from16 v4, v17

    .line 441
    .local v4, "toBeAdjusted":Ljava/sql/Timestamp;
    const/16 v17, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v23
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_8

    const/16 v24, 0x0

    move-object/from16 v25, v1

    .end local v1    # "minute":Ljava/lang/String;
    .local v25, "minute":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v18, v2

    .end local v2    # "month2":Ljava/lang/String;
    .local v18, "month2":Ljava/lang/String;
    move-object/from16 v2, v29

    move-object/from16 v27, v3

    .end local v3    # "year4":Ljava/lang/String;
    .local v27, "year4":Ljava/lang/String;
    move-object/from16 v3, v17

    move-object/from16 v17, v5

    .end local v5    # "hour":Ljava/lang/String;
    .local v17, "hour":Ljava/lang/String;
    move-object/from16 v5, v22

    move-object/from16 v22, v6

    move-object/from16 v38, v26

    .end local v6    # "day2":Ljava/lang/String;
    .end local v26    # "argument":Ljava/lang/String;
    .local v22, "day2":Ljava/lang/String;
    .local v38, "argument":Ljava/lang/String;
    move-object/from16 v6, v23

    move/from16 v16, v0

    move-object v8, v7

    const/4 v0, -0x1

    .end local v0    # "useGmtMillis":Z
    .end local v7    # "fractionalSecond":Ljava/lang/String;
    .local v8, "fractionalSecond":Ljava/lang/String;
    .local v16, "useGmtMillis":Z
    move/from16 v7, v24

    :try_start_b
    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v1

    .line 444
    .local v1, "inServerTimezone":Ljava/sql/Timestamp;
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "timezoneLiteral":Ljava/lang/String;
    move-object/from16 v3, v37

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 450
    .local v3, "indexOfDot":I
    if-eq v3, v0, :cond_8

    .line 451
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 454
    :cond_8
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    if-eqz v20, :cond_9

    .line 457
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_9
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6

    .line 464
    .end local v1    # "inServerTimezone":Ljava/sql/Timestamp;
    .end local v2    # "timezoneLiteral":Ljava/lang/String;
    .end local v3    # "indexOfDot":I
    .end local v4    # "toBeAdjusted":Ljava/sql/Timestamp;
    .end local v16    # "useGmtMillis":Z
    .end local v30    # "year4Int":I
    .end local v31    # "month2Int":I
    .end local v32    # "day2Int":I
    .end local v33    # "hourInt":I
    .end local v34    # "minuteInt":I
    .end local v35    # "secondInt":I
    nop

    .line 469
    .end local v8    # "fractionalSecond":Ljava/lang/String;
    .end local v17    # "hour":Ljava/lang/String;
    .end local v18    # "month2":Ljava/lang/String;
    .end local v20    # "serverSupportsFractionalSecond":Z
    .end local v21    # "second":Ljava/lang/String;
    .end local v22    # "day2":Ljava/lang/String;
    .end local v25    # "minute":Ljava/lang/String;
    .end local v27    # "year4":Ljava/lang/String;
    .end local v29    # "sessionCalendar":Ljava/util/Calendar;
    :goto_3
    nop

    .line 477
    .end local v19    # "st":Ljava/util/StringTokenizer;
    :goto_4
    goto/16 :goto_9

    .line 461
    .restart local v8    # "fractionalSecond":Ljava/lang/String;
    .restart local v17    # "hour":Ljava/lang/String;
    .restart local v18    # "month2":Ljava/lang/String;
    .restart local v19    # "st":Ljava/util/StringTokenizer;
    .restart local v20    # "serverSupportsFractionalSecond":Z
    .restart local v21    # "second":Ljava/lang/String;
    .restart local v22    # "day2":Ljava/lang/String;
    .restart local v25    # "minute":Ljava/lang/String;
    .restart local v27    # "year4":Ljava/lang/String;
    .restart local v29    # "sessionCalendar":Ljava/util/Calendar;
    :catch_4
    move-exception v0

    goto :goto_5

    .end local v8    # "fractionalSecond":Ljava/lang/String;
    .end local v17    # "hour":Ljava/lang/String;
    .end local v18    # "month2":Ljava/lang/String;
    .end local v22    # "day2":Ljava/lang/String;
    .end local v25    # "minute":Ljava/lang/String;
    .end local v27    # "year4":Ljava/lang/String;
    .end local v38    # "argument":Ljava/lang/String;
    .local v1, "minute":Ljava/lang/String;
    .local v2, "month2":Ljava/lang/String;
    .local v3, "year4":Ljava/lang/String;
    .restart local v5    # "hour":Ljava/lang/String;
    .restart local v6    # "day2":Ljava/lang/String;
    .restart local v7    # "fractionalSecond":Ljava/lang/String;
    .restart local v26    # "argument":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v18, v2

    move-object/from16 v27, v3

    move-object/from16 v17, v5

    move-object/from16 v22, v6

    move-object v8, v7

    move-object/from16 v38, v26

    .line 462
    .end local v1    # "minute":Ljava/lang/String;
    .end local v2    # "month2":Ljava/lang/String;
    .end local v3    # "year4":Ljava/lang/String;
    .end local v5    # "hour":Ljava/lang/String;
    .end local v6    # "day2":Ljava/lang/String;
    .end local v7    # "fractionalSecond":Ljava/lang/String;
    .end local v26    # "argument":Ljava/lang/String;
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    .restart local v8    # "fractionalSecond":Ljava/lang/String;
    .restart local v17    # "hour":Ljava/lang/String;
    .restart local v18    # "month2":Ljava/lang/String;
    .restart local v22    # "day2":Ljava/lang/String;
    .restart local v25    # "minute":Ljava/lang/String;
    .restart local v27    # "year4":Ljava/lang/String;
    .restart local v38    # "argument":Ljava/lang/String;
    :goto_5
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syntax error in TIMESTAMP escape sequence \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v14    # "startPos":I
    .end local v15    # "endPos":I
    .end local v19    # "st":Ljava/util/StringTokenizer;
    .end local v38    # "argument":Ljava/lang/String;
    .end local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "newSql":Ljava/lang/StringBuilder;
    .end local p2    # "token":Ljava/lang/String;
    throw v1
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6

    .line 471
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v8    # "fractionalSecond":Ljava/lang/String;
    .end local v17    # "hour":Ljava/lang/String;
    .end local v18    # "month2":Ljava/lang/String;
    .end local v20    # "serverSupportsFractionalSecond":Z
    .end local v21    # "second":Ljava/lang/String;
    .end local v22    # "day2":Ljava/lang/String;
    .end local v25    # "minute":Ljava/lang/String;
    .end local v27    # "year4":Ljava/lang/String;
    .end local v29    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v14    # "startPos":I
    .restart local v15    # "endPos":I
    .restart local v38    # "argument":Ljava/lang/String;
    .restart local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "newSql":Ljava/lang/StringBuilder;
    .restart local p2    # "token":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v2, v38

    goto :goto_7

    .line 466
    .restart local v19    # "st":Ljava/util/StringTokenizer;
    :catch_7
    move-exception v0

    goto :goto_6

    .line 471
    .end local v19    # "st":Ljava/util/StringTokenizer;
    .end local v38    # "argument":Ljava/lang/String;
    .restart local v26    # "argument":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v2, v26

    .end local v26    # "argument":Ljava/lang/String;
    .restart local v38    # "argument":Ljava/lang/String;
    goto :goto_7

    .line 466
    .end local v38    # "argument":Ljava/lang/String;
    .restart local v19    # "st":Ljava/util/StringTokenizer;
    .restart local v26    # "argument":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v38, v26

    .end local v26    # "argument":Ljava/lang/String;
    .restart local v38    # "argument":Ljava/lang/String;
    goto :goto_6

    .line 471
    .end local v19    # "st":Ljava/util/StringTokenizer;
    .end local v38    # "argument":Ljava/lang/String;
    .local v6, "argument":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object v2, v6

    .end local v6    # "argument":Ljava/lang/String;
    .restart local v38    # "argument":Ljava/lang/String;
    goto :goto_7

    .line 466
    .end local v38    # "argument":Ljava/lang/String;
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v19    # "st":Ljava/util/StringTokenizer;
    :catch_b
    move-exception v0

    move-object/from16 v38, v6

    .line 467
    .end local v6    # "argument":Ljava/lang/String;
    .local v0, "e":Ljava/util/NoSuchElementException;
    .restart local v38    # "argument":Ljava/lang/String;
    :goto_6
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    move-object/from16 v2, v38

    .end local v38    # "argument":Ljava/lang/String;
    .local v2, "argument":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v2    # "argument":Ljava/lang/String;
    .end local v14    # "startPos":I
    .end local v15    # "endPos":I
    .end local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "newSql":Ljava/lang/StringBuilder;
    .end local p2    # "token":Ljava/lang/String;
    throw v1
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_c

    .line 471
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v19    # "st":Ljava/util/StringTokenizer;
    .restart local v2    # "argument":Ljava/lang/String;
    .restart local v14    # "startPos":I
    .restart local v15    # "endPos":I
    .restart local p0    # "conn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "newSql":Ljava/lang/StringBuilder;
    .restart local p2    # "token":Ljava/lang/String;
    :catch_c
    move-exception v0

    goto :goto_7

    .end local v2    # "argument":Ljava/lang/String;
    .restart local v38    # "argument":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v2, v38

    .end local v38    # "argument":Ljava/lang/String;
    .restart local v2    # "argument":Ljava/lang/String;
    goto :goto_7

    .end local v2    # "argument":Ljava/lang/String;
    .restart local v6    # "argument":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-object v2, v6

    .line 472
    .end local v6    # "argument":Ljava/lang/String;
    .local v0, "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "argument":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 474
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 476
    throw v1

    .line 368
    .end local v0    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "argument":Ljava/lang/String;
    :cond_a
    :goto_8
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :goto_9
    return-void
.end method

.method private static removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "toCollapse"    # Ljava/lang/String;

    .line 604
    if-nez p0, :cond_0

    .line 605
    const/4 v0, 0x0

    return-object v0

    .line 608
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 610
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 612
    .local v1, "collapsed":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 613
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 615
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 616
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
