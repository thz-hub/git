.class Lcom/mysql/jdbc/DatabaseMetaData$5;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3189
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$rows:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V

    return-void
.end method


# virtual methods
.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3189
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$5;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 8
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3190
    const/4 v0, 0x0

    .line 3197
    .local v0, "fkresults":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v1, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/16 v4, 0x32

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3200
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 3202
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW TABLE STATUS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3203
    .local v1, "queryBuf":Ljava/lang/StringBuilder;
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    const-string v2, " LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    const-string v3, "\'"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3209
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    move-object v0, v2

    .line 3216
    .end local v1    # "queryBuf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3217
    const-string v1, "Type"

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3219
    .local v1, "tableType":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "innodb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SUPPORTS_FK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3220
    :cond_1
    const-string v2, "Comment"

    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3222
    .local v2, "comment":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3223
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ";"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3225
    .local v3, "commentTokens":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3226
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 3228
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3229
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 3230
    .local v4, "keys":Ljava/lang/String;
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$rows:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v6, v4, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getImportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3231
    .end local v4    # "keys":Ljava/lang/String;
    goto :goto_1

    .line 3235
    .end local v1    # "tableType":Ljava/lang/String;
    .end local v2    # "comment":Ljava/lang/String;
    .end local v3    # "commentTokens":Ljava/util/StringTokenizer;
    :cond_2
    goto :goto_0

    .line 3236
    :cond_3
    nop

    .line 3247
    if-eqz v0, :cond_4

    .line 3239
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3242
    goto :goto_2

    .line 3240
    :catch_0
    move-exception v1

    .line 3241
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 3244
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    :goto_2
    const/4 v0, 0x0

    :cond_4
    nop

    .line 3246
    nop

    .line 3247
    return-void

    .line 3237
    :catchall_0
    move-exception v1

    .line 3244
    if-eqz v0, :cond_5

    .line 3239
    :try_start_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3242
    goto :goto_3

    .line 3240
    :catch_1
    move-exception v2

    .line 3241
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 3244
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :goto_3
    const/4 v0, 0x0

    .line 3237
    :cond_5
    throw v1
.end method
