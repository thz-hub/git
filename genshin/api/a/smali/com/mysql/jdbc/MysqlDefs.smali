.class public final Lcom/mysql/jdbc/MysqlDefs;
.super Ljava/lang/Object;
.source "MysqlDefs.java"


# static fields
.field static final COM_BINLOG_DUMP:I = 0x12

.field static final COM_CHANGE_USER:I = 0x11

.field static final COM_CLOSE_STATEMENT:I = 0x19

.field static final COM_CONNECT_OUT:I = 0x14

.field static final COM_END:I = 0x1d

.field static final COM_EXECUTE:I = 0x17

.field static final COM_FETCH:I = 0x1c

.field static final COM_LONG_DATA:I = 0x18

.field static final COM_PREPARE:I = 0x16

.field static final COM_REGISTER_SLAVE:I = 0x15

.field static final COM_RESET_STMT:I = 0x1a

.field static final COM_SET_OPTION:I = 0x1b

.field static final COM_TABLE_DUMP:I = 0x13

.field static final CONNECT:I = 0xb

.field static final CREATE_DB:I = 0x5

.field static final DEBUG:I = 0xd

.field static final DELAYED_INSERT:I = 0x10

.field static final DROP_DB:I = 0x6

.field static final FIELD_LIST:I = 0x4

.field static final FIELD_TYPE_BIT:I = 0x10

.field public static final FIELD_TYPE_BLOB:I = 0xfc

.field static final FIELD_TYPE_DATE:I = 0xa

.field static final FIELD_TYPE_DATETIME:I = 0xc

.field static final FIELD_TYPE_DECIMAL:I = 0x0

.field static final FIELD_TYPE_DOUBLE:I = 0x5

.field static final FIELD_TYPE_ENUM:I = 0xf7

.field static final FIELD_TYPE_FLOAT:I = 0x4

.field static final FIELD_TYPE_GEOMETRY:I = 0xff

.field static final FIELD_TYPE_INT24:I = 0x9

.field static final FIELD_TYPE_JSON:I = 0xf5

.field static final FIELD_TYPE_LONG:I = 0x3

.field static final FIELD_TYPE_LONGLONG:I = 0x8

.field static final FIELD_TYPE_LONG_BLOB:I = 0xfb

.field static final FIELD_TYPE_MEDIUM_BLOB:I = 0xfa

.field static final FIELD_TYPE_NEWDATE:I = 0xe

.field static final FIELD_TYPE_NEW_DECIMAL:I = 0xf6

.field static final FIELD_TYPE_NULL:I = 0x6

.field static final FIELD_TYPE_SET:I = 0xf8

.field static final FIELD_TYPE_SHORT:I = 0x2

.field static final FIELD_TYPE_STRING:I = 0xfe

.field static final FIELD_TYPE_TIME:I = 0xb

.field static final FIELD_TYPE_TIMESTAMP:I = 0x7

.field static final FIELD_TYPE_TINY:I = 0x1

.field static final FIELD_TYPE_TINY_BLOB:I = 0xf9

.field static final FIELD_TYPE_VARCHAR:I = 0xf

.field static final FIELD_TYPE_VAR_STRING:I = 0xfd

.field static final FIELD_TYPE_YEAR:I = 0xd

.field static final INIT_DB:I = 0x2

.field static final LENGTH_BLOB:J = 0xffffL

.field static final LENGTH_LONGBLOB:J = 0xffffffffL

.field static final LENGTH_MEDIUMBLOB:J = 0xffffffL

.field static final LENGTH_TINYBLOB:J = 0xffL

.field static final MAX_ROWS:I = 0x2faf080

.field public static final NO_CHARSET_INFO:I = -0x1

.field static final OPEN_CURSOR_FLAG:B = 0x1t

.field static final PING:I = 0xe

.field static final PROCESS_INFO:I = 0xa

.field static final PROCESS_KILL:I = 0xc

.field static final QUERY:I = 0x3

.field static final QUIT:I = 0x1

.field static final RELOAD:I = 0x7

.field static final SHUTDOWN:I = 0x8

.field static final SLEEP:I = 0x0

.field static final STATISTICS:I = 0x9

.field static final TIME:I = 0xf

