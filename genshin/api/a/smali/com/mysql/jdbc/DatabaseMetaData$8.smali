.class Lcom/mysql/jdbc/DatabaseMetaData$8;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
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

.field final synthetic val$fields:[Lcom/mysql/jdbc/Field;

.field final synthetic val$procNamePattern:Ljava/lang/String;

.field final synthetic val$procedureRowsToSort:Ljava/util/List;

.field final synthetic val$returnFunctions:Z

.field final synthetic val$returnProcedures:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;ZZLjava/lang/String;Ljava/util/List;[Lcom/mysql/jdbc/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4088
    .local p2, "x0":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-boolean p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    iput-boolean p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

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

    .line 4088
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$8;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 23
    .param p1, "catalogStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4089
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4091
    .local v2, "db":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4092
    .local v3, "proceduresRs":Ljava/sql/ResultSet;
    const/4 v4, 0x1

    .line 4094
    .local v4, "needsClientFiltering":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 4096
    .local v5, "selectFromMySQLProcSQL":Ljava/lang/StringBuilder;
    const-string v0, "SELECT name, type, comment FROM mysql.proc WHERE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4097
    iget-boolean v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v0, :cond_0

    iget-boolean v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-nez v6, :cond_0

    .line 4098
    const-string v0, "type = \'PROCEDURE\' AND "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4099
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v0, :cond_1

    .line 4100
    const-string v0, "type = \'FUNCTION\' AND "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4102
    :cond_1
    :goto_0
    const-string v0, "name LIKE ? AND db <=> ? ORDER BY name, type"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4104
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    .line 4110
    .local v6, "proceduresStmt":Ljava/sql/PreparedStatement;
    const/4 v7, 0x2

    if-eqz v2, :cond_3

    .line 4111
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4112
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4114
    :cond_2
    invoke-interface {v6, v7, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    .line 4116
    :cond_3
    const/16 v0, 0xc

    invoke-interface {v6, v7, v0}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 4119
    :goto_1
    const/16 v20, 0x1

    .line 4121
    .local v20, "nameIndex":I
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v6, v15, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4124
    :try_start_1
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v11
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4125
    .end local v3    # "proceduresRs":Ljava/sql/ResultSet;
    .local v11, "proceduresRs":Ljava/sql/ResultSet;
    const/4 v4, 0x0

    .line 4127
    :try_start_2
    iget-boolean v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v0, :cond_4

    .line 4128
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/4 v9, 0x1

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v2

    move v12, v4

    move-object v13, v2

    const/4 v3, 0x1

    move/from16 v15, v20

    :try_start_3
    invoke-virtual/range {v8 .. v15}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V

    goto :goto_2

    .line 4127
    :cond_4
    const/4 v3, 0x1

    .line 4131
    :goto_2
    iget-boolean v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v0, :cond_5

    .line 4132
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    move-object v13, v2

    move-object v14, v11

    move v15, v4

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move/from16 v18, v20

    move-object/from16 v19, v8

    invoke-virtual/range {v12 .. v19}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4160
    :cond_5
    move-object v3, v11

    goto/16 :goto_6

    .line 4135
    :catch_0
    move-exception v0

    move-object v3, v11

    const/4 v15, 0x1

    goto :goto_3

    .line 4163
    .end local v20    # "nameIndex":I
    :catchall_0
    move-exception v0

    move-object v7, v0

    move-object v3, v11

    goto/16 :goto_9

    .line 4135
    .restart local v20    # "nameIndex":I
    :catch_1
    move-exception v0

    move-object v3, v11

    goto :goto_3

    .end local v11    # "proceduresRs":Ljava/sql/ResultSet;
    .restart local v3    # "proceduresRs":Ljava/sql/ResultSet;
    :catch_2
    move-exception v0

    .line 4136
    .local v0, "sqlEx":Ljava/sql/SQLException;
    :goto_3
    :try_start_4
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10, v15}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v14, 0x2

    goto :goto_4

    :cond_6
    const/4 v14, 0x1

    .line 4140
    .end local v20    # "nameIndex":I
    .local v14, "nameIndex":I
    :goto_4
    iget-boolean v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v7, :cond_7

    .line 4141
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V

    .line 4143
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v8, "SHOW FUNCTION STATUS LIKE ?"

    invoke-virtual {v7, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    move-object v6, v7

    .line 4144
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v6, v15, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4145
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4147
    .end local v3    # "proceduresRs":Ljava/sql/ResultSet;
    .local v10, "proceduresRs":Ljava/sql/ResultSet;
    :try_start_5
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    move-object v9, v2

    move v11, v4

    move-object v12, v2

    const/4 v7, 0x1

    move-object v15, v3

    invoke-virtual/range {v8 .. v15}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v3, v10

    goto :goto_5

    .line 4163
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v14    # "nameIndex":I
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v3, v10

    goto :goto_9

    .line 4140
    .end local v10    # "proceduresRs":Ljava/sql/ResultSet;
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    .restart local v3    # "proceduresRs":Ljava/sql/ResultSet;
    .restart local v14    # "nameIndex":I
    :cond_7
    const/4 v7, 0x1

    .line 4151
    :goto_5
    :try_start_6
    iget-boolean v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v8, :cond_8

    .line 4152
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V

    .line 4154
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v9, "SHOW PROCEDURE STATUS LIKE ?"

    invoke-virtual {v8, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8

    move-object v6, v8

    .line 4155
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4156
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4158
    .end local v3    # "proceduresRs":Ljava/sql/ResultSet;
    .local v18, "proceduresRs":Ljava/sql/ResultSet;
    :try_start_7
    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/16 v16, 0x0

    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    move-object/from16 v17, v2

    move/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v14

    invoke-virtual/range {v15 .. v22}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v3, v18

    goto :goto_6

    .line 4163
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v14    # "nameIndex":I
    :catchall_2
    move-exception v0

    move-object v7, v0

    move-object/from16 v3, v18

    goto :goto_9

    .line 4162
    .end local v18    # "proceduresRs":Ljava/sql/ResultSet;
    .restart local v3    # "proceduresRs":Ljava/sql/ResultSet;
    :cond_8
    :goto_6
    nop

    .line 4185
    const/4 v7, 0x0

    .line 4165
    .local v7, "rethrowSqlEx":Ljava/sql/SQLException;
    if-eqz v3, :cond_9

    .line 4167
    :try_start_8
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_3

    .line 4170
    goto :goto_7

    .line 4168
    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 4169
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v7, v0

    .line 4173
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_9
    :goto_7
    if-eqz v6, :cond_a

    .line 4175
    :try_start_9
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_4

    .line 4178
    goto :goto_8

    .line 4176
    :catch_4
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 4177
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v7, v0

    .line 4181
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_a
    :goto_8
    if-nez v7, :cond_b

    .line 4184
    .end local v7    # "rethrowSqlEx":Ljava/sql/SQLException;
    nop

    .line 4185
    return-void

    .line 4182
    .restart local v7    # "rethrowSqlEx":Ljava/sql/SQLException;
    :cond_b
    throw v7

    .line 4163
    .end local v7    # "rethrowSqlEx":Ljava/sql/SQLException;
    :catchall_3
    move-exception v0

    move-object v7, v0

    .line 4184
    :goto_9
    const/4 v8, 0x0

    .line 4165
    .local v8, "rethrowSqlEx":Ljava/sql/SQLException;
    if-eqz v3, :cond_c

    .line 4167
    :try_start_a
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5

    .line 4170
    goto :goto_a

    .line 4168
    :catch_5
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 4169
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v8, v0

    .line 4173
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_c
    :goto_a
    if-eqz v6, :cond_d

    .line 4175
    :try_start_b
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_6

    .line 4178
    goto :goto_b

    .line 4176
    :catch_6
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 4177
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v8, v0

    .line 4181
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_d
    :goto_b
    if-eqz v8, :cond_e

    .line 4182
    throw v8

    .line 4184
    .end local v8    # "rethrowSqlEx":Ljava/sql/SQLException;
    :cond_e
    nop

    .line 4163
    throw v7
.end method
