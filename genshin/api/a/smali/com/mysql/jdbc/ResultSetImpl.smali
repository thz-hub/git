.class public Lcom/mysql/jdbc/ResultSetImpl;
.super Ljava/lang/Object;
.source "ResultSetImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/ResultSetInternalMethods;


# static fields
.field static final EMPTY_SPACE:[C

.field private static final JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final MAX_DIFF_PREC:D

.field protected static final MIN_DIFF_PREC:D

.field static resultCounter:I


# instance fields
.field protected catalog:Ljava/lang/String;

.field protected columnLabelToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected columnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected columnToIndexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected columnUsed:[Z

.field protected volatile connection:Lcom/mysql/jdbc/MySQLConnection;

.field protected currentRow:I

.field protected doingUpdates:Z

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field fastClientCal:Ljava/util/Calendar;

.field fastDefaultCal:Ljava/util/Calendar;

.field protected fetchDirection:I

.field protected fetchSize:I

.field protected fields:[Lcom/mysql/jdbc/Field;

.field protected firstCharOfQuery:C

.field protected fullColumnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected gmtCalendar:Ljava/util/Calendar;

.field protected hasBuiltIndexMapping:Z

.field private invalidRowReason:Ljava/lang/String;

.field protected isBinaryEncoded:Z

.field protected isClosed:Z

.field private jdbcCompliantTruncationForReads:Z

.field protected nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected onInsertRow:Z

.field private onValidRow:Z

.field protected owningStatement:Lcom/mysql/jdbc/StatementImpl;

.field private padCharsWithSpace:Z

.field protected pointOfOrigin:Ljava/lang/String;

.field protected reallyResult:Z

.field protected resultId:I

.field protected resultSetConcurrency:I

.field protected resultSetType:I

.field protected retainOwningStatement:Z

.field protected rowData:Lcom/mysql/jdbc/RowData;

.field protected serverInfo:Ljava/lang/String;

.field private serverTimeZoneTz:Ljava/util/TimeZone;

.field statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

.field protected thisRow:Lcom/mysql/jdbc/ResultSetRow;

.field protected updateCount:J

.field protected updateId:J

.field private useColumnNamesInFindColumn:Z

.field protected useFastDateParsing:Z

.field private useFastIntParsing:Z

.field protected useLegacyDatetimeCode:Z

.field private useStrictFloatingPoint:Z

.field protected useUsageAdvisor:Z

.field protected warningChain:Ljava/sql/SQLWarning;

.field protected wasNullFlag:Z

.field protected wrapperStatement:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 105
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 107
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42ResultSet"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4ResultSet"

    .line 108
    .local v0, "jdbc4ClassName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lcom/mysql/jdbc/StatementImpl;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 110
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v6

    const-class v9, [Lcom/mysql/jdbc/Field;

    aput-object v9, v5, v1

    const-class v9, Lcom/mysql/jdbc/RowData;

    aput-object v9, v5, v7

    const-class v9, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v9, v5, v8

    const-class v9, Lcom/mysql/jdbc/StatementImpl;

    aput-object v9, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 113
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.mysql.jdbc.JDBC42UpdatableResultSet"

    goto :goto_1

    :cond_1
    const-string v2, "com.mysql.jdbc.JDBC4UpdatableResultSet"

    :goto_1
    move-object v0, v2

    .line 114
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, [Lcom/mysql/jdbc/Field;

    aput-object v5, v4, v1

    const-class v5, Lcom/mysql/jdbc/RowData;

    aput-object v5, v4, v7

    const-class v5, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v5, v4, v8

    const-class v5, Lcom/mysql/jdbc/StatementImpl;

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "jdbc4ClassName":Ljava/lang/String;
    goto :goto_2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 125
    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 126
    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 133
    :goto_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sput-wide v2, Lcom/mysql/jdbc/ResultSetImpl;->MIN_DIFF_PREC:D

    .line 138
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sput-wide v2, Lcom/mysql/jdbc/ResultSetImpl;->MAX_DIFF_PREC:D

    .line 141
    sput v1, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    .line 298
    const/16 v0, 0xff

    new-array v0, v0, [C

    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v1, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 302
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 304
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 4
    .param p1, "updateCount"    # J
    .param p3, "updateID"    # J
    .param p5, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p6, "creatorStmt"    # Lcom/mysql/jdbc/StatementImpl;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 170
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 173
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->currentRow:I

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 184
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 185
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 188
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 191
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 203
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 205
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 207
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 212
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 215
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 217
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 220
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 233
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 239
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 242
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 250
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 269
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 271
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 273
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 276
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 279
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 285
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 287
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 289
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 784
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 785
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 353
    iput-wide p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 354
    iput-wide p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 355
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 356
    new-array v0, v1, [Lcom/mysql/jdbc/Field;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 358
    iput-object p5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 359
    iput-object p6, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 361
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 363
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 366
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 368
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    .line 369
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 371
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    .line 373
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 375
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 7
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

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 170
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 173
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->currentRow:I

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 184
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 185
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 188
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 191
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 203
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 205
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 207
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 212
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 215
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 217
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 220
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 233
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 239
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 242
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 250
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 269
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 271
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 273
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 276
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 279
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 285
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 287
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 289
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 293
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 784
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 785
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 394
    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 396
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 398
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 400
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getStrictFloatingPoint()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 401
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastDateParsing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 402
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 403
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncationForReads()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    .line 404
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastIntParsing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 405
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    .line 406
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 407
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 410
    :cond_0
    iput-object p5, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 412
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 414
    iput-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 415
    iput-object p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 416
    invoke-interface {p3}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 422
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 425
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 426
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 427
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->close()V

    .line 429
    iput-wide v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    goto :goto_0

    .line 433
    :cond_1
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 436
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/RowData;->setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V

    .line 438
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->initializeWithMetadata()V

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    .line 443
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseColumnNamesInFindColumn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useColumnNamesInFindColumn:Z

    .line 445
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 446
    return-void
.end method

.method public static arraysEqual([B[B)Z
    .locals 5
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .line 2987
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 2988
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2990
    :cond_1
    if-nez p1, :cond_2

    .line 2991
    return v1

    .line 2993
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    .line 2994
    return v1

    .line 2996
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 2997
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_4

    .line 2998
    return v1

    .line 2996
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3001
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method private byteArrayToBoolean(I)Z
    .locals 5
    .param p1, "columnIndexMinusOne"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 1594
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1595
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1597
    return v2

    .line 1600
    :cond_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1602
    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    array-length v3, v3

    if-nez v3, :cond_1

    .line 1603
    return v2

    .line 1606
    :cond_1
    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    aget-byte v3, v3, v2

    .line 1608
    .local v3, "boolVal":B
    const/16 v4, 0x31

    if-ne v3, v4, :cond_2

    .line 1609
    return v1

    .line 1610
    :cond_2
    const/16 v4, 0x30

    if-ne v3, v4, :cond_3

    .line 1611
    return v2

    .line 1614
    :cond_3
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-lez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1
.end method

.method private checkForIntegerTruncation(I[BI)V
    .locals 6
    .param p1, "columnIndex"    # I
    .param p2, "valueAsBytes"    # [B
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6346
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_5

    .line 6347
    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_5

    .line 6348
    :cond_0
    const/4 v0, 0x0

    .line 6350
    .local v0, "valueAsString":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 6351
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, p1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 6354
    :cond_1
    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 6356
    .local v1, "valueAsLong":J
    const-wide/32 v3, -0x80000000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 6357
    :cond_3
    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    add-int/lit8 v4, p1, 0x1

    const/4 v5, 0x4

    invoke-direct {p0, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6361
    .end local v0    # "valueAsString":Ljava/lang/String;
    .end local v1    # "valueAsLong":J
    :cond_5
    return-void
.end method

.method private checkForLongTruncation(I[BJ)V
    .locals 6
    .param p1, "columnIndexZeroBased"    # I
    .param p2, "valueAsBytes"    # [B
    .param p3, "longValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6421
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p3, v0

    if-nez v2, :cond_5

    .line 6422
    :cond_0
    const/4 v0, 0x0

    .line 6424
    .local v0, "valueAsString":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 6425
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, p1, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 6428
    :cond_1
    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 6430
    .local v1, "valueAsDouble":D
    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_3

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v5, v1, v3

    if-lez v5, :cond_5

    .line 6431
    :cond_3
    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    add-int/lit8 v4, p1, 0x1

    const/4 v5, -0x5

    invoke-direct {p0, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6434
    .end local v0    # "valueAsString":Ljava/lang/String;
    .end local v1    # "valueAsDouble":D
    :cond_5
    return-void
.end method

.method protected static convertLongToUlong(J)Ljava/math/BigInteger;
    .locals 5
    .param p0, "longVal"    # J

    .line 147
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 148
    .local v1, "asBytes":[B
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    .line 149
    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 150
    const/16 v0, 0x10

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    .line 151
    const/16 v0, 0x18

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    .line 152
    const/16 v0, 0x20

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    .line 153
    const/16 v0, 0x28

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    .line 154
    const/16 v0, 0x30

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 155
    const/16 v0, 0x38

    ushr-long v3, p0, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    const/4 v3, 0x0

    aput-byte v0, v1, v3

    .line 157
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const-string v0, "0"

    return-object v0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Can\'t convert empty string (\'\') to numeric"

    const-string v2, "22018"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private convertToZeroWithEmptyCheck()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x0

    return v0

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Can\'t convert empty string (\'\') to numeric"

    const-string v2, "22018"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private extractStringFromNativeColumn(II)Ljava/lang/String;
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "mysqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 920
    add-int/lit8 v0, p1, -0x1

    .line 922
    .local v0, "columnIndexMinusOne":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 924
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 927
    const/4 v1, 0x0

    return-object v1

    .line 930
    :cond_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 932
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getCollationIndex()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 935
    .local v1, "encoding":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v2, v3, v1, v4}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final getBigDecimalFromString(Ljava/lang/String;II)Ljava/math/BigDecimal;
    .locals 11
    .param p1, "stringVal"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1337
    if-eqz p1, :cond_3

    .line 1338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "S1009"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "ResultSet.Bad_format_for_BigDecimal"

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 1339
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v0, "bdVal":Ljava/math/BigDecimal;
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1343
    :catch_0
    move-exception v7

    .line 1345
    .local v7, "ex":Ljava/lang/ArithmeticException;
    :try_start_1
    invoke-virtual {v0, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 1346
    :catch_1
    move-exception v1

    .line 1347
    .local v1, "arEx":Ljava/lang/ArithmeticException;
    new-instance v8, Ljava/sql/SQLException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    .line 1356
    .end local v0    # "bdVal":Ljava/math/BigDecimal;
    .end local v1    # "arEx":Ljava/lang/ArithmeticException;
    .end local v7    # "ex":Ljava/lang/ArithmeticException;
    :cond_0
    :try_start_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 1366
    :catch_2
    move-exception v0

    goto :goto_0

    .line 1357
    :catch_3
    move-exception v0

    .line 1359
    .local v0, "ex":Ljava/lang/ArithmeticException;
    :try_start_3
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 1360
    :catch_4
    move-exception v7

    .line 1361
    .local v7, "arEx":Ljava/lang/ArithmeticException;
    :try_start_4
    new-instance v8, Ljava/sql/SQLException;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p1, v9, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v5, v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local p1    # "stringVal":Ljava/lang/String;
    .end local p2    # "columnIndex":I
    .end local p3    # "scale":I
    throw v8
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1367
    .end local v7    # "arEx":Ljava/lang/ArithmeticException;
    .local v0, "ex":Ljava/lang/NumberFormatException;
    .restart local p1    # "stringVal":Ljava/lang/String;
    .restart local p2    # "columnIndex":I
    .restart local p3    # "scale":I
    :goto_0
    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v8, p2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1

    .line 1368
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v7

    .line 1371
    .local v7, "valueAsLong":J
    :try_start_5
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v7, v8}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v9, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v1

    .line 1372
    :catch_5
    move-exception v9

    .line 1374
    .local v9, "arEx1":Ljava/lang/ArithmeticException;
    :try_start_6
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v7, v8}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v10, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    return-object v1

    .line 1375
    :catch_6
    move-exception v1

    .line 1376
    .local v1, "arEx2":Ljava/lang/ArithmeticException;
    new-instance v10, Ljava/sql/SQLException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v10

    .line 1383
    .end local v1    # "arEx2":Ljava/lang/ArithmeticException;
    .end local v7    # "valueAsLong":J
    .end local v9    # "arEx1":Ljava/lang/ArithmeticException;
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v7, p2, -0x1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v7, p2, -0x1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_2

    .line 1385
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1388
    :cond_2
    new-instance v1, Ljava/sql/SQLException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1393
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getBooleanFromString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "stringVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1627
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1628
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1630
    .local v1, "c":I
    const/16 v2, 0x74

    if-eq v1, v2, :cond_0

    const/16 v2, 0x79

    if-eq v1, v2, :cond_0

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1633
    .end local v1    # "c":I
    :cond_2
    return v0
.end method

.method private final getByteFromString(Ljava/lang/String;I)B
    .locals 7
    .param p1, "stringVal"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1672
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1683
    :cond_0
    if-nez p1, :cond_1

    .line 1684
    const/4 v0, 0x0

    return v0

    .line 1687
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1690
    :try_start_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1692
    .local v0, "decimalIndex":I
    const/4 v1, -0x1

    const/4 v2, -0x6

    if-eq v0, v1, :cond_4

    .line 1693
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1695
    .local v3, "valueAsDouble":D
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_3

    .line 1696
    const-wide/high16 v5, -0x3fa0000000000000L    # -128.0

    cmpg-double v1, v3, v5

    if-ltz v1, :cond_2

    const-wide v5, 0x405fc00000000000L    # 127.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    .line 1697
    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 1701
    :cond_3
    double-to-int v1, v3

    int-to-byte v1, v1

    return v1

    .line 1704
    .end local v3    # "valueAsDouble":D
    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1706
    .local v3, "valueAsLong":J
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_6

    .line 1707
    const-wide/16 v5, -0x80

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    const-wide/16 v5, 0x7f

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    .line 1708
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    :cond_6
    long-to-int v1, v3

    int-to-byte v1, v1

    return v1

    .line 1713
    .end local v0    # "decimalIndex":I
    .end local v3    # "valueAsLong":J
    :catch_0
    move-exception v0

    .line 1714
    .local v0, "NFE":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Value____173"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResultSet.___is_out_of_range_[-127,127]_174"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method private final getBytesFromString(Ljava/lang/String;)[B
    .locals 7
    .param p1, "stringVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1773
    if-eqz p1, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    return-object v0

    .line 1778
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getCharacterStreamFromString(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .param p1, "stringVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1871
    if-eqz p1, :cond_0

    .line 1872
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1875
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getClobFromString(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 2
    .param p1, "stringVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1919
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method private final getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 16
    .param p1, "stringVal"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .param p3, "targetCalendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2053
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, "0"

    const-string v3, "ResultSet.Bad_format_for_Date"

    const-string v4, "S1009"

    const/4 v5, 0x0

    .line 2054
    .local v5, "year":I
    const/4 v6, 0x0

    .line 2055
    .local v6, "month":I
    const/4 v7, 0x0

    .line 2058
    .local v7, "day":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    iput-boolean v9, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2060
    const/4 v11, 0x0

    if-nez p1, :cond_0

    .line 2061
    iput-boolean v10, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2063
    return-object v11

    .line 2073
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2076
    .end local p1    # "stringVal":Ljava/lang/String;
    .local v12, "stringVal":Ljava/lang/String;
    :try_start_1
    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 2077
    .local v13, "dec":I
    const/4 v14, -0x1

    if-le v13, v14, :cond_1

    .line 2078
    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 2081
    :cond_1
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "0000-00-00"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "0000-00-00 00:00:00"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "00000000000000"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    .line 2096
    :cond_2
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v11, p2, -0x1

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/4 v11, 0x5

    const/16 v14, 0xa

    const/4 v15, 0x7

    const/4 v8, 0x4

    if-ne v0, v15, :cond_6

    .line 2098
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x6

    sparse-switch v0, :sswitch_data_0

    .line 2155
    goto/16 :goto_3

    .line 2101
    :sswitch_0
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 2102
    invoke-virtual {v12, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 2103
    const/16 v0, 0x8

    invoke-virtual {v12, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 2105
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2110
    :sswitch_1
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 2111
    invoke-virtual {v12, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 2112
    const/16 v0, 0x8

    invoke-virtual {v12, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 2114
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2120
    :sswitch_2
    const/4 v11, 0x2

    invoke-virtual {v12, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2122
    .end local v5    # "year":I
    .local v0, "year":I
    const/16 v5, 0x45

    if-gt v0, v5, :cond_3

    .line 2123
    add-int/lit8 v0, v0, 0x64

    move v5, v0

    goto :goto_0

    .line 2122
    :cond_3
    move v5, v0

    .line 2126
    .end local v0    # "year":I
    .restart local v5    # "year":I
    :goto_0
    const/4 v11, 0x2

    invoke-virtual {v12, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 2127
    invoke-virtual {v12, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 2129
    add-int/lit16 v0, v5, 0x76c

    invoke-virtual {v1, v2, v0, v6, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2133
    :sswitch_3
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2135
    .end local v5    # "year":I
    .restart local v0    # "year":I
    const/16 v5, 0x45

    if-gt v0, v5, :cond_4

    .line 2136
    add-int/lit8 v0, v0, 0x64

    move v5, v0

    goto :goto_1

    .line 2135
    :cond_4
    move v5, v0

    .line 2139
    .end local v0    # "year":I
    .restart local v5    # "year":I
    :goto_1
    const/4 v10, 0x2

    invoke-virtual {v12, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 2141
    add-int/lit16 v0, v5, 0x76c

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v0, v6, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2145
    :sswitch_4
    const/4 v8, 0x2

    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2147
    .end local v5    # "year":I
    .restart local v0    # "year":I
    const/16 v5, 0x45

    if-gt v0, v5, :cond_5

    .line 2148
    add-int/lit8 v0, v0, 0x64

    move v5, v0

    goto :goto_2

    .line 2147
    :cond_5
    move v5, v0

    .line 2151
    .end local v0    # "year":I
    .restart local v5    # "year":I
    :goto_2
    add-int/lit16 v0, v5, 0x76c

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v0, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2155
    :goto_3
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v12, v0, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v0, v10

    invoke-static {v3, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v0, v4, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v7    # "day":I
    .end local v12    # "stringVal":Ljava/lang/String;
    .end local p2    # "columnIndex":I
    .end local p3    # "targetCalendar":Ljava/util/Calendar;
    throw v0

    .line 2159
    .restart local v5    # "year":I
    .restart local v6    # "month":I
    .restart local v7    # "day":I
    .restart local v12    # "stringVal":Ljava/lang/String;
    .restart local p2    # "columnIndex":I
    .restart local p3    # "targetCalendar":Ljava/util/Calendar;
    :cond_6
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v10, p2, -0x1

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v10, 0xd

    if-ne v0, v10, :cond_a

    .line 2161
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x2

    if-eq v0, v10, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    goto :goto_4

    .line 2170
    :cond_7
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .end local v5    # "year":I
    .restart local v0    # "year":I
    goto :goto_5

    .line 2162
    .end local v0    # "year":I
    .restart local v5    # "year":I
    :cond_8
    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2164
    .end local v5    # "year":I
    .restart local v0    # "year":I
    const/16 v5, 0x45

    if-gt v0, v5, :cond_9

    .line 2165
    add-int/lit8 v0, v0, 0x64

    .line 2168
    :cond_9
    add-int/lit16 v0, v0, 0x76c

    move v5, v0

    .line 2173
    .end local v0    # "year":I
    .restart local v5    # "year":I
    :goto_5
    const/4 v8, 0x1

    invoke-virtual {v1, v2, v5, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2174
    :cond_a
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v10, p2, -0x1

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v10, 0xb

    const/16 v11, 0x7b2

    if-ne v0, v10, :cond_b

    .line 2175
    const/4 v8, 0x1

    invoke-virtual {v1, v2, v11, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2177
    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v14, :cond_d

    .line 2178
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x8

    if-ne v0, v8, :cond_c

    .line 2179
    const/4 v8, 0x1

    invoke-virtual {v1, v2, v11, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2182
    :cond_c
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v12, v0, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v0, v10

    invoke-static {v3, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v0, v4, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v7    # "day":I
    .end local v12    # "stringVal":Ljava/lang/String;
    .end local p2    # "columnIndex":I
    .end local p3    # "targetCalendar":Ljava/util/Calendar;
    throw v0

    .line 2187
    .restart local v5    # "year":I
    .restart local v6    # "month":I
    .restart local v7    # "day":I
    .restart local v12    # "stringVal":Ljava/lang/String;
    .restart local p2    # "columnIndex":I
    .restart local p3    # "targetCalendar":Ljava/util/Calendar;
    :cond_d
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0x12

    if-eq v0, v10, :cond_e

    .line 2188
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 2189
    const/4 v0, 0x5

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 2190
    const/16 v0, 0x8

    invoke-virtual {v12, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .end local v7    # "day":I
    .local v0, "day":I
    goto :goto_6

    .line 2193
    .end local v0    # "day":I
    .restart local v7    # "day":I
    :cond_e
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v8, "- "

    invoke-direct {v0, v12, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v5, v8

    .line 2196
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .line 2197
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 2201
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :goto_6
    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2084
    :cond_f
    :goto_7
    const-string v0, "convertToNull"

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2085
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2087
    return-object v11

    .line 2088
    :cond_10
    const-string v0, "exception"

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2094
    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2089
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' can not be represented as java.sql.Date"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v0, v4, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v5    # "year":I
    .end local v6    # "month":I
    .end local v7    # "day":I
    .end local v12    # "stringVal":Ljava/lang/String;
    .end local p2    # "columnIndex":I
    .end local p3    # "targetCalendar":Ljava/util/Calendar;
    throw v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2204
    .end local v13    # "dec":I
    .restart local v5    # "year":I
    .restart local v6    # "month":I
    .restart local v7    # "day":I
    .restart local v12    # "stringVal":Ljava/lang/String;
    .restart local p2    # "columnIndex":I
    .restart local p3    # "targetCalendar":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    goto :goto_8

    .line 2202
    :catch_1
    move-exception v0

    goto :goto_9

    .line 2204
    .end local v12    # "stringVal":Ljava/lang/String;
    .restart local p1    # "stringVal":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    .line 2205
    .end local p1    # "stringVal":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "stringVal":Ljava/lang/String;
    :goto_8
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v3, v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 2209
    .local v3, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v3, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2211
    throw v3

    .line 2202
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    .end local v12    # "stringVal":Ljava/lang/String;
    .restart local p1    # "stringVal":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    .line 2203
    .end local p1    # "stringVal":Ljava/lang/String;
    .local v0, "sqlEx":Ljava/sql/SQLException;
    .restart local v12    # "stringVal":Ljava/lang/String;
    :goto_9
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method private getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 2216
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    :goto_0
    return-object v0
.end method

.method private final getDoubleFromString(Ljava/lang/String;I)D
    .locals 2
    .param p1, "stringVal"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2248
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized getFastClientCalendar()Ljava/util/Calendar;
    .locals 2

    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 501
    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFastDefaultCalendar()Ljava/util/Calendar;
    .locals 2

    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 492
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 494
    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getFloatFromString(Ljava/lang/String;I)F
    .locals 8
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2407
    if-eqz p1, :cond_7

    .line 2408
    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2409
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 2412
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2414
    .local v1, "f":F
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_3

    .line 2415
    const/4 v2, 0x1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 2416
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 2420
    .local v2, "valAsDouble":D
    const-wide/high16 v4, 0x36a0000000000000L    # 1.401298464324817E-45

    sget-wide v6, Lcom/mysql/jdbc/ResultSetImpl;->MIN_DIFF_PREC:D

    sub-double/2addr v4, v6

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_2

    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    sget-wide v6, Lcom/mysql/jdbc/ResultSetImpl;->MAX_DIFF_PREC:D

    sub-double/2addr v4, v6

    cmpl-double v6, v2, v4

    if-lez v6, :cond_3

    .line 2421
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2426
    .end local v2    # "valAsDouble":D
    :cond_3
    return v1

    .line 2430
    .end local v1    # "f":F
    :catch_0
    move-exception v1

    .line 2432
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 2433
    .local v2, "valueAsDouble":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v3

    .line 2435
    .local v3, "valueAsFloat":F
    iget-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v4, :cond_6

    .line 2437
    if-eqz v4, :cond_4

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_5

    :cond_4
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v4, v3, v4

    if-nez v4, :cond_6

    .line 2438
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2442
    :cond_6
    return v3

    .line 2443
    .end local v2    # "valueAsDouble":Ljava/lang/Double;
    .end local v3    # "valueAsFloat":F
    :catch_1
    move-exception v0

    .line 2447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getFloat()_-____200"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResultSet.___in_column__201"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v0, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2429
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected static getInstance(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 8
    .param p0, "updateCount"    # J
    .param p2, "updateID"    # J
    .param p4, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p5, "creatorStmt"    # Lcom/mysql/jdbc/StatementImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 307
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-object v0

    .line 311
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method protected static getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
    .param p0, "catalog"    # Ljava/lang/String;
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "tuples"    # Lcom/mysql/jdbc/RowData;
    .param p3, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p4, "creatorStmt"    # Lcom/mysql/jdbc/StatementImpl;
    .param p5, "isUpdatable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    if-nez p5, :cond_0

    .line 327
    new-instance v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/UpdatableResultSet;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-object v0

    .line 333
    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-nez p5, :cond_2

    .line 334
    sget-object v6, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0

    .line 338
    :cond_2
    sget-object v6, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method private final getIntFromString(Ljava/lang/String;I)I
    .locals 11
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2564
    if-eqz p1, :cond_9

    .line 2566
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 2567
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    return v0

    .line 2570
    :cond_0
    const-string v5, "e"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const-string v5, "E"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 2578
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object p1, v5

    .line 2580
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2582
    .local v5, "valueAsInt":I
    iget-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v6, :cond_3

    .line 2583
    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    .line 2584
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2586
    .local v6, "valueAsLong":J
    const-wide/32 v8, -0x80000000

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 2587
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 2592
    .end local v6    # "valueAsLong":J
    :cond_3
    return v5

    .line 2597
    .end local v5    # "valueAsInt":I
    :cond_4
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 2599
    .local v5, "valueAsDouble":D
    iget-boolean v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v7, :cond_6

    .line 2600
    cmpg-double v7, v5, v2

    if-ltz v7, :cond_5

    cmpl-double v7, v5, v0

    if-lez v7, :cond_6

    .line 2601
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2605
    :cond_6
    double-to-int v0, v5

    return v0

    .line 2609
    .end local v5    # "valueAsDouble":D
    :catch_0
    move-exception v5

    .line 2611
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 2613
    .local v6, "valueAsDouble":D
    iget-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v8, :cond_8

    .line 2614
    cmpg-double v8, v6, v2

    if-ltz v8, :cond_7

    cmpl-double v2, v6, v0

    if-lez v2, :cond_8

    .line 2615
    :cond_7
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2619
    :cond_8
    double-to-int v0, v6

    return v0

    .line 2620
    .end local v6    # "valueAsDouble":D
    :catch_1
    move-exception v0

    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getInt()_-____206"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ResultSet.___in_column__207"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2608
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private getIntWithOverflowCheck(I)I
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6338
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getInt(I)I

    move-result v0

    .line 6340
    .local v0, "intValue":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V

    .line 6342
    return v0
.end method

.method private getLong(IZ)J
    .locals 9
    .param p1, "columnIndex"    # I
    .param p2, "overflowCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2646
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2647
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2649
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 2650
    add-int/lit8 v0, p1, -0x1

    .line 2652
    .local v0, "columnIndexMinusOne":I
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 2653
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2654
    return-wide v3

    .line 2656
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2658
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 2659
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v1

    return-wide v1

    .line 2662
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    const-string v2, "S1009"

    const-string v5, "\'"

    const-string v6, "ResultSet.Invalid_value_for_getLong()_-____79"

    if-eqz v1, :cond_3

    .line 2663
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->length(I)J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-nez v1, :cond_2

    .line 2664
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 2667
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isFloatingPointNumber(I)Z

    move-result v1

    .line 2669
    .local v1, "needsFullParse":Z
    if-nez v1, :cond_3

    .line 2671
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getLongWithOverflowCheck(IZ)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 2672
    :catch_0
    move-exception v3

    .line 2674
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v0, v7, v8}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v4

    .line 2676
    :catch_1
    move-exception v4

    .line 2680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v6, v0, v7, v8}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 2688
    .end local v1    # "needsFullParse":Z
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v1, 0x0

    .line 2690
    .local v1, "val":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 2691
    if-nez v1, :cond_4

    .line 2692
    return-wide v3

    .line 2695
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 2696
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .line 2699
    :cond_5
    const-string v3, "e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    const-string v3, "E"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 2700
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J

    move-result-wide v2

    return-wide v2

    .line 2704
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v2

    .line 2706
    :catch_2
    move-exception v3

    .line 2708
    .restart local v3    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-wide v4

    .line 2709
    :catch_3
    move-exception v4

    .line 2713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 2718
    .end local v0    # "columnIndexMinusOne":I
    .end local v1    # "val":Ljava/lang/String;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getLongFromString(Ljava/lang/String;I)J
    .locals 4
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "columnIndexZeroBased"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2732
    if-eqz p1, :cond_2

    .line 2734
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2735
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2738
    :cond_0
    const-string v0, "e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2739
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0

    .line 2743
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2747
    :catch_0
    move-exception v0

    .line 2750
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v1

    .line 2751
    :catch_1
    move-exception v1

    .line 2755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getLong()_-____211"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResultSet.___in_column__212"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 2746
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getLongWithOverflowCheck(IZ)J
    .locals 3
    .param p1, "columnIndexZeroBased"    # I
    .param p2, "doOverflowCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6380
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getLong(I)J

    move-result-wide v0

    .line 6382
    .local v0, "longValue":J
    if-eqz p2, :cond_0

    .line 6383
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->checkForLongTruncation(I[BJ)V

    .line 6386
    :cond_0
    return-wide v0
.end method

.method private getNativeConvertToString(ILcom/mysql/jdbc/Field;)Ljava/lang/String;
    .locals 23
    .param p1, "columnIndex"    # I
    .param p2, "field"    # Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3265
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3267
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    move v4, v0

    .line 3268
    .local v4, "sqlType":I
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    move v5, v0

    .line 3270
    .local v5, "mysqlType":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    sparse-switch v4, :sswitch_data_0

    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .local v18, "sqlType":I
    const/4 v4, 0x0

    move v0, v4

    const/4 v6, 0x0

    .local v0, "booleanVal":Z
    move-object v7, v6

    .local v7, "stringVal":Ljava/lang/String;
    move v8, v10

    .local v8, "floatVal":F
    move-wide v9, v11

    .local v9, "doubleVal":D
    move v11, v4

    .local v11, "unsignedTinyVal":S
    move v12, v4

    .local v4, "tinyintVal":B
    .local v12, "intVal":I
    .local v13, "longVal":J
    move-object v15, v6

    .local v15, "dt":Ljava/sql/Date;
    move-object/from16 v16, v6

    .local v16, "tstamp":Ljava/sql/Timestamp;
    move-object/from16 v17, v6

    .line 3549
    .local v6, "result":Ljava/lang/String;
    .local v17, "tm":Ljava/sql/Time;
    invoke-direct {v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_5

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "stringVal":Ljava/lang/String;
    .end local v8    # "floatVal":F
    .end local v9    # "doubleVal":D
    .end local v11    # "unsignedTinyVal":S
    .end local v12    # "intVal":I
    .end local v13    # "longVal":J
    .end local v15    # "dt":Ljava/sql/Date;
    .end local v16    # "tstamp":Ljava/sql/Timestamp;
    .end local v17    # "tm":Ljava/sql/Time;
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_0
    move v15, v8

    .local v15, "booleanVal":Z
    move-object/from16 v16, v9

    .local v10, "floatVal":F
    .local v11, "doubleVal":D
    .local v16, "stringVal":Ljava/lang/String;
    move/from16 v17, v8

    .local v17, "unsignedTinyVal":S
    move/from16 v18, v8

    .restart local v13    # "longVal":J
    .local v18, "intVal":I
    move/from16 v19, v8

    .local v19, "tinyintVal":B
    move-object/from16 v20, v9

    .local v20, "dt":Ljava/sql/Date;
    move-object/from16 v21, v9

    .line 3508
    .local v21, "tm":Ljava/sql/Time;
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3509
    invoke-virtual {v1, v2, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    .line 3511
    .local v0, "asBytes":[B
    if-nez v0, :cond_0

    .line 3512
    monitor-exit v3

    return-object v9

    .line 3515
    :cond_0
    array-length v9, v0

    if-nez v9, :cond_1

    .line 3519
    const-string v6, "0000-00-00 00:00:00"

    monitor-exit v3

    return-object v6

    .line 3522
    :cond_1
    aget-byte v9, v0, v8

    and-int/lit16 v9, v9, 0xff

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v9

    .line 3523
    .local v7, "year":I
    aget-byte v9, v0, v6

    .line 3524
    .local v9, "month":I
    const/16 v22, 0x3

    aget-byte v22, v0, v22

    .line 3526
    .local v22, "day":I
    if-nez v7, :cond_2

    if-nez v9, :cond_2

    if-nez v22, :cond_2

    .line 3527
    const-string v6, "0000-00-00 00:00:00"

    monitor-exit v3

    return-object v6

    .line 3531
    .end local v0    # "asBytes":[B
    .end local v7    # "year":I
    .end local v9    # "month":I
    .end local v22    # "day":I
    :cond_2
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7, v0, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 3533
    .local v0, "tstamp":Ljava/sql/Timestamp;
    if-nez v0, :cond_3

    .line 3534
    monitor-exit v3

    return-object v7

    .line 3537
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3539
    .local v7, "result":Ljava/lang/String;
    iget-object v9, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v9

    if-nez v9, :cond_4

    .line 3540
    monitor-exit v3

    return-object v7

    .line 3543
    :cond_4
    const-string v9, ".0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3544
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    monitor-exit v3

    return-object v6

    .line 3546
    :cond_5
    invoke-direct {v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v6

    monitor-exit v3

    return-object v6

    .line 3270
    .end local v0    # "tstamp":Ljava/sql/Timestamp;
    .end local v7    # "result":Ljava/lang/String;
    .end local v10    # "floatVal":F
    .end local v11    # "doubleVal":D
    .end local v13    # "longVal":J
    .end local v15    # "booleanVal":Z
    .end local v16    # "stringVal":Ljava/lang/String;
    .end local v17    # "unsignedTinyVal":S
    .end local v18    # "intVal":I
    .end local v19    # "tinyintVal":B
    .end local v20    # "dt":Ljava/sql/Date;
    .end local v21    # "tm":Ljava/sql/Time;
    :sswitch_1
    move v0, v8

    const/4 v6, 0x0

    .local v0, "booleanVal":Z
    move-object v7, v6

    .local v7, "stringVal":Ljava/lang/String;
    move v9, v10

    .local v9, "floatVal":F
    move-wide v10, v11

    .local v10, "doubleVal":D
    move v12, v8

    .local v12, "unsignedTinyVal":S
    move v15, v8

    .restart local v13    # "longVal":J
    .local v15, "intVal":I
    move/from16 v16, v8

    .local v16, "tinyintVal":B
    move-object/from16 v17, v6

    .line 3499
    .local v17, "dt":Ljava/sql/Date;
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "sqlType":I
    .local v18, "sqlType":I
    invoke-direct {v1, v2, v4, v6, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v6

    .line 3501
    .local v6, "tm":Ljava/sql/Time;
    if-nez v6, :cond_6

    .line 3502
    monitor-exit v3

    return-object v4

    .line 3505
    :cond_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "tm":Ljava/sql/Time;
    .end local v7    # "stringVal":Ljava/lang/String;
    .end local v9    # "floatVal":F
    .end local v10    # "doubleVal":D
    .end local v12    # "unsignedTinyVal":S
    .end local v13    # "longVal":J
    .end local v15    # "intVal":I
    .end local v16    # "tinyintVal":B
    .end local v17    # "dt":Ljava/sql/Date;
    .end local v18    # "sqlType":I
    .restart local v4    # "sqlType":I
    :sswitch_2
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    move v0, v8

    const/4 v4, 0x0

    .restart local v0    # "booleanVal":Z
    move-object v9, v4

    .local v9, "stringVal":Ljava/lang/String;
    move v4, v10

    .local v4, "floatVal":F
    move-wide v10, v11

    .restart local v10    # "doubleVal":D
    move v12, v8

    .restart local v12    # "unsignedTinyVal":S
    move v15, v8

    .restart local v13    # "longVal":J
    .restart local v15    # "intVal":I
    move/from16 v16, v8

    .line 3442
    .restart local v16    # "tinyintVal":B
    const/16 v6, 0xd

    if-ne v5, v6, :cond_b

    .line 3443
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v6

    .line 3445
    .local v6, "shortVal":S
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v8

    if-nez v8, :cond_8

    .line 3447
    iget-boolean v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v7, :cond_7

    .line 3448
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3451
    :cond_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    monitor-exit v3

    return-object v7

    .line 3454
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v19

    const-wide/16 v21, 0x2

    cmp-long v8, v19, v21

    if-nez v8, :cond_a

    .line 3456
    const/16 v8, 0x45

    if-gt v6, v8, :cond_9

    .line 3457
    add-int/lit8 v8, v6, 0x64

    int-to-short v6, v8

    .line 3460
    :cond_9
    add-int/lit16 v8, v6, 0x76c

    int-to-short v6, v8

    .line 3463
    :cond_a
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6, v7, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit v3

    return-object v7

    .line 3467
    .end local v6    # "shortVal":S
    :cond_b
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3468
    invoke-virtual {v1, v2, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v6

    .line 3470
    .local v6, "asBytes":[B
    if-nez v6, :cond_c

    .line 3471
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3474
    :cond_c
    array-length v7, v6

    if-nez v7, :cond_d

    .line 3478
    const-string v7, "0000-00-00"

    monitor-exit v3

    return-object v7

    .line 3481
    :cond_d
    aget-byte v7, v6, v8

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    .line 3482
    .local v7, "year":I
    const/4 v8, 0x2

    aget-byte v8, v6, v8

    .line 3483
    .local v8, "month":I
    const/16 v17, 0x3

    aget-byte v17, v6, v17

    .line 3485
    .local v17, "day":I
    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v17, :cond_e

    .line 3486
    const-string v19, "0000-00-00"

    monitor-exit v3

    return-object v19

    .line 3490
    .end local v6    # "asBytes":[B
    .end local v7    # "year":I
    .end local v8    # "month":I
    .end local v17    # "day":I
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(I)Ljava/sql/Date;

    move-result-object v6

    .line 3492
    .local v6, "dt":Ljava/sql/Date;
    if-nez v6, :cond_f

    .line 3493
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3496
    :cond_f
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    monitor-exit v3

    return-object v7

    .line 3274
    .end local v0    # "booleanVal":Z
    .end local v6    # "dt":Ljava/sql/Date;
    .end local v9    # "stringVal":Ljava/lang/String;
    .end local v10    # "doubleVal":D
    .end local v12    # "unsignedTinyVal":S
    .end local v13    # "longVal":J
    .end local v15    # "intVal":I
    .end local v16    # "tinyintVal":B
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_3
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    .line 3276
    .restart local v0    # "booleanVal":Z
    iget-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v4, :cond_10

    .line 3277
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3280
    :cond_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v18    # "sqlType":I
    .restart local v4    # "sqlType":I
    :sswitch_4
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    move v0, v8

    .restart local v0    # "booleanVal":Z
    move v4, v8

    .local v4, "unsignedTinyVal":S
    move v6, v8

    .local v6, "intVal":I
    move-wide v9, v13

    .local v9, "longVal":J
    move v7, v8

    .line 3349
    .local v7, "tinyintVal":B
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v8

    .line 3351
    .local v8, "floatVal":F
    iget-boolean v11, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v11, :cond_11

    .line 3352
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3355
    :cond_11
    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    monitor-exit v3

    return-object v11

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "intVal":I
    .end local v7    # "tinyintVal":B
    .end local v8    # "floatVal":F
    .end local v9    # "longVal":J
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_5
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    move v0, v8

    .restart local v0    # "booleanVal":Z
    move v4, v10

    .local v4, "floatVal":F
    move v6, v8

    .local v6, "unsignedTinyVal":S
    move v7, v8

    .local v7, "intVal":I
    move-wide v9, v13

    .line 3359
    .local v8, "tinyintVal":B
    .restart local v9    # "longVal":J
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v11

    .line 3361
    .restart local v11    # "doubleVal":D
    iget-boolean v13, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v13, :cond_12

    .line 3362
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3365
    :cond_12
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    monitor-exit v3

    return-object v13

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "unsignedTinyVal":S
    .end local v7    # "intVal":I
    .end local v8    # "tinyintVal":B
    .end local v9    # "longVal":J
    .end local v11    # "doubleVal":D
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_6
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    move v0, v8

    .restart local v0    # "booleanVal":Z
    move v4, v8

    .local v4, "unsignedTinyVal":S
    move v6, v8

    .line 3299
    .local v6, "tinyintVal":B
    invoke-virtual {v1, v2, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v7

    .line 3301
    .restart local v7    # "intVal":I
    iget-boolean v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v8, :cond_13

    .line 3302
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3305
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v8

    if-eqz v8, :cond_15

    if-ltz v7, :cond_14

    goto :goto_0

    .line 3309
    :cond_14
    const v8, 0xffff

    and-int/2addr v7, v8

    .line 3311
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    monitor-exit v3

    return-object v8

    .line 3306
    :cond_15
    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    monitor-exit v3

    return-object v8

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "tinyintVal":B
    .end local v7    # "intVal":I
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_7
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    move v0, v8

    .restart local v0    # "booleanVal":Z
    move v4, v8

    .local v4, "unsignedTinyVal":S
    move v6, v8

    .local v6, "intVal":I
    move v7, v8

    .line 3314
    .local v7, "tinyintVal":B
    invoke-virtual {v1, v2, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v8

    move v6, v8

    .line 3316
    iget-boolean v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v8, :cond_16

    .line 3317
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3320
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v8

    if-eqz v8, :cond_18

    if-gez v6, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_17

    goto :goto_1

    .line 3325
    :cond_17
    int-to-long v8, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 3327
    .local v8, "longVal":J
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    monitor-exit v3

    return-object v10

    .line 3322
    .end local v8    # "longVal":J
    :cond_18
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    monitor-exit v3

    return-object v8

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "intVal":I
    .end local v7    # "tinyintVal":B
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_8
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    move v4, v8

    .local v4, "booleanVal":Z
    move v6, v10

    .local v6, "floatVal":F
    move-wide v9, v11

    .local v9, "doubleVal":D
    move v7, v8

    .local v7, "unsignedTinyVal":S
    move v11, v8

    .local v11, "intVal":I
    move-wide v12, v13

    .local v12, "longVal":J
    move v14, v8

    .line 3369
    .local v14, "tinyintVal":B
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 3373
    .local v15, "stringVal":Ljava/lang/String;
    if-eqz v15, :cond_1a

    .line 3374
    iput-boolean v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3376
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 3377
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v8}, Ljava/math/BigDecimal;-><init>(I)V

    .line 3379
    .local v0, "val":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v8

    .line 3383
    .end local v0    # "val":Ljava/math/BigDecimal;
    :cond_19
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v15}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3388
    .restart local v0    # "val":Ljava/math/BigDecimal;
    nop

    .line 3390
    :try_start_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    monitor-exit v3

    return-object v8

    .line 3384
    .end local v0    # "val":Ljava/math/BigDecimal;
    :catch_0
    move-exception v0

    const/16 v16, 0x0

    .line 3385
    .local v0, "ex":Ljava/lang/NumberFormatException;
    .local v16, "val":Ljava/math/BigDecimal;
    const-string v8, "ResultSet.Bad_format_for_BigDecimal"

    move/from16 v21, v4

    const/4 v4, 0x2

    .end local v4    # "booleanVal":Z
    .local v21, "booleanVal":Z
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v4, v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v19, 0x1

    aput-object v17, v4, v19

    invoke-static {v8, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "S1009"

    move-object/from16 v17, v0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .local v17, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v4, v8, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local p1    # "columnIndex":I
    .end local p2    # "field":Lcom/mysql/jdbc/Field;
    throw v0

    .line 3393
    .end local v16    # "val":Ljava/math/BigDecimal;
    .end local v17    # "ex":Ljava/lang/NumberFormatException;
    .end local v21    # "booleanVal":Z
    .restart local v4    # "booleanVal":Z
    .restart local p1    # "columnIndex":I
    .restart local p2    # "field":Lcom/mysql/jdbc/Field;
    :cond_1a
    move/from16 v21, v4

    .end local v4    # "booleanVal":Z
    .restart local v21    # "booleanVal":Z
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3395
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3270
    .end local v6    # "floatVal":F
    .end local v7    # "unsignedTinyVal":S
    .end local v9    # "doubleVal":D
    .end local v11    # "intVal":I
    .end local v12    # "longVal":J
    .end local v14    # "tinyintVal":B
    .end local v15    # "stringVal":Ljava/lang/String;
    .end local v18    # "sqlType":I
    .end local v21    # "booleanVal":Z
    .local v4, "sqlType":I
    :sswitch_9
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    const/4 v4, 0x0

    move v0, v4

    const/4 v6, 0x0

    .local v0, "booleanVal":Z
    .local v6, "stringVal":Ljava/lang/String;
    move v7, v10

    .local v7, "floatVal":F
    move-wide v8, v11

    .local v8, "doubleVal":D
    move v10, v4

    .local v10, "unsignedTinyVal":S
    move v11, v4

    .restart local v11    # "intVal":I
    move-wide v12, v13

    .line 3401
    .local v4, "tinyintVal":B
    .restart local v12    # "longVal":J
    invoke-direct {v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v14

    monitor-exit v3

    return-object v14

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "stringVal":Ljava/lang/String;
    .end local v7    # "floatVal":F
    .end local v8    # "doubleVal":D
    .end local v10    # "unsignedTinyVal":S
    .end local v11    # "intVal":I
    .end local v12    # "longVal":J
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_a
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    const/4 v4, 0x0

    move v6, v4

    const/4 v7, 0x0

    .local v6, "booleanVal":Z
    .local v7, "stringVal":Ljava/lang/String;
    move v8, v10

    .local v8, "floatVal":F
    move-wide v9, v11

    .restart local v9    # "doubleVal":D
    move v11, v4

    .local v11, "unsignedTinyVal":S
    move v12, v4

    .local v12, "intVal":I
    .restart local v13    # "longVal":J
    move v15, v4

    .line 3406
    .local v15, "tinyintVal":B
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3407
    invoke-direct {v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 3408
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3409
    invoke-direct {v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 3411
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    move-object v4, v0

    .line 3412
    .local v4, "data":[B
    move-object/from16 v16, v4

    .line 3414
    .local v16, "obj":Ljava/lang/Object;
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3415
    if-eqz v4, :cond_1f

    array-length v0, v4

    move/from16 v21, v6

    const/4 v6, 0x2

    .end local v6    # "booleanVal":Z
    .restart local v21    # "booleanVal":Z
    if-lt v0, v6, :cond_1e

    .line 3416
    const/4 v6, 0x0

    aget-byte v0, v4, v6

    const/16 v6, -0x54

    if-ne v0, v6, :cond_1d

    const/4 v6, 0x1

    aget-byte v0, v4, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v6, -0x13

    if-ne v0, v6, :cond_1d

    .line 3419
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3420
    .local v0, "bytesIn":Ljava/io/ByteArrayInputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3421
    .local v6, "objIn":Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v16, v17

    .line 3422
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 3423
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3429
    .end local v0    # "bytesIn":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/ObjectInputStream;
    move-object/from16 v19, v4

    goto :goto_2

    .line 3427
    :catch_1
    move-exception v0

    .line 3428
    .local v0, "ex":Ljava/io/IOException;
    move-object/from16 v16, v4

    move-object/from16 v19, v4

    goto :goto_2

    .line 3424
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3425
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResultSet.Class_not_found___91"

    move-object/from16 v19, v4

    .end local v4    # "data":[B
    .local v19, "data":[B
    invoke-static/range {v17 .. v17}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ResultSet._while_reading_serialized_object_92"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    .end local p1    # "columnIndex":I
    .end local p2    # "field":Lcom/mysql/jdbc/Field;
    throw v4

    .line 3416
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    .end local v19    # "data":[B
    .restart local v4    # "data":[B
    .restart local p1    # "columnIndex":I
    .restart local p2    # "field":Lcom/mysql/jdbc/Field;
    :cond_1d
    move-object/from16 v19, v4

    .line 3432
    .end local v4    # "data":[B
    .restart local v19    # "data":[B
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 3415
    .end local v19    # "data":[B
    .restart local v4    # "data":[B
    :cond_1e
    move-object/from16 v19, v4

    .end local v4    # "data":[B
    .restart local v19    # "data":[B
    goto :goto_3

    .end local v19    # "data":[B
    .end local v21    # "booleanVal":Z
    .restart local v4    # "data":[B
    .local v6, "booleanVal":Z
    :cond_1f
    move-object/from16 v19, v4

    move/from16 v21, v6

    .end local v4    # "data":[B
    .end local v6    # "booleanVal":Z
    .restart local v19    # "data":[B
    .restart local v21    # "booleanVal":Z
    goto :goto_3

    .line 3414
    .end local v19    # "data":[B
    .end local v21    # "booleanVal":Z
    .restart local v4    # "data":[B
    .restart local v6    # "booleanVal":Z
    :cond_20
    move-object/from16 v19, v4

    move/from16 v21, v6

    .line 3436
    .end local v4    # "data":[B
    .end local v6    # "booleanVal":Z
    .restart local v19    # "data":[B
    .restart local v21    # "booleanVal":Z
    :goto_3
    invoke-direct {v1, v2, v5}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 3270
    .end local v7    # "stringVal":Ljava/lang/String;
    .end local v8    # "floatVal":F
    .end local v9    # "doubleVal":D
    .end local v11    # "unsignedTinyVal":S
    .end local v12    # "intVal":I
    .end local v13    # "longVal":J
    .end local v15    # "tinyintVal":B
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v18    # "sqlType":I
    .end local v19    # "data":[B
    .end local v21    # "booleanVal":Z
    .local v4, "sqlType":I
    :sswitch_b
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    const/4 v4, 0x0

    move v0, v4

    .local v0, "booleanVal":Z
    move v6, v4

    .local v6, "unsignedTinyVal":S
    move v7, v4

    .local v7, "intVal":I
    move-wide v8, v13

    .local v8, "longVal":J
    move v10, v4

    .line 3331
    .local v10, "tinyintVal":B
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v11

    if-nez v11, :cond_22

    .line 3332
    const/4 v11, 0x1

    invoke-virtual {v1, v2, v4, v11}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v11

    move-wide v8, v11

    .line 3334
    iget-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v4, :cond_21

    .line 3335
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3338
    :cond_21
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 3341
    .end local v8    # "longVal":J
    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v8

    .line 3343
    .restart local v8    # "longVal":J
    iget-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v4, :cond_23

    .line 3344
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3347
    :cond_23
    invoke-static {v8, v9}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 3270
    .end local v0    # "booleanVal":Z
    .end local v6    # "unsignedTinyVal":S
    .end local v7    # "intVal":I
    .end local v8    # "longVal":J
    .end local v10    # "tinyintVal":B
    .end local v18    # "sqlType":I
    .restart local v4    # "sqlType":I
    :sswitch_c
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    const/4 v4, 0x0

    move v0, v4

    .line 3283
    .restart local v0    # "booleanVal":Z
    invoke-virtual {v1, v2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v4

    .line 3285
    .local v4, "tinyintVal":B
    iget-boolean v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v6, :cond_24

    .line 3286
    monitor-exit v3

    const/4 v3, 0x0

    return-object v3

    .line 3289
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v6

    if-eqz v6, :cond_26

    if-ltz v4, :cond_25

    goto :goto_4

    .line 3293
    :cond_25
    and-int/lit16 v6, v4, 0xff

    int-to-short v6, v6

    .line 3295
    .restart local v6    # "unsignedTinyVal":S
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    monitor-exit v3

    return-object v7

    .line 3290
    .end local v6    # "unsignedTinyVal":S
    :cond_26
    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    monitor-exit v3

    return-object v6

    .line 3272
    .end local v0    # "booleanVal":Z
    .end local v18    # "sqlType":I
    .local v4, "sqlType":I
    :sswitch_d
    move/from16 v18, v4

    .end local v4    # "sqlType":I
    .restart local v18    # "sqlType":I
    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 3549
    .restart local v0    # "booleanVal":Z
    .local v4, "tinyintVal":B
    .local v6, "result":Ljava/lang/String;
    .local v7, "stringVal":Ljava/lang/String;
    .local v8, "floatVal":F
    .restart local v9    # "doubleVal":D
    .restart local v11    # "unsignedTinyVal":S
    .restart local v12    # "intVal":I
    .restart local v13    # "longVal":J
    .local v15, "dt":Ljava/sql/Date;
    .local v16, "tstamp":Ljava/sql/Timestamp;
    .local v17, "tm":Ljava/sql/Time;
    :goto_5
    monitor-exit v3

    return-object v19

    .line 3551
    .end local v0    # "booleanVal":Z
    .end local v4    # "tinyintVal":B
    .end local v5    # "mysqlType":I
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "stringVal":Ljava/lang/String;
    .end local v8    # "floatVal":F
    .end local v9    # "doubleVal":D
    .end local v11    # "unsignedTinyVal":S
    .end local v12    # "intVal":I
    .end local v13    # "longVal":J
    .end local v15    # "dt":Ljava/sql/Date;
    .end local v16    # "tstamp":Ljava/sql/Timestamp;
    .end local v17    # "tm":Ljava/sql/Time;
    .end local v18    # "sqlType":I
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_d
        -0x6 -> :sswitch_c
        -0x5 -> :sswitch_b
        -0x4 -> :sswitch_a
        -0x3 -> :sswitch_a
        -0x2 -> :sswitch_a
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0xc -> :sswitch_9
        0x10 -> :sswitch_3
        0x5b -> :sswitch_2
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 13
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4243
    move-object v9, p0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4244
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4246
    add-int/lit8 v10, p1, -0x1

    .line 4248
    .local v10, "columnIndexMinusOne":I
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v11

    .line 4250
    .local v11, "mysqlType":I
    const/4 v12, 0x0

    .line 4252
    .local v12, "timeVal":Ljava/sql/Time;
    const/16 v0, 0xb

    if-ne v11, v0, :cond_0

    .line 4253
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v1, v10

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    .end local v12    # "timeVal":Ljava/sql/Time;
    .local v0, "timeVal":Ljava/sql/Time;
    goto :goto_0

    .line 4256
    .end local v0    # "timeVal":Ljava/sql/Time;
    .restart local v12    # "timeVal":Ljava/sql/Time;
    :cond_0
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v2, 0x0

    const/16 v3, 0x5c

    iget-object v7, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v1, v10

    move v4, v11

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Time;

    .line 4264
    .end local v12    # "timeVal":Ljava/sql/Time;
    .restart local v0    # "timeVal":Ljava/sql/Time;
    :goto_0
    if-nez v0, :cond_1

    .line 4266
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4268
    const/4 v1, 0x0

    return-object v1

    .line 4271
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4273
    return-object v0
.end method

.method private getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 13
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4288
    move-object v9, p0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4289
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4291
    add-int/lit8 v10, p1, -0x1

    .line 4293
    .local v10, "columnIndexMinusOne":I
    const/4 v11, 0x0

    .line 4295
    .local v11, "tsVal":Ljava/sql/Timestamp;
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v12

    .line 4297
    .local v12, "mysqlType":I
    sparse-switch v12, :sswitch_data_0

    .line 4305
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v2, 0x0

    const/16 v3, 0x5d

    iget-object v7, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v1, v10

    move v4, v12

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    .end local v11    # "tsVal":Ljava/sql/Timestamp;
    .local v0, "tsVal":Ljava/sql/Timestamp;
    goto :goto_0

    .line 4300
    .end local v0    # "tsVal":Ljava/sql/Timestamp;
    .restart local v11    # "tsVal":Ljava/sql/Timestamp;
    :sswitch_0
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v1, v10

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    .line 4301
    .end local v11    # "tsVal":Ljava/sql/Timestamp;
    .restart local v0    # "tsVal":Ljava/sql/Timestamp;
    nop

    .line 4314
    :goto_0
    if-nez v0, :cond_0

    .line 4316
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4318
    const/4 v1, 0x0

    return-object v1

    .line 4321
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4323
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumericRepresentationOfSQLBitType(I)J
    .locals 9
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4917
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 4919
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 4923
    :cond_0
    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    .line 4925
    .local v1, "asBytes":[B
    const/4 v3, 0x0

    .line 4927
    .local v3, "shift":I
    array-length v4, v1

    new-array v4, v4, [J

    .line 4929
    .local v4, "steps":[J
    array-length v5, v1

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 4930
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    shl-long/2addr v6, v3

    aput-wide v6, v4, v5

    .line 4931
    add-int/lit8 v3, v3, 0x8

    .line 4929
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4934
    .end local v5    # "i":I
    :cond_1
    const-wide/16 v5, 0x0

    .line 4936
    .local v5, "valueAsLong":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v1

    if-ge v2, v7, :cond_2

    .line 4937
    aget-wide v7, v4, v2

    or-long/2addr v5, v7

    .line 4936
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4940
    .end local v2    # "i":I
    :cond_2
    return-wide v5

    .line 4920
    .end local v1    # "asBytes":[B
    .end local v3    # "shift":I
    .end local v4    # "steps":[J
    .end local v5    # "valueAsLong":J
    :cond_3
    :goto_2
    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    int-to-long v1, v1

    return-wide v1
.end method

.method private getObjectDeserializingIfNeeded(I)Ljava/lang/Object;
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4549
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 4551
    .local v0, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4583
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v1

    return-object v1

    .line 4552
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v1

    .line 4554
    .local v1, "data":[B
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4555
    move-object v2, v1

    .line 4557
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 4558
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0x54

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    const/16 v4, -0x13

    if-ne v3, v4, :cond_2

    .line 4561
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4562
    .local v3, "bytesIn":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4563
    .local v4, "objIn":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 4564
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 4565
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "bytesIn":Ljava/io/ByteArrayInputStream;
    .end local v4    # "objIn":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 4569
    :catch_0
    move-exception v3

    .line 4570
    .local v3, "ex":Ljava/io/IOException;
    move-object v2, v1

    .line 4571
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 4566
    :catch_1
    move-exception v3

    .line 4567
    .local v3, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultSet.Class_not_found___91"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ResultSet._while_reading_serialized_object_92"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 4573
    .end local v3    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4577
    :cond_3
    :goto_2
    return-object v2

    .line 4580
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    return-object v1
.end method

.method private final getShortFromString(Ljava/lang/String;I)S
    .locals 4
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5053
    if-eqz p1, :cond_2

    .line 5055
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5056
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 5059
    :cond_0
    const-string v0, "e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5060
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v0

    return v0

    .line 5064
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5068
    :catch_0
    move-exception v0

    .line 5070
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 5071
    :catch_1
    move-exception v1

    .line 5075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getShort()_-____217"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResultSet.___in_column__218"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 5067
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getStringForClob(I)Ljava/lang/String;
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5170
    const/4 v0, 0x0

    .line 5172
    .local v0, "asString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    .line 5174
    .local v1, "forcedEncoding":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 5175
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v2, :cond_0

    .line 5176
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5182
    :cond_1
    const/4 v2, 0x0

    .line 5184
    .local v2, "asBytes":[B
    :try_start_0
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v3, :cond_2

    .line 5185
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 5187
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v3

    move-object v2, v3

    .line 5190
    :goto_0
    if-eqz v2, :cond_3

    .line 5191
    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 5196
    .end local v2    # "asBytes":[B
    :cond_3
    nop

    .line 5199
    :goto_1
    return-object v0

    .line 5193
    :catch_0
    move-exception v2

    .line 5194
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported character encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method private getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 18
    .param p1, "timeAsString"    # Ljava/lang/String;
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "columnIndex"    # I
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5390
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 5391
    const/4 v2, 0x0

    .line 5392
    .local v2, "hr":I
    const/4 v3, 0x0

    .line 5393
    .local v3, "min":I
    const/4 v4, 0x0

    .line 5397
    .local v4, "sec":I
    const/4 v0, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    .line 5398
    :try_start_0
    iput-boolean v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5400
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 5410
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5413
    .end local p1    # "timeAsString":Ljava/lang/String;
    .local v6, "timeAsString":Ljava/lang/String;
    :try_start_3
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v12, v7

    .line 5414
    .local v12, "dec":I
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-le v12, v7, :cond_1

    .line 5415
    invoke-virtual {v6, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v7

    move-object v13, v6

    goto :goto_0

    .line 5414
    :cond_1
    move-object v13, v6

    .line 5418
    .end local v6    # "timeAsString":Ljava/lang/String;
    .local v13, "timeAsString":Ljava/lang/String;
    :goto_0
    :try_start_4
    const-string v6, "0"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "0000-00-00"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "0000-00-00 00:00:00"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "00000000000000"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_9

    .line 5433
    :cond_2
    iput-boolean v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5435
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v5, v10, -0x1

    aget-object v0, v0, v5

    .line 5437
    .local v0, "timeColField":Lcom/mysql/jdbc/Field;
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/16 v14, 0x8

    const/4 v15, 0x6

    if-ne v5, v6, :cond_4

    .line 5439
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    .line 5441
    .local v5, "length":I
    sparse-switch v5, :sswitch_data_0

    .line 5468
    new-instance v6, Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 5444
    :sswitch_0
    add-int/lit8 v6, v5, -0x8

    add-int/lit8 v7, v5, -0x6

    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 5445
    add-int/lit8 v6, v5, -0x5

    add-int/lit8 v7, v5, -0x3

    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 5446
    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v13, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 5449
    goto :goto_1

    .line 5452
    :sswitch_1
    add-int/lit8 v6, v5, -0x6

    add-int/lit8 v7, v5, -0x4

    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 5453
    add-int/lit8 v6, v5, -0x4

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 5454
    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v13, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v4, v6

    .line 5457
    goto :goto_1

    .line 5460
    :sswitch_2
    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 5461
    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    .line 5462
    const/4 v4, 0x0

    .line 5465
    nop

    .line 5472
    :goto_1
    new-instance v6, Ljava/sql/SQLWarning;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v14, v10, -0x1

    aget-object v8, v8, v14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    .line 5476
    .local v6, "precisionLost":Ljava/sql/SQLWarning;
    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    if-nez v7, :cond_3

    .line 5477
    iput-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    goto :goto_2

    .line 5479
    :cond_3
    invoke-virtual {v7, v6}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    .line 5481
    .end local v5    # "length":I
    .end local v6    # "precisionLost":Ljava/sql/SQLWarning;
    :goto_2
    move v14, v2

    move v15, v3

    move v8, v4

    goto/16 :goto_8

    .line 5468
    .restart local v5    # "length":I
    :goto_3
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v8, v10, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .end local v13    # "timeAsString":Ljava/lang/String;
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p3    # "columnIndex":I
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v6

    .line 5481
    .end local v5    # "length":I
    .restart local v2    # "hr":I
    .restart local v3    # "min":I
    .restart local v4    # "sec":I
    .restart local v13    # "timeAsString":Ljava/lang/String;
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p3    # "columnIndex":I
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :cond_4
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_6

    .line 5482
    const/16 v5, 0xb

    const/16 v6, 0xd

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 5483
    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 5484
    const/16 v5, 0x11

    const/16 v6, 0x13

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 5486
    new-instance v5, Ljava/sql/SQLWarning;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v8, v10, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    .line 5490
    .local v5, "precisionLost":Ljava/sql/SQLWarning;
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    if-nez v6, :cond_5

    .line 5491
    iput-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    goto :goto_4

    .line 5493
    :cond_5
    invoke-virtual {v6, v5}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    .line 5495
    .end local v5    # "precisionLost":Ljava/sql/SQLWarning;
    :goto_4
    move v14, v2

    move v15, v3

    move v8, v4

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 5496
    invoke-virtual {v1, v9, v8, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v5

    .line 5500
    :cond_7
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v14, :cond_8

    goto :goto_5

    .line 5501
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResultSet.Bad_format_for_Time____267"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ResultSet.___in_column__268"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .end local v13    # "timeAsString":Ljava/lang/String;
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p3    # "columnIndex":I
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v5

    .line 5508
    .restart local v2    # "hr":I
    .restart local v3    # "min":I
    .restart local v4    # "sec":I
    .restart local v13    # "timeAsString":Ljava/lang/String;
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p3    # "columnIndex":I
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :cond_9
    :goto_5
    const/4 v5, 0x2

    invoke-virtual {v13, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 5509
    const/4 v5, 0x3

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 5510
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_a

    :goto_6
    goto :goto_7

    :cond_a
    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :goto_7
    move v4, v8

    move v14, v2

    move v15, v3

    move v8, v4

    .line 5513
    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .local v8, "sec":I
    .local v14, "hr":I
    .local v15, "min":I
    :goto_8
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    move-object v7, v2

    .line 5515
    .local v7, "sessionCalendar":Ljava/util/Calendar;
    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v7, v14, v15, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v5

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v16, v7

    .end local v7    # "sessionCalendar":Ljava/util/Calendar;
    .local v16, "sessionCalendar":Ljava/util/Calendar;
    move-object/from16 v7, p4

    move/from16 v17, v8

    .end local v8    # "sec":I
    .local v17, "sec":I
    move/from16 v8, p5

    :try_start_8
    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-object v2

    .line 5517
    .end local v0    # "timeColField":Lcom/mysql/jdbc/Field;
    .end local v12    # "dec":I
    .end local v16    # "sessionCalendar":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    move v2, v14

    move v3, v15

    move/from16 v4, v17

    goto :goto_a

    .end local v17    # "sec":I
    .restart local v8    # "sec":I
    :catch_1
    move-exception v0

    move/from16 v17, v8

    move v2, v14

    move v3, v15

    move/from16 v4, v17

    .end local v8    # "sec":I
    .restart local v17    # "sec":I
    goto :goto_a

    .line 5420
    .end local v14    # "hr":I
    .end local v15    # "min":I
    .end local v17    # "sec":I
    .restart local v2    # "hr":I
    .restart local v3    # "min":I
    .restart local v4    # "sec":I
    .restart local v12    # "dec":I
    :cond_b
    :goto_9
    :try_start_a
    const-string v6, "convertToNull"

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5421
    iput-boolean v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 5423
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    return-object v0

    .line 5424
    :cond_c
    :try_start_c
    const-string v0, "exception"

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5430
    invoke-virtual {v1, v9, v8, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    return-object v0

    .line 5425
    :cond_d
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' can not be represented as java.sql.Time"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .end local v13    # "timeAsString":Ljava/lang/String;
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p3    # "columnIndex":I
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 5517
    .end local v12    # "dec":I
    .restart local v2    # "hr":I
    .restart local v3    # "min":I
    .restart local v4    # "sec":I
    .restart local v13    # "timeAsString":Ljava/lang/String;
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p3    # "columnIndex":I
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :catch_2
    move-exception v0

    goto :goto_a

    .line 5523
    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .end local v13    # "timeAsString":Ljava/lang/String;
    .local v6, "timeAsString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v13, v6

    goto :goto_b

    .line 5517
    .restart local v2    # "hr":I
    .restart local v3    # "min":I
    .restart local v4    # "sec":I
    :catch_3
    move-exception v0

    move-object v13, v6

    goto :goto_a

    .line 5523
    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .end local v6    # "timeAsString":Ljava/lang/String;
    .restart local p1    # "timeAsString":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_b

    .line 5517
    .restart local v2    # "hr":I
    .restart local v3    # "min":I
    .restart local v4    # "sec":I
    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    .line 5518
    .end local p1    # "timeAsString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v13    # "timeAsString":Ljava/lang/String;
    :goto_a
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v5

    .line 5519
    .local v5, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v5, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5521
    nop

    .end local v13    # "timeAsString":Ljava/lang/String;
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p3    # "columnIndex":I
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v5

    .line 5523
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "hr":I
    .end local v3    # "min":I
    .end local v4    # "sec":I
    .end local v5    # "sqlEx":Ljava/sql/SQLException;
    .restart local v13    # "timeAsString":Ljava/lang/String;
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p3    # "columnIndex":I
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :catchall_2
    move-exception v0

    :goto_b
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 9
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5541
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5543
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 5544
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 5547
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5548
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    .line 5550
    .local v0, "timeAsString":Ljava/lang/String;
    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move v5, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v1

    return-object v1

    .line 5553
    .end local v0    # "timeAsString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5555
    add-int/lit8 v0, p1, -0x1

    .line 5557
    .local v0, "columnIndexMinusOne":I
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5558
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5560
    const/4 v1, 0x0

    return-object v1

    .line 5563
    :cond_2
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5565
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v3, v0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v1

    return-object v1
.end method

.method private getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 33
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "timestampValue"    # Ljava/lang/String;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5636
    move-object/from16 v15, p0

    move/from16 v14, p1

    const-string v0, "."

    const-string v13, "S1009"

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v15, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    .line 5638
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_0

    .line 5639
    :try_start_1
    iput-boolean v3, v15, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5641
    return-object v2

    .line 5873
    :catch_0
    move-exception v0

    move-object/from16 v8, p3

    move-object v9, v13

    move v4, v14

    move-object v11, v15

    goto/16 :goto_9

    .line 5651
    :cond_0
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v11, v4

    .line 5653
    .end local p3    # "timestampValue":Ljava/lang/String;
    .local v11, "timestampValue":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    move v9, v4

    .line 5655
    .local v9, "length":I
    iget-object v4, v15, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v4, :cond_1

    :try_start_4
    iget-object v4, v15, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 5873
    .end local v9    # "length":I
    :catch_1
    move-exception v0

    move-object v8, v11

    move-object v9, v13

    move v4, v14

    move-object v11, v15

    goto/16 :goto_9

    .line 5655
    .restart local v9    # "length":I
    :cond_1
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v4

    :goto_0
    move-object v12, v4

    .line 5658
    .local v12, "sessionCalendar":Ljava/util/Calendar;
    iget-object v4, v15, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v10
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 5660
    .local v10, "useGmtMillis":Z
    if-lez v9, :cond_6

    :try_start_6
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_6

    const-string v4, "0000-00-00"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "0000-00-00 00:00:00"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "00000000000000"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v23, v9

    goto :goto_2

    .line 5663
    :cond_3
    :goto_1
    const-string v0, "convertToNull"

    iget-object v1, v15, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5664
    iput-boolean v3, v15, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5666
    return-object v2

    .line 5667
    :cond_4
    const-string v0, "exception"

    iget-object v1, v15, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5673
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v23, v9

    .end local v9    # "length":I
    .local v23, "length":I
    move v9, v0

    invoke-virtual/range {v1 .. v10}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 5668
    .end local v23    # "length":I
    .restart local v9    # "length":I
    :cond_5
    move/from16 v23, v9

    .end local v9    # "length":I
    .restart local v23    # "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' can not be represented as java.sql.Timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v13, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v11    # "timestampValue":Ljava/lang/String;
    .end local p1    # "columnIndex":I
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5660
    .end local v23    # "length":I
    .restart local v9    # "length":I
    .restart local v11    # "timestampValue":Ljava/lang/String;
    .restart local p1    # "columnIndex":I
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :cond_6
    move/from16 v23, v9

    .line 5675
    .end local v9    # "length":I
    .restart local v23    # "length":I
    :goto_2
    :try_start_7
    iget-object v2, v15, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, v14, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    const/16 v3, 0xd

    const/4 v4, 0x4

    if-ne v2, v3, :cond_8

    .line 5677
    :try_start_8
    iget-boolean v0, v15, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    if-nez v0, :cond_7

    .line 5678
    :try_start_9
    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p4

    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    return-object v0

    .line 5681
    :cond_7
    :try_start_a
    iget-object v0, v15, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v11

    .end local v11    # "timestampValue":Ljava/lang/String;
    .local v8, "timestampValue":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v9, v13

    move v13, v1

    move v7, v14

    move v14, v2

    move-object v6, v15

    move v15, v3

    move/from16 v20, v10

    :try_start_b
    invoke-virtual/range {v11 .. v20}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v4

    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    move-object v1, v0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object v11, v6

    move-object/from16 v6, p4

    move v15, v7

    move/from16 v7, p5

    :try_start_c
    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 5873
    .end local v10    # "useGmtMillis":Z
    .end local v12    # "sessionCalendar":Ljava/util/Calendar;
    .end local v23    # "length":I
    :catch_2
    move-exception v0

    move-object v11, v6

    move v4, v7

    goto/16 :goto_9

    .end local v8    # "timestampValue":Ljava/lang/String;
    .restart local v11    # "timestampValue":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v8, v11

    move-object v9, v13

    move-object v11, v15

    move v4, v14

    goto/16 :goto_8

    .line 5688
    .restart local v10    # "useGmtMillis":Z
    .restart local v12    # "sessionCalendar":Ljava/util/Calendar;
    .restart local v23    # "length":I
    :cond_8
    move-object v8, v11

    move-object v9, v13

    move-object v11, v15

    move v15, v14

    .end local v11    # "timestampValue":Ljava/lang/String;
    .restart local v8    # "timestampValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5689
    .local v2, "year":I
    const/4 v5, 0x0

    .line 5690
    .local v5, "month":I
    const/4 v6, 0x0

    .line 5691
    .local v6, "day":I
    const/4 v7, 0x0

    .line 5692
    .local v7, "hour":I
    const/4 v13, 0x0

    .line 5693
    .local v13, "minutes":I
    const/4 v14, 0x0

    .line 5694
    .local v14, "seconds":I
    const/16 v16, 0x0

    .line 5697
    .local v16, "nanos":I
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 p3, v17

    .line 5699
    .local p3, "decimalIndex":I
    move/from16 v3, v23

    .end local v23    # "length":I
    .local v3, "length":I
    add-int/lit8 v1, v3, -0x1

    move/from16 v4, p3

    .end local p3    # "decimalIndex":I
    .local v4, "decimalIndex":I
    if-ne v4, v1, :cond_9

    .line 5701
    add-int/lit8 v1, v3, -0x1

    move/from16 p3, v2

    move/from16 v22, v5

    move/from16 v21, v6

    move/from16 v2, v16

    .end local v3    # "length":I
    .local v1, "length":I
    goto :goto_4

    .line 5703
    .end local v1    # "length":I
    .restart local v3    # "length":I
    :cond_9
    const/4 v1, -0x1

    if-eq v4, v1, :cond_c

    .line 5705
    add-int/lit8 v1, v4, 0x2

    if-gt v1, v3, :cond_b

    .line 5706
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5708
    .end local v16    # "nanos":I
    .local v1, "nanos":I
    add-int/lit8 v16, v4, 0x1

    move/from16 p3, v2

    .end local v2    # "year":I
    .local p3, "year":I
    sub-int v2, v3, v16

    .line 5710
    .local v2, "numDigits":I
    move/from16 v23, v3

    .end local v3    # "length":I
    .restart local v23    # "length":I
    const/16 v3, 0x9

    if-ge v2, v3, :cond_a

    .line 5711
    move v3, v5

    move/from16 v21, v6

    .end local v5    # "month":I
    .end local v6    # "day":I
    .local v3, "month":I
    .local v21, "day":I
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    move/from16 v22, v3

    .end local v3    # "month":I
    .local v22, "month":I
    rsub-int/lit8 v3, v2, 0x9

    move/from16 v16, v2

    .end local v2    # "numDigits":I
    .local v16, "numDigits":I
    int-to-double v2, v3

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 5712
    .local v2, "factor":I
    mul-int v1, v1, v2

    goto :goto_3

    .line 5710
    .end local v16    # "numDigits":I
    .end local v21    # "day":I
    .end local v22    # "month":I
    .local v2, "numDigits":I
    .restart local v5    # "month":I
    .restart local v6    # "day":I
    :cond_a
    move/from16 v16, v2

    move/from16 v22, v5

    move/from16 v21, v6

    .line 5715
    .end local v2    # "numDigits":I
    .end local v5    # "month":I
    .end local v6    # "day":I
    .restart local v16    # "numDigits":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    :goto_3
    move v2, v4

    .line 5716
    .end local v16    # "numDigits":I
    .end local v23    # "length":I
    .local v2, "length":I
    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    goto :goto_4

    .line 5717
    .end local v1    # "nanos":I
    .end local v21    # "day":I
    .end local v22    # "month":I
    .end local p3    # "year":I
    .local v2, "year":I
    .local v3, "length":I
    .restart local v5    # "month":I
    .restart local v6    # "day":I
    .local v16, "nanos":I
    :cond_b
    move/from16 p3, v2

    move/from16 v23, v3

    move/from16 v22, v5

    move/from16 v21, v6

    .end local v2    # "year":I
    .end local v3    # "length":I
    .end local v5    # "month":I
    .end local v6    # "day":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local v23    # "length":I
    .restart local p3    # "year":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v8    # "timestampValue":Ljava/lang/String;
    .end local p1    # "columnIndex":I
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    .line 5703
    .end local v21    # "day":I
    .end local v22    # "month":I
    .end local v23    # "length":I
    .end local p3    # "year":I
    .restart local v2    # "year":I
    .restart local v3    # "length":I
    .restart local v5    # "month":I
    .restart local v6    # "day":I
    .restart local v8    # "timestampValue":Ljava/lang/String;
    .restart local p1    # "columnIndex":I
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :cond_c
    move/from16 p3, v2

    move/from16 v23, v3

    move/from16 v22, v5

    move/from16 v21, v6

    .end local v2    # "year":I
    .end local v3    # "length":I
    .end local v5    # "month":I
    .end local v6    # "day":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local v23    # "length":I
    .restart local p3    # "year":I
    move/from16 v2, v16

    move/from16 v1, v23

    .line 5721
    .end local v16    # "nanos":I
    .end local v23    # "length":I
    .local v1, "length":I
    .local v2, "nanos":I
    :goto_4
    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    .line 5861
    :pswitch_0
    move/from16 v31, v1

    move/from16 v24, v4

    move v4, v15

    .end local v1    # "length":I
    .end local v4    # "decimalIndex":I
    .local v24, "decimalIndex":I
    .local v31, "length":I
    :try_start_d
    new-instance v1, Ljava/sql/SQLException;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_7

    .line 5730
    .end local v24    # "decimalIndex":I
    .end local v31    # "length":I
    .restart local v1    # "length":I
    .restart local v4    # "decimalIndex":I
    :pswitch_1
    const/4 v0, 0x0

    const/4 v3, 0x4

    :try_start_e
    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5731
    .end local p3    # "year":I
    .local v0, "year":I
    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5732
    .end local v22    # "month":I
    .local v3, "month":I
    const/16 v5, 0xa

    const/16 v6, 0x8

    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5733
    .end local v21    # "day":I
    .local v5, "day":I
    const/16 v6, 0xb

    move/from16 p3, v0

    const/16 v0, 0xd

    .end local v0    # "year":I
    .restart local p3    # "year":I
    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 5734
    const/16 v0, 0x10

    const/16 v6, 0xe

    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 5735
    const/16 v0, 0x11

    const/16 v6, 0x13

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 5737
    move/from16 v0, p3

    move/from16 v31, v1

    move v1, v13

    move v6, v14

    goto/16 :goto_6

    .line 5741
    .end local v3    # "month":I
    .end local v5    # "day":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    :pswitch_2
    const/4 v0, 0x0

    const/4 v3, 0x4

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5742
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/4 v5, 0x6

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5743
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/16 v6, 0x8

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5744
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move/from16 p3, v0

    const/16 v0, 0xa

    .end local v0    # "year":I
    .restart local p3    # "year":I
    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    .line 5745
    const/16 v6, 0xc

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 5746
    const/16 v0, 0xe

    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 5748
    move/from16 v0, p3

    move/from16 v31, v1

    move v1, v13

    move v6, v14

    goto/16 :goto_6

    .line 5752
    .end local v3    # "month":I
    .end local v5    # "day":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5754
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/16 v5, 0x45

    if-gt v0, v5, :cond_d

    .line 5755
    add-int/lit8 v0, v0, 0x64

    .line 5758
    :cond_d
    add-int/lit16 v0, v0, 0x76c

    .line 5760
    const/4 v5, 0x4

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5761
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/4 v6, 0x6

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5762
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move/from16 v17, v0

    const/16 v0, 0x8

    .end local v0    # "year":I
    .local v17, "year":I
    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    .line 5763
    const/16 v6, 0xa

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 5764
    const/16 v0, 0xc

    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 5766
    move/from16 v31, v1

    move v1, v13

    move v6, v14

    move/from16 v0, v17

    goto/16 :goto_6

    .line 5770
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v17    # "year":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :pswitch_4
    iget-object v0, v11, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v16, v15, -0x1

    aget-object v0, v0, v16

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_10

    const-string v0, "-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_e

    move/from16 v31, v1

    goto :goto_5

    .line 5777
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5779
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/16 v5, 0x45

    if-gt v0, v5, :cond_f

    .line 5780
    add-int/lit8 v0, v0, 0x64

    .line 5783
    :cond_f
    const/4 v5, 0x4

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5784
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/4 v6, 0x6

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5785
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move/from16 v31, v1

    const/16 v1, 0x8

    .end local v1    # "length":I
    .restart local v31    # "length":I
    invoke-virtual {v8, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    .line 5786
    const/16 v6, 0xa

    invoke-virtual {v8, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v13, v1

    .line 5788
    add-int/lit16 v0, v0, 0x76c

    .line 5791
    move v6, v14

    goto/16 :goto_6

    .line 5770
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v31    # "length":I
    .restart local v1    # "length":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :cond_10
    move/from16 v31, v1

    .line 5771
    .end local v1    # "length":I
    .restart local v31    # "length":I
    :goto_5
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5772
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/4 v1, 0x7

    invoke-virtual {v8, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    .line 5773
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/16 v1, 0xa

    const/16 v5, 0x8

    invoke-virtual {v8, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    .line 5774
    .end local v21    # "day":I
    .restart local v5    # "day":I
    const/4 v7, 0x0

    .line 5775
    const/4 v13, 0x0

    move v1, v13

    move v6, v14

    goto/16 :goto_6

    .line 5795
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v31    # "length":I
    .restart local v1    # "length":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :pswitch_5
    move/from16 v31, v1

    .end local v1    # "length":I
    .restart local v31    # "length":I
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 5796
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 5797
    const/4 v0, 0x3

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 5798
    const/16 v0, 0x8

    const/4 v1, 0x6

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 5799
    const/16 v0, 0x7b2

    .line 5800
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/4 v3, 0x1

    .line 5801
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/4 v5, 0x1

    .line 5802
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move v1, v13

    move v6, v14

    goto/16 :goto_6

    .line 5805
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5806
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/4 v3, 0x6

    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5807
    .end local v22    # "month":I
    .local v1, "month":I
    const/16 v5, 0x8

    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    .line 5809
    .end local v21    # "day":I
    .restart local v5    # "day":I
    add-int/lit16 v0, v0, -0x76c

    .line 5810
    const/4 v3, -0x1

    add-int/2addr v3, v1

    .line 5812
    .end local v1    # "month":I
    .restart local v3    # "month":I
    move v1, v13

    move v6, v14

    goto :goto_6

    .line 5816
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v31    # "length":I
    .local v1, "length":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :pswitch_6
    move/from16 v31, v1

    .end local v1    # "length":I
    .restart local v31    # "length":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5818
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/16 v1, 0x45

    if-gt v0, v1, :cond_12

    .line 5819
    add-int/lit8 v0, v0, 0x64

    .line 5822
    :cond_12
    add-int/lit16 v0, v0, 0x76c

    .line 5824
    const/4 v1, 0x4

    invoke-virtual {v8, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5825
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/4 v5, 0x6

    invoke-virtual {v8, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    .line 5827
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move v1, v13

    move v6, v14

    goto :goto_6

    .line 5831
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v31    # "length":I
    .restart local v1    # "length":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :pswitch_7
    move/from16 v31, v1

    .end local v1    # "length":I
    .restart local v31    # "length":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5833
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/16 v1, 0x45

    if-gt v0, v1, :cond_13

    .line 5834
    add-int/lit8 v0, v0, 0x64

    .line 5837
    :cond_13
    add-int/lit16 v0, v0, 0x76c

    .line 5839
    const/4 v1, 0x4

    invoke-virtual {v8, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    .line 5841
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/4 v5, 0x1

    .line 5843
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move v1, v13

    move v6, v14

    goto :goto_6

    .line 5847
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v31    # "length":I
    .restart local v1    # "length":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :pswitch_8
    move/from16 v31, v1

    .end local v1    # "length":I
    .restart local v31    # "length":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5849
    .end local p3    # "year":I
    .restart local v0    # "year":I
    const/16 v1, 0x45

    if-gt v0, v1, :cond_14

    .line 5850
    add-int/lit8 v0, v0, 0x64

    .line 5853
    :cond_14
    add-int/lit16 v0, v0, 0x76c

    .line 5854
    const/4 v3, 0x1

    .line 5855
    .end local v22    # "month":I
    .restart local v3    # "month":I
    const/4 v5, 0x1

    .line 5857
    .end local v21    # "day":I
    .restart local v5    # "day":I
    move v1, v13

    move v6, v14

    .line 5865
    .end local v13    # "minutes":I
    .end local v14    # "seconds":I
    .local v1, "minutes":I
    .local v6, "seconds":I
    :goto_6
    iget-boolean v13, v11, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v13, :cond_15

    .line 5866
    move-object/from16 v23, p4

    move/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v7

    move/from16 v28, v1

    move/from16 v29, v6

    move/from16 v30, v2

    invoke-static/range {v23 .. v30}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v9

    return-object v9

    .line 5869
    :cond_15
    iget-object v14, v11, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5

    move-object/from16 v13, p0

    move-object/from16 v23, v14

    move-object v14, v12

    move/from16 v24, v4

    move v4, v15

    .end local v4    # "decimalIndex":I
    .restart local v24    # "decimalIndex":I
    move v15, v0

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v1

    move/from16 v20, v6

    move/from16 v21, v2

    move/from16 v22, v10

    :try_start_f
    invoke-virtual/range {v13 .. v22}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;

    move-result-object v16

    iget-object v13, v11, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v13, v23

    move-object v14, v12

    move-object/from16 v15, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    invoke-static/range {v13 .. v19}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v9

    return-object v9

    .line 5861
    .end local v0    # "year":I
    .end local v1    # "minutes":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v6    # "seconds":I
    .restart local v13    # "minutes":I
    .restart local v14    # "seconds":I
    .restart local v21    # "day":I
    .restart local v22    # "month":I
    .restart local p3    # "year":I
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad format for Timestamp \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' in column "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v8    # "timestampValue":Ljava/lang/String;
    .end local p1    # "columnIndex":I
    .end local p2    # "targetCalendar":Ljava/util/Calendar;
    .end local p4    # "tz":Ljava/util/TimeZone;
    .end local p5    # "rollForward":Z
    throw v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4

    .line 5873
    .end local v2    # "nanos":I
    .end local v7    # "hour":I
    .end local v10    # "useGmtMillis":Z
    .end local v12    # "sessionCalendar":Ljava/util/Calendar;
    .end local v13    # "minutes":I
    .end local v14    # "seconds":I
    .end local v21    # "day":I
    .end local v22    # "month":I
    .end local v24    # "decimalIndex":I
    .end local v31    # "length":I
    .end local p3    # "year":I
    .restart local v8    # "timestampValue":Ljava/lang/String;
    .restart local p1    # "columnIndex":I
    .restart local p2    # "targetCalendar":Ljava/util/Calendar;
    .restart local p4    # "tz":Ljava/util/TimeZone;
    .restart local p5    # "rollForward":Z
    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move v4, v15

    goto :goto_9

    .end local v8    # "timestampValue":Ljava/lang/String;
    .restart local v11    # "timestampValue":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object v8, v11

    move-object v9, v13

    move v4, v14

    move-object v11, v15

    .end local v11    # "timestampValue":Ljava/lang/String;
    .restart local v8    # "timestampValue":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .end local v8    # "timestampValue":Ljava/lang/String;
    .local p3, "timestampValue":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v9, v13

    move v4, v14

    move-object v11, v15

    move-object/from16 v8, p3

    .line 5874
    .end local p3    # "timestampValue":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v8    # "timestampValue":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' from column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to TIMESTAMP."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5876
    .local v1, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5878
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 13
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5898
    move-object v9, p0

    move v10, p1

    iget-boolean v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 5899
    invoke-direct/range {p0 .. p4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 5902
    :cond_0
    const/4 v11, 0x0

    .line 5904
    .local v11, "tsVal":Ljava/sql/Timestamp;
    iget-boolean v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    const/4 v12, 0x0

    if-nez v0, :cond_1

    .line 5905
    invoke-virtual {p0, p1, v12}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v6

    .line 5907
    .local v6, "timestampValue":Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v6

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 5908
    .end local v6    # "timestampValue":Ljava/lang/String;
    .end local v11    # "tsVal":Ljava/sql/Timestamp;
    .local v0, "tsVal":Ljava/sql/Timestamp;
    goto :goto_0

    .line 5909
    .end local v0    # "tsVal":Ljava/sql/Timestamp;
    .restart local v11    # "tsVal":Ljava/sql/Timestamp;
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 5910
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5911
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5913
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, v10, -0x1

    iget-object v5, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v7

    iget-object v2, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v8

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;ZZ)Ljava/sql/Timestamp;

    move-result-object v0

    .line 5917
    .end local v11    # "tsVal":Ljava/sql/Timestamp;
    .restart local v0    # "tsVal":Ljava/sql/Timestamp;
    :goto_0
    if-nez v0, :cond_2

    .line 5918
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_1

    .line 5920
    :cond_2
    iput-boolean v12, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5923
    :goto_1
    return-object v0
.end method

.method private issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V
    .locals 20
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fieldInfo"    # Lcom/mysql/jdbc/Field;
    .param p5, "typesWithNoParseConversion"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6148
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 6149
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6151
    .local v0, "originalQueryBuf":Ljava/lang/StringBuilder;
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v1, :cond_0

    instance-of v1, v1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v1, :cond_0

    .line 6152
    const-string v1, "ResultSet.CostlyConversionCreatedFromQuery"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6153
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6154
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6156
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6159
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 6161
    .local v13, "convertibleTypesBuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v11

    if-ge v1, v2, :cond_1

    .line 6162
    aget v2, v11, v1

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6163
    const-string v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6166
    .end local v1    # "i":I
    :cond_1
    const-string v1, "ResultSet.CostlyConversion"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x3

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x5

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v17, 0x1

    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v18

    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v19

    invoke-static/range {v14 .. v19}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v3

    :goto_4
    aput-object v3, v2, v4

    const/4 v3, 0x6

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    invoke-static {v4}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 6174
    .local v9, "message":Ljava/lang/String;
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v5, p0

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 6176
    .end local v0    # "originalQueryBuf":Ljava/lang/StringBuilder;
    .end local v9    # "message":Ljava/lang/String;
    .end local v13    # "convertibleTypesBuf":Ljava/lang/StringBuilder;
    monitor-exit v12

    .line 6177
    return-void

    .line 6176
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntAsDouble(ILjava/lang/String;)I
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6322
    if-nez p2, :cond_0

    .line 6323
    const/4 v0, 0x0

    return v0

    .line 6326
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6328
    .local v0, "valueAsDouble":D
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6329
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 6330
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6334
    :cond_2
    double-to-int v2, v0

    return v2
.end method

.method private parseLongAsDouble(ILjava/lang/String;)J
    .locals 5
    .param p1, "columnIndexZeroBased"    # I
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6364
    if-nez p2, :cond_0

    .line 6365
    const-wide/16 v0, 0x0

    return-wide v0

    .line 6368
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6370
    .local v0, "valueAsDouble":D
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6371
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 6372
    :cond_1
    add-int/lit8 v2, p1, 0x1

    const/4 v3, -0x5

    invoke-direct {p0, p2, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6376
    :cond_2
    double-to-long v2, v0

    return-wide v2
.end method

.method private parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J
    .locals 4
    .param p1, "columnIndexZeroBased"    # I
    .param p2, "valueAsBytes"    # [B
    .param p3, "valueAsString"    # Ljava/lang/String;
    .param p4, "doCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6392
    const-wide/16 v0, 0x0

    .line 6394
    .local v0, "longValue":J
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 6395
    const-wide/16 v2, 0x0

    return-wide v2

    .line 6398
    :cond_0
    if-eqz p2, :cond_1

    .line 6399
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getLong([B)J

    move-result-wide v0

    goto :goto_0

    .line 6408
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6410
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 6413
    :goto_0
    if-eqz p4, :cond_2

    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6414
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->checkForLongTruncation(I[BJ)V

    .line 6417
    :cond_2
    return-wide v0
.end method

.method private parseShortAsDouble(ILjava/lang/String;)S
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6437
    if-nez p2, :cond_0

    .line 6438
    const/4 v0, 0x0

    return v0

    .line 6441
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6443
    .local v0, "valueAsDouble":D
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    .line 6444
    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    const-wide v2, 0x40dfffc000000000L    # 32767.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 6445
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6449
    :cond_2
    double-to-int v2, v0

    int-to-short v2, v2

    return v2
.end method

.method private parseShortWithOverflowCheck(I[BLjava/lang/String;)S
    .locals 6
    .param p1, "columnIndex"    # I
    .param p2, "valueAsBytes"    # [B
    .param p3, "valueAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6454
    const/4 v0, 0x0

    .line 6456
    .local v0, "shortValue":S
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 6457
    const/4 v1, 0x0

    return v1

    .line 6460
    :cond_0
    if-eqz p2, :cond_1

    .line 6461
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getShort([B)S

    move-result v0

    goto :goto_0

    .line 6470
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6472
    invoke-static {p3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 6475
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_6

    .line 6476
    const/16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7fff

    if-ne v0, v1, :cond_6

    .line 6477
    :cond_2
    if-nez p3, :cond_3

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 6479
    .local v1, "valueAsLong":J
    const-wide/16 v3, -0x8000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_4

    const-wide/16 v3, 0x7fff

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 6480
    :cond_4
    if-nez p3, :cond_5

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, p3

    :goto_2
    const/4 v4, 0x5

    invoke-direct {p0, v3, p1, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 6485
    .end local v1    # "valueAsLong":J
    :cond_6
    return v0
.end method

.method private setRowPositionValidity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isDynamic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 791
    const-string v0, "ResultSet.Illegal_operation_on_empty_result_set"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 792
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    const-string v0, "ResultSet.Before_start_of_result_set_146"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 795
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    const-string v0, "ResultSet.After_end_of_result_set_148"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 798
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 800
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 803
    :goto_0
    return-void
.end method

.method private throwRangeException(Ljava/lang/String;II)V
    .locals 4
    .param p1, "valueAsString"    # Ljava/lang/String;
    .param p2, "columnIndex"    # I
    .param p3, "jdbcType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6994
    const/4 v0, 0x0

    .line 6996
    .local v0, "datatype":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 7022
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (JDBC type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7016
    :pswitch_1
    const-string v0, "DOUBLE"

    .line 7017
    goto :goto_0

    .line 7010
    :pswitch_2
    const-string v0, "REAL"

    .line 7011
    goto :goto_0

    .line 7013
    :pswitch_3
    const-string v0, "FLOAT"

    .line 7014
    goto :goto_0

    .line 7001
    :pswitch_4
    const-string v0, "SMALLINT"

    .line 7002
    goto :goto_0

    .line 7004
    :pswitch_5
    const-string v0, "INTEGER"

    .line 7005
    goto :goto_0

    .line 7019
    :pswitch_6
    const-string v0, "DECIMAL"

    .line 7020
    goto :goto_0

    .line 7007
    :pswitch_7
    const-string v0, "BIGINT"

    .line 7008
    goto :goto_0

    .line 6998
    :pswitch_8
    const-string v0, "TINYINT"

    .line 6999
    nop

    .line 7025
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' is outside valid range for the datatype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "22003"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public absolute(I)Z
    .locals 3
    .param p1, "row"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const/4 v1, 0x0

    .local v1, "b":Z
    goto :goto_1

    .line 545
    .end local v1    # "b":Z
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 546
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 549
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_2

    .line 550
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_3

    .line 554
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 557
    :cond_3
    if-nez p1, :cond_4

    .line 558
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    .line 559
    const/4 v1, 0x0

    .restart local v1    # "b":Z
    goto :goto_1

    .line 560
    .end local v1    # "b":Z
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 561
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->first()Z

    move-result v1

    .restart local v1    # "b":Z
    goto :goto_1

    .line 562
    .end local v1    # "b":Z
    :cond_5
    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    .line 563
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->last()Z

    move-result v1

    .restart local v1    # "b":Z
    goto :goto_1

    .line 564
    .end local v1    # "b":Z
    :cond_6
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    if-le p1, v2, :cond_7

    .line 565
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->afterLast()V

    .line 566
    const/4 v1, 0x0

    .restart local v1    # "b":Z
    goto :goto_1

    .line 568
    .end local v1    # "b":Z
    :cond_7
    if-gez p1, :cond_9

    .line 570
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    add-int/2addr v2, p1

    add-int/2addr v2, v1

    .line 572
    .local v2, "newRowPosition":I
    if-gtz v2, :cond_8

    .line 573
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    .line 574
    const/4 v1, 0x0

    .restart local v1    # "b":Z
    goto :goto_0

    .line 576
    .end local v1    # "b":Z
    :cond_8
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->absolute(I)Z

    move-result v1

    .line 578
    .end local v2    # "newRowPosition":I
    .restart local v1    # "b":Z
    :goto_0
    goto :goto_1

    .line 579
    .end local v1    # "b":Z
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 580
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 581
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 582
    const/4 v1, 0x1

    .line 587
    .restart local v1    # "b":Z
    :goto_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 589
    monitor-exit v0

    return v1

    .line 590
    .end local v1    # "b":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public afterLast()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 607
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 608
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 611
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 612
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 620
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->afterLast()V

    .line 621
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 624
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public beforeFirst()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 642
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 643
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 646
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 647
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 651
    monitor-exit v0

    return-void

    .line 654
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_3

    .line 655
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 658
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->beforeFirst()V

    .line 659
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 661
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public buildIndexMapping()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    .line 674
    .local v0, "numFields":I
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 675
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 676
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 685
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 687
    .local v2, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "columnName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "columnLabel":Ljava/lang/String;
    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, "fullColumnName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 692
    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_0
    if-eqz v5, :cond_1

    .line 696
    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_1
    if-eqz v3, :cond_2

    .line 700
    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .end local v2    # "index":Ljava/lang/Integer;
    .end local v3    # "columnName":Ljava/lang/String;
    .end local v4    # "columnLabel":Ljava/lang/String;
    .end local v5    # "fullColumnName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 705
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 706
    return-void
.end method

.method public cancelRowUpdates()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 720
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method protected final checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 732
    .local v0, "c":Lcom/mysql/jdbc/MySQLConnection;
    if-eqz v0, :cond_0

    .line 737
    return-object v0

    .line 733
    :cond_0
    const-string v1, "ResultSet.Operation_not_allowed_after_ResultSet_closed_144"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected final checkColumnBounds(I)V
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 751
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p1, v3, :cond_2

    .line 756
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    if-gt p1, v4, :cond_1

    .line 763
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    add-int/lit8 v2, p1, -0x1

    aput-boolean v3, v1, v2

    .line 766
    :cond_0
    monitor-exit v0

    .line 767
    return-void

    .line 757
    :cond_1
    const-string v4, "ResultSet.Column_Index_out_of_range_high"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v4, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "columnIndex":I
    throw v1

    .line 766
    .restart local p1    # "columnIndex":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 752
    :cond_2
    const-string v4, "ResultSet.Column_Index_out_of_range_low"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v4, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "columnIndex":I
    throw v1

    .line 766
    .restart local p1    # "columnIndex":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkRowPos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 779
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    if-eqz v0, :cond_0

    .line 782
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized clearNextResult()V
    .locals 1

    monitor-enter p0

    .line 810
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    monitor-exit p0

    return-void

    .line 809
    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearWarnings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 821
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 822
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 823
    monitor-exit v0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 841
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->realClose(Z)V

    .line 842
    return-void
.end method

.method public copy()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 867
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    .line 869
    .local v1, "rs":Lcom/mysql/jdbc/ResultSetImpl;
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v2, :cond_0

    .line 870
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetImpl;->setBinaryEncoded()V

    .line 873
    :cond_0
    monitor-exit v0

    return-object v1

    .line 874
    .end local v1    # "rs":Lcom/mysql/jdbc/ResultSetImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 910
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method protected fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;
    .locals 9
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 940
    move-object v1, p1

    .line 942
    .local v1, "targetCalendar":Ljava/util/Calendar;
    if-nez p1, :cond_1

    .line 943
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastClientCalendar()Ljava/util/Calendar;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 946
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v2

    move-object v1, v2

    .line 950
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v2, :cond_2

    .line 951
    invoke-static {p2, p3, p4, v1}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 954
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move v8, v2

    .line 956
    .local v8, "useGmtMillis":Z
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getGmtCalendar()Ljava/util/Calendar;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    move v2, v8

    move-object v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(ZLjava/util/Calendar;Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 957
    .end local v1    # "targetCalendar":Ljava/util/Calendar;
    .end local v8    # "useGmtMillis":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 962
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p2, p3, p4, p1, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 966
    :cond_0
    if-nez p1, :cond_1

    .line 967
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v1

    move-object p1, v1

    .line 970
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, p3, p4, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 971
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected fastTimestampCreate(Ljava/util/Calendar;IIIIIIIZ)Ljava/sql/Timestamp;
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "seconds"    # I
    .param p8, "secondsPart"    # I
    .param p9, "useGmtMillis"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 977
    move-object v2, p0

    :try_start_0
    iget-boolean v0, v2, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_0

    .line 978
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 981
    :cond_0
    if-nez p1, :cond_1

    .line 982
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    .end local p1    # "cal":Ljava/util/Calendar;
    .local v0, "cal":Ljava/util/Calendar;
    goto :goto_0

    .line 981
    .end local v0    # "cal":Ljava/util/Calendar;
    .restart local p1    # "cal":Ljava/util/Calendar;
    :cond_1
    move-object v13, p1

    .line 985
    .end local p1    # "cal":Ljava/util/Calendar;
    .local v13, "cal":Ljava/util/Calendar;
    :goto_0
    if-eqz p9, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getGmtCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    move/from16 v3, p9

    move-object v5, v13

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v3 .. v12}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 987
    .end local v13    # "cal":Ljava/util/Calendar;
    .restart local p1    # "cal":Ljava/util/Calendar;
    :catchall_0
    move-exception v0

    move-object v13, p1

    .end local p1    # "cal":Ljava/util/Calendar;
    .restart local v13    # "cal":Ljava/util/Calendar;
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 5
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1033
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    if-nez v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->buildIndexMapping()V

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1039
    .local v1, "index":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1040
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    monitor-exit v0

    return v2

    .line 1043
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 1045
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useColumnNamesInFindColumn:Z

    if-eqz v2, :cond_2

    .line 1046
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 1049
    :cond_2
    if-nez v1, :cond_3

    .line 1050
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    .line 1053
    :cond_3
    if-eqz v1, :cond_4

    .line 1054
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    monitor-exit v0

    return v2

    .line 1061
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 1062
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1063
    add-int/lit8 v3, v2, 0x1

    monitor-exit v0

    return v3

    .line 1064
    :cond_5
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1065
    add-int/lit8 v3, v2, 0x1

    monitor-exit v0

    return v3

    .line 1061
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    .end local v2    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Column____112"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResultSet.___not_found._113"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S0022"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .end local p1    # "columnName":Ljava/lang/String;
    throw v2

    .line 1071
    .end local v1    # "index":Ljava/lang/Integer;
    .restart local p1    # "columnName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public first()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1090
    const/4 v1, 0x1

    .line 1092
    .local v1, "b":Z
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1093
    const/4 v1, 0x0

    goto :goto_0

    .line 1096
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1097
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 1100
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v2, :cond_2

    .line 1101
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 1104
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->beforeFirst()V

    .line 1105
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1108
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 1110
    monitor-exit v0

    return v1

    .line 1111
    .end local v1    # "b":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1127
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1129
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 1
    .param p1, "colName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1145
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    return-object v0
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1172
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1174
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 1175
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1187
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 6
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1204
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1205
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "stringVal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1211
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v1, "val":Ljava/math/BigDecimal;
    return-object v1

    .line 1217
    .end local v1    # "val":Ljava/math/BigDecimal;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1219
    .restart local v1    # "val":Ljava/math/BigDecimal;
    return-object v1

    .line 1220
    .end local v1    # "val":Ljava/math/BigDecimal;
    :catch_0
    move-exception v2

    .line 1221
    .restart local v1    # "val":Ljava/math/BigDecimal;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {v4, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    const-string v5, "S1009"

    invoke-static {v3, v5, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 1208
    .end local v1    # "val":Ljava/math/BigDecimal;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    move-object v2, v1

    .line 1227
    .local v2, "val":Ljava/math/BigDecimal;
    return-object v1

    .line 1230
    .end local v0    # "stringVal":Ljava/lang/String;
    .end local v2    # "val":Ljava/math/BigDecimal;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 12
    .param p1, "columnIndex"    # I
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1251
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 1252
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, "stringVal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "S1009"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "ResultSet.Bad_format_for_BigDecimal"

    const/4 v8, 0x1

    if-nez v2, :cond_0

    .line 1257
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v1, "val":Ljava/math/BigDecimal;
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1261
    :catch_0
    move-exception v2

    .line 1263
    .local v2, "ex":Ljava/lang/ArithmeticException;
    :try_start_1
    invoke-virtual {v1, p2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1264
    :catch_1
    move-exception v3

    .line 1265
    .local v3, "arEx":Ljava/lang/ArithmeticException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-static {v7, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1273
    .end local v1    # "val":Ljava/math/BigDecimal;
    .end local v2    # "ex":Ljava/lang/ArithmeticException;
    .end local v3    # "arEx":Ljava/lang/ArithmeticException;
    :cond_0
    :try_start_2
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 1284
    .restart local v1    # "val":Ljava/math/BigDecimal;
    goto :goto_0

    .line 1274
    .end local v1    # "val":Ljava/math/BigDecimal;
    :catch_2
    move-exception v2

    .line 1275
    .restart local v1    # "val":Ljava/math/BigDecimal;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v10, p1, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v9

    const/16 v10, 0x10

    if-ne v9, v10, :cond_1

    .line 1276
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v9

    .line 1278
    .local v9, "valueAsLong":J
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v9, v10}, Ljava/math/BigDecimal;-><init>(J)V

    move-object v1, v11

    .line 1279
    .end local v9    # "valueAsLong":J
    nop

    .line 1287
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v2

    .line 1288
    :catch_3
    move-exception v2

    .line 1290
    .local v2, "ex":Ljava/lang/ArithmeticException;
    :try_start_4
    invoke-virtual {v1, p2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v3

    .line 1291
    :catch_4
    move-exception v3

    .line 1292
    .local v3, "arithEx":Ljava/lang/ArithmeticException;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    aput-object v0, v6, v8

    invoke-static {v7, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 1280
    .end local v1    # "val":Ljava/math/BigDecimal;
    .end local v3    # "arithEx":Ljava/lang/ArithmeticException;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object v0, v1, v8

    invoke-static {v7, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1299
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    return-object v1

    .line 1302
    .end local v0    # "stringVal":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1331
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1416
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1417
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1419
    add-int/lit8 v0, p1, -0x1

    .line 1421
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1424
    const/4 v1, 0x0

    return-object v1

    .line 1427
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1429
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1432
    .end local v0    # "columnIndexMinusOne":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1441
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1456
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 1457
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1459
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1461
    add-int/lit8 v0, p1, -0x1

    .line 1463
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 1466
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1469
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    .line 1470
    const/4 v1, 0x0

    return-object v1

    .line 1473
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1474
    new-instance v1, Lcom/mysql/jdbc/Blob;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mysql/jdbc/Blob;-><init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v1

    .line 1477
    :cond_2
    new-instance v1, Lcom/mysql/jdbc/BlobFromLocator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/mysql/jdbc/BlobFromLocator;-><init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v1

    .line 1480
    .end local v0    # "columnIndexMinusOne":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 1
    .param p1, "colName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1495
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 12
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1511
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1517
    add-int/lit8 v0, p1, -0x1

    .line 1519
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    .line 1521
    .local v1, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 1522
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->byteArrayToBoolean(I)Z

    move-result v2

    return v2

    .line 1525
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1527
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v3

    .line 1529
    .local v3, "sqlType":I
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    move-wide v4, v7

    .line 1554
    .local v4, "boolVal":J
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1556
    sparse-switch v3, :sswitch_data_1

    goto :goto_0

    .line 1531
    .end local v4    # "boolVal":J
    :sswitch_0
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 1532
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1534
    .local v2, "stringVal":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 1537
    .end local v2    # "stringVal":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v9

    .line 1539
    .local v9, "boolVal":J
    cmp-long v11, v9, v4

    if-eqz v11, :cond_2

    cmp-long v4, v9, v7

    if-lez v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    .line 1529
    .end local v9    # "boolVal":J
    :sswitch_1
    move-wide v9, v7

    .line 1550
    .restart local v9    # "boolVal":J
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v9

    .line 1552
    cmp-long v11, v9, v4

    if-eqz v11, :cond_4

    cmp-long v4, v9, v7

    if-lez v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1570
    .end local v9    # "boolVal":J
    .restart local v4    # "boolVal":J
    :sswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v6, "Required type conversion not allowed"

    const-string v7, "22018"

    invoke-static {v6, v7, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1575
    :cond_6
    :goto_0
    const/4 v2, -0x2

    if-eq v3, v2, :cond_9

    const/4 v2, -0x3

    if-eq v3, v2, :cond_9

    const/4 v2, -0x4

    if-eq v3, v2, :cond_9

    const/16 v2, 0x7d4

    if-ne v3, v2, :cond_7

    goto :goto_1

    .line 1579
    :cond_7
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v2, :cond_8

    .line 1580
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v9

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v10, v2, p1

    const/4 v2, 0x7

    new-array v11, v2, [I

    fill-array-data v11, :array_0

    const-string v7, "getBoolean()"

    move-object v6, p0

    move v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 1585
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1587
    .restart local v2    # "stringVal":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 1576
    .end local v2    # "stringVal":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->byteArrayToBoolean(I)Z

    move-result v2

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_1
        -0x5 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        0x46 -> :sswitch_2
        0x5b -> :sswitch_2
        0x5c -> :sswitch_2
        0x5d -> :sswitch_2
        0x7d0 -> :sswitch_2
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_2
        0x7d6 -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 4
        0x10
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1623
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1648
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1649
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1651
    .local v0, "stringVal":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1655
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByteFromString(Ljava/lang/String;I)B

    move-result v1

    return v1

    .line 1652
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1658
    .end local v0    # "stringVal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1667
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1736
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method protected getBytes(IZ)[B
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "noConversion"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1740
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1741
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1743
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1745
    add-int/lit8 v0, p1, -0x1

    .line 1747
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 1750
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1753
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    .line 1754
    const/4 v1, 0x0

    return-object v1

    .line 1757
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    return-object v1

    .line 1760
    .end local v0    # "columnIndexMinusOne":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1769
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 1784
    .local v0, "localRowData":Lcom/mysql/jdbc/RowData;
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1786
    instance-of v1, v0, Lcom/mysql/jdbc/RowDataStatic;

    if-eqz v1, :cond_1

    .line 1787
    const/4 v1, 0x0

    .line 1789
    .local v1, "bytesSize":I
    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    .line 1791
    .local v2, "numRows":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1792
    invoke-interface {v0, v3}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mysql/jdbc/ResultSetRow;->getBytesSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 1791
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1795
    .end local v3    # "i":I
    :cond_0
    return v1

    .line 1798
    .end local v1    # "bytesSize":I
    .end local v2    # "numRows":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1806
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1807
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    .line 1808
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1812
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1832
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1833
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1835
    add-int/lit8 v0, p1, -0x1

    .line 1837
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1838
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1840
    const/4 v1, 0x0

    return-object v1

    .line 1843
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1845
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getReader(I)Ljava/io/Reader;

    move-result-object v1

    return-object v1

    .line 1848
    .end local v0    # "columnIndexMinusOne":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1867
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1890
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1891
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "asString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1894
    const/4 v1, 0x0

    return-object v1

    .line 1897
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v1

    .line 1900
    .end local v0    # "asString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 1
    .param p1, "colName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1915
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0
.end method

.method public getConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1932
    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1958
    const-string v0, "ResultSet.Positioned_Update_not_supported"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1C00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1974
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1994
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 1998
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1999
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    .line 2001
    .local v0, "stringVal":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2002
    return-object v1

    .line 2005
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    return-object v1

    .line 2008
    .end local v0    # "stringVal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2010
    add-int/lit8 v0, p1, -0x1

    .line 2011
    .local v0, "columnIndexMinusOne":I
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v3, v0, v4, p0, p2}, Lcom/mysql/jdbc/ResultSetRow;->getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v3

    .line 2012
    .local v3, "tmpDate":Ljava/sql/Date;
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v3, :cond_3

    goto :goto_0

    .line 2019
    :cond_3
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2021
    return-object v3

    .line 2014
    :cond_4
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2016
    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2030
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2049
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2231
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 2232
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(I)D

    move-result-wide v0

    return-wide v0

    .line 2235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2244
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getDoubleInternal(I)D
    .locals 2
    .param p1, "colIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2264
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getDoubleInternal(Ljava/lang/String;I)D
    .locals 5
    .param p1, "stringVal"    # Ljava/lang/String;
    .param p2, "colIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2283
    if-nez p1, :cond_0

    .line 2284
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2287
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2288
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 2291
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2293
    .local v0, "d":D
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_9

    .line 2295
    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 2297
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    goto :goto_0

    .line 2298
    :cond_2
    const-wide v2, 0x3cd203afa0000020L    # 1.0000000036275E-15

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    .line 2300
    const-wide v0, 0x3cd203af9ee75616L    # 1.0E-15

    goto :goto_0

    .line 2301
    :cond_3
    const-wide v2, 0x430c6bf51fffffe0L    # 9.999999869911E14

    cmpl-double v4, v0, v2

    if-nez v4, :cond_4

    .line 2302
    const-wide v0, 0x430c6bf52633fff8L    # 9.99999999999999E14

    goto :goto_0

    .line 2303
    :cond_4
    const-wide v2, 0x369fffffffffff92L    # 1.4012984643248E-45

    cmpl-double v4, v0, v2

    if-nez v4, :cond_5

    .line 2304
    const-wide v0, 0x369ff868bf4d956aL    # 1.4E-45

    goto :goto_0

    .line 2305
    :cond_5
    const-wide v2, 0x36a00001262d4ab6L    # 1.4013E-45

    cmpl-double v4, v0, v2

    if-nez v4, :cond_6

    .line 2306
    const-wide v0, 0x369ff868bf4d956aL    # 1.4E-45

    goto :goto_0

    .line 2307
    :cond_6
    const-wide v2, 0x47b9999980000018L    # 3.4028234663853E37

    cmpl-double v4, v0, v2

    if-nez v4, :cond_7

    .line 2308
    const-wide v0, 0x47b99999843e2660L    # 3.4028235E37

    goto :goto_0

    .line 2309
    :cond_7
    const-wide v2, -0x3e20000390000000L    # -2.14748E9

    cmpl-double v4, v0, v2

    if-nez v4, :cond_8

    .line 2310
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    goto :goto_0

    .line 2311
    :cond_8
    const-wide v2, 0x47b99997ca7b0cf0L    # 3.40282E37

    cmpl-double v4, v0, v2

    if-nez v4, :cond_9

    .line 2312
    const-wide v0, 0x47b99999843e2660L    # 3.4028235E37

    .line 2316
    :cond_9
    :goto_0
    return-wide v0

    .line 2317
    .end local v0    # "d":D
    :catch_0
    move-exception v0

    .line 2318
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 2319
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v1

    .line 2321
    .local v1, "valueAsLong":J
    long-to-double v3, v1

    return-wide v3

    .line 2324
    .end local v1    # "valueAsLong":J
    :cond_a
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "ResultSet.Bad_format_for_number"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 7858
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2338
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2339
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    monitor-exit v0

    return v1

    .line 2340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFetchSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2352
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2353
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    monitor-exit v0

    return v1

    .line 2354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirstCharOfQuery()C
    .locals 2

    .line 2365
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    :try_start_1
    iget-char v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->firstCharOfQuery:C

    monitor-exit v0

    return v1

    .line 2367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2368
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2385
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 2386
    const/4 v0, 0x0

    .line 2388
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2390
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloatFromString(Ljava/lang/String;I)F

    move-result v1

    return v1

    .line 2393
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2402
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v0

    return v0
.end method

.method protected getGmtCalendar()Ljava/util/Calendar;
    .locals 1

    .line 7850
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 7851
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 7854
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 7862
    iget v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    return v0
.end method

.method public getInt(I)I
    .locals 10
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2464
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2465
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2467
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_9

    .line 2468
    add-int/lit8 v0, p1, -0x1

    .line 2470
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2471
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2472
    return v2

    .line 2474
    :cond_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2476
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 2477
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v1

    .line 2479
    .local v1, "valueAsLong":J
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_2

    const-wide/32 v3, -0x80000000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 2480
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, v3, p1, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 2483
    :cond_2
    long-to-int v3, v1

    return v3

    .line 2486
    .end local v1    # "valueAsLong":J
    :cond_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    const-string v3, "S1009"

    const-string v4, "\'"

    const-string v5, "ResultSet.Invalid_value_for_getInt()_-____74"

    if-eqz v1, :cond_5

    .line 2487
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->length(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    .line 2488
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    return v1

    .line 2491
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isFloatingPointNumber(I)Z

    move-result v1

    .line 2493
    .local v1, "needsFullParse":Z
    if-nez v1, :cond_5

    .line 2495
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getIntWithOverflowCheck(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 2496
    :catch_0
    move-exception v2

    .line 2498
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v6, v0, v7, v8}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    .line 2500
    :catch_1
    move-exception v6

    .line 2504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v5, v0, v7, v8}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 2512
    .end local v1    # "needsFullParse":Z
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v1, 0x0

    .line 2514
    .local v1, "val":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 2515
    if-nez v1, :cond_6

    .line 2516
    return v2

    .line 2519
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 2520
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v2

    return v2

    .line 2523
    :cond_7
    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v2, v7, :cond_8

    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_8

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_8

    .line 2524
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2526
    .local v2, "intVal":I
    invoke-direct {p0, v0, v6, v2}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V

    .line 2528
    return v2

    .line 2532
    .end local v2    # "intVal":I
    :cond_8
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result v2

    .line 2534
    .restart local v2    # "intVal":I
    invoke-direct {p0, p1, v6, v2}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2536
    return v2

    .line 2538
    .end local v2    # "intVal":I
    :catch_2
    move-exception v2

    .line 2540
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return v3

    .line 2541
    :catch_3
    move-exception v6

    .line 2545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 2550
    .end local v0    # "columnIndexMinusOne":I
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2559
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2642
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2727
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2771
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2773
    new-instance v0, Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method protected getNativeArray(I)Ljava/sql/Array;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2790
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getNativeAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2817
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2819
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2837
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2839
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v0

    .line 2841
    .local v0, "scale":I
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method protected getNativeBigDecimal(II)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2859
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2861
    const/4 v0, 0x0

    .line 2863
    .local v0, "stringVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 2865
    .local v1, "f":Lcom/mysql/jdbc/Field;
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v2

    .line 2867
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 2868
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2870
    const/4 v3, 0x0

    return-object v3

    .line 2873
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2875
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2881
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2878
    :pswitch_0
    move-object v3, v2

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    .line 2879
    nop

    .line 2884
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimalFromString(Ljava/lang/String;II)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeBinaryStream(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2905
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2907
    add-int/lit8 v0, p1, -0x1

    .line 2909
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2910
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2912
    return-object v2

    .line 2915
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2917
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2926
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v1

    .line 2928
    .local v1, "b":[B
    if-eqz v1, :cond_1

    .line 2929
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 2923
    .end local v1    # "b":[B
    :sswitch_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 2932
    .restart local v1    # "b":[B
    :cond_1
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getNativeBlob(I)Ljava/sql/Blob;
    .locals 5
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2947
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2949
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2951
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 2953
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2954
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 2956
    :cond_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2959
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v2, :cond_1

    .line 2960
    const/4 v1, 0x0

    return-object v1

    .line 2963
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    .line 2965
    .local v2, "mysqlType":I
    const/4 v3, 0x0

    .line 2967
    .local v3, "dataAsBytes":[B
    packed-switch v2, :pswitch_data_0

    .line 2976
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v1

    .end local v3    # "dataAsBytes":[B
    .local v1, "dataAsBytes":[B
    goto :goto_1

    .line 2972
    .end local v1    # "dataAsBytes":[B
    .restart local v3    # "dataAsBytes":[B
    :pswitch_0
    move-object v1, v0

    check-cast v1, [B

    check-cast v1, [B

    .line 2973
    .end local v3    # "dataAsBytes":[B
    .restart local v1    # "dataAsBytes":[B
    nop

    .line 2979
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2980
    new-instance v3, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/mysql/jdbc/Blob;-><init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v3

    .line 2983
    :cond_2
    new-instance v3, Lcom/mysql/jdbc/BlobFromLocator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/mysql/jdbc/BlobFromLocator;-><init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeByte(I)B
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3016
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    return v0
.end method

.method protected getNativeByte(IZ)B
    .locals 19
    .param p1, "columnIndex"    # I
    .param p2, "overflowCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3020
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3022
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3024
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v7

    .line 3026
    .local v7, "value":Ljava/lang/Object;
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v7, :cond_0

    .line 3027
    iput-boolean v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3029
    return v0

    .line 3032
    :cond_0
    iput-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3034
    add-int/lit8 v8, p1, -0x1

    .line 3036
    .end local p1    # "columnIndex":I
    .local v8, "columnIndex":I
    iget-object v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v9, v2, v8

    .line 3038
    .local v9, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v9}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const-wide/16 v3, 0x7f

    const-wide/16 v10, -0x80

    const/16 v5, -0x80

    const/16 v12, 0x7f

    const/4 v13, -0x6

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v10, v0

    .local v10, "valueAsShort":S
    move v11, v0

    .local v11, "valueAsInt":I
    move-wide v12, v14

    .local v12, "valueAsDouble":D
    move/from16 v14, v16

    .local v14, "valueAsFloat":F
    move v15, v0

    .local v15, "valueAsByte":B
    move-wide/from16 v16, v17

    .line 3122
    .local v16, "valueAsLong":J
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_10

    .line 3123
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v8

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const-string v1, "getByte()"

    move-object/from16 v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    goto/16 :goto_1

    .line 3040
    .end local v10    # "valueAsShort":S
    .end local v11    # "valueAsInt":I
    .end local v12    # "valueAsDouble":D
    .end local v14    # "valueAsFloat":F
    .end local v15    # "valueAsByte":B
    .end local v16    # "valueAsLong":J
    :pswitch_1
    add-int/lit8 v0, v8, 0x1

    invoke-direct {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 3042
    .local v0, "valueAsLong":J
    if-eqz p2, :cond_2

    iget-boolean v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    cmp-long v2, v0, v10

    if-ltz v2, :cond_1

    cmp-long v2, v0, v3

    if-lez v2, :cond_2

    .line 3043
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    invoke-direct {v6, v2, v3, v13}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3046
    :cond_2
    long-to-int v2, v0

    int-to-byte v2, v2

    return v2

    .line 3038
    .end local v0    # "valueAsLong":J
    :pswitch_2
    move v2, v0

    .local v2, "valueAsShort":S
    move v5, v0

    .local v5, "valueAsInt":I
    .local v14, "valueAsDouble":D
    move/from16 v12, v16

    .local v12, "valueAsFloat":F
    move/from16 v16, v0

    .line 3111
    .local v16, "valueAsByte":B
    .local v17, "valueAsLong":J
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v6, v13, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    .line 3113
    .end local v17    # "valueAsLong":J
    .restart local v0    # "valueAsLong":J
    if-eqz p2, :cond_4

    iget-boolean v13, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v13, :cond_4

    .line 3114
    cmp-long v13, v0, v10

    if-ltz v13, :cond_3

    cmp-long v10, v0, v3

    if-lez v10, :cond_4

    .line 3115
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    const/4 v10, -0x6

    invoke-direct {v6, v3, v4, v10}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3119
    :cond_4
    long-to-int v3, v0

    int-to-byte v3, v3

    return v3

    .line 3038
    .end local v0    # "valueAsLong":J
    .end local v2    # "valueAsShort":S
    .end local v5    # "valueAsInt":I
    .end local v12    # "valueAsFloat":F
    .end local v14    # "valueAsDouble":D
    .end local v16    # "valueAsByte":B
    :pswitch_3
    move v1, v0

    .local v1, "valueAsShort":S
    move v2, v0

    .local v2, "valueAsInt":I
    move/from16 v3, v16

    .local v0, "valueAsByte":B
    .local v3, "valueAsFloat":F
    move-wide/from16 v4, v17

    .line 3100
    .local v4, "valueAsLong":J
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v6, v10}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v10

    .line 3102
    .local v10, "valueAsDouble":D
    if-eqz p2, :cond_6

    iget-boolean v12, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v12, :cond_6

    .line 3103
    const-wide/high16 v12, -0x3fa0000000000000L    # -128.0

    cmpg-double v14, v10, v12

    if-ltz v14, :cond_5

    const-wide v12, 0x405fc00000000000L    # 127.0

    cmpl-double v14, v10, v12

    if-lez v14, :cond_6

    .line 3104
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v8, 0x1

    const/4 v14, -0x6

    invoke-direct {v6, v12, v13, v14}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3108
    :cond_6
    double-to-int v12, v10

    int-to-byte v12, v12

    return v12

    .line 3038
    .end local v0    # "valueAsByte":B
    .end local v1    # "valueAsShort":S
    .end local v2    # "valueAsInt":I
    .end local v3    # "valueAsFloat":F
    .end local v4    # "valueAsLong":J
    .end local v10    # "valueAsDouble":D
    :pswitch_4
    move v1, v0

    .restart local v1    # "valueAsShort":S
    move v2, v0

    .restart local v0    # "valueAsByte":B
    .restart local v2    # "valueAsInt":I
    move-wide/from16 v3, v17

    .line 3088
    .local v3, "valueAsLong":J
    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v5

    .line 3090
    .local v5, "valueAsFloat":F
    if-eqz p2, :cond_8

    iget-boolean v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v10, :cond_8

    .line 3091
    const/high16 v10, -0x3d000000    # -128.0f

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_7

    const/high16 v10, 0x42fe0000    # 127.0f

    cmpl-float v10, v5, v10

    if-lez v10, :cond_8

    .line 3093
    :cond_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    const/4 v12, -0x6

    invoke-direct {v6, v10, v11, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3097
    :cond_8
    float-to-int v10, v5

    int-to-byte v10, v10

    return v10

    .line 3038
    .end local v0    # "valueAsByte":B
    .end local v1    # "valueAsShort":S
    .end local v2    # "valueAsInt":I
    .end local v3    # "valueAsLong":J
    .end local v5    # "valueAsFloat":F
    :pswitch_5
    move v1, v0

    .restart local v1    # "valueAsShort":S
    move v2, v0

    .local v2, "valueAsByte":B
    move-wide/from16 v3, v17

    .line 3077
    .restart local v3    # "valueAsLong":J
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v6, v10, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 3079
    .local v0, "valueAsInt":I
    if-eqz p2, :cond_a

    iget-boolean v10, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v10, :cond_a

    .line 3080
    if-lt v0, v5, :cond_9

    if-le v0, v12, :cond_a

    .line 3081
    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v10, v8, 0x1

    const/4 v11, -0x6

    invoke-direct {v6, v5, v10, v11}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3085
    :cond_a
    int-to-byte v5, v0

    return v5

    .line 3038
    .end local v0    # "valueAsInt":I
    .end local v1    # "valueAsShort":S
    .end local v2    # "valueAsByte":B
    .end local v3    # "valueAsLong":J
    :pswitch_6
    move v1, v0

    .local v0, "valueAsByte":B
    .restart local v1    # "valueAsShort":S
    move-wide/from16 v2, v17

    .line 3066
    .local v2, "valueAsLong":J
    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v6, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v1

    .line 3068
    if-eqz p2, :cond_c

    iget-boolean v4, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v4, :cond_c

    .line 3069
    if-lt v1, v5, :cond_b

    if-le v1, v12, :cond_c

    .line 3070
    :cond_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v8, 0x1

    const/4 v10, -0x6

    invoke-direct {v6, v4, v5, v10}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3074
    :cond_c
    int-to-byte v4, v1

    return v4

    .line 3038
    .end local v0    # "valueAsByte":B
    .end local v1    # "valueAsShort":S
    .end local v2    # "valueAsLong":J
    :pswitch_7
    move-wide/from16 v1, v17

    .line 3048
    .local v1, "valueAsLong":J
    move-object v3, v7

    check-cast v3, [B

    check-cast v3, [B

    aget-byte v0, v3, v0

    .line 3050
    .restart local v0    # "valueAsByte":B
    invoke-virtual {v9}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3051
    return v0

    .line 3054
    :cond_d
    if-ltz v0, :cond_e

    int-to-short v3, v0

    goto :goto_0

    :cond_e
    add-int/lit16 v3, v0, 0x100

    int-to-short v3, v3

    .line 3056
    .local v3, "valueAsShort":S
    :goto_0
    if-eqz p2, :cond_f

    iget-boolean v4, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v4, :cond_f

    .line 3057
    if-le v3, v12, :cond_f

    .line 3058
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v8, 0x1

    const/4 v10, -0x6

    invoke-direct {v6, v4, v5, v10}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3062
    :cond_f
    int-to-byte v4, v3

    return v4

    .line 3128
    .end local v0    # "valueAsByte":B
    .end local v1    # "valueAsLong":J
    .end local v3    # "valueAsShort":S
    .local v10, "valueAsShort":S
    .restart local v11    # "valueAsInt":I
    .local v12, "valueAsDouble":D
    .local v14, "valueAsFloat":F
    .restart local v15    # "valueAsByte":B
    .local v16, "valueAsLong":J
    :cond_10
    :goto_1
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v8, 0x1

    invoke-direct {v6, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getByteFromString(Ljava/lang/String;I)B

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeBytes(IZ)[B
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "noConversion"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3148
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3150
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3152
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 3154
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 3155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 3157
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3160
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    .line 3161
    const/4 v1, 0x0

    return-object v1

    .line 3164
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 3166
    .local v1, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    .line 3169
    .local v2, "mysqlType":I
    if-eqz p2, :cond_2

    .line 3170
    const/16 v2, 0xfc

    .line 3173
    :cond_2
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 3179
    :sswitch_0
    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    return-object v3

    .line 3184
    :sswitch_1
    instance-of v3, v0, [B

    if-eqz v3, :cond_3

    .line 3185
    move-object v3, v0

    check-cast v3, [B

    check-cast v3, [B

    return-object v3

    .line 3191
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v3

    .line 3193
    .local v3, "sqlType":I
    const/4 v4, -0x3

    if-eq v3, v4, :cond_5

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 3197
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 3194
    :cond_5
    :goto_2
    move-object v4, v0

    check-cast v4, [B

    check-cast v4, [B

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_1
        0xfe -> :sswitch_1
    .end sparse-switch
.end method

.method protected getNativeCharacterStream(I)Ljava/io/Reader;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3216
    add-int/lit8 v0, p1, -0x1

    .line 3218
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 3234
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v1

    .line 3236
    .local v1, "asString":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3237
    return-object v2

    .line 3223
    .end local v1    # "asString":Ljava/lang/String;
    :sswitch_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3226
    return-object v2

    .line 3229
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3231
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getReader(I)Ljava/io/Reader;

    move-result-object v1

    return-object v1

    .line 3240
    .restart local v1    # "asString":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStreamFromString(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x7d5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getNativeClob(I)Ljava/sql/Clob;
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3255
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v0

    .line 3257
    .local v0, "stringVal":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3258
    const/4 v1, 0x0

    return-object v1

    .line 3261
    :cond_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getClobFromString(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object v1

    return-object v1
.end method

.method protected getNativeDate(I)Ljava/sql/Date;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 17
    .param p1, "columnIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3586
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3587
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3589
    add-int/lit8 v11, p1, -0x1

    .line 3591
    .local v11, "columnIndexMinusOne":I
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v12

    .line 3593
    .local v12, "mysqlType":I
    const/4 v13, 0x0

    .line 3595
    .local v13, "dateToReturn":Ljava/sql/Date;
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v0, 0xa

    if-ne v12, v0, :cond_0

    .line 3597
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v11, v1, v9, v10}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .end local v13    # "dateToReturn":Ljava/sql/Date;
    .local v0, "dateToReturn":Ljava/sql/Date;
    goto :goto_2

    .line 3599
    .end local v0    # "dateToReturn":Ljava/sql/Date;
    .restart local v13    # "dateToReturn":Ljava/sql/Date;
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 3601
    .local v8, "tz":Ljava/util/TimeZone;
    if-eqz v8, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 3603
    .local v6, "rollForward":Z
    :goto_1
    iget-object v0, v9, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v2, 0x0

    const/16 v3, 0x5b

    iget-object v7, v9, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v1, v11

    move v4, v12

    move-object v5, v8

    move-object/from16 v16, v8

    .end local v8    # "tz":Ljava/util/TimeZone;
    .local v16, "tz":Ljava/util/TimeZone;
    move-object/from16 v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Date;

    .line 3611
    .end local v6    # "rollForward":Z
    .end local v13    # "dateToReturn":Ljava/sql/Date;
    .end local v16    # "tz":Ljava/util/TimeZone;
    .restart local v0    # "dateToReturn":Ljava/sql/Date;
    :goto_2
    if-nez v0, :cond_3

    .line 3613
    iput-boolean v15, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3615
    const/4 v1, 0x0

    return-object v1

    .line 3618
    :cond_3
    iput-boolean v14, v9, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3620
    return-object v0
.end method

.method getNativeDateViaParseConversion(I)Ljava/sql/Date;
    .locals 8
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3624
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    .line 3625
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v5

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v6, v0, v1

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0xa

    aput v1, v7, v0

    const-string v3, "getDate()"

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3629
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    .line 3631
    .local v0, "stringVal":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    return-object v1
.end method

.method protected getNativeDouble(I)D
    .locals 11
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3646
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3647
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3649
    add-int/lit8 p1, p1, -0x1

    .line 3651
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3654
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3657
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3659
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v0, p1

    .line 3661
    .local v6, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-wide v7, v1

    .local v7, "valueAsLong":J
    move-object v9, v3

    .line 3701
    .local v9, "asBigInt":Ljava/math/BigInteger;
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v10

    .line 3703
    .local v10, "stringVal":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_5

    .line 3704
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, p1

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const-string v1, "getDouble()"

    move-object v0, p0

    move v2, p1

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    goto/16 :goto_0

    .line 3661
    .end local v7    # "valueAsLong":J
    .end local v9    # "asBigInt":Ljava/math/BigInteger;
    .end local v10    # "stringVal":Ljava/lang/String;
    :pswitch_1
    move-wide v0, v1

    .local v0, "valueAsLong":J
    move-object v2, v3

    .line 3699
    .local v2, "asBigInt":Ljava/math/BigInteger;
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v3

    long-to-double v3, v3

    return-wide v3

    .line 3685
    .end local v0    # "valueAsLong":J
    .end local v2    # "asBigInt":Ljava/math/BigInteger;
    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    .line 3687
    .restart local v0    # "valueAsLong":J
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3688
    long-to-double v2, v0

    return-wide v2

    .line 3691
    :cond_1
    invoke-static {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 3695
    .restart local v2    # "asBigInt":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v3

    return-wide v3

    .line 3663
    .end local v0    # "valueAsLong":J
    .end local v2    # "asBigInt":Ljava/math/BigInteger;
    :pswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 3661
    :pswitch_4
    move-wide v0, v1

    .restart local v0    # "valueAsLong":J
    move-object v2, v3

    .line 3697
    .restart local v2    # "asBigInt":Ljava/math/BigInteger;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v3

    float-to-double v3, v3

    return-wide v3

    .line 3679
    .end local v0    # "valueAsLong":J
    .end local v2    # "asBigInt":Ljava/math/BigInteger;
    :pswitch_5
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3680
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3683
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 3672
    :pswitch_6
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3673
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3676
    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3665
    :pswitch_7
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3666
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3669
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 3709
    .restart local v7    # "valueAsLong":J
    .restart local v9    # "asBigInt":Ljava/math/BigInteger;
    .restart local v10    # "stringVal":Ljava/lang/String;
    :cond_5
    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v10, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleFromString(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeFloat(I)F
    .locals 13
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3725
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3726
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3728
    add-int/lit8 p1, p1, -0x1

    .line 3730
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3733
    return v1

    .line 3736
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3738
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v0, p1

    .line 3740
    .local v6, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v7, v1

    .local v7, "valueAsFloat":F
    move-wide v8, v4

    .local v8, "valueAsLong":J
    move-object v10, v3

    .local v10, "asBigInt":Ljava/math/BigInteger;
    move-object v11, v3

    .line 3795
    .local v11, "valueAsDouble":Ljava/lang/Double;
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v12

    .line 3797
    .local v12, "stringVal":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_8

    .line 3798
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, p1

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    const-string v1, "getFloat()"

    move-object v0, p0

    move v2, p1

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    goto/16 :goto_0

    .line 3742
    .end local v7    # "valueAsFloat":F
    .end local v8    # "valueAsLong":J
    .end local v10    # "asBigInt":Ljava/math/BigInteger;
    .end local v11    # "valueAsDouble":Ljava/lang/Double;
    .end local v12    # "stringVal":Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 3744
    .local v0, "valueAsLong":J
    long-to-float v2, v0

    return v2

    .line 3740
    .end local v0    # "valueAsLong":J
    :pswitch_2
    move v0, v1

    .local v0, "valueAsFloat":F
    move-wide v1, v4

    .line 3779
    .local v1, "valueAsLong":J
    .local v3, "valueAsDouble":Ljava/lang/Double;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v1

    .line 3781
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3782
    long-to-float v4, v1

    return v4

    .line 3785
    :cond_1
    invoke-static {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 3789
    .local v4, "asBigInt":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v5

    return v5

    .line 3740
    .end local v0    # "valueAsFloat":F
    .end local v1    # "valueAsLong":J
    .end local v3    # "valueAsDouble":Ljava/lang/Double;
    .end local v4    # "asBigInt":Ljava/math/BigInteger;
    :pswitch_3
    move-wide v0, v4

    .line 3749
    .local v0, "valueAsLong":J
    new-instance v3, Ljava/lang/Double;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 3751
    .restart local v3    # "valueAsDouble":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v4

    .line 3753
    .local v4, "valueAsFloat":F
    iget-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v5, :cond_2

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_3

    :cond_2
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v5, v4, v5

    if-nez v5, :cond_4

    .line 3754
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, p1, 0x1

    invoke-direct {p0, v5, v7, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3757
    :cond_4
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v7

    double-to-float v2, v7

    return v2

    .line 3740
    .end local v0    # "valueAsLong":J
    .end local v3    # "valueAsDouble":Ljava/lang/Double;
    .end local v4    # "valueAsFloat":F
    :pswitch_4
    move v0, v1

    .local v0, "valueAsFloat":F
    move-wide v1, v4

    .restart local v1    # "valueAsLong":J
    move-object v4, v3

    .line 3792
    .restart local v3    # "valueAsDouble":Ljava/lang/Double;
    .local v4, "asBigInt":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v5, p1}, Lcom/mysql/jdbc/ResultSetRow;->getNativeFloat(I)F

    move-result v5

    return v5

    .line 3740
    .end local v0    # "valueAsFloat":F
    .end local v1    # "valueAsLong":J
    .end local v3    # "valueAsDouble":Ljava/lang/Double;
    .end local v4    # "asBigInt":Ljava/math/BigInteger;
    :pswitch_5
    move v0, v1

    .restart local v0    # "valueAsFloat":F
    move-wide v1, v4

    .line 3773
    .restart local v1    # "valueAsLong":J
    .restart local v3    # "valueAsDouble":Ljava/lang/Double;
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3774
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v4

    int-to-float v4, v4

    return v4

    .line 3777
    :cond_5
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v4

    long-to-float v4, v4

    return v4

    .line 3740
    .end local v0    # "valueAsFloat":F
    .end local v1    # "valueAsLong":J
    .end local v3    # "valueAsDouble":Ljava/lang/Double;
    :pswitch_6
    move v0, v1

    .restart local v0    # "valueAsFloat":F
    move-wide v1, v4

    .line 3766
    .restart local v1    # "valueAsLong":J
    .restart local v3    # "valueAsDouble":Ljava/lang/Double;
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3767
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v4

    int-to-float v4, v4

    return v4

    .line 3770
    :cond_6
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v4

    int-to-float v4, v4

    return v4

    .line 3740
    .end local v0    # "valueAsFloat":F
    .end local v1    # "valueAsLong":J
    .end local v3    # "valueAsDouble":Ljava/lang/Double;
    :pswitch_7
    move v0, v1

    .restart local v0    # "valueAsFloat":F
    move-wide v1, v4

    .line 3759
    .restart local v1    # "valueAsLong":J
    .restart local v3    # "valueAsDouble":Ljava/lang/Double;
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3760
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v4

    int-to-float v4, v4

    return v4

    .line 3763
    :cond_7
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v4

    int-to-float v4, v4

    return v4

    .line 3803
    .end local v0    # "valueAsFloat":F
    .end local v1    # "valueAsLong":J
    .end local v3    # "valueAsDouble":Ljava/lang/Double;
    .restart local v7    # "valueAsFloat":F
    .restart local v8    # "valueAsLong":J
    .restart local v10    # "asBigInt":Ljava/math/BigInteger;
    .restart local v11    # "valueAsDouble":Ljava/lang/Double;
    .restart local v12    # "stringVal":Ljava/lang/String;
    :cond_8
    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v12, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getFloatFromString(Ljava/lang/String;I)F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3819
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    return v0
.end method

.method protected getNativeInt(IZ)I
    .locals 19
    .param p1, "columnIndex"    # I
    .param p2, "overflowCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3823
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3824
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3826
    add-int/lit8 v7, p1, -0x1

    .line 3828
    .end local p1    # "columnIndex":I
    .local v7, "columnIndex":I
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3829
    iput-boolean v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3831
    return v1

    .line 3834
    :cond_0
    iput-boolean v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3836
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v8, v0, v7

    .line 3838
    .local v8, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/32 v9, -0x80000000

    const-wide/high16 v11, -0x3e20000000000000L    # -2.147483648E9

    const-wide/32 v13, 0x7fffffff

    const/4 v5, 0x4

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v9, v1

    .local v9, "tinyintVal":B
    move-wide v10, v15

    .local v10, "valueAsLong":J
    move v12, v1

    .local v12, "valueAsInt":I
    move-wide/from16 v13, v17

    .local v13, "valueAsDouble":D
    move v15, v1

    .line 3912
    .local v15, "asShort":S
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v5

    .line 3914
    .local v5, "stringVal":Ljava/lang/String;
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_10

    .line 3915
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v7

    const/4 v0, 0x6

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const-string v1, "getInt()"

    move-object/from16 v0, p0

    move v2, v7

    move-object/from16 v16, v3

    move-object v3, v5

    move-object/from16 p1, v8

    move-object v8, v5

    .end local v5    # "stringVal":Ljava/lang/String;
    .local v8, "stringVal":Ljava/lang/String;
    .local p1, "f":Lcom/mysql/jdbc/Field;
    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    goto/16 :goto_3

    .line 3840
    .end local v9    # "tinyintVal":B
    .end local v10    # "valueAsLong":J
    .end local v12    # "valueAsInt":I
    .end local v13    # "valueAsDouble":D
    .end local v15    # "asShort":S
    .end local p1    # "f":Lcom/mysql/jdbc/Field;
    .local v8, "f":Lcom/mysql/jdbc/Field;
    :pswitch_1
    add-int/lit8 v0, v7, 0x1

    invoke-direct {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 3842
    .local v0, "valueAsLong":J
    if-eqz p2, :cond_2

    iget-boolean v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    cmp-long v2, v0, v9

    if-ltz v2, :cond_1

    cmp-long v2, v0, v13

    if-lez v2, :cond_2

    .line 3843
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v7, 0x1

    invoke-direct {v6, v2, v3, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3846
    :cond_2
    long-to-int v2, v0

    return v2

    .line 3838
    .end local v0    # "valueAsLong":J
    :pswitch_2
    move v0, v1

    .local v0, "tinyintVal":B
    move-wide v3, v15

    .local v3, "valueAsLong":J
    move v11, v1

    .local v11, "valueAsInt":I
    move v12, v1

    .line 3881
    .local v12, "asShort":S
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v6, v15, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v1

    .line 3883
    .end local v3    # "valueAsLong":J
    .local v1, "valueAsLong":J
    if-eqz p2, :cond_4

    iget-boolean v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_4

    .line 3884
    cmp-long v3, v1, v9

    if-ltz v3, :cond_3

    cmp-long v3, v1, v13

    if-lez v3, :cond_4

    .line 3885
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v7, 0x1

    invoke-direct {v6, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3889
    :cond_4
    long-to-int v3, v1

    return v3

    .line 3838
    .end local v0    # "tinyintVal":B
    .end local v1    # "valueAsLong":J
    .end local v11    # "valueAsInt":I
    .end local v12    # "asShort":S
    :pswitch_3
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v9, v15

    .local v9, "valueAsLong":J
    move v2, v1

    .line 3891
    .local v1, "asShort":S
    .local v2, "valueAsInt":I
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v6, v13}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v13

    .line 3893
    .restart local v13    # "valueAsDouble":D
    if-eqz p2, :cond_6

    iget-boolean v15, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v15, :cond_6

    .line 3894
    cmpg-double v15, v13, v11

    if-ltz v15, :cond_5

    cmpl-double v11, v13, v3

    if-lez v11, :cond_6

    .line 3895
    :cond_5
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v7, 0x1

    invoke-direct {v6, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3899
    :cond_6
    double-to-int v3, v13

    return v3

    .line 3838
    .end local v0    # "tinyintVal":B
    .end local v1    # "asShort":S
    .end local v2    # "valueAsInt":I
    .end local v9    # "valueAsLong":J
    .end local v13    # "valueAsDouble":D
    :pswitch_4
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v9, v15

    .restart local v9    # "valueAsLong":J
    move v2, v1

    .restart local v2    # "valueAsInt":I
    move-wide/from16 v13, v17

    .line 3901
    .restart local v1    # "asShort":S
    .restart local v13    # "valueAsDouble":D
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v6, v15}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v15

    float-to-double v13, v15

    .line 3903
    if-eqz p2, :cond_8

    iget-boolean v15, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v15, :cond_8

    .line 3904
    cmpg-double v15, v13, v11

    if-ltz v15, :cond_7

    cmpl-double v11, v13, v3

    if-lez v11, :cond_8

    .line 3905
    :cond_7
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v7, 0x1

    invoke-direct {v6, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3909
    :cond_8
    double-to-int v3, v13

    return v3

    .line 3838
    .end local v0    # "tinyintVal":B
    .end local v1    # "asShort":S
    .end local v2    # "valueAsInt":I
    .end local v9    # "valueAsLong":J
    .end local v13    # "valueAsDouble":D
    :pswitch_5
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v2, v15

    .line 3867
    .restart local v1    # "asShort":S
    .local v2, "valueAsLong":J
    iget-object v4, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v4, v7}, Lcom/mysql/jdbc/ResultSetRow;->getNativeInt(I)I

    move-result v4

    .line 3869
    .local v4, "valueAsInt":I
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v9

    if-nez v9, :cond_9

    .line 3870
    return v4

    .line 3873
    :cond_9
    int-to-long v9, v4

    if-ltz v4, :cond_a

    goto :goto_0

    :cond_a
    const-wide v11, 0x100000000L

    add-long/2addr v9, v11

    :goto_0
    move-wide v2, v9

    .line 3875
    if-eqz p2, :cond_b

    iget-boolean v9, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v9, :cond_b

    cmp-long v9, v2, v13

    if-lez v9, :cond_b

    .line 3876
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-direct {v6, v9, v10, v5}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3879
    :cond_b
    long-to-int v5, v2

    return v5

    .line 3838
    .end local v0    # "tinyintVal":B
    .end local v1    # "asShort":S
    .end local v2    # "valueAsLong":J
    .end local v4    # "valueAsInt":I
    :pswitch_6
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v2, v15

    .line 3857
    .restart local v2    # "valueAsLong":J
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v6, v4, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(IZ)S

    move-result v1

    .line 3859
    .restart local v1    # "asShort":S
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-eqz v4, :cond_d

    if-ltz v1, :cond_c

    goto :goto_1

    .line 3863
    :cond_c
    const/high16 v4, 0x10000

    add-int/2addr v4, v1

    return v4

    .line 3860
    :cond_d
    :goto_1
    return v1

    .line 3838
    .end local v0    # "tinyintVal":B
    .end local v1    # "asShort":S
    .end local v2    # "valueAsLong":J
    :pswitch_7
    move-wide v2, v15

    .line 3848
    .restart local v2    # "valueAsLong":J
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    .line 3850
    .restart local v0    # "tinyintVal":B
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_f

    if-ltz v0, :cond_e

    goto :goto_2

    .line 3854
    :cond_e
    add-int/lit16 v1, v0, 0x100

    return v1

    .line 3851
    :cond_f
    :goto_2
    return v0

    .line 3914
    .end local v0    # "tinyintVal":B
    .end local v2    # "valueAsLong":J
    .restart local v5    # "stringVal":Ljava/lang/String;
    .local v9, "tinyintVal":B
    .restart local v10    # "valueAsLong":J
    .local v12, "valueAsInt":I
    .restart local v13    # "valueAsDouble":D
    .restart local v15    # "asShort":S
    :cond_10
    move-object/from16 p1, v8

    move-object v8, v5

    .line 3920
    .end local v5    # "stringVal":Ljava/lang/String;
    .local v8, "stringVal":Ljava/lang/String;
    .restart local p1    # "f":Lcom/mysql/jdbc/Field;
    :goto_3
    add-int/lit8 v0, v7, 0x1

    invoke-direct {v6, v8, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getIntFromString(Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3936
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNativeLong(IZZ)J
    .locals 16
    .param p1, "columnIndex"    # I
    .param p2, "overflowCheck"    # Z
    .param p3, "expandUnsignedLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3940
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3941
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3943
    add-int/lit8 v7, p1, -0x1

    .line 3945
    .end local p1    # "columnIndex":I
    .local v7, "columnIndex":I
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3946
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3948
    return-wide v1

    .line 3951
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3953
    iget-object v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v8, v3, v7

    .line 3955
    .local v8, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v9, -0x3c20000000000000L    # -9.223372036854776E18

    const/4 v11, -0x5

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-wide v9, v1

    .local v9, "valueAsLong":J
    move-object v11, v12

    .local v11, "asBigInt":Ljava/math/BigInteger;
    move-wide v12, v13

    .local v12, "valueAsDouble":D
    move v14, v0

    .line 4019
    .local v14, "asInt":I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v15

    .line 4021
    .local v15, "stringVal":Ljava/lang/String;
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_d

    .line 4022
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v7

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const-string v1, "getLong()"

    move-object/from16 v0, p0

    move v2, v7

    move-object v3, v15

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    goto/16 :goto_2

    .line 3957
    .end local v9    # "valueAsLong":J
    .end local v11    # "asBigInt":Ljava/math/BigInteger;
    .end local v12    # "valueAsDouble":D
    .end local v14    # "asInt":I
    .end local v15    # "stringVal":Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v0, v7, 0x1

    invoke-direct {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    return-wide v0

    .line 3972
    :pswitch_2
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 3983
    .local v0, "asInt":I
    :pswitch_3
    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/ResultSetRow;->getNativeLong(I)J

    move-result-wide v1

    .line 3985
    .local v1, "valueAsLong":J
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_1

    goto :goto_0

    .line 3989
    :cond_1
    invoke-static {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 3991
    .local v3, "asBigInt":Ljava/math/BigInteger;
    if-eqz p2, :cond_3

    iget-boolean v4, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/math/BigInteger;

    const-wide v9, 0x7fffffffffffffffL

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_2

    new-instance v4, Ljava/math/BigInteger;

    const-wide/high16 v9, -0x8000000000000000L

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_3

    .line 3993
    :cond_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    invoke-direct {v6, v4, v5, v11}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3996
    :cond_3
    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getLongFromString(Ljava/lang/String;I)J

    move-result-wide v4

    return-wide v4

    .line 3986
    .end local v3    # "asBigInt":Ljava/math/BigInteger;
    :cond_4
    :goto_0
    return-wide v1

    .line 3955
    .end local v0    # "asInt":I
    :pswitch_4
    move-object v3, v12

    .line 3999
    .restart local v0    # "asInt":I
    .restart local v3    # "asBigInt":Ljava/math/BigInteger;
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v6, v12}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v12

    .line 4001
    .restart local v12    # "valueAsDouble":D
    if-eqz p2, :cond_6

    iget-boolean v14, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v14, :cond_6

    .line 4002
    cmpg-double v14, v12, v9

    if-ltz v14, :cond_5

    cmpl-double v9, v12, v4

    if-lez v9, :cond_6

    .line 4003
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    invoke-direct {v6, v4, v5, v11}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4007
    :cond_6
    double-to-long v4, v12

    return-wide v4

    .line 3955
    .end local v0    # "asInt":I
    .end local v3    # "asBigInt":Ljava/math/BigInteger;
    .end local v12    # "valueAsDouble":D
    :pswitch_5
    move-object v3, v12

    .restart local v3    # "asBigInt":Ljava/math/BigInteger;
    move-wide v12, v13

    .line 4009
    .restart local v0    # "asInt":I
    .restart local v12    # "valueAsDouble":D
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v6, v14}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v14

    float-to-double v12, v14

    .line 4011
    if-eqz p2, :cond_8

    iget-boolean v14, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v14, :cond_8

    .line 4012
    cmpg-double v14, v12, v9

    if-ltz v14, :cond_7

    cmpl-double v9, v12, v4

    if-lez v9, :cond_8

    .line 4013
    :cond_7
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v7, 0x1

    invoke-direct {v6, v4, v5, v11}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4017
    :cond_8
    double-to-long v4, v12

    return-wide v4

    .line 3975
    .end local v0    # "asInt":I
    .end local v1    # "valueAsLong":J
    .end local v3    # "asBigInt":Ljava/math/BigInteger;
    .end local v12    # "valueAsDouble":D
    :pswitch_6
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    .line 3977
    .restart local v0    # "asInt":I
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_a

    if-ltz v0, :cond_9

    goto :goto_1

    .line 3981
    :cond_9
    int-to-long v1, v0

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    return-wide v1

    .line 3978
    :cond_a
    :goto_1
    int-to-long v1, v0

    return-wide v1

    .line 3965
    .end local v0    # "asInt":I
    :pswitch_7
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3966
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 3969
    :cond_b
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 3959
    :pswitch_8
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3960
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 3963
    :cond_c
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 4027
    .restart local v9    # "valueAsLong":J
    .restart local v11    # "asBigInt":Ljava/math/BigInteger;
    .restart local v12    # "valueAsDouble":D
    .restart local v14    # "asInt":I
    .restart local v15    # "stringVal":Ljava/lang/String;
    :cond_d
    :goto_2
    add-int/lit8 v0, v7, 0x1

    invoke-direct {v6, v15, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLongFromString(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeRef(I)Ljava/sql/Ref;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4044
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getNativeShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4059
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(IZ)S

    move-result v0

    return v0
.end method

.method protected getNativeShort(IZ)S
    .locals 18
    .param p1, "columnIndex"    # I
    .param p2, "overflowCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4063
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4064
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4066
    add-int/lit8 v7, p1, -0x1

    .line 4068
    .end local p1    # "columnIndex":I
    .local v7, "columnIndex":I
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4069
    iput-boolean v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4071
    return v1

    .line 4074
    :cond_0
    iput-boolean v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4076
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v8, v0, v7

    .line 4078
    .local v8, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const-wide/16 v3, -0x8000

    const/16 v5, -0x8000

    const-wide/16 v9, 0x7fff

    const/16 v11, 0x7fff

    const/4 v12, 0x5

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v9, v1

    .local v9, "tinyintVal":B
    move-wide v10, v13

    .local v10, "valueAsLong":J
    const/4 v0, 0x0

    move v12, v0

    .local v12, "valueAsFloat":F
    move-object v13, v15

    .local v13, "asBigInt":Ljava/math/BigInteger;
    move-wide/from16 v14, v16

    .local v14, "valueAsDouble":D
    move/from16 v16, v1

    .line 4175
    .local v16, "asShort":S
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v5

    .line 4177
    .local v5, "stringVal":Ljava/lang/String;
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_15

    .line 4178
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v7

    const/4 v0, 0x6

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const-string v1, "getShort()"

    move-object/from16 v0, p0

    move v2, v7

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 p1, v8

    move-object v8, v5

    .end local v5    # "stringVal":Ljava/lang/String;
    .local v8, "stringVal":Ljava/lang/String;
    .local p1, "f":Lcom/mysql/jdbc/Field;
    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    goto/16 :goto_1

    .line 4080
    .end local v9    # "tinyintVal":B
    .end local v10    # "valueAsLong":J
    .end local v12    # "valueAsFloat":F
    .end local v13    # "asBigInt":Ljava/math/BigInteger;
    .end local v14    # "valueAsDouble":D
    .end local v16    # "asShort":S
    .end local p1    # "f":Lcom/mysql/jdbc/Field;
    .local v8, "f":Lcom/mysql/jdbc/Field;
    :pswitch_1
    add-int/lit8 v0, v7, 0x1

    invoke-direct {v6, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 4082
    .local v0, "valueAsLong":J
    if-eqz p2, :cond_2

    iget-boolean v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    cmp-long v2, v0, v9

    if-lez v2, :cond_2

    .line 4083
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v7, 0x1

    invoke-direct {v6, v2, v3, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4086
    :cond_2
    long-to-int v2, v0

    int-to-short v2, v2

    return v2

    .line 4078
    .end local v0    # "valueAsLong":J
    :pswitch_2
    move v0, v1

    .local v0, "tinyintVal":B
    .local v13, "valueAsLong":J
    move v2, v1

    .line 4133
    .local v2, "asShort":S
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v6, v15, v1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v13

    .line 4135
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4136
    if-eqz p2, :cond_4

    iget-boolean v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_4

    .line 4137
    cmp-long v1, v13, v3

    if-ltz v1, :cond_3

    cmp-long v1, v13, v9

    if-lez v1, :cond_4

    .line 4138
    :cond_3
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v7, 0x1

    invoke-direct {v6, v1, v3, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4142
    :cond_4
    long-to-int v1, v13

    int-to-short v1, v1

    return v1

    .line 4145
    :cond_5
    invoke-static {v13, v14}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 4147
    .local v1, "asBigInt":Ljava/math/BigInteger;
    if-eqz p2, :cond_7

    iget-boolean v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/math/BigInteger;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_6

    new-instance v3, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_7

    .line 4149
    :cond_6
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v7, 0x1

    invoke-direct {v6, v3, v4, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4152
    :cond_7
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v7, 0x1

    invoke-direct {v6, v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getIntFromString(Ljava/lang/String;I)I

    move-result v3

    int-to-short v3, v3

    return v3

    .line 4078
    .end local v0    # "tinyintVal":B
    .end local v1    # "asBigInt":Ljava/math/BigInteger;
    .end local v2    # "asShort":S
    .end local v13    # "valueAsLong":J
    :pswitch_3
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v2, v13

    .local v2, "valueAsLong":J
    move-object v4, v15

    .line 4155
    .local v1, "asShort":S
    .local v4, "asBigInt":Ljava/math/BigInteger;
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v9

    .line 4157
    .local v9, "valueAsDouble":D
    if-eqz p2, :cond_9

    iget-boolean v5, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v5, :cond_9

    .line 4158
    const-wide/high16 v13, -0x3f20000000000000L    # -32768.0

    cmpg-double v5, v9, v13

    if-ltz v5, :cond_8

    const-wide v13, 0x40dfffc000000000L    # 32767.0

    cmpl-double v5, v9, v13

    if-lez v5, :cond_9

    .line 4159
    :cond_8
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v7, 0x1

    invoke-direct {v6, v5, v11, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4163
    :cond_9
    double-to-int v5, v9

    int-to-short v5, v5

    return v5

    .line 4078
    .end local v0    # "tinyintVal":B
    .end local v1    # "asShort":S
    .end local v2    # "valueAsLong":J
    .end local v4    # "asBigInt":Ljava/math/BigInteger;
    .end local v9    # "valueAsDouble":D
    :pswitch_4
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v2, v13

    .restart local v2    # "valueAsLong":J
    move-object v4, v15

    .restart local v4    # "asBigInt":Ljava/math/BigInteger;
    move-wide/from16 v9, v16

    .line 4165
    .restart local v1    # "asShort":S
    .restart local v9    # "valueAsDouble":D
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v5

    .line 4167
    .local v5, "valueAsFloat":F
    if-eqz p2, :cond_b

    iget-boolean v11, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v11, :cond_b

    .line 4168
    const/high16 v11, -0x39000000    # -32768.0f

    cmpg-float v11, v5, v11

    if-ltz v11, :cond_a

    const v11, 0x46fffe00    # 32767.0f

    cmpl-float v11, v5, v11

    if-lez v11, :cond_b

    .line 4169
    :cond_a
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v13, v7, 0x1

    invoke-direct {v6, v11, v13, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4173
    :cond_b
    float-to-int v11, v5

    int-to-short v11, v11

    return v11

    .line 4078
    .end local v0    # "tinyintVal":B
    .end local v1    # "asShort":S
    .end local v2    # "valueAsLong":J
    .end local v4    # "asBigInt":Ljava/math/BigInteger;
    .end local v5    # "valueAsFloat":F
    .end local v9    # "valueAsDouble":D
    :pswitch_5
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v3, v13

    .local v3, "valueAsLong":J
    move v13, v1

    .local v13, "valueAsInt":I
    move v14, v1

    .line 4114
    .local v14, "asShort":S
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v15

    if-nez v15, :cond_f

    .line 4115
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v6, v2, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v1

    .line 4117
    .end local v13    # "valueAsInt":I
    .local v1, "valueAsInt":I
    if-eqz p2, :cond_c

    iget-boolean v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_c

    if-gt v1, v11, :cond_d

    :cond_c
    if-ge v1, v5, :cond_e

    .line 4118
    :cond_d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v7, 0x1

    invoke-direct {v6, v2, v5, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4121
    :cond_e
    int-to-short v2, v1

    return v2

    .line 4124
    .end local v1    # "valueAsInt":I
    :cond_f
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v6, v5, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v1

    .line 4126
    .end local v3    # "valueAsLong":J
    .local v1, "valueAsLong":J
    if-eqz p2, :cond_10

    iget-boolean v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_10

    cmp-long v3, v1, v9

    if-lez v3, :cond_10

    .line 4127
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v7, 0x1

    invoke-direct {v6, v3, v4, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4130
    :cond_10
    long-to-int v3, v1

    int-to-short v3, v3

    return v3

    .line 4078
    .end local v0    # "tinyintVal":B
    .end local v1    # "valueAsLong":J
    .end local v14    # "asShort":S
    :pswitch_6
    move v0, v1

    .restart local v0    # "tinyintVal":B
    move-wide v1, v13

    .line 4099
    .restart local v1    # "valueAsLong":J
    iget-object v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v7}, Lcom/mysql/jdbc/ResultSetRow;->getNativeShort(I)S

    move-result v3

    .line 4101
    .local v3, "asShort":S
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_11

    .line 4102
    return v3

    .line 4105
    :cond_11
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 4107
    .local v4, "valueAsInt":I
    if-eqz p2, :cond_12

    iget-boolean v5, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v5, :cond_12

    if-le v4, v11, :cond_12

    .line 4108
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v9, v7, 0x1

    invoke-direct {v6, v5, v9, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4111
    :cond_12
    int-to-short v5, v4

    return v5

    .line 4078
    .end local v0    # "tinyintVal":B
    .end local v1    # "valueAsLong":J
    .end local v3    # "asShort":S
    .end local v4    # "valueAsInt":I
    :pswitch_7
    move-wide v2, v13

    .line 4089
    .restart local v2    # "valueAsLong":J
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    .line 4091
    .restart local v0    # "tinyintVal":B
    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_14

    if-ltz v0, :cond_13

    goto :goto_0

    .line 4095
    :cond_13
    add-int/lit16 v1, v0, 0x100

    int-to-short v1, v1

    return v1

    .line 4092
    :cond_14
    :goto_0
    int-to-short v1, v0

    return v1

    .line 4177
    .end local v0    # "tinyintVal":B
    .end local v2    # "valueAsLong":J
    .local v5, "stringVal":Ljava/lang/String;
    .local v9, "tinyintVal":B
    .restart local v10    # "valueAsLong":J
    .restart local v12    # "valueAsFloat":F
    .local v13, "asBigInt":Ljava/math/BigInteger;
    .local v14, "valueAsDouble":D
    .restart local v16    # "asShort":S
    :cond_15
    move-object/from16 p1, v8

    move-object v8, v5

    .line 4183
    .end local v5    # "stringVal":Ljava/lang/String;
    .local v8, "stringVal":Ljava/lang/String;
    .restart local p1    # "f":Lcom/mysql/jdbc/Field;
    :goto_1
    add-int/lit8 v0, v7, 0x1

    invoke-direct {v6, v8, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getShortFromString(Ljava/lang/String;I)S

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeString(I)Ljava/lang/String;
    .locals 11
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4199
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4200
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4202
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_3

    .line 4207
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4210
    const/4 v0, 0x0

    return-object v0

    .line 4213
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4215
    const/4 v0, 0x0

    .line 4217
    .local v0, "stringVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 4220
    .local v1, "field":Lcom/mysql/jdbc/Field;
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeConvertToString(ILcom/mysql/jdbc/Field;)Ljava/lang/String;

    move-result-object v0

    .line 4221
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    .line 4223
    .local v2, "mysqlType":I
    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isZeroFill()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 4224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4226
    .local v3, "origLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4228
    .local v4, "zeroFillBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v5

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 4230
    .local v5, "numZeros":J
    const-wide/16 v7, 0x0

    .local v7, "i":J
    :goto_0
    cmp-long v9, v7, v5

    if-gez v9, :cond_1

    .line 4231
    const/16 v9, 0x30

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4230
    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    goto :goto_0

    .line 4234
    .end local v7    # "i":J
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4239
    .end local v3    # "origLength":I
    .end local v4    # "zeroFillBuf":Ljava/lang/StringBuilder;
    .end local v5    # "numZeros":J
    :cond_2
    return-object v0

    .line 4203
    .end local v0    # "stringVal":Ljava/lang/String;
    .end local v1    # "field":Lcom/mysql/jdbc/Field;
    .end local v2    # "mysqlType":I
    :cond_3
    const-string v0, "ResultSet.Query_generated_no_fields_for_ResultSet_133"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1002"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method getNativeTimeViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 7
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4277
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    .line 4278
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v4, v0, v1

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0xb

    aput v1, v5, v0

    const-string v1, "getTime()"

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4282
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v6

    .line 4284
    .local v6, "strTime":Ljava/lang/String;
    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method getNativeTimestampViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 7
    .param p1, "columnIndex"    # I
    .param p2, "targetCalendar"    # Ljava/util/Calendar;
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "rollForward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4327
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    .line 4328
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v4, v0, v1

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const-string v1, "getTimestamp()"

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v6

    .line 4334
    .local v6, "strTimestamp":Ljava/lang/String;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v6

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x7
        0xc
    .end array-data
.end method

.method protected getNativeURL(I)Ljava/net/URL;
    .locals 5
    .param p1, "colIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4368
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4370
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4371
    const/4 v1, 0x0

    return-object v1

    .line 4375
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4376
    :catch_0
    move-exception v1

    .line 4377
    .local v1, "mfe":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Malformed_URL____141"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method protected getNativeUnicodeStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4359
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4361
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    monitor-enter p0

    .line 4386
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4386
    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 9
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4410
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4411
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4413
    add-int/lit8 v0, p1, -0x1

    .line 4415
    .local v0, "columnIndexMinusOne":I
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4416
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4418
    return-object v3

    .line 4421
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4424
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    .line 4426
    .local v4, "field":Lcom/mysql/jdbc/Field;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v5

    const-string v6, "S1009"

    const/4 v7, 0x2

    sparse-switch v5, :sswitch_data_0

    move-object v1, v3

    .line 4544
    .local v1, "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4426
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_0
    move-object v1, v3

    .line 4541
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v2

    return-object v2

    .line 4426
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_1
    move-object v1, v3

    .line 4538
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v2

    return-object v2

    .line 4426
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_2
    move-object v1, v3

    .line 4531
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4532
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    return-object v2

    .line 4535
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v2

    return-object v2

    .line 4434
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 4426
    :sswitch_4
    move-object v1, v3

    .line 4502
    .restart local v1    # "stringVal":Ljava/lang/String;
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 4426
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_5
    move-object v1, v3

    .line 4506
    .restart local v1    # "stringVal":Ljava/lang/String;
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 4445
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4449
    :sswitch_7
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 4453
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 4450
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4426
    :sswitch_8
    move-object v5, v3

    .line 4477
    .local v5, "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4481
    if-eqz v5, :cond_5

    .line 4482
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 4483
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    move-object v1, v2

    .line 4485
    .local v1, "val":Ljava/math/BigDecimal;
    return-object v1

    .line 4489
    .end local v1    # "val":Ljava/math/BigDecimal;
    :cond_4
    :try_start_0
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    .line 4494
    .restart local v1    # "val":Ljava/math/BigDecimal;
    nop

    .line 4496
    return-object v1

    .line 4490
    .end local v1    # "val":Ljava/math/BigDecimal;
    :catch_0
    move-exception v8

    .line 4491
    .local v3, "val":Ljava/math/BigDecimal;
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const-string v1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {v1, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4499
    .end local v3    # "val":Ljava/math/BigDecimal;
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_5
    return-object v3

    .line 4426
    .end local v5    # "stringVal":Ljava/lang/String;
    :sswitch_9
    move-object v1, v3

    .line 4510
    .local v1, "stringVal":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4511
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4514
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v2

    return-object v2

    .line 4426
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_a
    move-object v1, v3

    .line 4516
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4517
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4520
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v2

    return-object v2

    .line 4426
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_b
    move-object v1, v3

    .line 4525
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_8

    .line 4526
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v2

    return-object v2

    .line 4528
    :cond_8
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectDeserializingIfNeeded(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 4457
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v5

    if-nez v5, :cond_9

    .line 4458
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 4461
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4463
    .restart local v5    # "stringVal":Ljava/lang/String;
    if-nez v5, :cond_a

    .line 4464
    return-object v3

    .line 4468
    :cond_a
    :try_start_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 4469
    :catch_1
    move-exception v3

    .line 4470
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v5, v7, v2

    const-string v1, "ResultSet.Bad_format_for_BigInteger"

    invoke-static {v1, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4437
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "stringVal":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4438
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4441
    :cond_b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4428
    :sswitch_e
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_c

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v1

    if-nez v1, :cond_c

    .line 4429
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectDeserializingIfNeeded(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 4431
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_e
        -0x6 -> :sswitch_d
        -0x5 -> :sswitch_c
        -0x4 -> :sswitch_b
        -0x3 -> :sswitch_b
        -0x2 -> :sswitch_b
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0xc -> :sswitch_9
        0x10 -> :sswitch_3
        0x5b -> :sswitch_2
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    .line 4588
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "S1009"

    if-eqz p2, :cond_16

    .line 4592
    const-class v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4593
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4594
    :cond_0
    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4595
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4596
    :cond_1
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 4598
    :cond_2
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 4600
    :cond_3
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 4602
    :cond_4
    const-class v1, Ljava/lang/Float;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    .line 4604
    :cond_5
    const-class v1, Ljava/lang/Double;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 4606
    :cond_6
    const-class v1, [B

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4607
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 4608
    :cond_7
    const-class v1, Ljava/sql/Date;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4609
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 4610
    :cond_8
    const-class v1, Ljava/sql/Time;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4611
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 4612
    :cond_9
    const-class v1, Ljava/sql/Timestamp;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4613
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 4614
    :cond_a
    const-class v1, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4615
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object v0

    return-object v0

    .line 4616
    :cond_b
    const-class v1, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4617
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object v0

    return-object v0

    .line 4618
    :cond_c
    const-class v1, Ljava/sql/Array;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4619
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object v0

    return-object v0

    .line 4620
    :cond_d
    const-class v1, Ljava/sql/Ref;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4621
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    return-object v0

    .line 4622
    :cond_e
    const-class v1, Ljava/net/URL;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4623
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getURL(I)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 4625
    :cond_f
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v1

    const-string v2, "Conversion not supported for type "

    if-eqz v1, :cond_10

    .line 4627
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4628
    :catch_0
    move-exception v1

    .line 4629
    .local v1, "cce":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 4631
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4633
    throw v0

    .line 4637
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4605
    :cond_11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 4603
    :cond_12
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 4601
    :cond_13
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 4599
    :cond_14
    :goto_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 4597
    :cond_15
    :goto_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 4589
    :cond_16
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Type parameter can not be null"

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4663
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4687
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "columnLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4644
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "colName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4706
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStoredProc(II)Ljava/lang/Object;
    .locals 8
    .param p1, "columnIndex"    # I
    .param p2, "desiredSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4710
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4711
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4713
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 4715
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4716
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4718
    return-object v2

    .line 4721
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4724
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    .line 4726
    .local v4, "field":Lcom/mysql/jdbc/Field;
    sparse-switch p2, :sswitch_data_0

    move-object v1, v2

    .line 4818
    .local v1, "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_0
    move-object v1, v2

    .line 4815
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v2

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_1
    move-object v1, v2

    .line 4812
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v2

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_2
    move-object v1, v2

    .line 4805
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4806
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    return-object v2

    .line 4809
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object v2

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_3
    move-object v1, v2

    .line 4792
    .restart local v1    # "stringVal":Ljava/lang/String;
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_4
    move-object v1, v2

    .line 4781
    .restart local v1    # "stringVal":Ljava/lang/String;
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_5
    move-object v1, v2

    .line 4785
    .restart local v1    # "stringVal":Ljava/lang/String;
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getRunningCTS13()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4786
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v3

    float-to-double v5, v3

    invoke-direct {v2, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 4788
    :cond_2
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 4736
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4740
    :sswitch_7
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 4744
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 4741
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4757
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4760
    .local v5, "stringVal":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 4761
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 4762
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 4764
    .local v1, "val":Ljava/math/BigDecimal;
    return-object v1

    .line 4768
    .end local v1    # "val":Ljava/math/BigDecimal;
    :cond_5
    :try_start_0
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 4773
    .restart local v1    # "val":Ljava/math/BigDecimal;
    nop

    .line 4775
    return-object v1

    .line 4769
    .end local v1    # "val":Ljava/math/BigDecimal;
    :catch_0
    move-exception v6

    .line 4770
    .local v2, "val":Ljava/math/BigDecimal;
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const-string v1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {v1, v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v7, "S1009"

    invoke-static {v1, v7, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4778
    .end local v2    # "val":Ljava/math/BigDecimal;
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    return-object v2

    .line 4726
    .end local v5    # "stringVal":Ljava/lang/String;
    :sswitch_9
    move-object v1, v2

    .line 4796
    .local v1, "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_a
    move-object v1, v2

    .line 4798
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4726
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_b
    move-object v1, v2

    .line 4802
    .restart local v1    # "stringVal":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v2

    return-object v2

    .line 4748
    .end local v1    # "stringVal":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4749
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4752
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 4733
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 4730
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_e
        -0x6 -> :sswitch_d
        -0x5 -> :sswitch_c
        -0x4 -> :sswitch_b
        -0x3 -> :sswitch_b
        -0x2 -> :sswitch_b
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xc -> :sswitch_9
        0x10 -> :sswitch_e
        0x5b -> :sswitch_2
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .param p3, "desiredSqlType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4823
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStoredProc(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "desiredSqlType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4827
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStoredProc(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;
    .locals 1
    .param p1, "colName"    # Ljava/lang/String;
    .param p3, "desiredSqlType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4831
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4847
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4848
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 1
    .param p1, "colName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4864
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object v0

    return-object v0
.end method

.method public getRow()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4880
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4882
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v0

    .line 4883
    .local v0, "currentRowNumber":I
    const/4 v1, 0x0

    .line 4886
    .local v1, "row":I
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isDynamic()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4887
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4890
    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 4888
    :cond_1
    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 4894
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 4897
    :goto_1
    return v1
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .line 4907
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4908
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 4909
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4910
    :catch_0
    move-exception v0

    .line 4911
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getShort(I)S
    .locals 10
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4955
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4956
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4958
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_c

    .line 4959
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4961
    return v1

    .line 4963
    :cond_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4965
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    .line 4966
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 4968
    .local v0, "valueAsLong":J
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x8000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x7fff

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 4969
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4972
    :cond_2
    long-to-int v2, v0

    int-to-short v2, v2

    return v2

    .line 4975
    .end local v0    # "valueAsLong":J
    :cond_3
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    const-string v2, "S1009"

    const-string v3, "\'"

    const-string v4, "ResultSet.Invalid_value_for_getShort()_-____96"

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 4976
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 4978
    .local v0, "shortAsBytes":[B
    array-length v6, v0

    if-nez v6, :cond_4

    .line 4979
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    int-to-short v1, v1

    return v1

    .line 4982
    :cond_4
    const/4 v6, 0x0

    .line 4984
    .local v6, "needsFullParse":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_7

    .line 4985
    aget-byte v8, v0, v7

    int-to-char v8, v8

    const/16 v9, 0x65

    if-eq v8, v9, :cond_6

    aget-byte v8, v0, v7

    int-to-char v8, v8

    const/16 v9, 0x45

    if-ne v8, v9, :cond_5

    goto :goto_1

    .line 4984
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4986
    :cond_6
    :goto_1
    const/4 v6, 0x1

    .line 4992
    .end local v7    # "i":I
    :cond_7
    if-nez v6, :cond_8

    .line 4994
    :try_start_0
    invoke-direct {p0, p1, v0, v5}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4995
    :catch_0
    move-exception v1

    .line 4997
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    .line 4998
    :catch_1
    move-exception v5

    .line 5002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 5009
    .end local v0    # "shortAsBytes":[B
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "needsFullParse":Z
    :cond_8
    const/4 v0, 0x0

    .line 5011
    .local v0, "val":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 5012
    if-nez v0, :cond_9

    .line 5013
    return v1

    .line 5016
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 5017
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    int-to-short v1, v1

    return v1

    .line 5020
    :cond_a
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_b

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_b

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_b

    .line 5021
    invoke-direct {p0, p1, v5, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v1

    return v1

    .line 5025
    :cond_b
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return v1

    .line 5027
    :catch_2
    move-exception v1

    .line 5029
    .restart local v1    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return v2

    .line 5030
    :catch_3
    move-exception v5

    .line 5034
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 5039
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5048
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5091
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5092
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 5093
    monitor-exit v0

    return-object v1

    .line 5096
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    monitor-exit v0

    return-object v1

    .line 5097
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5099
    :catch_0
    move-exception v0

    .line 5100
    .local v0, "sqlEx":Ljava/sql/SQLException;
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-eqz v1, :cond_2

    .line 5106
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    if-eqz v1, :cond_1

    .line 5107
    return-object v1

    .line 5110
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    return-object v1

    .line 5101
    :cond_2
    const-string v1, "Operation not allowed on closed ResultSet. Statements can be retained over result set closure by setting the connection property \"retainStatementAfterResultSetClose\" to \"true\"."

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5127
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    .line 5129
    .local v0, "stringVal":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5130
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 5132
    .local v1, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    .line 5133
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result v2

    div-int/2addr v3, v2

    .line 5135
    .local v3, "fieldLength":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5137
    .local v2, "currentLength":I
    if-ge v2, v3, :cond_0

    .line 5138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5139
    .local v4, "paddedBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5141
    sub-int v5, v3, v2

    .line 5143
    .local v5, "difference":I
    sget-object v6, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 5145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5150
    .end local v1    # "f":Lcom/mysql/jdbc/Field;
    .end local v2    # "currentLength":I
    .end local v3    # "fieldLength":I
    .end local v4    # "paddedBuf":Ljava/lang/StringBuilder;
    .end local v5    # "difference":I
    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5166
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStringInternal(IZ)Ljava/lang/String;
    .locals 17
    .param p1, "columnIndex"    # I
    .param p2, "checkDateTypes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5203
    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_d

    .line 5204
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5205
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5207
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_c

    .line 5214
    add-int/lit8 v8, v7, -0x1

    .line 5216
    .local v8, "internalColumnIndex":I
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 5217
    iput-boolean v9, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5219
    return-object v10

    .line 5222
    :cond_0
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5224
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v12, v0, v8

    .line 5226
    .local v12, "metadata":Lcom/mysql/jdbc/Field;
    const/4 v0, 0x0

    .line 5228
    .local v0, "stringVal":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 5229
    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5230
    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    .line 5232
    .local v1, "value":[B
    array-length v2, v1

    if-nez v2, :cond_1

    .line 5233
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5236
    :cond_1
    aget-byte v2, v1, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5239
    .end local v1    # "value":[B
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5242
    :cond_3
    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getCollationIndex()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_4

    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v13, v1

    .line 5245
    .local v13, "encoding":Ljava/lang/String;
    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v2, v6, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v8, v13, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v14

    .line 5251
    .end local v0    # "stringVal":Ljava/lang/String;
    .local v14, "stringVal":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 5252
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5253
    return-object v14

    .line 5256
    :cond_5
    invoke-direct {v6, v14, v7, v10}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    .line 5258
    .local v0, "dt":Ljava/sql/Date;
    if-nez v0, :cond_6

    .line 5259
    iput-boolean v9, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5261
    return-object v10

    .line 5264
    :cond_6
    iput-boolean v11, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5266
    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5271
    .end local v0    # "dt":Ljava/sql/Date;
    :cond_7
    if-eqz p2, :cond_b

    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5272
    invoke-virtual {v12}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v15, v10

    .local v15, "dt":Ljava/sql/Date;
    move-object/from16 v16, v10

    .line 5299
    .local v16, "tm":Ljava/sql/Time;
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    .line 5301
    .local v0, "ts":Ljava/sql/Timestamp;
    if-nez v0, :cond_8

    .line 5302
    iput-boolean v9, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5304
    return-object v10

    .line 5307
    :cond_8
    iput-boolean v11, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5309
    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5274
    .end local v0    # "ts":Ljava/sql/Timestamp;
    .end local v15    # "dt":Ljava/sql/Date;
    .end local v16    # "tm":Ljava/sql/Time;
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    .line 5276
    .local v0, "tm":Ljava/sql/Time;
    if-nez v0, :cond_9

    .line 5277
    iput-boolean v9, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5279
    return-object v10

    .line 5282
    :cond_9
    iput-boolean v11, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5284
    invoke-virtual {v0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5272
    .end local v0    # "tm":Ljava/sql/Time;
    :pswitch_2
    move-object v0, v10

    .line 5287
    .restart local v0    # "tm":Ljava/sql/Time;
    invoke-direct {v6, v14, v7, v10}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    .line 5289
    .local v1, "dt":Ljava/sql/Date;
    if-nez v1, :cond_a

    .line 5290
    iput-boolean v9, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5292
    return-object v10

    .line 5295
    :cond_a
    iput-boolean v11, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5297
    invoke-virtual {v1}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5315
    .end local v0    # "tm":Ljava/sql/Time;
    .end local v1    # "dt":Ljava/sql/Date;
    :cond_b
    :goto_1
    return-object v14

    .line 5208
    .end local v8    # "internalColumnIndex":I
    .end local v12    # "metadata":Lcom/mysql/jdbc/Field;
    .end local v13    # "encoding":Ljava/lang/String;
    .end local v14    # "stringVal":Ljava/lang/String;
    :cond_c
    const-string v0, "ResultSet.Query_generated_no_fields_for_ResultSet_99"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1002"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5318
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5333
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5352
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5367
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5386
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5581
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5601
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5610
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5630
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5937
    iget v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    return v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 5
    .param p1, "colIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5993
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5995
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5996
    const/4 v1, 0x0

    return-object v1

    .line 6000
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 6001
    :catch_0
    move-exception v1

    .line 6002
    .local v1, "mfe":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Malformed_URL____104"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "colName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6011
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6013
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 6014
    const/4 v1, 0x0

    return-object v1

    .line 6018
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 6019
    :catch_0
    move-exception v1

    .line 6020
    .local v1, "mfe":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Malformed_URL____107"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5960
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 5961
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5963
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 5966
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5978
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getUnicodeStream(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateCount()J
    .locals 2

    .line 5982
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    return-wide v0
.end method

.method public getUpdateID()J
    .locals 2

    .line 5986
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    return-wide v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6045
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6046
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v0

    return-object v1

    .line 6047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .locals 1
    .param p1, "cachedMetaData"    # Lcom/mysql/jdbc/CachedResultSetMetaData;

    .line 894
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 895
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 896
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 898
    return-void
.end method

.method public initializeWithMetadata()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/RowData;->setMetadata([Lcom/mysql/jdbc/Field;)V

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 454
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 456
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    .line 457
    sget v1, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfResultSetsCreated()V

    .line 463
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 465
    .local v1, "tableNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 466
    aget-object v3, v3, v2

    .line 468
    .local v3, "f":Lcom/mysql/jdbc/Field;
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "tableName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 471
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 474
    :cond_1
    if-eqz v4, :cond_3

    .line 475
    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 480
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v3    # "f":Lcom/mysql/jdbc/Field;
    .end local v4    # "tableName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 484
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->reportNumberOfTablesAccessed(I)V

    .line 486
    .end local v1    # "tableNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6061
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public isAfterLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6078
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6079
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v1

    .line 6081
    .local v1, "b":Z
    monitor-exit v0

    return v1

    .line 6082
    .end local v1    # "b":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBeforeFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6099
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6100
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 6101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6693
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6117
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6118
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isFirst()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 6119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6136
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6137
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isLast()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 6138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public last()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6193
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6195
    const/4 v1, 0x1

    .line 6197
    .local v1, "b":Z
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 6198
    const/4 v1, 0x0

    goto :goto_0

    .line 6201
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6202
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6205
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v2, :cond_2

    .line 6206
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6209
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_3

    .line 6210
    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6213
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->beforeLast()V

    .line 6214
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6217
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6219
    monitor-exit v0

    return v1

    .line 6220
    .end local v1    # "b":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveToCurrentRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6241
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6261
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public next()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6279
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6281
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6282
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6285
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 6286
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6291
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6296
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_2

    .line 6297
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6300
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 6301
    const/4 v1, 0x0

    .local v1, "b":Z
    goto :goto_0

    .line 6303
    .end local v1    # "b":Z
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6305
    if-nez v1, :cond_4

    .line 6306
    const/4 v1, 0x0

    .restart local v1    # "b":Z
    goto :goto_0

    .line 6308
    .end local v1    # "b":Z
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->clearWarnings()V

    .line 6310
    const/4 v1, 0x1

    .line 6315
    .restart local v1    # "b":Z
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6317
    monitor-exit v0

    return v1

    .line 6292
    .end local v1    # "b":Z
    :cond_5
    const-string v1, "ResultSet.ResultSet_is_from_UPDATE._No_Data_115"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 6318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .locals 1
    .param p1, "cachedMetaData"    # Lcom/mysql/jdbc/CachedResultSetMetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 888
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    .line 889
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    .line 890
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->metadata:Ljava/sql/ResultSetMetaData;

    .line 891
    return-void
.end method

.method public prev()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6508
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6510
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v1

    .line 6512
    .local v1, "rowIndex":I
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_0

    .line 6513
    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6516
    :cond_0
    const/4 v2, 0x1

    .line 6518
    .local v2, "b":Z
    add-int/lit8 v3, v1, -0x1

    if-ltz v3, :cond_1

    .line 6519
    add-int/lit8 v1, v1, -0x1

    .line 6520
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 6521
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6523
    const/4 v2, 0x1

    goto :goto_0

    .line 6524
    :cond_1
    add-int/lit8 v3, v1, -0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 6525
    add-int/lit8 v1, v1, -0x1

    .line 6526
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 6527
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6529
    const/4 v2, 0x0

    goto :goto_0

    .line 6531
    :cond_2
    const/4 v2, 0x0

    .line 6534
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6536
    monitor-exit v0

    return v2

    .line 6537
    .end local v1    # "rowIndex":I
    .end local v2    # "b":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public previous()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6558
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6559
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6560
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6563
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 6564
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6567
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->prev()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 6568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public realClose(Z)V
    .locals 17
    .param p1, "calledExplicitly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6582
    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 6584
    .local v11, "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    if-nez v11, :cond_0

    .line 6585
    return-void

    .line 6588
    :cond_0
    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 6591
    :try_start_0
    iget-boolean v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    if-eqz v0, :cond_1

    .line 6592
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 6596
    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_1
    iget-boolean v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_8

    .line 6598
    if-nez p1, :cond_2

    .line 6599
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "ResultSet.ResultSet_implicitly_closed_by_driver"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 6603
    :cond_2
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    instance-of v1, v0, Lcom/mysql/jdbc/RowDataStatic;

    if-eqz v1, :cond_4

    .line 6604
    const/4 v9, 0x2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 6605
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "ResultSet.Too_Large_Result_Set"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v9, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v9}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v13

    iget-object v9, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v14

    invoke-static {v0, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    const/4 v0, 0x2

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 6604
    :cond_3
    const/4 v0, 0x2

    .line 6610
    :goto_0
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isLast()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6611
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "ResultSet.Possible_incomplete_traversal_of_result_set"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getRow()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v13

    iget-object v9, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v9}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v14

    invoke-static {v5, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V

    .line 6617
    :cond_4
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_8

    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    array-length v1, v1

    if-lez v1, :cond_8

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->wasEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 6618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6619
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v10, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 6620
    aget-boolean v2, v2, v1

    if-nez v2, :cond_6

    .line 6621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 6622
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6624
    :cond_5
    iget-object v2, v10, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6619
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6628
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 6629
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const-wide/16 v6, 0x0

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "ResultSet.The_following_columns_were_never_referenced"

    new-array v9, v14, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v13

    invoke-static {v5, v9}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6635
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_8
    nop

    .line 6687
    :try_start_2
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 6637
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/StatementImpl;->removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 6640
    :cond_9
    const/4 v1, 0x0

    .line 6642
    .local v1, "exceptionDuringClose":Ljava/sql/SQLException;
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_a

    .line 6644
    :try_start_3
    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6647
    goto :goto_2

    .line 6645
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 6646
    .local v0, "sqlEx":Ljava/sql/SQLException;
    move-object v1, v0

    .line 6650
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_a
    :goto_2
    :try_start_4
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_c

    .line 6652
    :try_start_5
    invoke-virtual {v0, v14, v13}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6659
    goto :goto_3

    .line 6653
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 6654
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    if-eqz v1, :cond_b

    .line 6655
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    goto :goto_3

    .line 6657
    :cond_b
    move-object v1, v0

    .line 6662
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_c
    :goto_3
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 6663
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 6664
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 6665
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 6666
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 6667
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 6669
    iget-boolean v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v0, :cond_d

    .line 6670
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6673
    :cond_d
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 6674
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6675
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6676
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 6677
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 6678
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 6680
    iput-boolean v14, v10, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 6682
    if-nez v1, :cond_e

    .line 6685
    .end local v1    # "exceptionDuringClose":Ljava/sql/SQLException;
    nop

    .line 6686
    monitor-exit v12

    .line 6687
    return-void

    .line 6683
    .restart local v1    # "exceptionDuringClose":Ljava/sql/SQLException;
    :cond_e
    nop

    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "calledExplicitly":Z
    throw v1

    .line 6636
    .end local v1    # "exceptionDuringClose":Ljava/sql/SQLException;
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "calledExplicitly":Z
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 6685
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 6637
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/StatementImpl;->removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 6640
    :cond_f
    const/4 v2, 0x0

    .line 6642
    .local v2, "exceptionDuringClose":Ljava/sql/SQLException;
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_10

    .line 6644
    :try_start_7
    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 6647
    goto :goto_4

    .line 6645
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 6646
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v2, v0

    .line 6650
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_10
    :goto_4
    :try_start_8
    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_12

    .line 6652
    :try_start_9
    invoke-virtual {v0, v14, v13}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 6659
    goto :goto_5

    .line 6653
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 6654
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    if-eqz v2, :cond_11

    .line 6655
    :try_start_a
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    goto :goto_5

    .line 6657
    :cond_11
    move-object v2, v0

    .line 6662
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_12
    :goto_5
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 6663
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 6664
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 6665
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 6666
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 6667
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 6669
    iget-boolean v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v0, :cond_13

    .line 6670
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6673
    :cond_13
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 6674
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6675
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6676
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 6677
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 6678
    iput-object v15, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 6680
    iput-boolean v14, v10, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 6682
    if-eqz v2, :cond_14

    .line 6683
    nop

    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "calledExplicitly":Z
    throw v2

    .line 6685
    .end local v2    # "exceptionDuringClose":Ljava/sql/SQLException;
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "calledExplicitly":Z
    :cond_14
    nop

    .line 6636
    nop

    .end local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .end local p1    # "calledExplicitly":Z
    throw v1

    .line 6686
    .restart local v11    # "locallyScopedConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local p1    # "calledExplicitly":Z
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

.method public reallyResult()Z
    .locals 1

    .line 6697
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_0

    .line 6698
    const/4 v0, 0x1

    return v0

    .line 6701
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    return v0
.end method

.method public redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    .locals 3
    .param p1, "f"    # [Lcom/mysql/jdbc/Field;

    .line 878
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 881
    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 882
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public refreshRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6724
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public relative(I)Z
    .locals 4
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6750
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6752
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6753
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6755
    monitor-exit v0

    return v2

    .line 6758
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_1

    .line 6759
    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6762
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/RowData;->moveRowRelative(I)V

    .line 6763
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6765
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6767
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    .line 6768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6786
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6803
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6820
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setBinaryEncoded()V
    .locals 1

    .line 6828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 6829
    return-void
.end method

.method public setFetchDirection(I)V
    .locals 4
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6847
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6848
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 6849
    :cond_0
    :try_start_0
    const-string v1, "ResultSet.Illegal_value_for_fetch_direction_64"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "direction":I
    throw v1

    .line 6853
    .restart local p1    # "direction":I
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 6854
    monitor-exit v0

    .line 6855
    return-void

    .line 6854
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFetchSize(I)V
    .locals 4
    .param p1, "rows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6874
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6875
    if-ltz p1, :cond_0

    .line 6880
    :try_start_0
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 6881
    monitor-exit v0

    .line 6882
    return-void

    .line 6881
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6876
    :cond_0
    const-string v1, "ResultSet.Value_must_be_between_0_and_getMaxRows()_66"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local p1    # "rows":I
    throw v1

    .line 6881
    .restart local p1    # "rows":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFirstCharOfQuery(C)V
    .locals 2
    .param p1, "c"    # C

    .line 6893
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6894
    :try_start_1
    iput-char p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->firstCharOfQuery:C

    .line 6895
    monitor-exit v0

    .line 6898
    nop

    .line 6899
    return-void

    .line 6895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "c":C
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6896
    .restart local p1    # "c":C
    :catch_0
    move-exception v0

    .line 6897
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected declared-synchronized setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 0
    .param p1, "nextResultSet"    # Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-enter p0

    .line 6907
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6908
    monitor-exit p0

    return-void

    .line 6906
    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    .end local p1    # "nextResultSet":Lcom/mysql/jdbc/ResultSetInternalMethods;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V
    .locals 2
    .param p1, "owningStatement"    # Lcom/mysql/jdbc/StatementImpl;

    .line 6912
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6913
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6914
    monitor-exit v0

    .line 6917
    nop

    .line 6918
    return-void

    .line 6914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "owningStatement":Lcom/mysql/jdbc/StatementImpl;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6915
    .restart local p1    # "owningStatement":Lcom/mysql/jdbc/StatementImpl;
    :catch_0
    move-exception v0

    .line 6916
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected declared-synchronized setResultSetConcurrency(I)V
    .locals 2
    .param p1, "concurrencyFlag"    # I

    monitor-enter p0

    .line 6928
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6929
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 6930
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6933
    nop

    .line 6934
    monitor-exit p0

    return-void

    .line 6930
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local p1    # "concurrencyFlag":I
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p1    # "concurrencyFlag":I
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 6927
    .end local p1    # "concurrencyFlag":I
    :catchall_2
    move-exception p1

    goto :goto_1

    .line 6931
    .restart local p1    # "concurrencyFlag":I
    :catch_0
    move-exception v0

    .line 6932
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6927
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local p1    # "concurrencyFlag":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setResultSetType(I)V
    .locals 2
    .param p1, "typeFlag"    # I

    monitor-enter p0

    .line 6945
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6946
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 6947
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6950
    nop

    .line 6951
    monitor-exit p0

    return-void

    .line 6947
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local p1    # "typeFlag":I
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p1    # "typeFlag":I
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 6944
    .end local p1    # "typeFlag":I
    :catchall_2
    move-exception p1

    goto :goto_1

    .line 6948
    .restart local p1    # "typeFlag":I
    :catch_0
    move-exception v0

    .line 6949
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6944
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local p1    # "typeFlag":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected setServerInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 6961
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6962
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6963
    monitor-exit v0

    .line 6966
    nop

    .line 6967
    return-void

    .line 6963
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "info":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6964
    .restart local p1    # "info":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6965
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V
    .locals 2
    .param p1, "stmt"    # Lcom/mysql/jdbc/PreparedStatement;

    monitor-enter p0

    .line 6971
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6972
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    .line 6973
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6976
    nop

    .line 6977
    monitor-exit p0

    return-void

    .line 6973
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local p1    # "stmt":Lcom/mysql/jdbc/PreparedStatement;
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p1    # "stmt":Lcom/mysql/jdbc/PreparedStatement;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 6970
    .end local p1    # "stmt":Lcom/mysql/jdbc/PreparedStatement;
    :catchall_2
    move-exception p1

    goto :goto_1

    .line 6974
    .restart local p1    # "stmt":Lcom/mysql/jdbc/PreparedStatement;
    :catch_0
    move-exception v0

    .line 6975
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6970
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local p1    # "stmt":Lcom/mysql/jdbc/PreparedStatement;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWrapperStatement(Ljava/sql/Statement;)V
    .locals 2
    .param p1, "wrapperStatement"    # Ljava/sql/Statement;

    monitor-enter p0

    .line 6985
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6986
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    .line 6987
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6990
    nop

    .line 6991
    monitor-exit p0

    return-void

    .line 6987
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local p1    # "wrapperStatement":Ljava/sql/Statement;
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/mysql/jdbc/ResultSetImpl;
    .restart local p1    # "wrapperStatement":Ljava/sql/Statement;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 6984
    .end local p1    # "wrapperStatement":Ljava/sql/Statement;
    :catchall_2
    move-exception p1

    goto :goto_1

    .line 6988
    .restart local p1    # "wrapperStatement":Ljava/sql/Statement;
    :catch_0
    move-exception v0

    .line 6989
    .local v0, "e":Ljava/sql/SQLException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6984
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local p1    # "wrapperStatement":Ljava/sql/Statement;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 7031
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    if-eqz v0, :cond_0

    .line 7032
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7035
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set representing update count of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7042
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/sql/Array;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7049
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7071
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7092
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateAsciiStream(ILjava/io/InputStream;I)V

    .line 7093
    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7111
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7129
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBigDecimal(ILjava/math/BigDecimal;)V

    .line 7130
    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7151
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7172
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateBinaryStream(ILjava/io/InputStream;I)V

    .line 7173
    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7179
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/sql/Blob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7186
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBoolean(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7205
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7223
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBoolean(IZ)V

    .line 7224
    return-void
.end method

.method public updateByte(IB)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7242
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7260
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateByte(IB)V

    .line 7261
    return-void
.end method

.method public updateBytes(I[B)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7279
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7297
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBytes(I[B)V

    .line 7298
    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7319
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/io/Reader;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 7341
    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7347
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "clob"    # Ljava/sql/Clob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7354
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateClob(ILjava/sql/Clob;)V

    .line 7355
    return-void
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7373
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7391
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateDate(ILjava/sql/Date;)V

    .line 7392
    return-void
.end method

.method public updateDouble(ID)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7410
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7428
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateDouble(ID)V

    .line 7429
    return-void
.end method

.method public updateFloat(IF)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7447
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7465
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateFloat(IF)V

    .line 7466
    return-void
.end method

.method public updateInt(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7484
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7502
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateInt(II)V

    .line 7503
    return-void
.end method

.method public updateLong(IJ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7521
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7539
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateLong(IJ)V

    .line 7540
    return-void
.end method

.method public updateNull(I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7556
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7572
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->updateNull(I)V

    .line 7573
    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7591
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7614
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7632
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateObject(ILjava/lang/Object;)V

    .line 7633
    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/Object;
    .param p3, "scale"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7654
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateObject(ILjava/lang/Object;)V

    .line 7655
    return-void
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7661
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/sql/Ref;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7668
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7681
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateShort(IS)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7700
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7718
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateShort(IS)V

    .line 7719
    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7737
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7755
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateString(ILjava/lang/String;)V

    .line 7756
    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7774
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7792
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateTime(ILjava/sql/Time;)V

    .line 7793
    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7811
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "x"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7829
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateTimestamp(ILjava/sql/Timestamp;)V

    .line 7830
    return-void
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7844
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v0
.end method