.field private static mysqlToJdbcTypesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    .line 487
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BIT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TINYINT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMALLINT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIUMINT"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "INT"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INTEGER"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BIGINT"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INT24"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "REAL"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLOAT"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DECIMAL"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NUMERIC"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DOUBLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xfe

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CHAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xfd

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VARCHAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TIME"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "YEAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TIMESTAMP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DATETIME"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TINYBLOB"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BLOB"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v3, "MEDIUMBLOB"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v3, "LONGBLOB"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TINYTEXT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v2, "MEDIUMTEXT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v2, "LONGTEXT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xf7

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ENUM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xf8

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SET"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GEOMETRY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const/16 v1, 0xf5

    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JSON"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "mysqlTypeColumnName"    # Ljava/lang/String;

    .line 524
    const-string v0, "CASE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v0, "typesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 527
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BINARY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VARBINARY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 532
    .local v1, "mysqlTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    .local v2, "mysqlTypeName":Ljava/lang/String;
    const-string v3, " WHEN UPPER("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v3, ")=\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v3, "\' THEN "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    const-string v3, "DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FLOAT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DECIMAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NUMERIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    :cond_0
    const-string v3, " WHEN "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v3, "=\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v3, " UNSIGNED\' THEN "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    .end local v2    # "mysqlTypeName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 552
    :cond_2
    const-string v2, " ELSE "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v2, 0x457

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const-string v2, " END "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    return-void
.end method

