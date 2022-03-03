.class public Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
.super Ljava/lang/Object;
.source "CallableStatement.java"

# interfaces
.implements Ljava/sql/ParameterMetaData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/CallableStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallableStatementParamInfo"
.end annotation


# instance fields
.field catalogInUse:Ljava/lang/String;

.field isFunctionCall:Z

.field isReadOnlySafeChecked:Z

.field isReadOnlySafeProcedure:Z

.field nativeSql:Ljava/lang/String;

.field numParameters:I

.field parameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation
.end field

.field parameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mysql/jdbc/CallableStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/CallableStatement;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 5
    .param p2, "fullParamInfo"    # Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 159
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 149
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 160
    iget-object v0, p1, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    .line 162
    iget-boolean v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    .line 164
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->access$000(Lcom/mysql/jdbc/CallableStatement;)[I

    move-result-object p1

    .line 165
    .local p1, "localParameterMap":[I
    array-length v0, p1

    .line 167
    .local v0, "parameterMapLength":I
    iget-boolean v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 168
    iget-boolean v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    .line 170
    new-instance v1, Ljava/util/HashMap;

    iget v2, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 173
    iget-object v2, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    aget v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 175
    .local v2, "param":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    iget-object v4, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v2    # "param":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/CallableStatement;Ljava/sql/ResultSet;)V
    .locals 3
    .param p2, "paramTypesRs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 149
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 183
    invoke-interface {p2}, Ljava/sql/ResultSet;->last()Z

    move-result v1

    .line 185
    .local v1, "hadRows":Z
    iget-object v2, p1, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    .line 186
    iget-object v2, p1, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    .line 187
    iget-boolean p1, p1, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    .line 189
    if-eqz v1, :cond_0

    .line 190
    invoke-interface {p2}, Ljava/sql/ResultSet;->getRow()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    .line 193
    new-instance p1, Ljava/util/HashMap;

    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    .line 195
    invoke-interface {p2}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 197
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->addParametersFromDBMD(Ljava/sql/ResultSet;)V

    goto :goto_0

    .line 199
    :cond_0
    iput v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 201
    :goto_0
    return-void
.end method

.method private addParametersFromDBMD(Ljava/sql/ResultSet;)V
    .locals 24
    .param p1, "paramTypesRs"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move v6, v2

    .line 206
    .end local v2    # "i":I
    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "paramName":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 221
    .local v3, "inOutModifier":I
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_1

    .line 218
    :pswitch_1
    const/4 v3, 0x4

    .line 219
    goto :goto_1

    .line 214
    :pswitch_2
    const/4 v3, 0x2

    .line 215
    goto :goto_1

    .line 211
    .end local v3    # "inOutModifier":I
    :pswitch_3
    const/4 v3, 0x1

    .line 212
    .restart local v3    # "inOutModifier":I
    nop

    .line 224
    :goto_1
    const/4 v4, 0x0

    .line 225
    .local v4, "isOutParameter":Z
    const/4 v5, 0x0

    .line 227
    .local v5, "isInParameter":Z
    if-nez v6, :cond_0

    iget-boolean v7, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v7, :cond_0

    .line 228
    const/4 v4, 0x1

    .line 229
    const/4 v5, 0x0

    move v2, v4

    move/from16 v16, v5

    goto :goto_2

    .line 230
    :cond_0
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 231
    const/4 v4, 0x1

    .line 232
    const/4 v5, 0x1

    move v2, v4

    move/from16 v16, v5

    goto :goto_2

    .line 233
    :cond_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 234
    const/4 v4, 0x0

    .line 235
    const/4 v5, 0x1

    move v2, v4

    move/from16 v16, v5

    goto :goto_2

    .line 236
    :cond_2
    if-ne v3, v2, :cond_3

    .line 237
    const/4 v4, 0x1

    .line 238
    const/4 v5, 0x0

    move v2, v4

    move/from16 v16, v5

    goto :goto_2

    .line 236
    :cond_3
    move v2, v4

    move/from16 v16, v5

    .line 241
    .end local v4    # "isOutParameter":Z
    .end local v5    # "isInParameter":Z
    .local v2, "isOutParameter":Z
    .local v16, "isInParameter":Z
    :goto_2
    const/4 v4, 0x6

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v17

    .line 242
    .local v17, "jdbcType":I
    const/4 v4, 0x7

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 243
    .local v18, "typeName":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v19

    .line 244
    .local v19, "precision":I
    const/16 v4, 0xa

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v20

    .line 245
    .local v20, "scale":I
    const/16 v4, 0xc

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v21

    .line 247
    .local v21, "nullability":S
    new-instance v22, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    add-int/lit8 v23, v6, 0x1

    .end local v6    # "i":I
    .local v23, "i":I
    move-object/from16 v4, v22

    move-object v5, v15

    move/from16 v7, v16

    move v8, v2

    move/from16 v9, v17

    move-object/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move v14, v3

    invoke-direct/range {v4 .. v14}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;-><init>(Ljava/lang/String;IZZILjava/lang/String;IISI)V

    .line 250
    .local v4, "paramInfoToAdd":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    iget-object v5, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v5, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    invoke-interface {v5, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .end local v2    # "isOutParameter":Z
    .end local v3    # "inOutModifier":I
    .end local v4    # "paramInfoToAdd":Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .end local v15    # "paramName":Ljava/lang/String;
    .end local v16    # "isInParameter":Z
    .end local v17    # "jdbcType":I
    .end local v18    # "typeName":Ljava/lang/String;
    .end local v19    # "precision":I
    .end local v20    # "scale":I
    .end local v21    # "nullability":S
    move/from16 v6, v23

    goto/16 :goto_0

    .line 253
    .end local v23    # "i":I
    .restart local v6    # "i":I
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected checkBounds(I)V
    .locals 4
    .param p1, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    add-int/lit8 v0, p1, -0x1

    .line 258
    .local v0, "localParamIndex":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    iget v1, v1, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    if-ge v0, v1, :cond_0

    .line 264
    return-void

    .line 259
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallableStatement.11"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "CallableStatement.12"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    iget v2, v2, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "CallableStatement.13"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 273
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 1
    .param p1, "index"    # I

    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-object v0
.end method

.method getParameter(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-object v0
.end method

.method public getParameterClassName(I)Ljava/lang/String;
    .locals 11
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "mysqlTypeName":Ljava/lang/String;
    const-string v1, "BLOB"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v1, "BINARY"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    .line 289
    .local v8, "isBinaryOrBlob":Z
    :goto_1
    const-string v1, "UNSIGNED"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 291
    .local v6, "isUnsigned":Z
    :goto_2
    const/4 v1, 0x0

    .line 293
    .local v1, "mysqlTypeIfKnown":I
    const-string v2, "MEDIUMINT"

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    const/16 v1, 0x9

    .line 297
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterType(I)I

    move-result v5

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    iget-object v2, v2, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v10

    move v7, v1

    invoke-static/range {v5 .. v10}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getParameterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    return v0

    .line 306
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParameterMode(I)I
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 312
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->inOutModifier:I

    return v0
.end method

.method public getParameterType(I)I
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 318
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->jdbcType:I

    return v0
.end method

.method public getParameterTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 324
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision(I)I
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 330
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->precision:I

    return v0
.end method

.method public getScale(I)I
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 336
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->scale:I

    return v0
.end method

.method public isNullable(I)I
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 342
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v0

    iget-short v0, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->nullability:S

    return v0
.end method

.method public isSigned(I)Z
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 348
    const/4 v0, 0x0

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

    .line 363
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 366
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method numberOfParameters()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

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

    .line 375
    .local p1, "iface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
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

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v2}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method