.method static mysqlToJavaType(I)I
    .locals 1
    .param p0, "mysqlType"    # I

    .line 182
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 309
    .local v0, "jdbcType":I
    const/16 v0, 0xc

    goto :goto_0

    .line 301
    :sswitch_0
    const/4 v0, -0x2

    .line 303
    goto :goto_0

    .line 285
    :sswitch_1
    const/4 v0, -0x4

    .line 287
    goto :goto_0

    .line 280
    :sswitch_2
    const/4 v0, -0x4

    .line 282
    goto :goto_0

    .line 275
    :sswitch_3
    const/4 v0, -0x4

    .line 277
    goto :goto_0

    .line 270
    :sswitch_4
    const/4 v0, -0x3

    .line 272
    goto :goto_0

    .line 265
    :sswitch_5
    const/4 v0, 0x1

    .line 267
    goto :goto_0

    .line 260
    :sswitch_6
    const/4 v0, 0x1

    .line 262
    goto :goto_0

    .line 297
    :sswitch_7
    const/4 v0, 0x1

    .line 299
    goto :goto_0

    .line 305
    :sswitch_8
    const/4 v0, -0x7

    .line 307
    goto :goto_0

    .line 291
    :sswitch_9
    const/16 v0, 0xc

    .line 293
    goto :goto_0

    .line 255
    :sswitch_a
    const/16 v0, 0x5b

    .line 257
    goto :goto_0

    .line 250
    :sswitch_b
    const/16 v0, 0x5b

    .line 252
    goto :goto_0

    .line 245
    :sswitch_c
    const/16 v0, 0x5d

    .line 247
    goto :goto_0

    .line 240
    :sswitch_d
    const/16 v0, 0x5c

    .line 242
    goto :goto_0

    .line 235
    :sswitch_e
    const/16 v0, 0x5b

    .line 237
    goto :goto_0

    .line 230
    :sswitch_f
    const/4 v0, 0x4

    .line 232
    goto :goto_0

    .line 225
    :sswitch_10
    const/4 v0, -0x5

    .line 227
    goto :goto_0

    .line 220
    :sswitch_11
    const/16 v0, 0x5d

    .line 222
    goto :goto_0

    .line 215
    :sswitch_12
    const/4 v0, 0x0

    .line 217
    goto :goto_0

    .line 210
    :sswitch_13
    const/16 v0, 0x8

    .line 212
    goto :goto_0

    .line 205
    :sswitch_14
    const/4 v0, 0x7

    .line 207
    goto :goto_0

    .line 200
    :sswitch_15
    const/4 v0, 0x4

    .line 202
    goto :goto_0

    .line 195
    :sswitch_16
    const/4 v0, 0x5

    .line 197
    goto :goto_0

    .line 190
    :sswitch_17
    const/4 v0, -0x6

    .line 192
    goto :goto_0

    .line 185
    .end local v0    # "jdbcType":I
    :sswitch_18
    const/4 v0, 0x3

    .line 187
    .restart local v0    # "jdbcType":I
    nop

    .line 312
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x1 -> :sswitch_17
        0x2 -> :sswitch_16
        0x3 -> :sswitch_15
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x7 -> :sswitch_11
        0x8 -> :sswitch_10
        0x9 -> :sswitch_f
        0xa -> :sswitch_e
        0xb -> :sswitch_d
        0xc -> :sswitch_c
        0xd -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_9
        0x10 -> :sswitch_8
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_18
        0xf7 -> :sswitch_6
        0xf8 -> :sswitch_5
        0xf9 -> :sswitch_4
        0xfa -> :sswitch_3
        0xfb -> :sswitch_2
        0xfc -> :sswitch_1
        0xfd -> :sswitch_9
        0xfe -> :sswitch_7
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method static mysqlToJavaType(Ljava/lang/String;)I
    .locals 6
    .param p0, "mysqlType"    # Ljava/lang/String;

    .line 319
    const-string v0, "BIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    .line 320
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 321
    :cond_0
    const-string v1, "TINYINT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 323
    :cond_1
    const-string v1, "SMALLINT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 325
    :cond_2
    const-string v1, "MEDIUMINT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x9

    if-eqz v1, :cond_3

    .line 326
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 327
    :cond_3
    const-string v1, "INT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "INTEGER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    .line 329
    :cond_4
    const-string v1, "BIGINT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 330
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 331
    :cond_5
    const-string v1, "INT24"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 332
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 333
    :cond_6
    const-string v1, "REAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_7

    .line 334
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 335
    :cond_7
    const-string v1, "FLOAT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 336
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 337
    :cond_8
    const-string v1, "DECIMAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 338
    invoke-static {v4}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 339
    :cond_9
    const-string v1, "NUMERIC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 340
    invoke-static {v4}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 341
    :cond_a
    const-string v1, "DOUBLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 342
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 343
    :cond_b
    const-string v1, "CHAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 344
    const/16 v0, 0xfe

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 345
    :cond_c
    const-string v1, "VARCHAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 346
    const/16 v0, 0xfd

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 347
    :cond_d
    const-string v1, "DATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 348
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 349
    :cond_e
    const-string v1, "TIME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 350
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 351
    :cond_f
    const-string v1, "YEAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 352
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 353
    :cond_10
    const-string v1, "TIMESTAMP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 354
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 355
    :cond_11
    const-string v1, "DATETIME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0xc

    if-eqz v1, :cond_12

    .line 356
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 357
    :cond_12
    const-string v1, "TINYBLOB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, -0x2

    if-eqz v1, :cond_13

    .line 358
    return v4

    .line 359
    :cond_13
    const-string v1, "BLOB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, -0x4

    if-eqz v1, :cond_14

    .line 360
    return v5

    .line 361
    :cond_14
    const-string v1, "MEDIUMBLOB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 362
    return v5

    .line 363
    :cond_15
    const-string v1, "LONGBLOB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 364
    return v5

    .line 365
    :cond_16
    const-string v1, "TINYTEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 366
    return v3

    .line 367
    :cond_17
    const-string v1, "TEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_18

    .line 368
    return v3

    .line 369
    :cond_18
    const-string v1, "MEDIUMTEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 370
    return v3

    .line 371
    :cond_19
    const-string v1, "LONGTEXT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 372
    return v3

    .line 373
    :cond_1a
    const-string v1, "ENUM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 374
    const/16 v0, 0xf7

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 375
    :cond_1b
    const-string v1, "SET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 376
    const/16 v0, 0xf8

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 377
    :cond_1c
    const-string v1, "GEOMETRY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 378
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 379
    :cond_1d
    const-string v1, "BINARY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 380
    return v4

    .line 381
    :cond_1e
    const-string v1, "VARBINARY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 382
    const/4 v0, -0x3

    return v0

    .line 383
    :cond_1f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 384
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 385
    :cond_20
    const-string v0, "JSON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 386
    const/16 v0, 0xf5

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0

    .line 390
    :cond_21
    const/16 v0, 0x457

    return v0

    .line 328
    :cond_22
    :goto_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v0

    return v0
.end method

.method public static typeToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "mysqlType"    # I

    .line 397
    sparse-switch p0, :sswitch_data_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Unknown MySQL Type # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 474
    :sswitch_0
    const-string v0, "FIELD_TYPE_GEOMETRY"

    return-object v0

    .line 468
    :sswitch_1
    const-string v0, "FIELD_TYPE_STRING"

    return-object v0

    .line 465
    :sswitch_2
    const-string v0, "FIELD_TYPE_VAR_STRING"

    return-object v0

    .line 462
    :sswitch_3
    const-string v0, "FIELD_TYPE_BLOB"

    return-object v0

    .line 459
    :sswitch_4
    const-string v0, "FIELD_TYPE_LONG_BLOB"

    return-object v0

    .line 456
    :sswitch_5
    const-string v0, "FIELD_TYPE_MEDIUM_BLOB"

    return-object v0

    .line 453
    :sswitch_6
    const-string v0, "FIELD_TYPE_TINY_BLOB"

    return-object v0

    .line 450
    :sswitch_7
    const-string v0, "FIELD_TYPE_SET"

    return-object v0

    .line 447
    :sswitch_8
    const-string v0, "FIELD_TYPE_ENUM"

    return-object v0

    .line 477
    :sswitch_9
    const-string v0, "FIELD_TYPE_JSON"

    return-object v0

    .line 429
    :sswitch_a
    const-string v0, "FIELD_TYPE_BIT"

    return-object v0

    .line 471
    :sswitch_b
    const-string v0, "FIELD_TYPE_VARCHAR"

    return-object v0

    .line 444
    :sswitch_c
    const-string v0, "FIELD_TYPE_NEWDATE"

    return-object v0

    .line 441
    :sswitch_d
    const-string v0, "FIELD_TYPE_YEAR"

    return-object v0

    .line 438
    :sswitch_e
    const-string v0, "FIELD_TYPE_DATETIME"

    return-object v0

    .line 435
    :sswitch_f
    const-string v0, "FIELD_TYPE_TIME"

    return-object v0

    .line 432
    :sswitch_10
    const-string v0, "FIELD_TYPE_DATE"

    return-object v0

    .line 426
    :sswitch_11
    const-string v0, "FIELD_TYPE_INT24"

    return-object v0

    .line 423
    :sswitch_12
    const-string v0, "FIELD_TYPE_LONGLONG"

    return-object v0

    .line 420
    :sswitch_13
    const-string v0, "FIELD_TYPE_TIMESTAMP"

    return-object v0

    .line 417
    :sswitch_14
    const-string v0, "FIELD_TYPE_NULL"

    return-object v0

    .line 414
    :sswitch_15
    const-string v0, "FIELD_TYPE_DOUBLE"

    return-object v0

    .line 411
    :sswitch_16
    const-string v0, "FIELD_TYPE_FLOAT"

    return-object v0

    .line 408
    :sswitch_17
    const-string v0, "FIELD_TYPE_LONG"

    return-object v0

    .line 405
    :sswitch_18
    const-string v0, "FIELD_TYPE_SHORT"

    return-object v0

    .line 402
    :sswitch_19
    const-string v0, "FIELD_TYPE_TINY"

    return-object v0

    .line 399
    :sswitch_1a
    const-string v0, "FIELD_TYPE_DECIMAL"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_19
        0x2 -> :sswitch_18
        0x3 -> :sswitch_17
        0x4 -> :sswitch_16
        0x5 -> :sswitch_15
        0x6 -> :sswitch_14
        0x7 -> :sswitch_13
        0x8 -> :sswitch_12
        0x9 -> :sswitch_11
        0xa -> :sswitch_10
        0xb -> :sswitch_f
        0xc -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0xf5 -> :sswitch_9
        0xf7 -> :sswitch_8
        0xf8 -> :sswitch_7
        0xf9 -> :sswitch_6
        0xfa -> :sswitch_5
        0xfb -> :sswitch_4
        0xfc -> :sswitch_3
        0xfd -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method
