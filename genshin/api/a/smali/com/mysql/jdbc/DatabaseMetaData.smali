.class public Lcom/mysql/jdbc/DatabaseMetaData;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;,
        Lcom/mysql/jdbc/DatabaseMetaData$TableType;,
        Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;,
        Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;,
        Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;,
        Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;,
        Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;,
        Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;,
        Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;,
        Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    }
.end annotation


# static fields
.field private static final DEFERRABILITY:I = 0xd

.field private static final DELETE_RULE:I = 0xa

.field private static final FKCOLUMN_NAME:I = 0x7

.field private static final FKTABLE_CAT:I = 0x4

.field private static final FKTABLE_NAME:I = 0x6

.field private static final FKTABLE_SCHEM:I = 0x5

.field private static final FK_NAME:I = 0xb

.field private static final JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final KEY_SEQ:I = 0x8

.field protected static final MAX_IDENTIFIER_LENGTH:I = 0x40

.field private static final MYSQL_KEYWORDS:[Ljava/lang/String;

.field private static final PKCOLUMN_NAME:I = 0x3

.field private static final PKTABLE_CAT:I = 0x0

.field private static final PKTABLE_NAME:I = 0x2

.field private static final PKTABLE_SCHEM:I = 0x1

.field private static final PK_NAME:I = 0xc

.field private static final SQL2003_KEYWORDS:[Ljava/lang/String;

.field private static final SQL92_KEYWORDS:[Ljava/lang/String;

.field private static final SUPPORTS_FK:Ljava/lang/String; = "SUPPORTS_FK"

.field protected static final SYSTEM_TABLE_AS_BYTES:[B

.field protected static final TABLE_AS_BYTES:[B

.field private static final UPDATE_RULE:I = 0x9

.field protected static final VIEW_AS_BYTES:[B

.field private static volatile mysqlKeywords:Ljava/lang/String;


# instance fields
.field protected conn:Lcom/mysql/jdbc/MySQLConnection;

.field protected database:Ljava/lang/String;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected final quotedId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 652
    const-string v0, "TABLE"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->TABLE_AS_BYTES:[B

    .line 654
    const-string v1, "SYSTEM TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->SYSTEM_TABLE_AS_BYTES:[B

    .line 658
    const-string v1, "VIEW"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->VIEW_AS_BYTES:[B

    .line 665
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 667
    :try_start_0
    const-string v1, "com.mysql.jdbc.JDBC4DatabaseMetaData"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    .line 669
    const-string v1, "com.mysql.jdbc.JDBC4DatabaseMetaDataUsingInfoSchema"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 673
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 671
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 679
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sput-object v2, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;

    .line 680
    sput-object v2, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    .line 685
    :goto_0
    const/16 v1, 0x107

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "ACCESSIBLE"

    aput-object v6, v1, v5

    const-string v6, "ADD"

    aput-object v6, v1, v4

    const-string v6, "ALL"

    aput-object v6, v1, v3

    const/4 v7, 0x3

    const-string v8, "ALTER"

    aput-object v8, v1, v7

    const-string v9, "ANALYZE"

    const/4 v10, 0x4

    aput-object v9, v1, v10

    const/4 v9, 0x5

    const-string v11, "AND"

    aput-object v11, v1, v9

    const-string v12, "ARRAY"

    const/4 v13, 0x6

    aput-object v12, v1, v13

    const/4 v12, 0x7

    const-string v14, "AS"

    aput-object v14, v1, v12

    const-string v15, "ASC"

    const/16 v16, 0x8

    aput-object v15, v1, v16

    const-string v15, "ASENSITIVE"

    const/16 v17, 0x9

    aput-object v15, v1, v17

    const-string v15, "BEFORE"

    const/16 v18, 0xa

    aput-object v15, v1, v18

    const/16 v15, 0xb

    const-string v19, "BETWEEN"

    aput-object v19, v1, v15

    const-string v20, "BIGINT"

    const/16 v21, 0xc

    aput-object v20, v1, v21

    const-string v20, "BINARY"

    const/16 v22, 0xd

    aput-object v20, v1, v22

    const-string v20, "BLOB"

    const/16 v23, 0xe

    aput-object v20, v1, v23

    const/16 v20, 0xf

    const-string v24, "BOTH"

    aput-object v24, v1, v20

    const/16 v20, 0x10

    const-string v24, "BY"

    aput-object v24, v1, v20

    const/16 v20, 0x11

    const-string v24, "CALL"

    aput-object v24, v1, v20

    const/16 v20, 0x12

    const-string v24, "CASCADE"

    aput-object v24, v1, v20

    const/16 v20, 0x13

    const-string v24, "CASE"

    aput-object v24, v1, v20

    const/16 v20, 0x14

    const-string v24, "CHANGE"

    aput-object v24, v1, v20

    const/16 v20, 0x15

    const-string v24, "CHAR"

    aput-object v24, v1, v20

    const/16 v20, 0x16

    const-string v24, "CHARACTER"

    aput-object v24, v1, v20

    const/16 v20, 0x17

    const-string v24, "CHECK"

    aput-object v24, v1, v20

    const/16 v20, 0x18

    const-string v24, "COLLATE"

    aput-object v24, v1, v20

    const/16 v20, 0x19

    const-string v24, "COLUMN"

    aput-object v24, v1, v20

    const/16 v20, 0x1a

    const-string v24, "CONDITION"

    aput-object v24, v1, v20

    const/16 v20, 0x1b

    const-string v24, "CONSTRAINT"

    aput-object v24, v1, v20

    const/16 v20, 0x1c

    const-string v24, "CONTINUE"

    aput-object v24, v1, v20

    const/16 v20, 0x1d

    const-string v24, "CONVERT"

    aput-object v24, v1, v20

    const/16 v20, 0x1e

    const-string v24, "CREATE"

    aput-object v24, v1, v20

    const/16 v20, 0x1f

    const-string v24, "CROSS"

    aput-object v24, v1, v20

    const/16 v20, 0x20

    const-string v24, "CUBE"

    aput-object v24, v1, v20

    const/16 v20, 0x21

    const-string v24, "CUME_DIST"

    aput-object v24, v1, v20

    const/16 v20, 0x22

    const-string v24, "CURRENT_DATE"

    aput-object v24, v1, v20

    const/16 v20, 0x23

    const-string v24, "CURRENT_TIME"

    aput-object v24, v1, v20

    const/16 v20, 0x24

    const-string v24, "CURRENT_TIMESTAMP"

    aput-object v24, v1, v20

    const/16 v20, 0x25

    const-string v24, "CURRENT_USER"

    aput-object v24, v1, v20

    const/16 v20, 0x26

    const-string v24, "CURSOR"

    aput-object v24, v1, v20

    const/16 v20, 0x27

    const-string v24, "DATABASE"

    aput-object v24, v1, v20

    const/16 v20, 0x28

    const-string v24, "DATABASES"

    aput-object v24, v1, v20

    const/16 v20, 0x29

    const-string v24, "DAY_HOUR"

    aput-object v24, v1, v20

    const/16 v20, 0x2a

    const-string v24, "DAY_MICROSECOND"

    aput-object v24, v1, v20

    const/16 v20, 0x2b

    const-string v24, "DAY_MINUTE"

    aput-object v24, v1, v20

    const/16 v20, 0x2c

    const-string v24, "DAY_SECOND"

    aput-object v24, v1, v20

    const/16 v20, 0x2d

    const-string v24, "DEC"

    aput-object v24, v1, v20

    const/16 v20, 0x2e

    const-string v24, "DECIMAL"

    aput-object v24, v1, v20

    const/16 v20, 0x2f

    const-string v24, "DECLARE"

    aput-object v24, v1, v20

    const/16 v20, 0x30

    const-string v24, "DEFAULT"

    aput-object v24, v1, v20

    const/16 v20, 0x31

    const-string v24, "DELAYED"

    aput-object v24, v1, v20

    const/16 v20, 0x32

    const-string v24, "DELETE"

    aput-object v24, v1, v20

    const/16 v20, 0x33

    const-string v24, "DENSE_RANK"

    aput-object v24, v1, v20

    const/16 v20, 0x34

    const-string v24, "DESC"

    aput-object v24, v1, v20

    const/16 v20, 0x35

    const-string v24, "DESCRIBE"

    aput-object v24, v1, v20

    const/16 v20, 0x36

    const-string v24, "DETERMINISTIC"

    aput-object v24, v1, v20

    const/16 v20, 0x37

    const-string v24, "DISTINCT"

    aput-object v24, v1, v20

    const/16 v20, 0x38

    const-string v24, "DISTINCTROW"

    aput-object v24, v1, v20

    const/16 v20, 0x39

    const-string v24, "DIV"

    aput-object v24, v1, v20

    const/16 v20, 0x3a

    const-string v24, "DOUBLE"

    aput-object v24, v1, v20

    const/16 v20, 0x3b

    const-string v24, "DROP"

    aput-object v24, v1, v20

    const/16 v20, 0x3c

    const-string v24, "DUAL"

    aput-object v24, v1, v20

    const/16 v20, 0x3d

    const-string v24, "EACH"

    aput-object v24, v1, v20

    const/16 v20, 0x3e

    const-string v24, "ELSE"

    aput-object v24, v1, v20

    const/16 v20, 0x3f

    const-string v24, "ELSEIF"

    aput-object v24, v1, v20

    const/16 v20, 0x40

    const-string v24, "EMPTY"

    aput-object v24, v1, v20

    const/16 v20, 0x41

    const-string v24, "ENCLOSED"

    aput-object v24, v1, v20

    const/16 v20, 0x42

    const-string v24, "ESCAPED"

    aput-object v24, v1, v20

    const/16 v20, 0x43

    const-string v24, "EXCEPT"

    aput-object v24, v1, v20

    const/16 v20, 0x44

    const-string v24, "EXISTS"

    aput-object v24, v1, v20

    const/16 v20, 0x45

    const-string v24, "EXIT"

    aput-object v24, v1, v20

    const/16 v20, 0x46

    const-string v24, "EXPLAIN"

    aput-object v24, v1, v20

    const/16 v20, 0x47

    const-string v24, "FALSE"

    aput-object v24, v1, v20

    const/16 v20, 0x48

    const-string v24, "FETCH"

    aput-object v24, v1, v20

    const/16 v20, 0x49

    const-string v24, "FIRST_VALUE"

    aput-object v24, v1, v20

    const/16 v20, 0x4a

    const-string v24, "FLOAT"

    aput-object v24, v1, v20

    const/16 v20, 0x4b

    const-string v24, "FLOAT4"

    aput-object v24, v1, v20

    const/16 v20, 0x4c

    const-string v24, "FLOAT8"

    aput-object v24, v1, v20

    const/16 v20, 0x4d

    const-string v24, "FOR"

    aput-object v24, v1, v20

    const/16 v20, 0x4e

    const-string v24, "FORCE"

    aput-object v24, v1, v20

    const/16 v20, 0x4f

    const-string v24, "FOREIGN"

    aput-object v24, v1, v20

    const/16 v20, 0x50

    const-string v24, "FROM"

    aput-object v24, v1, v20

    const/16 v20, 0x51

    const-string v24, "FULLTEXT"

    aput-object v24, v1, v20

    const/16 v20, 0x52

    const-string v24, "FUNCTION"

    aput-object v24, v1, v20

    const/16 v20, 0x53

    const-string v24, "GENERATED"

    aput-object v24, v1, v20

    const/16 v20, 0x54

    const-string v24, "GET"

    aput-object v24, v1, v20

    const/16 v20, 0x55

    const-string v24, "GRANT"

    aput-object v24, v1, v20

    const/16 v20, 0x56

    const-string v24, "GROUP"

    aput-object v24, v1, v20

    const/16 v20, 0x57

    const-string v24, "GROUPING"

    aput-object v24, v1, v20

    const/16 v20, 0x58

    const-string v24, "GROUPS"

    aput-object v24, v1, v20

    const/16 v20, 0x59

    const-string v24, "HAVING"

    aput-object v24, v1, v20

    const/16 v20, 0x5a

    const-string v24, "HIGH_PRIORITY"

    aput-object v24, v1, v20

    const/16 v20, 0x5b

    const-string v24, "HOUR_MICROSECOND"

    aput-object v24, v1, v20

    const/16 v20, 0x5c

    const-string v24, "HOUR_MINUTE"

    aput-object v24, v1, v20

    const/16 v20, 0x5d

    const-string v24, "HOUR_SECOND"

    aput-object v24, v1, v20

    const/16 v20, 0x5e

    const-string v24, "IF"

    aput-object v24, v1, v20

    const/16 v20, 0x5f

    const-string v24, "IGNORE"

    aput-object v24, v1, v20

    const/16 v20, 0x60

    const-string v24, "IN"

    aput-object v24, v1, v20

    const/16 v20, 0x61

    const-string v24, "INDEX"

    aput-object v24, v1, v20

    const/16 v20, 0x62

    const-string v24, "INFILE"

    aput-object v24, v1, v20

    const/16 v20, 0x63

    const-string v24, "INNER"

    aput-object v24, v1, v20

    const/16 v20, 0x64

    const-string v24, "INOUT"

    aput-object v24, v1, v20

    const/16 v20, 0x65

    const-string v24, "INSENSITIVE"

    aput-object v24, v1, v20

    const/16 v20, 0x66

    const-string v24, "INSERT"

    aput-object v24, v1, v20

    const/16 v20, 0x67

    const-string v24, "INT"

    aput-object v24, v1, v20

    const/16 v20, 0x68

    const-string v24, "INT1"

    aput-object v24, v1, v20

    const/16 v20, 0x69

    const-string v24, "INT2"

    aput-object v24, v1, v20

    const/16 v20, 0x6a

    const-string v24, "INT3"

    aput-object v24, v1, v20

    const/16 v20, 0x6b

    const-string v24, "INT4"

    aput-object v24, v1, v20

    const/16 v20, 0x6c

    const-string v24, "INT8"

    aput-object v24, v1, v20

    const/16 v20, 0x6d

    const-string v24, "INTEGER"

    aput-object v24, v1, v20

    const/16 v20, 0x6e

    const-string v24, "INTERVAL"

    aput-object v24, v1, v20

    const/16 v20, 0x6f

    const-string v24, "INTO"

    aput-object v24, v1, v20

    const/16 v20, 0x70

    const-string v24, "IO_AFTER_GTIDS"

    aput-object v24, v1, v20

    const/16 v20, 0x71

    const-string v24, "IO_BEFORE_GTIDS"

    aput-object v24, v1, v20

    const/16 v20, 0x72

    const-string v24, "IS"

    aput-object v24, v1, v20

    const/16 v20, 0x73

    const-string v24, "ITERATE"

    aput-object v24, v1, v20

    const/16 v20, 0x74

    const-string v24, "JOIN"

    aput-object v24, v1, v20

    const/16 v20, 0x75

    const-string v24, "JSON_TABLE"

    aput-object v24, v1, v20

    const/16 v20, 0x76

    const-string v24, "KEY"

    aput-object v24, v1, v20

    const/16 v20, 0x77

    const-string v24, "KEYS"

    aput-object v24, v1, v20

    const/16 v20, 0x78

    const-string v24, "KILL"

    aput-object v24, v1, v20

    const/16 v20, 0x79

    const-string v24, "LAG"

    aput-object v24, v1, v20

    const/16 v20, 0x7a

    const-string v24, "LAST_VALUE"

    aput-object v24, v1, v20

    const/16 v20, 0x7b

    const-string v24, "LATERAL"

    aput-object v24, v1, v20

    const/16 v20, 0x7c

    const-string v24, "LEAD"

    aput-object v24, v1, v20

    const/16 v20, 0x7d

    const-string v24, "LEADING"

    aput-object v24, v1, v20

    const/16 v20, 0x7e

    const-string v24, "LEAVE"

    aput-object v24, v1, v20

    const/16 v20, 0x7f

    const-string v24, "LEFT"

    aput-object v24, v1, v20

    const/16 v20, 0x80

    const-string v24, "LIKE"

    aput-object v24, v1, v20

    const/16 v20, 0x81

    const-string v24, "LIMIT"

    aput-object v24, v1, v20

    const/16 v20, 0x82

    const-string v24, "LINEAR"

    aput-object v24, v1, v20

    const/16 v20, 0x83

    const-string v24, "LINES"

    aput-object v24, v1, v20

    const/16 v20, 0x84

    const-string v24, "LOAD"

    aput-object v24, v1, v20

    const/16 v20, 0x85

    const-string v24, "LOCALTIME"

    aput-object v24, v1, v20

    const/16 v20, 0x86

    const-string v24, "LOCALTIMESTAMP"

    aput-object v24, v1, v20

    const/16 v20, 0x87

    const-string v24, "LOCK"

    aput-object v24, v1, v20

    const/16 v20, 0x88

    const-string v24, "LONG"

    aput-object v24, v1, v20

    const/16 v20, 0x89

    const-string v24, "LONGBLOB"

    aput-object v24, v1, v20

    const/16 v20, 0x8a

    const-string v24, "LONGTEXT"

    aput-object v24, v1, v20

    const/16 v20, 0x8b

    const-string v24, "LOOP"

    aput-object v24, v1, v20

    const/16 v20, 0x8c

    const-string v24, "LOW_PRIORITY"

    aput-object v24, v1, v20

    const/16 v20, 0x8d

    const-string v24, "MASTER_BIND"

    aput-object v24, v1, v20

    const/16 v20, 0x8e

    const-string v24, "MASTER_SSL_VERIFY_SERVER_CERT"

    aput-object v24, v1, v20

    const/16 v20, 0x8f

    const-string v24, "MATCH"

    aput-object v24, v1, v20

    const/16 v20, 0x90

    const-string v24, "MAXVALUE"

    aput-object v24, v1, v20

    const/16 v20, 0x91

    const-string v24, "MEDIUMBLOB"

    aput-object v24, v1, v20

    const/16 v20, 0x92

    const-string v24, "MEDIUMINT"

    aput-object v24, v1, v20

    const/16 v20, 0x93

    const-string v24, "MEDIUMTEXT"

    aput-object v24, v1, v20

    const/16 v20, 0x94

    const-string v24, "MEMBER"

    aput-object v24, v1, v20

    const/16 v20, 0x95

    const-string v24, "MIDDLEINT"

    aput-object v24, v1, v20

    const/16 v20, 0x96

    const-string v24, "MINUTE_MICROSECOND"

    aput-object v24, v1, v20

    const/16 v20, 0x97

    const-string v24, "MINUTE_SECOND"

    aput-object v24, v1, v20

    const/16 v20, 0x98

    const-string v24, "MOD"

    aput-object v24, v1, v20

    const/16 v20, 0x99

    const-string v24, "MODIFIES"

    aput-object v24, v1, v20

    const/16 v20, 0x9a

    const-string v24, "NATURAL"

    aput-object v24, v1, v20

    const/16 v20, 0x9b

    const-string v24, "NOT"

    aput-object v24, v1, v20

    const/16 v20, 0x9c

    const-string v24, "NO_WRITE_TO_BINLOG"

    aput-object v24, v1, v20

    const/16 v20, 0x9d

    const-string v24, "NTH_VALUE"

    aput-object v24, v1, v20

    const/16 v20, 0x9e

    const-string v24, "NTILE"

    aput-object v24, v1, v20

    const/16 v20, 0x9f

    const-string v24, "NULL"

    aput-object v24, v1, v20

    const/16 v20, 0xa0

    const-string v24, "NUMERIC"

    aput-object v24, v1, v20

    const/16 v20, 0xa1

    const-string v24, "OF"

    aput-object v24, v1, v20

    const/16 v20, 0xa2

    const-string v24, "ON"

    aput-object v24, v1, v20

    const/16 v20, 0xa3

    const-string v24, "OPTIMIZE"

    aput-object v24, v1, v20

    const/16 v20, 0xa4

    const-string v24, "OPTIMIZER_COSTS"

    aput-object v24, v1, v20

    const/16 v20, 0xa5

    const-string v24, "OPTION"

    aput-object v24, v1, v20

    const/16 v20, 0xa6

    const-string v24, "OPTIONALLY"

    aput-object v24, v1, v20

    const/16 v20, 0xa7

    const-string v24, "OR"

    aput-object v24, v1, v20

    const/16 v20, 0xa8

    const-string v24, "ORDER"

    aput-object v24, v1, v20

    const/16 v20, 0xa9

    const-string v24, "OUT"

    aput-object v24, v1, v20

    const/16 v20, 0xaa

    const-string v24, "OUTER"

    aput-object v24, v1, v20

    const/16 v20, 0xab

    const-string v24, "OUTFILE"

    aput-object v24, v1, v20

    const/16 v20, 0xac

    const-string v24, "OVER"

    aput-object v24, v1, v20

    const/16 v20, 0xad

    const-string v24, "PARTITION"

    aput-object v24, v1, v20

    const/16 v20, 0xae

    const-string v24, "PERCENT_RANK"

    aput-object v24, v1, v20

    const/16 v20, 0xaf

    const-string v24, "PRECISION"

    aput-object v24, v1, v20

    const/16 v20, 0xb0

    const-string v24, "PRIMARY"

    aput-object v24, v1, v20

    const/16 v20, 0xb1

    const-string v24, "PROCEDURE"

    aput-object v24, v1, v20

    const/16 v20, 0xb2

    const-string v24, "PURGE"

    aput-object v24, v1, v20

    const/16 v20, 0xb3

    const-string v24, "RANGE"

    aput-object v24, v1, v20

    const/16 v20, 0xb4

    const-string v24, "RANK"

    aput-object v24, v1, v20

    const/16 v20, 0xb5

    const-string v24, "READ"

    aput-object v24, v1, v20

    const/16 v20, 0xb6

    const-string v24, "READS"

    aput-object v24, v1, v20

    const/16 v20, 0xb7

    const-string v24, "READ_WRITE"

    aput-object v24, v1, v20

    const/16 v20, 0xb8

    const-string v24, "REAL"

    aput-object v24, v1, v20

    const/16 v20, 0xb9

    const-string v24, "RECURSIVE"

    aput-object v24, v1, v20

    const/16 v20, 0xba

    const-string v24, "REFERENCES"

    aput-object v24, v1, v20

    const/16 v20, 0xbb

    const-string v24, "REGEXP"

    aput-object v24, v1, v20

    const/16 v20, 0xbc

    const-string v24, "RELEASE"

    aput-object v24, v1, v20

    const/16 v20, 0xbd

    const-string v24, "RENAME"

    aput-object v24, v1, v20

    const/16 v20, 0xbe

    const-string v24, "REPEAT"

    aput-object v24, v1, v20

    const/16 v20, 0xbf

    const-string v24, "REPLACE"

    aput-object v24, v1, v20

    const/16 v20, 0xc0

    const-string v24, "REQUIRE"

    aput-object v24, v1, v20

    const/16 v20, 0xc1

    const-string v24, "RESIGNAL"

    aput-object v24, v1, v20

    const/16 v20, 0xc2

    const-string v24, "RESTRICT"

    aput-object v24, v1, v20

    const/16 v20, 0xc3

    const-string v24, "RETURN"

    aput-object v24, v1, v20

    const/16 v20, 0xc4

    const-string v24, "REVOKE"

    aput-object v24, v1, v20

    const/16 v20, 0xc5

    const-string v24, "RIGHT"

    aput-object v24, v1, v20

    const/16 v20, 0xc6

    const-string v24, "RLIKE"

    aput-object v24, v1, v20

    const/16 v20, 0xc7

    const-string v24, "ROW"

    aput-object v24, v1, v20

    const/16 v20, 0xc8

    const-string v24, "ROWS"

    aput-object v24, v1, v20

    const/16 v20, 0xc9

    const-string v24, "ROW_NUMBER"

    aput-object v24, v1, v20

    const/16 v20, 0xca

    const-string v24, "SCHEMA"

    aput-object v24, v1, v20

    const/16 v20, 0xcb

    const-string v24, "SCHEMAS"

    aput-object v24, v1, v20

    const/16 v20, 0xcc

    const-string v24, "SECOND_MICROSECOND"

    aput-object v24, v1, v20

    const/16 v20, 0xcd

    const-string v24, "SELECT"

    aput-object v24, v1, v20

    const/16 v20, 0xce

    const-string v24, "SENSITIVE"

    aput-object v24, v1, v20

    const/16 v20, 0xcf

    const-string v24, "SEPARATOR"

    aput-object v24, v1, v20

    const/16 v20, 0xd0

    const-string v24, "SET"

    aput-object v24, v1, v20

    const/16 v20, 0xd1

    const-string v24, "SHOW"

    aput-object v24, v1, v20

    const/16 v20, 0xd2

    const-string v24, "SIGNAL"

    aput-object v24, v1, v20

    const/16 v20, 0xd3

    const-string v24, "SMALLINT"

    aput-object v24, v1, v20

    const/16 v20, 0xd4

    const-string v24, "SPATIAL"

    aput-object v24, v1, v20

    const/16 v20, 0xd5

    const-string v24, "SPECIFIC"

    aput-object v24, v1, v20

    const/16 v20, 0xd6

    const-string v24, "SQL"

    aput-object v24, v1, v20

    const/16 v20, 0xd7

    const-string v24, "SQLEXCEPTION"

    aput-object v24, v1, v20

    const/16 v20, 0xd8

    const-string v24, "SQLSTATE"

    aput-object v24, v1, v20

    const/16 v20, 0xd9

    const-string v24, "SQLWARNING"

    aput-object v24, v1, v20

    const/16 v20, 0xda

    const-string v24, "SQL_BIG_RESULT"

    aput-object v24, v1, v20

    const/16 v20, 0xdb

    const-string v24, "SQL_CALC_FOUND_ROWS"

    aput-object v24, v1, v20

    const/16 v20, 0xdc

    const-string v24, "SQL_SMALL_RESULT"

    aput-object v24, v1, v20

    const/16 v20, 0xdd

    const-string v24, "SSL"

    aput-object v24, v1, v20

    const/16 v20, 0xde

    const-string v24, "STARTING"

    aput-object v24, v1, v20

    const/16 v20, 0xdf

    const-string v24, "STORED"

    aput-object v24, v1, v20

    const/16 v20, 0xe0

    const-string v24, "STRAIGHT_JOIN"

    aput-object v24, v1, v20

    const/16 v20, 0xe1

    const-string v24, "SYSTEM"

    aput-object v24, v1, v20

    const/16 v20, 0xe2

    aput-object v0, v1, v20

    const/16 v20, 0xe3

    const-string v24, "TERMINATED"

    aput-object v24, v1, v20

    const/16 v20, 0xe4

    const-string v24, "THEN"

    aput-object v24, v1, v20

    const/16 v20, 0xe5

    const-string v24, "TINYBLOB"

    aput-object v24, v1, v20

    const/16 v20, 0xe6

    const-string v24, "TINYINT"

    aput-object v24, v1, v20

    const/16 v20, 0xe7

    const-string v24, "TINYTEXT"

    aput-object v24, v1, v20

    const/16 v20, 0xe8

    const-string v24, "TO"

    aput-object v24, v1, v20

    const/16 v20, 0xe9

    const-string v24, "TRAILING"

    aput-object v24, v1, v20

    const/16 v20, 0xea

    const-string v24, "TRIGGER"

    aput-object v24, v1, v20

    const/16 v20, 0xeb

    const-string v24, "TRUE"

    aput-object v24, v1, v20

    const/16 v20, 0xec

    const-string v24, "UNDO"

    aput-object v24, v1, v20

    const/16 v20, 0xed

    const-string v24, "UNION"

    aput-object v24, v1, v20

    const/16 v20, 0xee

    const-string v24, "UNIQUE"

    aput-object v24, v1, v20

    const/16 v20, 0xef

    const-string v24, "UNLOCK"

    aput-object v24, v1, v20

    const/16 v20, 0xf0

    const-string v24, "UNSIGNED"

    aput-object v24, v1, v20

    const/16 v20, 0xf1

    const-string v24, "UPDATE"

    aput-object v24, v1, v20

    const/16 v20, 0xf2

    const-string v24, "USAGE"

    aput-object v24, v1, v20

    const/16 v20, 0xf3

    const-string v24, "USE"

    aput-object v24, v1, v20

    const/16 v20, 0xf4

    const-string v24, "USING"

    aput-object v24, v1, v20

    const/16 v20, 0xf5

    const-string v24, "UTC_DATE"

    aput-object v24, v1, v20

    const/16 v20, 0xf6

    const-string v24, "UTC_TIME"

    aput-object v24, v1, v20

    const/16 v20, 0xf7

    const-string v24, "UTC_TIMESTAMP"

    aput-object v24, v1, v20

    const/16 v20, 0xf8

    const-string v24, "VALUES"

    aput-object v24, v1, v20

    const/16 v20, 0xf9

    const-string v24, "VARBINARY"

    aput-object v24, v1, v20

    const/16 v20, 0xfa

    const-string v24, "VARCHAR"

    aput-object v24, v1, v20

    const/16 v20, 0xfb

    const-string v24, "VARCHARACTER"

    aput-object v24, v1, v20

    const/16 v20, 0xfc

    const-string v24, "VARYING"

    aput-object v24, v1, v20

    const/16 v20, 0xfd

    const-string v24, "VIRTUAL"

    aput-object v24, v1, v20

    const/16 v20, 0xfe

    const-string v24, "WHEN"

    aput-object v24, v1, v20

    const/16 v20, 0xff

    const-string v24, "WHERE"

    aput-object v24, v1, v20

    const/16 v20, 0x100

    const-string v24, "WHILE"

    aput-object v24, v1, v20

    const/16 v20, 0x101

    const-string v24, "WINDOW"

    aput-object v24, v1, v20

    const/16 v20, 0x102

    const-string v24, "WITH"

    aput-object v24, v1, v20

    const/16 v20, 0x103

    const-string v24, "WRITE"

    aput-object v24, v1, v20

    const/16 v20, 0x104

    const-string v24, "XOR"

    aput-object v24, v1, v20

    const/16 v20, 0x105

    const-string v24, "YEAR_MONTH"

    aput-object v24, v1, v20

    const/16 v20, 0x106

    const-string v24, "ZEROFILL"

    aput-object v24, v1, v20

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->MYSQL_KEYWORDS:[Ljava/lang/String;

    .line 708
    const/16 v1, 0xe3

    new-array v1, v1, [Ljava/lang/String;

    const-string v20, "ABSOLUTE"

    aput-object v20, v1, v5

    const-string v20, "ACTION"

    aput-object v20, v1, v4

    const-string v20, "ADD"

    aput-object v20, v1, v3

    aput-object v6, v1, v7

    const-string v20, "ALLOCATE"

    aput-object v20, v1, v10

    aput-object v8, v1, v9

    aput-object v11, v1, v13

    const-string v20, "ANY"

    aput-object v20, v1, v12

    const-string v20, "ARE"

    aput-object v20, v1, v16

    aput-object v14, v1, v17

    const-string v20, "ASC"

    aput-object v20, v1, v18

    const-string v20, "ASSERTION"

    aput-object v20, v1, v15

    const-string v20, "AT"

    aput-object v20, v1, v21

    const-string v20, "AUTHORIZATION"

    aput-object v20, v1, v22

    const-string v20, "AVG"

    aput-object v20, v1, v23

    const/16 v20, 0xf

    const-string v24, "BEGIN"

    aput-object v24, v1, v20

    const/16 v20, 0x10

    aput-object v19, v1, v20

    const/16 v20, 0x11

    const-string v24, "BIT"

    aput-object v24, v1, v20

    const/16 v20, 0x12

    const-string v24, "BIT_LENGTH"

    aput-object v24, v1, v20

    const/16 v20, 0x13

    const-string v24, "BOTH"

    aput-object v24, v1, v20

    const/16 v20, 0x14

    const-string v24, "BY"

    aput-object v24, v1, v20

    const/16 v20, 0x15

    const-string v24, "CASCADE"

    aput-object v24, v1, v20

    const/16 v20, 0x16

    const-string v24, "CASCADED"

    aput-object v24, v1, v20

    const/16 v20, 0x17

    const-string v24, "CASE"

    aput-object v24, v1, v20

    const/16 v20, 0x18

    const-string v24, "CAST"

    aput-object v24, v1, v20

    const/16 v20, 0x19

    const-string v24, "CATALOG"

    aput-object v24, v1, v20

    const/16 v20, 0x1a

    const-string v24, "CHAR"

    aput-object v24, v1, v20

    const/16 v20, 0x1b

    const-string v24, "CHARACTER"

    aput-object v24, v1, v20

    const/16 v20, 0x1c

    const-string v24, "CHARACTER_LENGTH"

    aput-object v24, v1, v20

    const/16 v20, 0x1d

    const-string v24, "CHAR_LENGTH"

    aput-object v24, v1, v20

    const/16 v20, 0x1e

    const-string v24, "CHECK"

    aput-object v24, v1, v20

    const/16 v20, 0x1f

    const-string v24, "CLOSE"

    aput-object v24, v1, v20

    const/16 v20, 0x20

    const-string v24, "COALESCE"

    aput-object v24, v1, v20

    const/16 v20, 0x21

    const-string v24, "COLLATE"

    aput-object v24, v1, v20

    const/16 v20, 0x22

    const-string v24, "COLLATION"

    aput-object v24, v1, v20

    const/16 v20, 0x23

    const-string v24, "COLUMN"

    aput-object v24, v1, v20

    const/16 v20, 0x24

    const-string v24, "COMMIT"

    aput-object v24, v1, v20

    const/16 v20, 0x25

    const-string v24, "CONNECT"

    aput-object v24, v1, v20

    const/16 v20, 0x26

    const-string v24, "CONNECTION"

    aput-object v24, v1, v20

    const/16 v20, 0x27

    const-string v24, "CONSTRAINT"

    aput-object v24, v1, v20

    const/16 v20, 0x28

    const-string v24, "CONSTRAINTS"

    aput-object v24, v1, v20

    const/16 v20, 0x29

    const-string v24, "CONTINUE"

    aput-object v24, v1, v20

    const/16 v20, 0x2a

    const-string v24, "CONVERT"

    aput-object v24, v1, v20

    const/16 v20, 0x2b

    const-string v24, "CORRESPONDING"

    aput-object v24, v1, v20

    const/16 v20, 0x2c

    const-string v24, "COUNT"

    aput-object v24, v1, v20

    const/16 v20, 0x2d

    const-string v24, "CREATE"

    aput-object v24, v1, v20

    const/16 v20, 0x2e

    const-string v24, "CROSS"

    aput-object v24, v1, v20

    const/16 v20, 0x2f

    const-string v24, "CURRENT"

    aput-object v24, v1, v20

    const/16 v20, 0x30

    const-string v24, "CURRENT_DATE"

    aput-object v24, v1, v20

    const/16 v20, 0x31

    const-string v24, "CURRENT_TIME"

    aput-object v24, v1, v20

    const/16 v20, 0x32

    const-string v24, "CURRENT_TIMESTAMP"

    aput-object v24, v1, v20

    const/16 v20, 0x33

    const-string v24, "CURRENT_USER"

    aput-object v24, v1, v20

    const/16 v20, 0x34

    const-string v24, "CURSOR"

    aput-object v24, v1, v20

    const/16 v20, 0x35

    const-string v24, "DATE"

    aput-object v24, v1, v20

    const/16 v20, 0x36

    const-string v24, "DAY"

    aput-object v24, v1, v20

    const/16 v20, 0x37

    const-string v24, "DEALLOCATE"

    aput-object v24, v1, v20

    const/16 v20, 0x38

    const-string v24, "DEC"

    aput-object v24, v1, v20

    const/16 v20, 0x39

    const-string v24, "DECIMAL"

    aput-object v24, v1, v20

    const/16 v20, 0x3a

    const-string v24, "DECLARE"

    aput-object v24, v1, v20

    const/16 v20, 0x3b

    const-string v24, "DEFAULT"

    aput-object v24, v1, v20

    const/16 v20, 0x3c

    const-string v24, "DEFERRABLE"

    aput-object v24, v1, v20

    const/16 v20, 0x3d

    const-string v24, "DEFERRED"

    aput-object v24, v1, v20

    const/16 v20, 0x3e

    const-string v24, "DELETE"

    aput-object v24, v1, v20

    const/16 v20, 0x3f

    const-string v24, "DESC"

    aput-object v24, v1, v20

    const/16 v20, 0x40

    const-string v24, "DESCRIBE"

    aput-object v24, v1, v20

    const/16 v20, 0x41

    const-string v24, "DESCRIPTOR"

    aput-object v24, v1, v20

    const/16 v20, 0x42

    const-string v24, "DIAGNOSTICS"

    aput-object v24, v1, v20

    const/16 v20, 0x43

    const-string v24, "DISCONNECT"

    aput-object v24, v1, v20

    const/16 v20, 0x44

    const-string v24, "DISTINCT"

    aput-object v24, v1, v20

    const/16 v20, 0x45

    const-string v24, "DOMAIN"

    aput-object v24, v1, v20

    const/16 v20, 0x46

    const-string v24, "DOUBLE"

    aput-object v24, v1, v20

    const/16 v20, 0x47

    const-string v24, "DROP"

    aput-object v24, v1, v20

    const/16 v20, 0x48

    const-string v24, "ELSE"

    aput-object v24, v1, v20

    const/16 v20, 0x49

    const-string v24, "END"

    aput-object v24, v1, v20

    const/16 v20, 0x4a

    const-string v24, "END-EXEC"

    aput-object v24, v1, v20

    const/16 v20, 0x4b

    const-string v24, "ESCAPE"

    aput-object v24, v1, v20

    const/16 v20, 0x4c

    const-string v24, "EXCEPT"

    aput-object v24, v1, v20

    const/16 v20, 0x4d

    const-string v24, "EXCEPTION"

    aput-object v24, v1, v20

    const/16 v20, 0x4e

    const-string v24, "EXEC"

    aput-object v24, v1, v20

    const/16 v20, 0x4f

    const-string v24, "EXECUTE"

    aput-object v24, v1, v20

    const/16 v20, 0x50

    const-string v24, "EXISTS"

    aput-object v24, v1, v20

    const/16 v20, 0x51

    const-string v24, "EXTERNAL"

    aput-object v24, v1, v20

    const/16 v20, 0x52

    const-string v24, "EXTRACT"

    aput-object v24, v1, v20

    const/16 v20, 0x53

    const-string v24, "FALSE"

    aput-object v24, v1, v20

    const/16 v20, 0x54

    const-string v24, "FETCH"

    aput-object v24, v1, v20

    const/16 v20, 0x55

    const-string v24, "FIRST"

    aput-object v24, v1, v20

    const/16 v20, 0x56

    const-string v24, "FLOAT"

    aput-object v24, v1, v20

    const/16 v20, 0x57

    const-string v24, "FOR"

    aput-object v24, v1, v20

    const/16 v20, 0x58

    const-string v24, "FOREIGN"

    aput-object v24, v1, v20

    const/16 v20, 0x59

    const-string v24, "FOUND"

    aput-object v24, v1, v20

    const/16 v20, 0x5a

    const-string v24, "FROM"

    aput-object v24, v1, v20

    const/16 v20, 0x5b

    const-string v24, "FULL"

    aput-object v24, v1, v20

    const/16 v20, 0x5c

    const-string v24, "GET"

    aput-object v24, v1, v20

    const/16 v20, 0x5d

    const-string v24, "GLOBAL"

    aput-object v24, v1, v20

    const/16 v20, 0x5e

    const-string v24, "GO"

    aput-object v24, v1, v20

    const/16 v20, 0x5f

    const-string v24, "GOTO"

    aput-object v24, v1, v20

    const/16 v20, 0x60

    const-string v24, "GRANT"

    aput-object v24, v1, v20

    const/16 v20, 0x61

    const-string v24, "GROUP"

    aput-object v24, v1, v20

    const/16 v20, 0x62

    const-string v24, "HAVING"

    aput-object v24, v1, v20

    const/16 v20, 0x63

    const-string v24, "HOUR"

    aput-object v24, v1, v20

    const/16 v20, 0x64

    const-string v24, "IDENTITY"

    aput-object v24, v1, v20

    const/16 v20, 0x65

    const-string v24, "IMMEDIATE"

    aput-object v24, v1, v20

    const/16 v20, 0x66

    const-string v24, "IN"

    aput-object v24, v1, v20

    const/16 v20, 0x67

    const-string v24, "INDICATOR"

    aput-object v24, v1, v20

    const/16 v20, 0x68

    const-string v24, "INITIALLY"

    aput-object v24, v1, v20

    const/16 v20, 0x69

    const-string v24, "INNER"

    aput-object v24, v1, v20

    const/16 v20, 0x6a

    const-string v24, "INPUT"

    aput-object v24, v1, v20

    const/16 v20, 0x6b

    const-string v24, "INSENSITIVE"

    aput-object v24, v1, v20

    const/16 v20, 0x6c

    const-string v24, "INSERT"

    aput-object v24, v1, v20

    const/16 v20, 0x6d

    const-string v24, "INT"

    aput-object v24, v1, v20

    const/16 v20, 0x6e

    const-string v24, "INTEGER"

    aput-object v24, v1, v20

    const/16 v20, 0x6f

    const-string v24, "INTERSECT"

    aput-object v24, v1, v20

    const/16 v20, 0x70

    const-string v24, "INTERVAL"

    aput-object v24, v1, v20

    const/16 v20, 0x71

    const-string v24, "INTO"

    aput-object v24, v1, v20

    const/16 v20, 0x72

    const-string v24, "IS"

    aput-object v24, v1, v20

    const/16 v20, 0x73

    const-string v24, "ISOLATION"

    aput-object v24, v1, v20

    const/16 v20, 0x74

    const-string v24, "JOIN"

    aput-object v24, v1, v20

    const/16 v20, 0x75

    const-string v24, "KEY"

    aput-object v24, v1, v20

    const/16 v20, 0x76

    const-string v24, "LANGUAGE"

    aput-object v24, v1, v20

    const/16 v20, 0x77

    const-string v24, "LAST"

    aput-object v24, v1, v20

    const/16 v20, 0x78

    const-string v24, "LEADING"

    aput-object v24, v1, v20

    const/16 v20, 0x79

    const-string v24, "LEFT"

    aput-object v24, v1, v20

    const/16 v20, 0x7a

    const-string v24, "LEVEL"

    aput-object v24, v1, v20

    const/16 v20, 0x7b

    const-string v24, "LIKE"

    aput-object v24, v1, v20

    const/16 v20, 0x7c

    const-string v24, "LOCAL"

    aput-object v24, v1, v20

    const/16 v20, 0x7d

    const-string v24, "LOWER"

    aput-object v24, v1, v20

    const/16 v20, 0x7e

    const-string v24, "MATCH"

    aput-object v24, v1, v20

    const/16 v20, 0x7f

    const-string v24, "MAX"

    aput-object v24, v1, v20

    const/16 v20, 0x80

    const-string v24, "MIN"

    aput-object v24, v1, v20

    const/16 v20, 0x81

    const-string v24, "MINUTE"

    aput-object v24, v1, v20

    const/16 v20, 0x82

    const-string v24, "MODULE"

    aput-object v24, v1, v20

    const/16 v20, 0x83

    const-string v24, "MONTH"

    aput-object v24, v1, v20

    const/16 v20, 0x84

    const-string v24, "NAMES"

    aput-object v24, v1, v20

    const/16 v20, 0x85

    const-string v24, "NATIONAL"

    aput-object v24, v1, v20

    const/16 v20, 0x86

    const-string v24, "NATURAL"

    aput-object v24, v1, v20

    const/16 v20, 0x87

    const-string v24, "NCHAR"

    aput-object v24, v1, v20

    const/16 v20, 0x88

    const-string v24, "NEXT"

    aput-object v24, v1, v20

    const/16 v20, 0x89

    const-string v24, "NO"

    aput-object v24, v1, v20

    const/16 v20, 0x8a

    const-string v24, "NOT"

    aput-object v24, v1, v20

    const/16 v20, 0x8b

    const-string v24, "NULL"

    aput-object v24, v1, v20

    const/16 v20, 0x8c

    const-string v24, "NULLIF"

    aput-object v24, v1, v20

    const/16 v20, 0x8d

    const-string v24, "NUMERIC"

    aput-object v24, v1, v20

    const/16 v20, 0x8e

    const-string v24, "OCTET_LENGTH"

    aput-object v24, v1, v20

    const/16 v20, 0x8f

    const-string v24, "OF"

    aput-object v24, v1, v20

    const/16 v20, 0x90

    const-string v24, "ON"

    aput-object v24, v1, v20

    const/16 v20, 0x91

    const-string v24, "ONLY"

    aput-object v24, v1, v20

    const/16 v20, 0x92

    const-string v24, "OPEN"

    aput-object v24, v1, v20

    const/16 v20, 0x93

    const-string v24, "OPTION"

    aput-object v24, v1, v20

    const/16 v20, 0x94

    const-string v24, "OR"

    aput-object v24, v1, v20

    const/16 v20, 0x95

    const-string v24, "ORDER"

    aput-object v24, v1, v20

    const/16 v20, 0x96

    const-string v24, "OUTER"

    aput-object v24, v1, v20

    const/16 v20, 0x97

    const-string v24, "OUTPUT"

    aput-object v24, v1, v20

    const/16 v20, 0x98

    const-string v24, "OVERLAPS"

    aput-object v24, v1, v20

    const/16 v20, 0x99

    const-string v24, "PAD"

    aput-object v24, v1, v20

    const/16 v20, 0x9a

    const-string v24, "PARTIAL"

    aput-object v24, v1, v20

    const/16 v20, 0x9b

    const-string v24, "POSITION"

    aput-object v24, v1, v20

    const/16 v20, 0x9c

    const-string v24, "PRECISION"

    aput-object v24, v1, v20

    const/16 v20, 0x9d

    const-string v24, "PREPARE"

    aput-object v24, v1, v20

    const/16 v20, 0x9e

    const-string v24, "PRESERVE"

    aput-object v24, v1, v20

    const/16 v20, 0x9f

    const-string v24, "PRIMARY"

    aput-object v24, v1, v20

    const/16 v20, 0xa0

    const-string v24, "PRIOR"

    aput-object v24, v1, v20

    const/16 v20, 0xa1

    const-string v24, "PRIVILEGES"

    aput-object v24, v1, v20

    const/16 v20, 0xa2

    const-string v24, "PROCEDURE"

    aput-object v24, v1, v20

    const/16 v20, 0xa3

    const-string v24, "PUBLIC"

    aput-object v24, v1, v20

    const/16 v20, 0xa4

    const-string v24, "READ"

    aput-object v24, v1, v20

    const/16 v20, 0xa5

    const-string v24, "REAL"

    aput-object v24, v1, v20

    const/16 v20, 0xa6

    const-string v24, "REFERENCES"

    aput-object v24, v1, v20

    const/16 v20, 0xa7

    const-string v24, "RELATIVE"

    aput-object v24, v1, v20

    const/16 v20, 0xa8

    const-string v24, "RESTRICT"

    aput-object v24, v1, v20

    const/16 v20, 0xa9

    const-string v24, "REVOKE"

    aput-object v24, v1, v20

    const/16 v20, 0xaa

    const-string v24, "RIGHT"

    aput-object v24, v1, v20

    const/16 v20, 0xab

    const-string v24, "ROLLBACK"

    aput-object v24, v1, v20

    const/16 v20, 0xac

    const-string v24, "ROWS"

    aput-object v24, v1, v20

    const/16 v20, 0xad

    const-string v24, "SCHEMA"

    aput-object v24, v1, v20

    const/16 v20, 0xae

    const-string v24, "SCROLL"

    aput-object v24, v1, v20

    const/16 v20, 0xaf

    const-string v24, "SECOND"

    aput-object v24, v1, v20

    const/16 v20, 0xb0

    const-string v24, "SECTION"

    aput-object v24, v1, v20

    const/16 v20, 0xb1

    const-string v24, "SELECT"

    aput-object v24, v1, v20

    const/16 v20, 0xb2

    const-string v24, "SESSION"

    aput-object v24, v1, v20

    const/16 v20, 0xb3

    const-string v24, "SESSION_USER"

    aput-object v24, v1, v20

    const/16 v20, 0xb4

    const-string v24, "SET"

    aput-object v24, v1, v20

    const/16 v20, 0xb5

    const-string v24, "SIZE"

    aput-object v24, v1, v20

    const/16 v20, 0xb6

    const-string v24, "SMALLINT"

    aput-object v24, v1, v20

    const/16 v20, 0xb7

    const-string v24, "SOME"

    aput-object v24, v1, v20

    const/16 v20, 0xb8

    const-string v24, "SPACE"

    aput-object v24, v1, v20

    const/16 v20, 0xb9

    const-string v24, "SQL"

    aput-object v24, v1, v20

    const/16 v20, 0xba

    const-string v24, "SQLCODE"

    aput-object v24, v1, v20

    const/16 v20, 0xbb

    const-string v24, "SQLERROR"

    aput-object v24, v1, v20

    const/16 v20, 0xbc

    const-string v24, "SQLSTATE"

    aput-object v24, v1, v20

    const/16 v20, 0xbd

    const-string v24, "SUBSTRING"

    aput-object v24, v1, v20

    const/16 v20, 0xbe

    const-string v24, "SUM"

    aput-object v24, v1, v20

    const/16 v20, 0xbf

    const-string v24, "SYSTEM_USER"

    aput-object v24, v1, v20

    const/16 v20, 0xc0

    aput-object v0, v1, v20

    const/16 v20, 0xc1

    const-string v24, "TEMPORARY"

    aput-object v24, v1, v20

    const/16 v20, 0xc2

    const-string v24, "THEN"

    aput-object v24, v1, v20

    const/16 v20, 0xc3

    const-string v24, "TIME"

    aput-object v24, v1, v20

    const/16 v20, 0xc4

    const-string v24, "TIMESTAMP"

    aput-object v24, v1, v20

    const/16 v20, 0xc5

    const-string v24, "TIMEZONE_HOUR"

    aput-object v24, v1, v20

    const/16 v20, 0xc6

    const-string v24, "TIMEZONE_MINUTE"

    aput-object v24, v1, v20

    const/16 v20, 0xc7

    const-string v24, "TO"

    aput-object v24, v1, v20

    const/16 v20, 0xc8

    const-string v24, "TRAILING"

    aput-object v24, v1, v20

    const/16 v20, 0xc9

    const-string v24, "TRANSACTION"

    aput-object v24, v1, v20

    const/16 v20, 0xca

    const-string v24, "TRANSLATE"

    aput-object v24, v1, v20

    const/16 v20, 0xcb

    const-string v24, "TRANSLATION"

    aput-object v24, v1, v20

    const/16 v20, 0xcc

    const-string v24, "TRIM"

    aput-object v24, v1, v20

    const/16 v20, 0xcd

    const-string v24, "TRUE"

    aput-object v24, v1, v20

    const/16 v20, 0xce

    const-string v24, "UNION"

    aput-object v24, v1, v20

    const/16 v20, 0xcf

    const-string v24, "UNIQUE"

    aput-object v24, v1, v20

    const/16 v20, 0xd0

    const-string v24, "UNKNOWN"

    aput-object v24, v1, v20

    const/16 v20, 0xd1

    const-string v24, "UPDATE"

    aput-object v24, v1, v20

    const/16 v20, 0xd2

    const-string v24, "UPPER"

    aput-object v24, v1, v20

    const/16 v20, 0xd3

    const-string v24, "USAGE"

    aput-object v24, v1, v20

    const/16 v20, 0xd4

    const-string v24, "USER"

    aput-object v24, v1, v20

    const/16 v20, 0xd5

    const-string v24, "USING"

    aput-object v24, v1, v20

    const/16 v20, 0xd6

    const-string v24, "VALUE"

    aput-object v24, v1, v20

    const/16 v20, 0xd7

    const-string v24, "VALUES"

    aput-object v24, v1, v20

    const/16 v20, 0xd8

    const-string v24, "VARCHAR"

    aput-object v24, v1, v20

    const/16 v20, 0xd9

    const-string v24, "VARYING"

    aput-object v24, v1, v20

    const/16 v20, 0xda

    const-string v24, "VIEW"

    aput-object v24, v1, v20

    const/16 v20, 0xdb

    const-string v24, "WHEN"

    aput-object v24, v1, v20

    const/16 v20, 0xdc

    const-string v24, "WHENEVER"

    aput-object v24, v1, v20

    const/16 v20, 0xdd

    const-string v24, "WHERE"

    aput-object v24, v1, v20

    const/16 v20, 0xde

    const-string v24, "WITH"

    aput-object v24, v1, v20

    const/16 v20, 0xdf

    const-string v24, "WORK"

    aput-object v24, v1, v20

    const/16 v20, 0xe0

    const-string v24, "WRITE"

    aput-object v24, v1, v20

    const/16 v20, 0xe1

    const-string v24, "YEAR"

    aput-object v24, v1, v20

    const/16 v20, 0xe2

    const-string v24, "ZONE"

    aput-object v24, v1, v20

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->SQL92_KEYWORDS:[Ljava/lang/String;

    .line 727
    const/16 v1, 0x120

    new-array v1, v1, [Ljava/lang/String;

    const-string v20, "ABS"

    aput-object v20, v1, v5

    aput-object v6, v1, v4

    const-string v4, "ALLOCATE"

    aput-object v4, v1, v3

    aput-object v8, v1, v7

    aput-object v11, v1, v10

    const-string v3, "ANY"

    aput-object v3, v1, v9

    const-string v3, "ARE"

    aput-object v3, v1, v13

    const-string v3, "ARRAY"

    aput-object v3, v1, v12

    aput-object v14, v1, v16

    const-string v3, "ASENSITIVE"

    aput-object v3, v1, v17

    const-string v3, "ASYMMETRIC"

    aput-object v3, v1, v18

    const-string v3, "AT"

    aput-object v3, v1, v15

    const-string v3, "ATOMIC"

    aput-object v3, v1, v21

    const-string v3, "AUTHORIZATION"

    aput-object v3, v1, v22

    const-string v3, "AVG"

    aput-object v3, v1, v23

    const/16 v3, 0xf

    const-string v4, "BEGIN"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    aput-object v19, v1, v3

    const/16 v3, 0x11

    const-string v4, "BIGINT"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "BINARY"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "BLOB"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "BOOLEAN"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "BOTH"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "BY"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "CALL"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "CALLED"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "CARDINALITY"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "CASCADED"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "CASE"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "CAST"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "CEIL"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "CEILING"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "CHAR"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "CHARACTER"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "CHARACTER_LENGTH"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "CHAR_LENGTH"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "CHECK"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "CLOB"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "CLOSE"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "COALESCE"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string v4, "COLLATE"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    const-string v4, "COLLECT"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    const-string v4, "COLUMN"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "COMMIT"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "CONDITION"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    const-string v4, "CONNECT"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string v4, "CONSTRAINT"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    const-string v4, "CONVERT"

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    const-string v4, "CORR"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    const-string v4, "CORRESPONDING"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "COUNT"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "COVAR_POP"

    aput-object v4, v1, v3

    const/16 v3, 0x33

    const-string v4, "COVAR_SAMP"

    aput-object v4, v1, v3

    const/16 v3, 0x34

    const-string v4, "CREATE"

    aput-object v4, v1, v3

    const/16 v3, 0x35

    const-string v4, "CROSS"

    aput-object v4, v1, v3

    const/16 v3, 0x36

    const-string v4, "CUBE"

    aput-object v4, v1, v3

    const/16 v3, 0x37

    const-string v4, "CUME_DIST"

    aput-object v4, v1, v3

    const/16 v3, 0x38

    const-string v4, "CURRENT"

    aput-object v4, v1, v3

    const/16 v3, 0x39

    const-string v4, "CURRENT_DATE"

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    const-string v4, "CURRENT_DEFAULT_TRANSFORM_GROUP"

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    const-string v4, "CURRENT_PATH"

    aput-object v4, v1, v3

    const/16 v3, 0x3c

    const-string v4, "CURRENT_ROLE"

    aput-object v4, v1, v3

    const/16 v3, 0x3d

    const-string v4, "CURRENT_TIME"

    aput-object v4, v1, v3

    const/16 v3, 0x3e

    const-string v4, "CURRENT_TIMESTAMP"

    aput-object v4, v1, v3

    const/16 v3, 0x3f

    const-string v4, "CURRENT_TRANSFORM_GROUP_FOR_TYPE"

    aput-object v4, v1, v3

    const/16 v3, 0x40

    const-string v4, "CURRENT_USER"

    aput-object v4, v1, v3

    const/16 v3, 0x41

    const-string v4, "CURSOR"

    aput-object v4, v1, v3

    const/16 v3, 0x42

    const-string v4, "CYCLE"

    aput-object v4, v1, v3

    const/16 v3, 0x43

    const-string v4, "DATE"

    aput-object v4, v1, v3

    const/16 v3, 0x44

    const-string v4, "DAY"

    aput-object v4, v1, v3

    const/16 v3, 0x45

    const-string v4, "DEALLOCATE"

    aput-object v4, v1, v3

    const/16 v3, 0x46

    const-string v4, "DEC"

    aput-object v4, v1, v3

    const/16 v3, 0x47

    const-string v4, "DECIMAL"

    aput-object v4, v1, v3

    const/16 v3, 0x48

    const-string v4, "DECLARE"

    aput-object v4, v1, v3

    const/16 v3, 0x49

    const-string v4, "DEFAULT"

    aput-object v4, v1, v3

    const/16 v3, 0x4a

    const-string v4, "DELETE"

    aput-object v4, v1, v3

    const/16 v3, 0x4b

    const-string v4, "DENSE_RANK"

    aput-object v4, v1, v3

    const/16 v3, 0x4c

    const-string v4, "DEREF"

    aput-object v4, v1, v3

    const/16 v3, 0x4d

    const-string v4, "DESCRIBE"

    aput-object v4, v1, v3

    const/16 v3, 0x4e

    const-string v4, "DETERMINISTIC"

    aput-object v4, v1, v3

    const/16 v3, 0x4f

    const-string v4, "DISCONNECT"

    aput-object v4, v1, v3

    const/16 v3, 0x50

    const-string v4, "DISTINCT"

    aput-object v4, v1, v3

    const/16 v3, 0x51

    const-string v4, "DOUBLE"

    aput-object v4, v1, v3

    const/16 v3, 0x52

    const-string v4, "DROP"

    aput-object v4, v1, v3

    const/16 v3, 0x53

    const-string v4, "DYNAMIC"

    aput-object v4, v1, v3

    const/16 v3, 0x54

    const-string v4, "EACH"

    aput-object v4, v1, v3

    const/16 v3, 0x55

    const-string v4, "ELEMENT"

    aput-object v4, v1, v3

    const/16 v3, 0x56

    const-string v4, "ELSE"

    aput-object v4, v1, v3

    const/16 v3, 0x57

    const-string v4, "END"

    aput-object v4, v1, v3

    const/16 v3, 0x58

    const-string v4, "END-EXEC"

    aput-object v4, v1, v3

    const/16 v3, 0x59

    const-string v4, "ESCAPE"

    aput-object v4, v1, v3

    const/16 v3, 0x5a

    const-string v4, "EVERY"

    aput-object v4, v1, v3

    const/16 v3, 0x5b

    const-string v4, "EXCEPT"

    aput-object v4, v1, v3

    const/16 v3, 0x5c

    const-string v4, "EXEC"

    aput-object v4, v1, v3

    const/16 v3, 0x5d

    const-string v4, "EXECUTE"

    aput-object v4, v1, v3

    const/16 v3, 0x5e

    const-string v4, "EXISTS"

    aput-object v4, v1, v3

    const/16 v3, 0x5f

    const-string v4, "EXP"

    aput-object v4, v1, v3

    const/16 v3, 0x60

    const-string v4, "EXTERNAL"

    aput-object v4, v1, v3

    const/16 v3, 0x61

    const-string v4, "EXTRACT"

    aput-object v4, v1, v3

    const/16 v3, 0x62

    const-string v4, "FALSE"

    aput-object v4, v1, v3

    const/16 v3, 0x63

    const-string v4, "FETCH"

    aput-object v4, v1, v3

    const/16 v3, 0x64

    const-string v4, "FILTER"

    aput-object v4, v1, v3

    const/16 v3, 0x65

    const-string v4, "FLOAT"

    aput-object v4, v1, v3

    const/16 v3, 0x66

    const-string v4, "FLOOR"

    aput-object v4, v1, v3

    const/16 v3, 0x67

    const-string v4, "FOR"

    aput-object v4, v1, v3

    const/16 v3, 0x68

    const-string v4, "FOREIGN"

    aput-object v4, v1, v3

    const/16 v3, 0x69

    const-string v4, "FREE"

    aput-object v4, v1, v3

    const/16 v3, 0x6a

    const-string v4, "FROM"

    aput-object v4, v1, v3

    const/16 v3, 0x6b

    const-string v4, "FULL"

    aput-object v4, v1, v3

    const/16 v3, 0x6c

    const-string v4, "FUNCTION"

    aput-object v4, v1, v3

    const/16 v3, 0x6d

    const-string v4, "FUSION"

    aput-object v4, v1, v3

    const/16 v3, 0x6e

    const-string v4, "GET"

    aput-object v4, v1, v3

    const/16 v3, 0x6f

    const-string v4, "GLOBAL"

    aput-object v4, v1, v3

    const/16 v3, 0x70

    const-string v4, "GRANT"

    aput-object v4, v1, v3

    const/16 v3, 0x71

    const-string v4, "GROUP"

    aput-object v4, v1, v3

    const/16 v3, 0x72

    const-string v4, "GROUPING"

    aput-object v4, v1, v3

    const/16 v3, 0x73

    const-string v4, "HAVING"

    aput-object v4, v1, v3

    const/16 v3, 0x74

    const-string v4, "HOLD"

    aput-object v4, v1, v3

    const/16 v3, 0x75

    const-string v4, "HOUR"

    aput-object v4, v1, v3

    const/16 v3, 0x76

    const-string v4, "IDENTITY"

    aput-object v4, v1, v3

    const/16 v3, 0x77

    const-string v4, "IN"

    aput-object v4, v1, v3

    const/16 v3, 0x78

    const-string v4, "INDICATOR"

    aput-object v4, v1, v3

    const/16 v3, 0x79

    const-string v4, "INNER"

    aput-object v4, v1, v3

    const/16 v3, 0x7a

    const-string v4, "INOUT"

    aput-object v4, v1, v3

    const/16 v3, 0x7b

    const-string v4, "INSENSITIVE"

    aput-object v4, v1, v3

    const/16 v3, 0x7c

    const-string v4, "INSERT"

    aput-object v4, v1, v3

    const/16 v3, 0x7d

    const-string v4, "INT"

    aput-object v4, v1, v3

    const/16 v3, 0x7e

    const-string v4, "INTEGER"

    aput-object v4, v1, v3

    const/16 v3, 0x7f

    const-string v4, "INTERSECT"

    aput-object v4, v1, v3

    const/16 v3, 0x80

    const-string v4, "INTERSECTION"

    aput-object v4, v1, v3

    const/16 v3, 0x81

    const-string v4, "INTERVAL"

    aput-object v4, v1, v3

    const/16 v3, 0x82

    const-string v4, "INTO"

    aput-object v4, v1, v3

    const/16 v3, 0x83

    const-string v4, "IS"

    aput-object v4, v1, v3

    const/16 v3, 0x84

    const-string v4, "JOIN"

    aput-object v4, v1, v3

    const/16 v3, 0x85

    const-string v4, "LANGUAGE"

    aput-object v4, v1, v3

    const/16 v3, 0x86

    const-string v4, "LARGE"

    aput-object v4, v1, v3

    const/16 v3, 0x87

    const-string v4, "LATERAL"

    aput-object v4, v1, v3

    const/16 v3, 0x88

    const-string v4, "LEADING"

    aput-object v4, v1, v3

    const/16 v3, 0x89

    const-string v4, "LEFT"

    aput-object v4, v1, v3

    const/16 v3, 0x8a

    const-string v4, "LIKE"

    aput-object v4, v1, v3

    const/16 v3, 0x8b

    const-string v4, "LN"

    aput-object v4, v1, v3

    const/16 v3, 0x8c

    const-string v4, "LOCAL"

    aput-object v4, v1, v3

    const/16 v3, 0x8d

    const-string v4, "LOCALTIME"

    aput-object v4, v1, v3

    const/16 v3, 0x8e

    const-string v4, "LOCALTIMESTAMP"

    aput-object v4, v1, v3

    const/16 v3, 0x8f

    const-string v4, "LOWER"

    aput-object v4, v1, v3

    const/16 v3, 0x90

    const-string v4, "MATCH"

    aput-object v4, v1, v3

    const/16 v3, 0x91

    const-string v4, "MAX"

    aput-object v4, v1, v3

    const/16 v3, 0x92

    const-string v4, "MEMBER"

    aput-object v4, v1, v3

    const/16 v3, 0x93

    const-string v4, "MERGE"

    aput-object v4, v1, v3

    const/16 v3, 0x94

    const-string v4, "METHOD"

    aput-object v4, v1, v3

    const/16 v3, 0x95

    const-string v4, "MIN"

    aput-object v4, v1, v3

    const/16 v3, 0x96

    const-string v4, "MINUTE"

    aput-object v4, v1, v3

    const/16 v3, 0x97

    const-string v4, "MOD"

    aput-object v4, v1, v3

    const/16 v3, 0x98

    const-string v4, "MODIFIES"

    aput-object v4, v1, v3

    const/16 v3, 0x99

    const-string v4, "MODULE"

    aput-object v4, v1, v3

    const/16 v3, 0x9a

    const-string v4, "MONTH"

    aput-object v4, v1, v3

    const/16 v3, 0x9b

    const-string v4, "MULTISET"

    aput-object v4, v1, v3

    const/16 v3, 0x9c

    const-string v4, "NATIONAL"

    aput-object v4, v1, v3

    const/16 v3, 0x9d

    const-string v4, "NATURAL"

    aput-object v4, v1, v3

    const/16 v3, 0x9e

    const-string v4, "NCHAR"

    aput-object v4, v1, v3

    const/16 v3, 0x9f

    const-string v4, "NCLOB"

    aput-object v4, v1, v3

    const/16 v3, 0xa0

    const-string v4, "NEW"

    aput-object v4, v1, v3

    const/16 v3, 0xa1

    const-string v4, "NO"

    aput-object v4, v1, v3

    const/16 v3, 0xa2

    const-string v4, "NONE"

    aput-object v4, v1, v3

    const/16 v3, 0xa3

    const-string v4, "NORMALIZE"

    aput-object v4, v1, v3

    const/16 v3, 0xa4

    const-string v4, "NOT"

    aput-object v4, v1, v3

    const/16 v3, 0xa5

    const-string v4, "NULL"

    aput-object v4, v1, v3

    const/16 v3, 0xa6

    const-string v4, "NULLIF"

    aput-object v4, v1, v3

    const/16 v3, 0xa7

    const-string v4, "NUMERIC"

    aput-object v4, v1, v3

    const/16 v3, 0xa8

    const-string v4, "OCTET_LENGTH"

    aput-object v4, v1, v3

    const/16 v3, 0xa9

    const-string v4, "OF"

    aput-object v4, v1, v3

    const/16 v3, 0xaa

    const-string v4, "OLD"

    aput-object v4, v1, v3

    const/16 v3, 0xab

    const-string v4, "ON"

    aput-object v4, v1, v3

    const/16 v3, 0xac

    const-string v4, "ONLY"

    aput-object v4, v1, v3

    const/16 v3, 0xad

    const-string v4, "OPEN"

    aput-object v4, v1, v3

    const/16 v3, 0xae

    const-string v4, "OR"

    aput-object v4, v1, v3

    const/16 v3, 0xaf

    const-string v4, "ORDER"

    aput-object v4, v1, v3

    const/16 v3, 0xb0

    const-string v4, "OUT"

    aput-object v4, v1, v3

    const/16 v3, 0xb1

    const-string v4, "OUTER"

    aput-object v4, v1, v3

    const/16 v3, 0xb2

    const-string v4, "OVER"

    aput-object v4, v1, v3

    const/16 v3, 0xb3

    const-string v4, "OVERLAPS"

    aput-object v4, v1, v3

    const/16 v3, 0xb4

    const-string v4, "OVERLAY"

    aput-object v4, v1, v3

    const/16 v3, 0xb5

    const-string v4, "PARAMETER"

    aput-object v4, v1, v3

    const/16 v3, 0xb6

    const-string v4, "PARTITION"

    aput-object v4, v1, v3

    const/16 v3, 0xb7

    const-string v4, "PERCENTILE_CONT"

    aput-object v4, v1, v3

    const/16 v3, 0xb8

    const-string v4, "PERCENTILE_DISC"

    aput-object v4, v1, v3

    const/16 v3, 0xb9

    const-string v4, "PERCENT_RANK"

    aput-object v4, v1, v3

    const/16 v3, 0xba

    const-string v4, "POSITION"

    aput-object v4, v1, v3

    const/16 v3, 0xbb

    const-string v4, "POWER"

    aput-object v4, v1, v3

    const/16 v3, 0xbc

    const-string v4, "PRECISION"

    aput-object v4, v1, v3

    const/16 v3, 0xbd

    const-string v4, "PREPARE"

    aput-object v4, v1, v3

    const/16 v3, 0xbe

    const-string v4, "PRIMARY"

    aput-object v4, v1, v3

    const/16 v3, 0xbf

    const-string v4, "PROCEDURE"

    aput-object v4, v1, v3

    const/16 v3, 0xc0

    const-string v4, "RANGE"

    aput-object v4, v1, v3

    const/16 v3, 0xc1

    const-string v4, "RANK"

    aput-object v4, v1, v3

    const/16 v3, 0xc2

    const-string v4, "READS"

    aput-object v4, v1, v3

    const/16 v3, 0xc3

    const-string v4, "REAL"

    aput-object v4, v1, v3

    const/16 v3, 0xc4

    const-string v4, "RECURSIVE"

    aput-object v4, v1, v3

    const/16 v3, 0xc5

    const-string v4, "REF"

    aput-object v4, v1, v3

    const/16 v3, 0xc6

    const-string v4, "REFERENCES"

    aput-object v4, v1, v3

    const/16 v3, 0xc7

    const-string v4, "REFERENCING"

    aput-object v4, v1, v3

    const/16 v3, 0xc8

    const-string v4, "REGR_AVGX"

    aput-object v4, v1, v3

    const/16 v3, 0xc9

    const-string v4, "REGR_AVGY"

    aput-object v4, v1, v3

    const/16 v3, 0xca

    const-string v4, "REGR_COUNT"

    aput-object v4, v1, v3

    const/16 v3, 0xcb

    const-string v4, "REGR_INTERCEPT"

    aput-object v4, v1, v3

    const/16 v3, 0xcc

    const-string v4, "REGR_R2"

    aput-object v4, v1, v3

    const/16 v3, 0xcd

    const-string v4, "REGR_SLOPE"

    aput-object v4, v1, v3

    const/16 v3, 0xce

    const-string v4, "REGR_SXX"

    aput-object v4, v1, v3

    const/16 v3, 0xcf

    const-string v4, "REGR_SXY"

    aput-object v4, v1, v3

    const/16 v3, 0xd0

    const-string v4, "REGR_SYY"

    aput-object v4, v1, v3

    const/16 v3, 0xd1

    const-string v4, "RELEASE"

    aput-object v4, v1, v3

    const/16 v3, 0xd2

    const-string v4, "RESULT"

    aput-object v4, v1, v3

    const/16 v3, 0xd3

    const-string v4, "RETURN"

    aput-object v4, v1, v3

    const/16 v3, 0xd4

    const-string v4, "RETURNS"

    aput-object v4, v1, v3

    const/16 v3, 0xd5

    const-string v4, "REVOKE"

    aput-object v4, v1, v3

    const/16 v3, 0xd6

    const-string v4, "RIGHT"

    aput-object v4, v1, v3

    const/16 v3, 0xd7

    const-string v4, "ROLLBACK"

    aput-object v4, v1, v3

    const/16 v3, 0xd8

    const-string v4, "ROLLUP"

    aput-object v4, v1, v3

    const/16 v3, 0xd9

    const-string v4, "ROW"

    aput-object v4, v1, v3

    const/16 v3, 0xda

    const-string v4, "ROWS"

    aput-object v4, v1, v3

    const/16 v3, 0xdb

    const-string v4, "ROW_NUMBER"

    aput-object v4, v1, v3

    const/16 v3, 0xdc

    const-string v4, "SAVEPOINT"

    aput-object v4, v1, v3

    const/16 v3, 0xdd

    const-string v4, "SCOPE"

    aput-object v4, v1, v3

    const/16 v3, 0xde

    const-string v4, "SCROLL"

    aput-object v4, v1, v3

    const/16 v3, 0xdf

    const-string v4, "SEARCH"

    aput-object v4, v1, v3

    const/16 v3, 0xe0

    const-string v4, "SECOND"

    aput-object v4, v1, v3

    const/16 v3, 0xe1

    const-string v4, "SELECT"

    aput-object v4, v1, v3

    const/16 v3, 0xe2

    const-string v4, "SENSITIVE"

    aput-object v4, v1, v3

    const/16 v3, 0xe3

    const-string v4, "SESSION_USER"

    aput-object v4, v1, v3

    const/16 v3, 0xe4

    const-string v4, "SET"

    aput-object v4, v1, v3

    const/16 v3, 0xe5

    const-string v4, "SIMILAR"

    aput-object v4, v1, v3

    const/16 v3, 0xe6

    const-string v4, "SMALLINT"

    aput-object v4, v1, v3

    const/16 v3, 0xe7

    const-string v4, "SOME"

    aput-object v4, v1, v3

    const/16 v3, 0xe8

    const-string v4, "SPECIFIC"

    aput-object v4, v1, v3

    const/16 v3, 0xe9

    const-string v4, "SPECIFICTYPE"

    aput-object v4, v1, v3

    const/16 v3, 0xea

    const-string v4, "SQL"

    aput-object v4, v1, v3

    const/16 v3, 0xeb

    const-string v4, "SQLEXCEPTION"

    aput-object v4, v1, v3

    const/16 v3, 0xec

    const-string v4, "SQLSTATE"

    aput-object v4, v1, v3

    const/16 v3, 0xed

    const-string v4, "SQLWARNING"

    aput-object v4, v1, v3

    const/16 v3, 0xee

    const-string v4, "SQRT"

    aput-object v4, v1, v3

    const/16 v3, 0xef

    const-string v4, "START"

    aput-object v4, v1, v3

    const/16 v3, 0xf0

    const-string v4, "STATIC"

    aput-object v4, v1, v3

    const/16 v3, 0xf1

    const-string v4, "STDDEV_POP"

    aput-object v4, v1, v3

    const/16 v3, 0xf2

    const-string v4, "STDDEV_SAMP"

    aput-object v4, v1, v3

    const/16 v3, 0xf3

    const-string v4, "SUBMULTISET"

    aput-object v4, v1, v3

    const/16 v3, 0xf4

    const-string v4, "SUBSTRING"

    aput-object v4, v1, v3

    const/16 v3, 0xf5

    const-string v4, "SUM"

    aput-object v4, v1, v3

    const/16 v3, 0xf6

    const-string v4, "SYMMETRIC"

    aput-object v4, v1, v3

    const/16 v3, 0xf7

    const-string v4, "SYSTEM"

    aput-object v4, v1, v3

    const/16 v3, 0xf8

    const-string v4, "SYSTEM_USER"

    aput-object v4, v1, v3

    const/16 v3, 0xf9

    aput-object v0, v1, v3

    const/16 v0, 0xfa

    const-string v3, "TABLESAMPLE"

    aput-object v3, v1, v0

    const/16 v0, 0xfb

    const-string v3, "THEN"

    aput-object v3, v1, v0

    const/16 v0, 0xfc

    const-string v3, "TIME"

    aput-object v3, v1, v0

    const/16 v0, 0xfd

    const-string v3, "TIMESTAMP"

    aput-object v3, v1, v0

    const/16 v0, 0xfe

    const-string v3, "TIMEZONE_HOUR"

    aput-object v3, v1, v0

    const/16 v0, 0xff

    const-string v3, "TIMEZONE_MINUTE"

    aput-object v3, v1, v0

    const/16 v0, 0x100

    const-string v3, "TO"

    aput-object v3, v1, v0

    const/16 v0, 0x101

    const-string v3, "TRAILING"

    aput-object v3, v1, v0

    const/16 v0, 0x102

    const-string v3, "TRANSLATE"

    aput-object v3, v1, v0

    const/16 v0, 0x103

    const-string v3, "TRANSLATION"

    aput-object v3, v1, v0

    const/16 v0, 0x104

    const-string v3, "TREAT"

    aput-object v3, v1, v0

    const/16 v0, 0x105

    const-string v3, "TRIGGER"

    aput-object v3, v1, v0

    const/16 v0, 0x106

    const-string v3, "TRIM"

    aput-object v3, v1, v0

    const/16 v0, 0x107

    const-string v3, "TRUE"

    aput-object v3, v1, v0

    const/16 v0, 0x108

    const-string v3, "UESCAPE"

    aput-object v3, v1, v0

    const/16 v0, 0x109

    const-string v3, "UNION"

    aput-object v3, v1, v0

    const/16 v0, 0x10a

    const-string v3, "UNIQUE"

    aput-object v3, v1, v0

    const/16 v0, 0x10b

    const-string v3, "UNKNOWN"

    aput-object v3, v1, v0

    const/16 v0, 0x10c

    const-string v3, "UNNEST"

    aput-object v3, v1, v0

    const/16 v0, 0x10d

    const-string v3, "UPDATE"

    aput-object v3, v1, v0

    const/16 v0, 0x10e

    const-string v3, "UPPER"

    aput-object v3, v1, v0

    const/16 v0, 0x10f

    const-string v3, "USER"

    aput-object v3, v1, v0

    const/16 v0, 0x110

    const-string v3, "USING"

    aput-object v3, v1, v0

    const/16 v0, 0x111

    const-string v3, "VALUE"

    aput-object v3, v1, v0

    const/16 v0, 0x112

    const-string v3, "VALUES"

    aput-object v3, v1, v0

    const/16 v0, 0x113

    const-string v3, "VARCHAR"

    aput-object v3, v1, v0

    const/16 v0, 0x114

    const-string v3, "VARYING"

    aput-object v3, v1, v0

    const/16 v0, 0x115

    const-string v3, "VAR_POP"

    aput-object v3, v1, v0

    const/16 v0, 0x116

    const-string v3, "VAR_SAMP"

    aput-object v3, v1, v0

    const/16 v0, 0x117

    const-string v3, "WHEN"

    aput-object v3, v1, v0

    const/16 v0, 0x118

    const-string v3, "WHENEVER"

    aput-object v3, v1, v0

    const/16 v0, 0x119

    const-string v3, "WHERE"

    aput-object v3, v1, v0

    const/16 v0, 0x11a

    const-string v3, "WIDTH_BUCKET"

    aput-object v3, v1, v0

    const/16 v0, 0x11b

    const-string v3, "WINDOW"

    aput-object v3, v1, v0

    const/16 v0, 0x11c

    const-string v3, "WITH"

    aput-object v3, v1, v0

    const/16 v0, 0x11d

    const-string v3, "WITHIN"

    aput-object v3, v1, v0

    const/16 v0, 0x11e

    const-string v3, "WITHOUT"

    aput-object v3, v1, v0

    const/16 v0, 0x11f

    const-string v3, "YEAR"

    aput-object v3, v1, v0

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->SQL2003_KEYWORDS:[Ljava/lang/String;

    .line 751
    sput-object v2, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 2
    .param p1, "connToSet"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "databaseToSet"    # Ljava/lang/String;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 798
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 799
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 800
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 802
    const/4 v0, 0x0

    .line 804
    .local v0, "identifierQuote":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 805
    nop

    .line 811
    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    .line 810
    goto :goto_1

    .line 809
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 805
    :catch_0
    move-exception v1

    .line 807
    .local v1, "sqlEx":Ljava/sql/SQLException;
    :try_start_1
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    goto :goto_0

    .line 811
    :goto_1
    return-void

    :goto_2
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    .line 809
    throw v1
.end method

.method private buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;
    .locals 1
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mysql/jdbc/Field;",
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 835
    .local p2, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method static buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;
    .locals 8
    .param p0, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "c"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mysql/jdbc/Field;",
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ")",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 839
    .local p1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    array-length v0, p0

    .line 841
    .local v0, "fieldsLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 842
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    .line 844
    .local v2, "jdbcType":I
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 848
    :sswitch_0
    aget-object v3, p0, v1

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/mysql/jdbc/Field;->setEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)V

    .line 849
    nop

    .line 854
    :goto_1
    aget-object v3, p0, v1

    invoke-virtual {v3, p2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 855
    aget-object v3, p0, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 841
    .end local v2    # "jdbcType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v4, p1}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;
    .locals 15
    .param p1, "procNameAsBytes"    # [B
    .param p2, "procCatAsBytes"    # [B
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "isOutParam"    # Z
    .param p5, "isInParam"    # Z
    .param p6, "isReturnParam"    # Z
    .param p7, "typeDesc"    # Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .param p8, "forGetFunctionColumns"    # Z
    .param p9, "ordinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 975
    move-object v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    const/16 v3, 0x11

    if-eqz v2, :cond_0

    new-array v4, v3, [[B

    goto :goto_0

    :cond_0
    const/16 v4, 0x14

    new-array v4, v4, [[B

    .line 976
    .local v4, "row":[[B
    :goto_0
    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 977
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v4, v6

    .line 978
    const/4 v8, 0x2

    aput-object p1, v4, v8

    .line 979
    const/4 v9, 0x3

    move-object/from16 v10, p3

    invoke-virtual {p0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v4, v9

    .line 980
    const/4 v9, 0x4

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual {p0, v11, v12, v13, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getColumnType(ZZZZ)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v4, v9

    .line 981
    const/4 v9, 0x5

    iget-short v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v14}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v4, v9

    .line 982
    const/4 v9, 0x6

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {p0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v4, v9

    .line 983
    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez v9, :cond_1

    move-object v9, v7

    goto :goto_1

    :cond_1
    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    :goto_1
    const/4 v14, 0x7

    aput-object v9, v4, v14

    .line 984
    const/16 v9, 0x8

    aget-object v14, v4, v14

    aput-object v14, v4, v9

    .line 985
    const/16 v9, 0x9

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v14, :cond_2

    move-object v14, v7

    goto :goto_2

    :cond_2
    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    :goto_2
    aput-object v14, v4, v9

    .line 986
    const/16 v9, 0xa

    iget v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v4, v9

    .line 988
    iget v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    const/16 v14, 0xb

    packed-switch v9, :pswitch_data_0

    .line 1002
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v5, "Internal error while parsing callable statement metadata (unknown nullability value fount)"

    const-string v6, "S1000"

    invoke-static {v5, v6, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 998
    :pswitch_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v14

    .line 999
    goto :goto_3

    .line 994
    :pswitch_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v14

    .line 995
    goto :goto_3

    .line 990
    :pswitch_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v14

    .line 991
    nop

    .line 1006
    :goto_3
    const/16 v5, 0xc

    aput-object v7, v4, v5

    .line 1008
    const/16 v5, 0x10

    const/16 v6, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    if-eqz v2, :cond_3

    .line 1010
    aput-object v7, v4, v9

    .line 1013
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v4, v8

    .line 1016
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v4, v6

    .line 1019
    aput-object p1, v4, v5

    goto :goto_4

    .line 1022
    :cond_3
    aput-object v7, v4, v9

    .line 1025
    aput-object v7, v4, v8

    .line 1028
    aput-object v7, v4, v6

    .line 1031
    aput-object v7, v4, v5

    .line 1034
    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 1037
    const/16 v3, 0x12

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 1040
    const/16 v3, 0x13

    aput-object p1, v4, v3

    .line 1043
    :goto_4
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endPositionOfParameterDeclaration(ILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "beginIndex"    # I
    .param p2, "procedureDef"    # Ljava/lang/String;
    .param p3, "quoteChar"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1876
    add-int/lit8 v0, p1, 0x1

    .line 1877
    .local v0, "currentPos":I
    const/4 v1, 0x1

    .line 1879
    .local v1, "parenDepth":I
    :goto_0
    if-lez v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1880
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_1
    move-object v7, v2

    const-string v4, ")"

    move v2, v0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v8

    .line 1883
    .local v8, "closedParenIndex":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1884
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_2
    move-object v7, v2

    const-string v4, "("

    move v2, v0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1887
    .local v2, "nextOpenParenIndex":I
    if-eq v2, v9, :cond_2

    if-ge v2, v8, :cond_2

    .line 1888
    add-int/lit8 v1, v1, 0x1

    .line 1889
    add-int/lit8 v0, v8, 0x1

    goto :goto_3

    .line 1891
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 1892
    move v0, v8

    .line 1894
    .end local v2    # "nextOpenParenIndex":I
    :goto_3
    nop

    .line 1899
    .end local v8    # "closedParenIndex":I
    goto :goto_0

    .line 1896
    .restart local v8    # "closedParenIndex":I
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "Internal error when parsing callable statement metadata"

    const-string v4, "S1000"

    invoke-static {v3, v4, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1901
    .end local v8    # "closedParenIndex":I
    :cond_4
    return v0
.end method

.method private findEndOfReturnsClause(Ljava/lang/String;I)I
    .locals 13
    .param p1, "procedureDefn"    # Ljava/lang/String;
    .param p2, "positionOfReturnKeyword"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "openingMarkers":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1927
    .local v1, "closingMarkers":Ljava/lang/String;
    const-string v2, "LANGUAGE"

    const-string v3, "NOT"

    const-string v4, "DETERMINISTIC"

    const-string v5, "CONTAINS"

    const-string v6, "NO"

    const-string v7, "READ"

    const-string v8, "MODIFIES"

    const-string v9, "SQL"

    const-string v10, "COMMENT"

    const-string v11, "BEGIN"

    const-string v12, "RETURN"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1929
    .local v8, "tokens":[Ljava/lang/String;
    const-string v2, "RETURNS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    add-int/lit8 v9, v2, 0x1

    .line 1931
    .local v9, "startLookingAt":I
    const/4 v2, -0x1

    .line 1933
    .local v2, "endOfReturn":I
    const/4 v3, 0x0

    move v10, v2

    move v11, v3

    .end local v2    # "endOfReturn":I
    .local v10, "endOfReturn":I
    .local v11, "i":I
    :goto_0
    array-length v2, v8

    const/4 v12, -0x1

    if-ge v11, v2, :cond_3

    .line 1934
    aget-object v4, v8, v11

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_1
    move-object v7, v2

    move v2, v9

    move-object v3, p1

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1937
    .local v2, "nextEndOfReturn":I
    if-eq v2, v12, :cond_2

    .line 1938
    if-eq v10, v12, :cond_1

    if-ge v2, v10, :cond_2

    .line 1939
    :cond_1
    move v3, v2

    move v10, v3

    .line 1933
    .end local v2    # "nextEndOfReturn":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1944
    .end local v11    # "i":I
    :cond_3
    if-eq v10, v12, :cond_4

    .line 1945
    return v10

    .line 1949
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_2
    move-object v7, v2

    const-string v4, ":"

    move v2, v9

    move-object v3, p1

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1952
    .end local v10    # "endOfReturn":I
    .local v2, "endOfReturn":I
    if-eq v2, v12, :cond_7

    .line 1954
    move v3, v2

    .local v3, "i":I
    :goto_3
    if-lez v3, :cond_7

    .line 1955
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1956
    return v3

    .line 1954
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1963
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "Internal error when parsing callable statement metadata"

    const-string v5, "S1000"

    invoke-static {v4, v5, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method private getCallStmtParameterTypes(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 45
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "quotedProcName"    # Ljava/lang/String;
    .param p3, "procType"    # Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .param p4, "parameterNamePattern"    # Ljava/lang/String;
    .param p6, "forGetFunctionColumns"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1554
    .local p5, "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    const-string v8, "UTF-8"

    const-string v14, " "

    const/4 v2, 0x0

    .line 1555
    .local v2, "paramRetrievalStmt":Ljava/sql/Statement;
    const/4 v9, 0x0

    .line 1557
    .local v9, "paramRetrievalRs":Ljava/sql/ResultSet;
    if-nez p4, :cond_1

    .line 1558
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    const-string v0, "%"

    move-object v15, v0

    .end local p4    # "parameterNamePattern":Ljava/lang/String;
    .local v0, "parameterNamePattern":Ljava/lang/String;
    goto :goto_0

    .line 1561
    .end local v0    # "parameterNamePattern":Ljava/lang/String;
    .restart local p4    # "parameterNamePattern":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v3, "Parameter/Column name pattern can not be NULL or empty."

    const-string v4, "S1009"

    invoke-static {v3, v4, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1557
    :cond_1
    move-object/from16 v15, p4

    .line 1566
    .end local p4    # "parameterNamePattern":Ljava/lang/String;
    .local v15, "parameterNamePattern":Ljava/lang/String;
    :goto_0
    const/16 v16, 0x0

    .line 1568
    .local v16, "parameterDef":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1569
    .local v10, "procNameAsBytes":[B
    const/16 v17, 0x0

    .line 1571
    .local v17, "procCatAsBytes":[B
    const/16 v18, 0x0

    .line 1572
    .local v18, "isProcedureInAnsiMode":Z
    const/16 v19, 0x0

    .line 1573
    .local v19, "storageDefnDelims":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1576
    .local v20, "storageDefnClosures":Ljava/lang/String;
    :try_start_0
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    move-object v6, v0

    .line 1578
    .end local v2    # "paramRetrievalStmt":Ljava/sql/Statement;
    .local v6, "paramRetrievalStmt":Ljava/sql/Statement;
    :try_start_1
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1579
    .local v5, "oldCatalog":Ljava/lang/String;
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_4

    .line 1582
    const/4 v2, 0x0

    .line 1585
    .local v2, "rs":Ljava/sql/ResultSet;
    :try_start_3
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1586
    const-string v0, "SELECT DATABASE()"

    invoke-interface {v6, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object v2, v0

    .line 1587
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 1589
    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v0

    .line 1591
    .end local p1    # "catalog":Ljava/lang/String;
    .local v1, "catalog":Ljava/lang/String;
    nop

    .line 1857
    :try_start_4
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v5}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1595
    if-eqz v2, :cond_2

    .line 1596
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    nop

    .line 1598
    move-object v3, v1

    goto :goto_1

    .line 1732
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local v5    # "oldCatalog":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v1

    move-object v2, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v15

    move-object v1, v0

    goto/16 :goto_1a

    .line 1593
    .end local v1    # "catalog":Ljava/lang/String;
    .restart local v2    # "rs":Ljava/sql/ResultSet;
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 1596
    :try_start_5
    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v5}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1595
    if-eqz v2, :cond_3

    .line 1596
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    :cond_3
    nop

    .line 1593
    nop

    .end local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .end local v9    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v10    # "procNameAsBytes":[B
    .end local v15    # "parameterNamePattern":Ljava/lang/String;
    .end local v16    # "parameterDef":Ljava/lang/String;
    .end local v17    # "procCatAsBytes":[B
    .end local v18    # "isProcedureInAnsiMode":Z
    .end local v19    # "storageDefnDelims":Ljava/lang/String;
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local p1    # "catalog":Ljava/lang/String;
    .end local p2    # "quotedProcName":Ljava/lang/String;
    .end local p3    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .end local p5    # "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local p6    # "forGetFunctionColumns":Z
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1732
    .end local v2    # "rs":Ljava/sql/ResultSet;
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v9    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v10    # "procNameAsBytes":[B
    .restart local v15    # "parameterNamePattern":Ljava/lang/String;
    .restart local v16    # "parameterDef":Ljava/lang/String;
    .restart local v17    # "procCatAsBytes":[B
    .restart local v18    # "isProcedureInAnsiMode":Z
    .restart local v19    # "storageDefnDelims":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    .restart local p2    # "quotedProcName":Ljava/lang/String;
    .restart local p3    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .restart local p5    # "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local p6    # "forGetFunctionColumns":Z
    :catchall_2
    move-exception v0

    move-object/from16 v24, v1

    move-object v2, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v15

    move-object v1, v0

    goto/16 :goto_1a

    .line 1601
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .end local p1    # "catalog":Ljava/lang/String;
    .local v3, "catalog":Ljava/lang/String;
    :goto_1
    :try_start_6
    invoke-interface {v6}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_11

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1602
    :try_start_7
    invoke-interface {v6, v2}, Ljava/sql/Statement;->setMaxRows(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 1732
    .end local v5    # "oldCatalog":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v3

    move-object v2, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v15

    goto/16 :goto_1a

    .line 1605
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v0, -0x1

    .line 1607
    .local v0, "dotIndex":I
    :try_start_8
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    if-nez v1, :cond_7

    .line 1608
    :try_start_9
    const-string v21, "."

    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_6

    :try_start_a
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :cond_6
    :try_start_b
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_3
    move-object/from16 v22, v2

    move-object/from16 v23, v1

    const/4 v1, 0x0

    move-object/from16 v2, p2

    move-object/from16 p4, v10

    move-object v10, v3

    .end local v3    # "catalog":Ljava/lang/String;
    .local v10, "catalog":Ljava/lang/String;
    .local p4, "procNameAsBytes":[B
    move-object/from16 v3, v21

    move-object/from16 v4, v23

    move-object/from16 v21, v5

    .end local v5    # "oldCatalog":Ljava/lang/String;
    .local v21, "oldCatalog":Ljava/lang/String;
    move-object/from16 v5, v23

    move-object/from16 v23, v15

    move-object v15, v6

    .end local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .local v15, "paramRetrievalStmt":Ljava/sql/Statement;
    .local v23, "parameterNamePattern":Ljava/lang/String;
    move-object/from16 v6, v22

    :try_start_c
    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move v0, v1

    move v6, v0

    goto :goto_4

    .line 1732
    .end local v0    # "dotIndex":I
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .end local p4    # "procNameAsBytes":[B
    .restart local v3    # "catalog":Ljava/lang/String;
    .restart local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .local v10, "procNameAsBytes":[B
    .local v15, "parameterNamePattern":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 p4, v10

    move-object/from16 v23, v15

    move-object v10, v3

    move-object v15, v6

    move-object v1, v0

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object v2, v15

    move-object/from16 v27, v23

    move-object/from16 v10, p4

    .end local v3    # "catalog":Ljava/lang/String;
    .end local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .local v10, "catalog":Ljava/lang/String;
    .local v15, "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local p4    # "procNameAsBytes":[B
    goto/16 :goto_1a

    .line 1611
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .end local p4    # "procNameAsBytes":[B
    .restart local v0    # "dotIndex":I
    .restart local v3    # "catalog":Ljava/lang/String;
    .restart local v5    # "oldCatalog":Ljava/lang/String;
    .restart local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .local v10, "procNameAsBytes":[B
    .local v15, "parameterNamePattern":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v5

    move-object/from16 p4, v10

    move-object/from16 v23, v15

    move-object v10, v3

    move-object v15, v6

    .end local v3    # "catalog":Ljava/lang/String;
    .end local v5    # "oldCatalog":Ljava/lang/String;
    .end local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .local v10, "catalog":Ljava/lang/String;
    .local v15, "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local p4    # "procNameAsBytes":[B
    :try_start_d
    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    move v0, v1

    move v6, v0

    .line 1614
    .end local v0    # "dotIndex":I
    .local v6, "dotIndex":I
    :goto_4
    const/4 v0, 0x0

    .line 1616
    .local v0, "dbName":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v6, v5, :cond_8

    add-int/lit8 v1, v6, 0x1

    :try_start_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1617
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1618
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object v4, v0

    move-object v7, v1

    .end local p2    # "quotedProcName":Ljava/lang/String;
    .local v1, "quotedProcName":Ljava/lang/String;
    goto :goto_5

    .line 1732
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "quotedProcName":Ljava/lang/String;
    .end local v6    # "dotIndex":I
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .restart local p2    # "quotedProcName":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object v2, v15

    move-object/from16 v27, v23

    move-object/from16 v10, p4

    goto/16 :goto_1a

    .line 1620
    .restart local v0    # "dbName":Ljava/lang/String;
    .restart local v6    # "dotIndex":I
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    :cond_8
    :try_start_f
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    invoke-static {v10, v1, v2}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    move-object v0, v1

    move-object v4, v0

    .line 1625
    .end local v0    # "dbName":Ljava/lang/String;
    .end local p2    # "quotedProcName":Ljava/lang/String;
    .local v4, "dbName":Ljava/lang/String;
    .local v7, "quotedProcName":Ljava/lang/String;
    :goto_5
    :try_start_10
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    move-object v1, v0

    .line 1627
    .local v1, "tmpProcName":Ljava/lang/String;
    :try_start_11
    invoke-static {v1, v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 1632
    .end local p4    # "procNameAsBytes":[B
    .local v0, "procNameAsBytes":[B
    move-object/from16 v22, v0

    goto :goto_6

    .line 1732
    .end local v0    # "procNameAsBytes":[B
    .end local v1    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v6    # "dotIndex":I
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .restart local p4    # "procNameAsBytes":[B
    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object v2, v15

    move-object/from16 v27, v23

    move-object/from16 v10, p4

    goto/16 :goto_1a

    .line 1628
    .restart local v1    # "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v6    # "dotIndex":I
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1629
    .local v0, "ueEx":Ljava/io/UnsupportedEncodingException;
    :try_start_12
    invoke-virtual {v11, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .end local p4    # "procNameAsBytes":[B
    .local v2, "procNameAsBytes":[B
    move-object/from16 v22, v2

    .line 1634
    .end local v0    # "ueEx":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "procNameAsBytes":[B
    .local v22, "procNameAsBytes":[B
    :goto_6
    :try_start_13
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    move-object v3, v0

    .line 1636
    .end local v1    # "tmpProcName":Ljava/lang/String;
    .local v3, "tmpProcName":Ljava/lang/String;
    :try_start_14
    invoke-static {v3, v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1641
    .end local v17    # "procCatAsBytes":[B
    .local v0, "procCatAsBytes":[B
    move-object/from16 v17, v0

    goto :goto_7

    .line 1732
    .end local v0    # "procCatAsBytes":[B
    .end local v3    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v6    # "dotIndex":I
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v17    # "procCatAsBytes":[B
    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v27, v23

    goto/16 :goto_1a

    .line 1637
    .restart local v3    # "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v6    # "dotIndex":I
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1638
    .local v0, "ueEx":Ljava/io/UnsupportedEncodingException;
    :try_start_15
    invoke-virtual {v11, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    .end local v17    # "procCatAsBytes":[B
    .local v1, "procCatAsBytes":[B
    move-object/from16 v17, v1

    .line 1644
    .end local v0    # "ueEx":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "procCatAsBytes":[B
    .restart local v17    # "procCatAsBytes":[B
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 1645
    .local v2, "procNameBuf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1647
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    const/4 v0, 0x0

    .line 1650
    .local v0, "fieldName":Ljava/lang/String;
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    if-ne v12, v1, :cond_9

    .line 1651
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW CREATE PROCEDURE "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v9, v1

    .line 1652
    const-string v1, "Create Procedure"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    move-object v0, v1

    move-object v1, v9

    move-object v9, v0

    goto :goto_8

    .line 1654
    :cond_9
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW CREATE FUNCTION "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v9, v1

    .line 1655
    const-string v1, "Create Function"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    move-object v0, v1

    move-object v1, v9

    move-object v9, v0

    .line 1658
    .end local v0    # "fieldName":Ljava/lang/String;
    .local v1, "paramRetrievalRs":Ljava/sql/ResultSet;
    .local v9, "fieldName":Ljava/lang/String;
    :goto_8
    :try_start_18
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    const-string v8, "YES"

    move-object/from16 v24, v10

    .end local v10    # "catalog":Ljava/lang/String;
    .local v24, "catalog":Ljava/lang/String;
    const-string v10, "`"

    move-object/from16 p1, v10

    const-string v10, "S1000"

    if-eqz v0, :cond_15

    .line 1659
    :try_start_19
    invoke-interface {v1, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v33, v0

    .line 1661
    .local v33, "procedureDef":Ljava/lang/String;
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    if-nez v0, :cond_b

    if-eqz v33, :cond_a

    :try_start_1a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    .line 1662
    :cond_a
    const-string v0, "User does not have access to metadata required to determine stored procedure parameter types. If rights can not be granted, configure connection with \"noAccessToProcedureBodies=true\" to have driver generate parameters that represent INOUT strings irregardless of actual parameter types."

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v0, v10, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .end local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v15    # "paramRetrievalStmt":Ljava/sql/Statement;
    .end local v16    # "parameterDef":Ljava/lang/String;
    .end local v17    # "procCatAsBytes":[B
    .end local v18    # "isProcedureInAnsiMode":Z
    .end local v19    # "storageDefnDelims":Ljava/lang/String;
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local v22    # "procNameAsBytes":[B
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .end local v24    # "catalog":Ljava/lang/String;
    .end local p3    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .end local p5    # "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local p6    # "forGetFunctionColumns":Z
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 1669
    .restart local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .restart local v15    # "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v16    # "parameterDef":Ljava/lang/String;
    .restart local v17    # "procCatAsBytes":[B
    .restart local v18    # "isProcedureInAnsiMode":Z
    .restart local v19    # "storageDefnDelims":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    .restart local v22    # "procNameAsBytes":[B
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local p3    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .restart local p5    # "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local p6    # "forGetFunctionColumns":Z
    :cond_b
    :goto_9
    :try_start_1b
    const-string v0, "sql_mode"

    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "sqlMode":Ljava/lang/String;
    const-string v5, "ANSI"

    invoke-static {v0, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move/from16 v35, v6

    const/4 v6, -0x1

    .end local v6    # "dotIndex":I
    .local v35, "dotIndex":I
    if-eq v5, v6, :cond_c

    .line 1672
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 1676
    .end local v0    # "sqlMode":Ljava/lang/String;
    :cond_c
    goto :goto_a

    .line 1732
    .end local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v3    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v33    # "procedureDef":Ljava/lang/String;
    .end local v35    # "dotIndex":I
    :catchall_8
    move-exception v0

    move-object v9, v1

    move-object/from16 v32, v7

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v27, v23

    move-object v1, v0

    goto/16 :goto_1a

    .line 1674
    .restart local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .restart local v3    # "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v6    # "dotIndex":I
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v33    # "procedureDef":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v35, v6

    const/4 v6, -0x1

    .line 1678
    .end local v6    # "dotIndex":I
    .restart local v35    # "dotIndex":I
    :goto_a
    if-eqz v18, :cond_d

    :try_start_1c
    const-string v0, "`\""
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto :goto_b

    :cond_d
    move-object/from16 v0, p1

    .line 1679
    .local v0, "identifierMarkers":Ljava/lang/String;
    :goto_b
    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1680
    .local v27, "identifierAndStringMarkers":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    .line 1681
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    .line 1683
    if-eqz v33, :cond_14

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_14

    .line 1685
    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v26, v33

    move-object/from16 v28, v27

    invoke-static/range {v26 .. v32}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 1687
    .end local v33    # "procedureDef":Ljava/lang/String;
    .local v6, "procedureDef":Ljava/lang/String;
    const/16 v36, 0x0

    const-string v38, "("

    iget-object v5, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 p2, v0

    .end local v0    # "identifierMarkers":Ljava/lang/String;
    .local p2, "identifierMarkers":Ljava/lang/String;
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    if-eqz v0, :cond_e

    :try_start_1e
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    goto :goto_c

    :cond_e
    :try_start_1f
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_c
    move-object/from16 v41, v0

    move-object/from16 v37, v6

    move-object/from16 v39, v5

    move-object/from16 v40, v5

    invoke-static/range {v36 .. v41}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 1689
    .local v0, "openParenIndex":I
    const/4 v5, 0x0

    .line 1691
    .local v5, "endOfParamDeclarationIndex":I
    move-object/from16 p4, v1

    .end local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .local p4, "paramRetrievalRs":Ljava/sql/ResultSet;
    :try_start_20
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-direct {v11, v0, v6, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->endPositionOfParameterDeclaration(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v5, v1

    .line 1693
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    if-ne v12, v1, :cond_11

    .line 1697
    const/16 v36, 0x0

    const-string v38, " RETURNS "

    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    move-object/from16 v26, v2

    .end local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .local v26, "procNameBuf":Ljava/lang/StringBuilder;
    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    if-eqz v2, :cond_f

    :try_start_21
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    goto :goto_d

    .line 1732
    .end local v0    # "openParenIndex":I
    .end local v3    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v5    # "endOfParamDeclarationIndex":I
    .end local v6    # "procedureDef":Ljava/lang/String;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v27    # "identifierAndStringMarkers":Ljava/lang/String;
    .end local v35    # "dotIndex":I
    .end local p2    # "identifierMarkers":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v9, p4

    move-object v1, v0

    move-object/from16 v32, v7

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v27, v23

    goto/16 :goto_1a

    .line 1697
    .restart local v0    # "openParenIndex":I
    .restart local v3    # "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v5    # "endOfParamDeclarationIndex":I
    .restart local v6    # "procedureDef":Ljava/lang/String;
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .restart local v27    # "identifierAndStringMarkers":Ljava/lang/String;
    .restart local v35    # "dotIndex":I
    .restart local p2    # "identifierMarkers":Ljava/lang/String;
    :cond_f
    :try_start_22
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_d
    move-object/from16 v41, v2

    move-object/from16 v37, v6

    move-object/from16 v39, v1

    move-object/from16 v40, v1

    invoke-static/range {v36 .. v41}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    move v2, v1

    .line 1700
    .local v2, "returnsIndex":I
    invoke-direct {v11, v6, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->findEndOfReturnsClause(Ljava/lang/String;I)I

    move-result v1

    .line 1704
    .local v1, "endReturnsDef":I
    const-string v28, "RETURNS "

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int v28, v2, v28

    move-object/from16 v29, v10

    move/from16 v10, v28

    .line 1706
    .local v10, "declarationStart":I
    :goto_e
    move/from16 v28, v2

    .end local v2    # "returnsIndex":I
    .local v28, "returnsIndex":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    if-ge v10, v2, :cond_10

    .line 1707
    :try_start_23
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    if-eqz v2, :cond_10

    .line 1708
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v28

    goto :goto_e

    .line 1714
    :cond_10
    :try_start_24
    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1715
    .local v2, "returnsDefn":Ljava/lang/String;
    move/from16 v30, v1

    .end local v1    # "endReturnsDef":I
    .local v30, "endReturnsDef":I
    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    invoke-direct {v1, v11, v2, v8}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v42, v8

    move-object v8, v1

    .line 1717
    .local v8, "returnDescriptor":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    const-string v31, ""
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    move/from16 v38, v30

    move-object/from16 v30, p4

    .end local p4    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .local v30, "paramRetrievalRs":Ljava/sql/ResultSet;
    .local v38, "endReturnsDef":I
    move-object/from16 v1, p0

    move-object/from16 v39, v2

    .end local v2    # "returnsDefn":Ljava/lang/String;
    .local v39, "returnsDefn":Ljava/lang/String;
    move-object/from16 v2, v22

    move-object/from16 v40, v3

    .end local v3    # "tmpProcName":Ljava/lang/String;
    .local v40, "tmpProcName":Ljava/lang/String;
    move-object/from16 v3, v17

    move-object/from16 v41, v4

    .end local v4    # "dbName":Ljava/lang/String;
    .local v41, "dbName":Ljava/lang/String;
    move-object/from16 v4, v31

    move/from16 v43, v5

    .end local v5    # "endOfParamDeclarationIndex":I
    .local v43, "endOfParamDeclarationIndex":I
    move/from16 v5, v32

    move-object/from16 v44, v6

    move/from16 v31, v35

    .end local v6    # "procedureDef":Ljava/lang/String;
    .end local v35    # "dotIndex":I
    .local v31, "dotIndex":I
    .local v44, "procedureDef":Ljava/lang/String;
    move/from16 v6, v33

    move-object/from16 v32, v7

    .end local v7    # "quotedProcName":Ljava/lang/String;
    .local v32, "quotedProcName":Ljava/lang/String;
    move/from16 v7, v36

    move-object/from16 v34, v9

    .end local v9    # "fieldName":Ljava/lang/String;
    .local v34, "fieldName":Ljava/lang/String;
    move/from16 v9, p6

    move-object/from16 v12, v29

    move/from16 v29, v10

    .end local v10    # "declarationStart":I
    .local v29, "declarationStart":I
    move/from16 v10, v37

    :try_start_25
    invoke-direct/range {v1 .. v10}, Lcom/mysql/jdbc/DatabaseMetaData;->convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1693
    .end local v8    # "returnDescriptor":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .end local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v28    # "returnsIndex":I
    .end local v29    # "declarationStart":I
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v31    # "dotIndex":I
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .end local v34    # "fieldName":Ljava/lang/String;
    .end local v38    # "endReturnsDef":I
    .end local v39    # "returnsDefn":Ljava/lang/String;
    .end local v40    # "tmpProcName":Ljava/lang/String;
    .end local v41    # "dbName":Ljava/lang/String;
    .end local v43    # "endOfParamDeclarationIndex":I
    .end local v44    # "procedureDef":Ljava/lang/String;
    .local v2, "procNameBuf":Ljava/lang/StringBuilder;
    .restart local v3    # "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v5    # "endOfParamDeclarationIndex":I
    .restart local v6    # "procedureDef":Ljava/lang/String;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v35    # "dotIndex":I
    .restart local p4    # "paramRetrievalRs":Ljava/sql/ResultSet;
    :cond_11
    move-object/from16 v30, p4

    move-object/from16 v26, v2

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move/from16 v43, v5

    move-object/from16 v44, v6

    move-object/from16 v32, v7

    move-object/from16 v42, v8

    move-object/from16 v34, v9

    move-object v12, v10

    move/from16 v31, v35

    .line 1721
    .end local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v3    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v5    # "endOfParamDeclarationIndex":I
    .end local v6    # "procedureDef":Ljava/lang/String;
    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v35    # "dotIndex":I
    .end local p4    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v31    # "dotIndex":I
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v34    # "fieldName":Ljava/lang/String;
    .restart local v40    # "tmpProcName":Ljava/lang/String;
    .restart local v41    # "dbName":Ljava/lang/String;
    .restart local v43    # "endOfParamDeclarationIndex":I
    .restart local v44    # "procedureDef":Ljava/lang/String;
    :goto_f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    move/from16 v2, v43

    .end local v43    # "endOfParamDeclarationIndex":I
    .local v2, "endOfParamDeclarationIndex":I
    if-eq v2, v1, :cond_12

    .line 1727
    add-int/lit8 v1, v0, 0x1

    move-object/from16 v3, v44

    .end local v44    # "procedureDef":Ljava/lang/String;
    .local v3, "procedureDef":Ljava/lang/String;
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object/from16 v10, v16

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto/16 :goto_11

    .line 1721
    .end local v3    # "procedureDef":Ljava/lang/String;
    .restart local v44    # "procedureDef":Ljava/lang/String;
    :cond_12
    move-object/from16 v3, v44

    .end local v44    # "procedureDef":Ljava/lang/String;
    .restart local v3    # "procedureDef":Ljava/lang/String;
    goto :goto_10

    .end local v2    # "endOfParamDeclarationIndex":I
    .end local v3    # "procedureDef":Ljava/lang/String;
    .restart local v43    # "endOfParamDeclarationIndex":I
    .restart local v44    # "procedureDef":Ljava/lang/String;
    :cond_13
    move/from16 v2, v43

    move-object/from16 v3, v44

    .line 1723
    .end local v43    # "endOfParamDeclarationIndex":I
    .end local v44    # "procedureDef":Ljava/lang/String;
    .restart local v2    # "endOfParamDeclarationIndex":I
    .restart local v3    # "procedureDef":Ljava/lang/String;
    :goto_10
    const-string v1, "Internal error when parsing callable statement metadata"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v1, v12, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .end local v15    # "paramRetrievalStmt":Ljava/sql/Statement;
    .end local v16    # "parameterDef":Ljava/lang/String;
    .end local v17    # "procCatAsBytes":[B
    .end local v18    # "isProcedureInAnsiMode":Z
    .end local v19    # "storageDefnDelims":Ljava/lang/String;
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local v22    # "procNameAsBytes":[B
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .end local v24    # "catalog":Ljava/lang/String;
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .end local p3    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .end local p5    # "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local p6    # "forGetFunctionColumns":Z
    throw v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 1732
    .end local v0    # "openParenIndex":I
    .end local v2    # "endOfParamDeclarationIndex":I
    .end local v3    # "procedureDef":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v27    # "identifierAndStringMarkers":Ljava/lang/String;
    .end local v31    # "dotIndex":I
    .end local v34    # "fieldName":Ljava/lang/String;
    .end local v40    # "tmpProcName":Ljava/lang/String;
    .end local v41    # "dbName":Ljava/lang/String;
    .end local p2    # "identifierMarkers":Ljava/lang/String;
    .restart local v15    # "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v16    # "parameterDef":Ljava/lang/String;
    .restart local v17    # "procCatAsBytes":[B
    .restart local v18    # "isProcedureInAnsiMode":Z
    .restart local v19    # "storageDefnDelims":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    .restart local v22    # "procNameAsBytes":[B
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    .restart local p3    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .restart local p5    # "resultRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local p6    # "forGetFunctionColumns":Z
    :catchall_a
    move-exception v0

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v27, v23

    move-object/from16 v9, v30

    goto/16 :goto_1a

    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .restart local p4    # "paramRetrievalRs":Ljava/sql/ResultSet;
    :catchall_b
    move-exception v0

    move-object/from16 v30, p4

    move-object/from16 v32, v7

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v27, v23

    move-object/from16 v9, v30

    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local p4    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    goto/16 :goto_1a

    .line 1683
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .local v0, "identifierMarkers":Ljava/lang/String;
    .local v1, "paramRetrievalRs":Ljava/sql/ResultSet;
    .local v2, "procNameBuf":Ljava/lang/StringBuilder;
    .local v3, "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    .restart local v27    # "identifierAndStringMarkers":Ljava/lang/String;
    .restart local v33    # "procedureDef":Ljava/lang/String;
    .restart local v35    # "dotIndex":I
    :cond_14
    move-object/from16 p2, v0

    move-object/from16 v30, v1

    move-object/from16 v26, v2

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-object/from16 v32, v7

    move-object/from16 v42, v8

    move-object/from16 v34, v9

    move-object v12, v10

    move/from16 v31, v35

    .line 1731
    .end local v0    # "identifierMarkers":Ljava/lang/String;
    .end local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v3    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v27    # "identifierAndStringMarkers":Ljava/lang/String;
    .end local v33    # "procedureDef":Ljava/lang/String;
    .end local v35    # "dotIndex":I
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto :goto_11

    .line 1732
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v32, v7

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v27, v23

    move-object/from16 v9, v30

    .end local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v7    # "quotedProcName":Ljava/lang/String;
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    goto/16 :goto_1a

    .line 1658
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .restart local v3    # "tmpProcName":Ljava/lang/String;
    .restart local v4    # "dbName":Ljava/lang/String;
    .local v6, "dotIndex":I
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v21    # "oldCatalog":Ljava/lang/String;
    :cond_15
    move-object/from16 v30, v1

    move-object/from16 v26, v2

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v42, v8

    move-object/from16 v34, v9

    move-object v12, v10

    .end local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v2    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v3    # "tmpProcName":Ljava/lang/String;
    .end local v4    # "dbName":Ljava/lang/String;
    .end local v6    # "dotIndex":I
    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v9    # "fieldName":Ljava/lang/String;
    .restart local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v31    # "dotIndex":I
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v34    # "fieldName":Ljava/lang/String;
    .restart local v40    # "tmpProcName":Ljava/lang/String;
    .restart local v41    # "dbName":Ljava/lang/String;
    move-object/from16 v10, v16

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    .line 1731
    .end local v16    # "parameterDef":Ljava/lang/String;
    .end local v19    # "storageDefnDelims":Ljava/lang/String;
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local v21    # "oldCatalog":Ljava/lang/String;
    .end local v26    # "procNameBuf":Ljava/lang/StringBuilder;
    .end local v31    # "dotIndex":I
    .end local v34    # "fieldName":Ljava/lang/String;
    .end local v40    # "tmpProcName":Ljava/lang/String;
    .end local v41    # "dbName":Ljava/lang/String;
    .local v7, "storageDefnClosures":Ljava/lang/String;
    .local v9, "storageDefnDelims":Ljava/lang/String;
    .local v10, "parameterDef":Ljava/lang/String;
    :goto_11
    nop

    .line 1596
    const/4 v1, 0x0

    .line 1734
    .local v1, "sqlExRethrow":Ljava/sql/SQLException;
    if-eqz v30, :cond_16

    .line 1736
    :try_start_26
    invoke-interface/range {v30 .. v30}, Ljava/sql/ResultSet;->close()V
    :try_end_26
    .catch Ljava/sql/SQLException; {:try_start_26 .. :try_end_26} :catch_3

    .line 1739
    goto :goto_12

    .line 1737
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1738
    .local v0, "sqlEx":Ljava/sql/SQLException;
    move-object v1, v0

    .line 1741
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_12
    const/4 v0, 0x0

    move-object/from16 v30, v0

    .line 1744
    :cond_16
    if-eqz v15, :cond_17

    .line 1746
    :try_start_27
    invoke-interface {v15}, Ljava/sql/Statement;->close()V
    :try_end_27
    .catch Ljava/sql/SQLException; {:try_start_27 .. :try_end_27} :catch_4

    .line 1749
    goto :goto_13

    .line 1747
    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1748
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v1, v0

    .line 1751
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_13
    const/4 v6, 0x0

    move-object v15, v6

    .line 1754
    :cond_17
    if-nez v1, :cond_28

    .line 1757
    .end local v1    # "sqlExRethrow":Ljava/sql/SQLException;
    nop

    .line 1759
    if-eqz v10, :cond_27

    .line 1760
    const/4 v0, 0x1

    .line 1762
    .local v0, "ordinal":I
    const-string v1, ","

    const/4 v6, 0x1

    invoke-static {v10, v1, v9, v7, v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 1764
    .local v5, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1766
    .local v4, "parseListLen":I
    const/4 v1, 0x0

    move/from16 v16, v0

    move v0, v1

    .local v0, "i":I
    .local v16, "ordinal":I
    :goto_14
    if-ge v0, v4, :cond_26

    .line 1767
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1769
    .local v1, "declaration":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    .line 1770
    move-object/from16 v20, v7

    move-object/from16 v38, v10

    move-object/from16 v27, v23

    move-object/from16 v23, v9

    goto/16 :goto_19

    .line 1774
    :cond_18
    const-string v2, "[\\t\\n\\x0B\\f\\r]"

    invoke-virtual {v1, v2, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1775
    .end local v1    # "declaration":Ljava/lang/String;
    .local v3, "declaration":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v1

    .line 1777
    .local v19, "declarationTok":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 1778
    .local v1, "paramName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1779
    .local v2, "isOutParam":Z
    const/4 v8, 0x0

    .line 1781
    .local v8, "isInParam":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_25

    .line 1782
    move-object/from16 v20, v7

    .end local v7    # "storageDefnClosures":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1784
    .local v7, "possibleParamName":Ljava/lang/String;
    const-string v6, "OUT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 p2, v1

    .end local v1    # "paramName":Ljava/lang/String;
    .local p2, "paramName":Ljava/lang/String;
    const-string v1, "Internal error when parsing callable statement metadata (missing parameter name)"

    if-eqz v6, :cond_1a

    .line 1785
    const/4 v2, 0x1

    .line 1787
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1788
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v2

    move/from16 v26, v8

    .end local p2    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramName":Ljava/lang/String;
    goto :goto_15

    .line 1790
    .end local v1    # "paramName":Ljava/lang/String;
    .restart local p2    # "paramName":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v1, v12, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1793
    :cond_1a
    const-string v6, "INOUT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1794
    const/4 v2, 0x1

    .line 1795
    const/4 v8, 0x1

    .line 1797
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1798
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v2

    move/from16 v26, v8

    .end local p2    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramName":Ljava/lang/String;
    goto :goto_15

    .line 1800
    .end local v1    # "paramName":Ljava/lang/String;
    .restart local p2    # "paramName":Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v1, v12, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1803
    :cond_1c
    const-string v6, "IN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1804
    const/4 v2, 0x0

    .line 1805
    const/4 v8, 0x1

    .line 1807
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1808
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move/from16 v21, v2

    move/from16 v26, v8

    .end local p2    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramName":Ljava/lang/String;
    goto :goto_15

    .line 1810
    .end local v1    # "paramName":Ljava/lang/String;
    .restart local p2    # "paramName":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v1, v12, v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1814
    :cond_1e
    const/4 v2, 0x0

    .line 1815
    const/4 v8, 0x1

    .line 1817
    move-object v1, v7

    move/from16 v21, v2

    move/from16 v26, v8

    .line 1820
    .end local v2    # "isOutParam":Z
    .end local v8    # "isInParam":Z
    .end local p2    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramName":Ljava/lang/String;
    .local v21, "isOutParam":Z
    .local v26, "isInParam":Z
    :goto_15
    const/4 v2, 0x0

    .line 1822
    .local v2, "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v6, "typeInfoBuf":Ljava/lang/StringBuilder;
    :goto_16
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1826
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 1830
    :cond_1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1832
    .local v8, "typeInfo":Ljava/lang/String;
    move-object/from16 p2, v2

    .end local v2    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .local p2, "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    new-instance v2, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    move-object/from16 p4, v7

    move-object/from16 v7, v42

    .end local v7    # "possibleParamName":Ljava/lang/String;
    .local p4, "possibleParamName":Ljava/lang/String;
    invoke-direct {v2, v11, v8, v7}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    .line 1833
    .end local v6    # "typeInfoBuf":Ljava/lang/StringBuilder;
    .end local p2    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .local v8, "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    nop

    .line 1838
    move-object/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    if-eqz v18, :cond_22

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_22

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1840
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 p1, v6

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_17

    .line 1838
    :cond_22
    move-object/from16 p1, v6

    const/4 v6, 0x1

    .line 1843
    move-object v2, v1

    .end local v1    # "paramName":Ljava/lang/String;
    .local v2, "paramName":Ljava/lang/String;
    :goto_17
    move-object/from16 v1, v23

    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .local v1, "parameterNamePattern":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/mysql/jdbc/StringUtils;->wildCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_23

    .line 1844
    const/16 v23, 0x0

    add-int/lit8 v25, v16, 0x1

    move-object/from16 v27, v1

    .end local v1    # "parameterNamePattern":Ljava/lang/String;
    .end local v16    # "ordinal":I
    .local v25, "ordinal":I
    .local v27, "parameterNamePattern":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v28, v2

    .end local v2    # "paramName":Ljava/lang/String;
    .local v28, "paramName":Ljava/lang/String;
    move-object/from16 v2, v22

    move-object/from16 v29, v3

    .end local v3    # "declaration":Ljava/lang/String;
    .local v29, "declaration":Ljava/lang/String;
    move-object/from16 v3, v17

    move/from16 v31, v4

    .end local v4    # "parseListLen":I
    .local v31, "parseListLen":I
    move-object/from16 v4, v28

    move-object/from16 v33, v5

    .end local v5    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v5, v21

    move-object/from16 v34, p1

    const/16 v35, 0x1

    move/from16 v6, v26

    move-object/from16 v36, p4

    move-object/from16 v37, v7

    .end local p4    # "possibleParamName":Ljava/lang/String;
    .local v36, "possibleParamName":Ljava/lang/String;
    move/from16 v7, v23

    move-object/from16 v23, v9

    .end local v9    # "storageDefnDelims":Ljava/lang/String;
    .local v23, "storageDefnDelims":Ljava/lang/String;
    move/from16 v9, p6

    move-object/from16 v38, v10

    .end local v10    # "parameterDef":Ljava/lang/String;
    .local v38, "parameterDef":Ljava/lang/String;
    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/mysql/jdbc/DatabaseMetaData;->convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    .line 1847
    .local v1, "row":Lcom/mysql/jdbc/ResultSetRow;
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v25

    goto :goto_18

    .line 1843
    .end local v23    # "storageDefnDelims":Ljava/lang/String;
    .end local v25    # "ordinal":I
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v28    # "paramName":Ljava/lang/String;
    .end local v29    # "declaration":Ljava/lang/String;
    .end local v31    # "parseListLen":I
    .end local v33    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "possibleParamName":Ljava/lang/String;
    .end local v38    # "parameterDef":Ljava/lang/String;
    .local v1, "parameterNamePattern":Ljava/lang/String;
    .restart local v2    # "paramName":Ljava/lang/String;
    .restart local v3    # "declaration":Ljava/lang/String;
    .restart local v4    # "parseListLen":I
    .restart local v5    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "storageDefnDelims":Ljava/lang/String;
    .restart local v10    # "parameterDef":Ljava/lang/String;
    .restart local v16    # "ordinal":I
    .restart local p4    # "possibleParamName":Ljava/lang/String;
    :cond_23
    move-object/from16 v34, p1

    move-object/from16 v36, p4

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v31, v4

    move-object/from16 v33, v5

    move-object/from16 v37, v7

    move-object/from16 v23, v9

    move-object/from16 v38, v10

    const/16 v35, 0x1

    .line 1849
    .end local v1    # "parameterNamePattern":Ljava/lang/String;
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "declaration":Ljava/lang/String;
    .end local v4    # "parseListLen":I
    .end local v5    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .end local v9    # "storageDefnDelims":Ljava/lang/String;
    .end local v10    # "parameterDef":Ljava/lang/String;
    .end local p4    # "possibleParamName":Ljava/lang/String;
    .restart local v23    # "storageDefnDelims":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v28    # "paramName":Ljava/lang/String;
    .restart local v29    # "declaration":Ljava/lang/String;
    .restart local v31    # "parseListLen":I
    .restart local v33    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v38    # "parameterDef":Ljava/lang/String;
    :goto_18
    nop

    .line 1766
    .end local v19    # "declarationTok":Ljava/util/StringTokenizer;
    .end local v21    # "isOutParam":Z
    .end local v26    # "isInParam":Z
    .end local v28    # "paramName":Ljava/lang/String;
    .end local v29    # "declaration":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v20

    move-object/from16 v9, v23

    move-object/from16 v23, v27

    move/from16 v4, v31

    move-object/from16 v5, v33

    move-object/from16 p1, v34

    move-object/from16 v42, v37

    move-object/from16 v10, v38

    const/4 v6, 0x1

    goto/16 :goto_14

    .line 1834
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v31    # "parseListLen":I
    .end local v33    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "parameterDef":Ljava/lang/String;
    .local v1, "paramName":Ljava/lang/String;
    .local v2, "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .restart local v3    # "declaration":Ljava/lang/String;
    .restart local v4    # "parseListLen":I
    .restart local v5    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "possibleParamName":Ljava/lang/String;
    .restart local v9    # "storageDefnDelims":Ljava/lang/String;
    .restart local v10    # "parameterDef":Ljava/lang/String;
    .restart local v19    # "declarationTok":Ljava/util/StringTokenizer;
    .restart local v21    # "isOutParam":Z
    .local v23, "parameterNamePattern":Ljava/lang/String;
    .restart local v26    # "isInParam":Z
    :cond_24
    move-object/from16 p2, v2

    move-object/from16 v29, v3

    .end local v2    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .end local v3    # "declaration":Ljava/lang/String;
    .restart local v29    # "declaration":Ljava/lang/String;
    .restart local p2    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "Internal error when parsing callable statement metadata (missing parameter type)"

    invoke-static {v3, v12, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 1850
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local v21    # "isOutParam":Z
    .end local v26    # "isInParam":Z
    .end local v29    # "declaration":Ljava/lang/String;
    .end local p2    # "typeDesc":Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
    .local v2, "isOutParam":Z
    .restart local v3    # "declaration":Ljava/lang/String;
    .local v7, "storageDefnClosures":Ljava/lang/String;
    .local v8, "isInParam":Z
    :cond_25
    move-object/from16 p2, v1

    move-object/from16 v29, v3

    .end local v1    # "paramName":Ljava/lang/String;
    .end local v3    # "declaration":Ljava/lang/String;
    .restart local v29    # "declaration":Ljava/lang/String;
    .local p2, "paramName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v3, "Internal error when parsing callable statement metadata (unknown output from \'SHOW CREATE PROCEDURE\')"

    invoke-static {v3, v12, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1766
    .end local v2    # "isOutParam":Z
    .end local v8    # "isInParam":Z
    .end local v19    # "declarationTok":Ljava/util/StringTokenizer;
    .end local v29    # "declaration":Ljava/lang/String;
    .end local p2    # "paramName":Ljava/lang/String;
    :cond_26
    move/from16 v31, v4

    move-object/from16 v33, v5

    move-object/from16 v20, v7

    move-object/from16 v38, v10

    move-object/from16 v27, v23

    move-object/from16 v23, v9

    .end local v4    # "parseListLen":I
    .end local v5    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "storageDefnClosures":Ljava/lang/String;
    .end local v9    # "storageDefnDelims":Ljava/lang/String;
    .end local v10    # "parameterDef":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    .local v23, "storageDefnDelims":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v31    # "parseListLen":I
    .restart local v33    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v38    # "parameterDef":Ljava/lang/String;
    goto :goto_19

    .line 1759
    .end local v0    # "i":I
    .end local v16    # "ordinal":I
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v31    # "parseListLen":I
    .end local v33    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "parameterDef":Ljava/lang/String;
    .restart local v7    # "storageDefnClosures":Ljava/lang/String;
    .restart local v9    # "storageDefnDelims":Ljava/lang/String;
    .restart local v10    # "parameterDef":Ljava/lang/String;
    .local v23, "parameterNamePattern":Ljava/lang/String;
    :cond_27
    move-object/from16 v20, v7

    move-object/from16 v38, v10

    move-object/from16 v27, v23

    move-object/from16 v23, v9

    .line 1857
    .end local v7    # "storageDefnClosures":Ljava/lang/String;
    .end local v9    # "storageDefnDelims":Ljava/lang/String;
    .end local v10    # "parameterDef":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    .local v23, "storageDefnDelims":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v38    # "parameterDef":Ljava/lang/String;
    :goto_19
    return-void

    .line 1755
    .end local v20    # "storageDefnClosures":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v38    # "parameterDef":Ljava/lang/String;
    .local v1, "sqlExRethrow":Ljava/sql/SQLException;
    .restart local v7    # "storageDefnClosures":Ljava/lang/String;
    .restart local v9    # "storageDefnDelims":Ljava/lang/String;
    .restart local v10    # "parameterDef":Ljava/lang/String;
    .local v23, "parameterNamePattern":Ljava/lang/String;
    :cond_28
    throw v1

    .line 1732
    .end local v9    # "storageDefnDelims":Ljava/lang/String;
    .end local v24    # "catalog":Ljava/lang/String;
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .local v1, "paramRetrievalRs":Ljava/sql/ResultSet;
    .local v7, "quotedProcName":Ljava/lang/String;
    .local v10, "catalog":Ljava/lang/String;
    .local v16, "parameterDef":Ljava/lang/String;
    .local v19, "storageDefnDelims":Ljava/lang/String;
    .restart local v20    # "storageDefnClosures":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object/from16 v27, v23

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v10, v22

    move-object/from16 v9, v30

    .end local v1    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v10    # "catalog":Ljava/lang/String;
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    goto/16 :goto_1a

    .end local v24    # "catalog":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v30    # "paramRetrievalRs":Ljava/sql/ResultSet;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .local v9, "paramRetrievalRs":Ljava/sql/ResultSet;
    .restart local v10    # "catalog":Ljava/lang/String;
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object/from16 v27, v23

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v10, v22

    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v10    # "catalog":Ljava/lang/String;
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    goto :goto_1a

    .end local v22    # "procNameAsBytes":[B
    .end local v24    # "catalog":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v7    # "quotedProcName":Ljava/lang/String;
    .restart local v10    # "catalog":Ljava/lang/String;
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    .local p4, "procNameAsBytes":[B
    :catchall_f
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v24, v10

    move-object/from16 v27, v23

    move-object/from16 v10, p4

    move-object v1, v0

    move-object v2, v15

    .end local v7    # "quotedProcName":Ljava/lang/String;
    .end local v10    # "catalog":Ljava/lang/String;
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    goto :goto_1a

    .end local v24    # "catalog":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local v32    # "quotedProcName":Ljava/lang/String;
    .restart local v10    # "catalog":Ljava/lang/String;
    .restart local v23    # "parameterNamePattern":Ljava/lang/String;
    .local p2, "quotedProcName":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v24, v10

    move-object/from16 v27, v23

    move-object/from16 v10, p4

    move-object v1, v0

    move-object/from16 v32, v7

    move-object v2, v15

    .end local v10    # "catalog":Ljava/lang/String;
    .end local v23    # "parameterNamePattern":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    goto :goto_1a

    .end local v24    # "catalog":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local p4    # "procNameAsBytes":[B
    .local v3, "catalog":Ljava/lang/String;
    .local v6, "paramRetrievalStmt":Ljava/sql/Statement;
    .local v10, "procNameAsBytes":[B
    .local v15, "parameterNamePattern":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 p4, v10

    move-object/from16 v27, v15

    move-object v15, v6

    move-object v1, v0

    move-object/from16 v32, v7

    move-object v2, v15

    .end local v3    # "catalog":Ljava/lang/String;
    .end local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .end local v10    # "procNameAsBytes":[B
    .local v15, "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local p4    # "procNameAsBytes":[B
    goto :goto_1a

    .end local v24    # "catalog":Ljava/lang/String;
    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local p4    # "procNameAsBytes":[B
    .restart local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v10    # "procNameAsBytes":[B
    .local v15, "parameterNamePattern":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-object/from16 p4, v10

    move-object/from16 v27, v15

    move-object v15, v6

    move-object/from16 v24, v1

    move-object/from16 v32, v7

    move-object v2, v15

    move-object v1, v0

    .end local v6    # "paramRetrievalStmt":Ljava/sql/Statement;
    .end local v10    # "procNameAsBytes":[B
    .local v15, "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local p4    # "procNameAsBytes":[B
    goto :goto_1a

    .end local v27    # "parameterNamePattern":Ljava/lang/String;
    .end local p4    # "procNameAsBytes":[B
    .local v2, "paramRetrievalStmt":Ljava/sql/Statement;
    .restart local v10    # "procNameAsBytes":[B
    .local v15, "parameterNamePattern":Ljava/lang/String;
    :catchall_13
    move-exception v0

    move-object/from16 p4, v10

    move-object/from16 v27, v15

    move-object/from16 v24, v1

    move-object/from16 v32, v7

    move-object v1, v0

    .line 1757
    .end local v15    # "parameterNamePattern":Ljava/lang/String;
    .end local p1    # "catalog":Ljava/lang/String;
    .end local p2    # "quotedProcName":Ljava/lang/String;
    .restart local v24    # "catalog":Ljava/lang/String;
    .restart local v27    # "parameterNamePattern":Ljava/lang/String;
    .restart local v32    # "quotedProcName":Ljava/lang/String;
    :goto_1a
    const/4 v3, 0x0

    .line 1734
    .local v3, "sqlExRethrow":Ljava/sql/SQLException;
    if-eqz v9, :cond_29

    .line 1736
    :try_start_28
    invoke-interface {v9}, Ljava/sql/ResultSet;->close()V
    :try_end_28
    .catch Ljava/sql/SQLException; {:try_start_28 .. :try_end_28} :catch_5

    .line 1739
    goto :goto_1b

    .line 1737
    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1738
    .local v0, "sqlEx":Ljava/sql/SQLException;
    move-object v3, v0

    .line 1741
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_1b
    const/4 v9, 0x0

    .line 1744
    :cond_29
    if-eqz v2, :cond_2a

    .line 1746
    :try_start_29
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_29
    .catch Ljava/sql/SQLException; {:try_start_29 .. :try_end_29} :catch_6

    .line 1749
    goto :goto_1c

    .line 1747
    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1748
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v3, v0

    .line 1751
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :goto_1c
    const/4 v2, 0x0

    .line 1754
    :cond_2a
    if-eqz v3, :cond_2b

    .line 1755
    throw v3

    .line 1757
    .end local v3    # "sqlExRethrow":Ljava/sql/SQLException;
    :cond_2b
    nop

    .line 1732
    throw v1
.end method

.method private getCascadeDeleteOption(Ljava/lang/String;)I
    .locals 4
    .param p1, "cascadeOptions"    # Ljava/lang/String;

    .line 1976
    const-string v0, "ON DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1978
    .local v0, "onDeletePos":I
    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1979
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1981
    .local v2, "deleteOptions":Ljava/lang/String;
    const-string v3, "ON DELETE CASCADE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    const/4 v1, 0x0

    return v1

    .line 1983
    :cond_0
    const-string v3, "ON DELETE SET NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1984
    const/4 v1, 0x2

    return v1

    .line 1985
    :cond_1
    const-string v3, "ON DELETE RESTRICT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1986
    const/4 v1, 0x1

    return v1

    .line 1987
    :cond_2
    const-string v3, "ON DELETE NO ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1988
    return v1

    .line 1992
    .end local v2    # "deleteOptions":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private getCascadeUpdateOption(Ljava/lang/String;)I
    .locals 4
    .param p1, "cascadeOptions"    # Ljava/lang/String;

    .line 2004
    const-string v0, "ON UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2006
    .local v0, "onUpdatePos":I
    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 2007
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2009
    .local v2, "updateOptions":Ljava/lang/String;
    const-string v3, "ON UPDATE CASCADE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2010
    const/4 v1, 0x0

    return v1

    .line 2011
    :cond_0
    const-string v3, "ON UPDATE SET NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2012
    const/4 v1, 0x2

    return v1

    .line 2013
    :cond_1
    const-string v3, "ON UPDATE RESTRICT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2014
    const/4 v1, 0x1

    return v1

    .line 2015
    :cond_2
    const-string v3, "ON UPDATE NO ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2016
    return v1

    .line 2020
    .end local v2    # "updateOptions":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Z)Lcom/mysql/jdbc/DatabaseMetaData;
    .locals 6
    .param p0, "connToSet"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p1, "databaseToSet"    # Ljava/lang/String;
    .param p2, "checkForInfoSchema"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 774
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 775
    if-eqz p2, :cond_0

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v2, v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-object v0

    .line 779
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-object v0

    .line 782
    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0, v2, v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v0

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData;

    return-object v0

    .line 788
    :cond_2
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v0

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData;

    return-object v0
.end method

.method private getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "keysComment"    # Ljava/lang/String;
    .param p5, "fkTableName"    # Ljava/lang/String;
    .param p6, "isExport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4218
    .local p4, "tuples":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-result-object v2

    .line 4220
    .local v2, "parsedInfo":Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
    if-eqz p6, :cond_0

    iget-object v3, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4221
    return-void

    .line 4220
    :cond_0
    move-object/from16 v4, p2

    .line 4224
    :cond_1
    iget-object v3, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_6

    .line 4229
    iget-object v3, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4230
    .local v3, "localColumnNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v5, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4232
    .local v5, "referColumnNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 4234
    .local v6, "keySeqIndex":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4235
    const/16 v7, 0xe

    new-array v7, v7, [[B

    .line 4236
    .local v7, "tuple":[[B
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4237
    .local v8, "lColumnName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4238
    .local v9, "rColumnName":Ljava/lang/String;
    const/4 v10, 0x4

    const/4 v11, 0x0

    if-nez p1, :cond_2

    new-array v12, v11, [B

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    :goto_1
    aput-object v12, v7, v10

    .line 4239
    const/4 v10, 0x5

    const/4 v12, 0x0

    aput-object v12, v7, v10

    .line 4240
    const/4 v10, 0x6

    if-eqz p6, :cond_3

    move-object/from16 v13, p5

    goto :goto_2

    :cond_3
    move-object v13, v4

    :goto_2
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v7, v10

    .line 4241
    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v13, 0x7

    aput-object v10, v7, v13

    .line 4242
    iget-object v10, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedCatalog:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v7, v11

    .line 4243
    const/4 v10, 0x1

    aput-object v12, v7, v10

    .line 4244
    const/4 v14, 0x2

    if-eqz p6, :cond_4

    move-object v15, v4

    goto :goto_3

    :cond_4
    iget-object v15, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v7, v14

    .line 4245
    const/4 v14, 0x3

    invoke-virtual {v0, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v7, v14

    .line 4246
    const/16 v14, 0x8

    add-int/lit8 v15, v6, 0x1

    .end local v6    # "keySeqIndex":I
    .local v15, "keySeqIndex":I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v7, v14

    .line 4248
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->getForeignKeyActions(Ljava/lang/String;)[I

    move-result-object v6

    .line 4250
    .local v6, "actions":[I
    const/16 v14, 0x9

    aget v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v7, v14

    .line 4251
    const/16 v10, 0xa

    aget v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v7, v10

    .line 4252
    const/16 v10, 0xb

    iget-object v11, v2, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->constraintName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v7, v10

    .line 4253
    const/16 v10, 0xc

    aput-object v12, v7, v10

    .line 4254
    const/16 v10, 0xd

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v7, v10

    .line 4255
    new-instance v10, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v11, p4

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4256
    .end local v6    # "actions":[I
    .end local v7    # "tuple":[[B
    .end local v8    # "lColumnName":Ljava/lang/String;
    .end local v9    # "rColumnName":Ljava/lang/String;
    move v6, v15

    goto/16 :goto_0

    .line 4257
    .end local v15    # "keySeqIndex":I
    .local v6, "keySeqIndex":I
    :cond_5
    move-object/from16 v11, p4

    return-void

    .line 4225
    .end local v3    # "localColumnNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "referColumnNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "keySeqIndex":I
    :cond_6
    move-object/from16 v11, p4

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v5, "Error parsing foreign keys definition, number of local and referenced columns is not the same."

    const-string v6, "S1000"

    invoke-static {v5, v6, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method protected convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    .locals 17
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "proceduresRs"    # Ljava/sql/ResultSet;
    .param p3, "needsClientFiltering"    # Z
    .param p4, "db"    # Ljava/lang/String;
    .param p6, "nameIndex"    # I
    .param p7, "fields"    # [Lcom/mysql/jdbc/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/sql/ResultSet;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;>;I[",
            "Lcom/mysql/jdbc/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .local p5, "procedureRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/ResultSetRow;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    .line 863
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 864
    const/4 v5, 0x1

    .line 866
    .local v5, "shouldAdd":Z
    const/4 v6, 0x1

    if-eqz p3, :cond_1

    .line 867
    const/4 v5, 0x0

    .line 869
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 871
    .local v7, "procDb":Ljava/lang/String;
    if-nez v3, :cond_0

    if-nez v7, :cond_0

    .line 872
    const/4 v5, 0x1

    goto :goto_1

    .line 873
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 874
    const/4 v5, 0x1

    .line 878
    .end local v7    # "procDb":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v5, :cond_5

    .line 879
    move/from16 v7, p6

    invoke-interface {v2, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 881
    .local v8, "functionName":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [[B

    .line 883
    .local v10, "rowData":[[B
    const-string v13, "comment"

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x2

    if-eqz v4, :cond_3

    array-length v11, v4

    const/16 v12, 0x9

    if-ne v11, v12, :cond_3

    .line 885
    new-array v10, v12, [[B

    .line 886
    if-nez v1, :cond_2

    move-object v11, v9

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    :goto_2
    aput-object v11, v10, v15

    .line 887
    aput-object v9, v10, v6

    .line 888
    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v10, v16

    .line 889
    aput-object v9, v10, v14

    .line 890
    const/4 v6, 0x4

    aput-object v9, v10, v6

    .line 891
    const/4 v6, 0x5

    aput-object v9, v10, v6

    .line 892
    invoke-interface {v2, v13}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x6

    aput-object v6, v10, v9

    .line 893
    const/4 v6, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v10, v6

    .line 894
    const/16 v6, 0x8

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v10, v6

    goto :goto_4

    .line 897
    :cond_3
    const/4 v11, 0x6

    new-array v10, v11, [[B

    .line 899
    if-nez v1, :cond_4

    move-object v11, v9

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    :goto_3
    aput-object v11, v10, v15

    .line 900
    aput-object v9, v10, v6

    .line 901
    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v10, v16

    .line 902
    invoke-interface {v2, v13}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v10, v14

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getJDBC4FunctionNoTableConstant()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v10, v9

    .line 904
    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v9, 0x5

    aput-object v6, v10, v9

    .line 907
    :goto_4
    new-instance v6, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {v0, v1, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-direct {v6, v0, v9, v11}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v9, p5

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 878
    .end local v8    # "functionName":Ljava/lang/String;
    .end local v10    # "rowData":[[B
    :cond_5
    move-object/from16 v9, p5

    move/from16 v7, p6

    .line 910
    .end local v5    # "shouldAdd":Z
    :goto_5
    goto/16 :goto_0

    .line 911
    :cond_6
    move-object/from16 v9, p5

    move/from16 v7, p6

    return-void
.end method

.method protected convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V
    .locals 8
    .param p1, "fromSelect"    # Z
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "proceduresRs"    # Ljava/sql/ResultSet;
    .param p4, "needsClientFiltering"    # Z
    .param p5, "db"    # Ljava/lang/String;
    .param p7, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/sql/ResultSet;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 936
    .local p6, "procedureRows":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/ResultSetRow;>;>;"
    :goto_0
    invoke-interface {p3}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 937
    const/4 v0, 0x1

    .line 939
    .local v0, "shouldAdd":Z
    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 940
    const/4 v0, 0x0

    .line 942
    invoke-interface {p3, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "procDb":Ljava/lang/String;
    if-nez p5, :cond_0

    if-nez v2, :cond_0

    .line 945
    const/4 v0, 0x1

    goto :goto_1

    .line 946
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 947
    const/4 v0, 0x1

    .line 951
    .end local v2    # "procDb":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 952
    invoke-interface {p3, p7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "procedureName":Ljava/lang/String;
    const/16 v3, 0x9

    new-array v3, v3, [[B

    .line 954
    .local v3, "rowData":[[B
    const/4 v4, 0x0

    if-nez p2, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 955
    aput-object v4, v3, v1

    .line 956
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    .line 957
    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 958
    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 959
    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 960
    const/4 v4, 0x6

    const-string v5, "comment"

    invoke-interface {p3, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 962
    if-eqz p1, :cond_3

    const-string v4, "type"

    invoke-interface {p3, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FUNCTION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :cond_3
    move v4, v6

    .line 963
    .local v4, "isFunction":Z
    const/4 v5, 0x7

    if-eqz v4, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v5

    .line 965
    const/16 v1, 0x8

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v1

    .line 967
    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {p0, p2, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-direct {v1, p0, v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v0    # "shouldAdd":Z
    .end local v2    # "procedureName":Ljava/lang/String;
    .end local v3    # "rowData":[[B
    .end local v4    # "isFunction":Z
    :cond_5
    goto/16 :goto_0

    .line 971
    :cond_6
    return-void
.end method

.method protected createColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 13

    .line 2573
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 2574
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2575
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 2576
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "TABLE_NAME"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    .line 2577
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "COLUMN_NAME"

    const/16 v7, 0x20

    invoke-direct {v1, v2, v6, v4, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    .line 2578
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x4

    const/4 v9, 0x5

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 2579
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "TYPE_NAME"

    const/16 v10, 0x10

    invoke-direct {v1, v2, v7, v4, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 2580
    new-instance v1, Lcom/mysql/jdbc/Field;

    const v7, 0x7fffffff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "COLUMN_SIZE"

    invoke-direct {v1, v2, v12, v8, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x6

    aput-object v1, v0, v11

    .line 2581
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v11, "BUFFER_LENGTH"

    const/16 v12, 0xa

    invoke-direct {v1, v2, v11, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x7

    aput-object v1, v0, v11

    .line 2582
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v11, "DECIMAL_DIGITS"

    invoke-direct {v1, v2, v11, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v11, 0x8

    aput-object v1, v0, v11

    .line 2583
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v11, "NUM_PREC_RADIX"

    invoke-direct {v1, v2, v11, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v11, 0x9

    aput-object v1, v0, v11

    .line 2584
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v11, "NULLABLE"

    invoke-direct {v1, v2, v11, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v12

    .line 2585
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v11, "REMARKS"

    invoke-direct {v1, v2, v11, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v11, 0xb

    aput-object v1, v0, v11

    .line 2586
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v11, "COLUMN_DEF"

    invoke-direct {v1, v2, v11, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 2587
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SQL_DATA_TYPE"

    invoke-direct {v1, v2, v3, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 2588
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SQL_DATETIME_SUB"

    invoke-direct {v1, v2, v3, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 2589
    new-instance v1, Lcom/mysql/jdbc/Field;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v7, "CHAR_OCTET_LENGTH"

    invoke-direct {v1, v2, v7, v8, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 2590
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "ORDINAL_POSITION"

    invoke-direct {v1, v2, v3, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 2591
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "IS_NULLABLE"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 2592
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SCOPE_CATALOG"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 2593
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SCOPE_SCHEMA"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    .line 2594
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SCOPE_TABLE"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 2595
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SOURCE_DATA_TYPE"

    invoke-direct {v1, v2, v3, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    .line 2596
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "IS_AUTOINCREMENT"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    .line 2597
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "IS_GENERATEDCOLUMN"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 2598
    return-object v0
.end method

.method protected createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;
    .locals 8

    .line 4045
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4046
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 4047
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "PROCEDURE_SCHEM"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 4048
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "PROCEDURE_NAME"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    .line 4049
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "reserved1"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    .line 4050
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "reserved2"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 4051
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "reserved3"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 4052
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "REMARKS"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x6

    aput-object v1, v0, v6

    .line 4053
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "PROCEDURE_TYPE"

    invoke-direct {v1, v2, v7, v3, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 4054
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 4056
    return-object v0
.end method

.method protected createFkMetadataFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    .line 2806
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 2807
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PKTABLE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2808
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "PKTABLE_SCHEM"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 2809
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "PKTABLE_NAME"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    .line 2810
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "PKCOLUMN_NAME"

    const/16 v8, 0x20

    invoke-direct {v1, v2, v7, v4, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x3

    aput-object v1, v0, v7

    .line 2811
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "FKTABLE_CAT"

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x4

    aput-object v1, v0, v7

    .line 2812
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "FKTABLE_SCHEM"

    invoke-direct {v1, v2, v7, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 2813
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v9, "FKTABLE_NAME"

    invoke-direct {v1, v2, v9, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    .line 2814
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "FKCOLUMN_NAME"

    invoke-direct {v1, v2, v5, v4, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 2815
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "KEY_SEQ"

    invoke-direct {v1, v2, v5, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    .line 2816
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "UPDATE_RULE"

    invoke-direct {v1, v2, v5, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    .line 2817
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "DELETE_RULE"

    invoke-direct {v1, v2, v5, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    .line 2818
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "FK_NAME"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    .line 2819
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "PK_NAME"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 2820
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "DEFERRABILITY"

    invoke-direct {v1, v2, v3, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2821
    return-object v0
.end method

.method protected createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    .line 7777
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_CAT"

    const/16 v4, 0xc

    const/16 v5, 0x200

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "FUNCTION_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "FUNCTION_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "COLUMN_TYPE"

    const/16 v6, 0x40

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x5

    const/4 v9, 0x6

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "TYPE_NAME"

    invoke-direct {v1, v2, v7, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "PRECISION"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v1, v0, v7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "LENGTH"

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v1, v0, v7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "SCALE"

    invoke-direct {v1, v2, v7, v8, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v1, v0, v7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "RADIX"

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xa

    aput-object v1, v0, v7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "NULLABLE"

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v1, v0, v7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "REMARKS"

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "CHAR_OCTET_LENGTH"

    const/16 v7, 0x20

    invoke-direct {v1, v2, v5, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "ORDINAL_POSITION"

    invoke-direct {v1, v2, v5, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "IS_NULLABLE"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 7784
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    return-object v0
.end method

.method protected createIndexInfoFields()[Lcom/mysql/jdbc/Field;
    .locals 11

    .line 3437
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3438
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 3439
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 3440
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TABLE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 3441
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "NON_UNIQUE"

    const/16 v5, 0x10

    const/4 v6, 0x4

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 3442
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "INDEX_QUALIFIER"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 3443
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "INDEX_NAME"

    const/16 v5, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 3444
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "TYPE"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 3445
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "ORDINAL_POSITION"

    invoke-direct {v1, v2, v7, v3, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 3446
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 3447
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "ASC_OR_DESC"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 3448
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v1

    const-string v3, "PAGES"

    const/16 v7, 0xb

    const-string v8, "CARDINALITY"

    const/16 v9, 0x14

    const/16 v10, 0xa

    if-eqz v1, :cond_0

    .line 3449
    new-instance v1, Lcom/mysql/jdbc/Field;

    const/4 v6, -0x5

    invoke-direct {v1, v2, v8, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 3450
    new-instance v1, Lcom/mysql/jdbc/Field;

    invoke-direct {v1, v2, v3, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    goto :goto_0

    .line 3452
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/Field;

    invoke-direct {v1, v2, v8, v6, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 3453
    new-instance v1, Lcom/mysql/jdbc/Field;

    invoke-direct {v1, v2, v3, v6, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3455
    :goto_0
    const/16 v1, 0xc

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v6, "FILTER_CONDITION"

    invoke-direct {v3, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v0, v1

    .line 3456
    return-object v0
.end method

.method protected createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    .line 3871
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3873
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0x200

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 3874
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "PROCEDURE_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 3875
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "PROCEDURE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 3876
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 3877
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "COLUMN_TYPE"

    const/16 v6, 0x40

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 3878
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x5

    const/4 v9, 0x6

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 3879
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "TYPE_NAME"

    invoke-direct {v1, v2, v7, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 3880
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "PRECISION"

    const/16 v7, 0xc

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x7

    aput-object v1, v0, v6

    .line 3881
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "LENGTH"

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v1, v0, v6

    .line 3882
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "SCALE"

    invoke-direct {v1, v2, v6, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v1, v0, v6

    .line 3883
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "RADIX"

    invoke-direct {v1, v2, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0xa

    aput-object v1, v0, v6

    .line 3884
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "NULLABLE"

    invoke-direct {v1, v2, v6, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v1, v0, v6

    .line 3885
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "REMARKS"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3886
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "COLUMN_DEF"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0xd

    aput-object v1, v0, v6

    .line 3887
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "SQL_DATA_TYPE"

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0xe

    aput-object v1, v0, v6

    .line 3888
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "SQL_DATETIME_SUB"

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v1, v0, v6

    .line 3889
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "CHAR_OCTET_LENGTH"

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v1, v0, v6

    .line 3890
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "ORDINAL_POSITION"

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 3891
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "IS_NULLABLE"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 3892
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 3893
    return-object v0
.end method

.method protected createTablesFields()[Lcom/mysql/jdbc/Field;
    .locals 7

    .line 4820
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4821
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/16 v4, 0xc

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 4822
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x1

    aput-object v1, v0, v6

    .line 4823
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "TABLE_NAME"

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 4824
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "TABLE_TYPE"

    const/4 v6, 0x5

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 4825
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "REMARKS"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 4826
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "TYPE_CAT"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 4827
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "TYPE_SCHEM"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    .line 4828
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "TYPE_NAME"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 4829
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "SELF_REFERENCING_COL_NAME"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    .line 4830
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v5, "REF_GENERATION"

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 4831
    return-object v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1089
    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1126
    const/4 v0, 0x1

    return v0
.end method

.method public extractForeignKeyForTable(Ljava/util/ArrayList;Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .param p2, "rs"    # Ljava/sql/ResultSet;
    .param p3, "catalog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/sql/ResultSet;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1143
    .local p1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    new-array v3, v3, [[B

    .line 1144
    .local v3, "row":[[B
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 1145
    const-string v5, "SUPPORTS_FK"

    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    .line 1147
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, "createTableString":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, "\n"

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .local v8, "lineTokenizer":Ljava/util/StringTokenizer;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "comment; "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v9, "commentBuf":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    .line 1152
    .local v10, "firstTime":Z
    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1153
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1155
    .local v11, "line":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1157
    .local v12, "constraintName":Ljava/lang/String;
    const-string v13, "CONSTRAINT"

    invoke-static {v11, v13}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, -0x1

    if-eqz v13, :cond_2

    .line 1158
    const/4 v13, 0x1

    .line 1159
    .local v13, "usingBackTicks":Z
    iget-object v15, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v11, v15, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 1161
    .local v15, "beginPos":I
    const-string v5, "\""

    if-ne v15, v14, :cond_0

    .line 1162
    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1163
    const/4 v13, 0x0

    .line 1166
    :cond_0
    if-eq v15, v14, :cond_2

    .line 1167
    const/16 v16, -0x1

    .line 1169
    .local v16, "endPos":I
    if-eqz v13, :cond_1

    .line 1170
    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    add-int/lit8 v6, v15, 0x1

    invoke-static {v11, v5, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .end local v16    # "endPos":I
    .local v5, "endPos":I
    goto :goto_1

    .line 1172
    .end local v5    # "endPos":I
    .restart local v16    # "endPos":I
    :cond_1
    add-int/lit8 v6, v15, 0x1

    invoke-static {v11, v5, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1175
    .end local v16    # "endPos":I
    .restart local v5    # "endPos":I
    :goto_1
    if-eq v5, v14, :cond_2

    .line 1176
    add-int/lit8 v6, v15, 0x1

    invoke-virtual {v11, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1177
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1182
    .end local v5    # "endPos":I
    .end local v13    # "usingBackTicks":Z
    .end local v15    # "beginPos":I
    :cond_2
    const-string v5, "FOREIGN KEY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1183
    const-string v6, ","

    invoke-virtual {v11, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1184
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1187
    :cond_3
    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1189
    .local v6, "indexOfFK":I
    const/4 v13, 0x0

    .line 1190
    .local v13, "localColumnName":Ljava/lang/String;
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v15, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v15

    move-object/from16 v4, p3

    invoke-static {v4, v14, v15}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 1191
    .local v14, "referencedCatalogName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1192
    .local v15, "referencedTableName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1194
    .local v23, "referencedColumnName":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v6, v2, :cond_8

    .line 1195
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    .line 1197
    .local v2, "afterFk":I
    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v22, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v19, "REFERENCES"

    move/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v20, v5

    move-object/from16 v21, v5

    invoke-static/range {v17 .. v22}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    .line 1199
    .local v5, "indexOfRef":I
    const/4 v4, -0x1

    if-eq v5, v4, :cond_7

    .line 1201
    const/16 v4, 0x28

    invoke-virtual {v11, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1202
    .local v4, "indexOfParenOpen":I
    move/from16 v24, v2

    .end local v2    # "afterFk":I
    .local v24, "afterFk":I
    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v22, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v19, ")"

    move/from16 v17, v4

    move-object/from16 v18, v11

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    invoke-static/range {v17 .. v22}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1205
    .local v2, "indexOfParenClose":I
    nop

    .line 1209
    move/from16 v25, v6

    .end local v6    # "indexOfFK":I
    .local v25, "indexOfFK":I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v11, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1211
    const-string v6, "REFERENCES"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    .line 1213
    .local v6, "afterRef":I
    move/from16 v26, v2

    .end local v2    # "indexOfParenClose":I
    .local v26, "indexOfParenClose":I
    iget-object v2, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v22, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v19, "("

    move/from16 v17, v6

    move-object/from16 v18, v11

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    invoke-static/range {v17 .. v22}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    .line 1216
    .local v2, "referencedColumnBegin":I
    move/from16 v27, v4

    const/4 v4, -0x1

    .end local v4    # "indexOfParenOpen":I
    .local v27, "indexOfParenOpen":I
    if-eq v2, v4, :cond_6

    .line 1217
    invoke-virtual {v11, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1219
    add-int/lit8 v17, v2, 0x1

    iget-object v4, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v22, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v19, ")"

    move-object/from16 v18, v11

    move-object/from16 v20, v4

    move-object/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v4

    .line 1222
    .local v4, "referencedColumnEnd":I
    move/from16 v28, v5

    const/4 v5, -0x1

    .end local v5    # "indexOfRef":I
    .local v28, "indexOfRef":I
    if-eq v4, v5, :cond_4

    .line 1223
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v11, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1226
    :cond_4
    const/16 v17, 0x0

    iget-object v5, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v22, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v19, "."

    move-object/from16 v18, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v5

    invoke-static/range {v17 .. v22}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    .line 1229
    .local v5, "indexOfCatalogSep":I
    move/from16 v17, v2

    const/4 v2, -0x1

    .end local v2    # "referencedColumnBegin":I
    .local v17, "referencedColumnBegin":I
    if-eq v5, v2, :cond_5

    .line 1230
    const/4 v2, 0x0

    invoke-virtual {v15, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1231
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, v23

    goto :goto_3

    .line 1229
    :cond_5
    move-object/from16 v2, v23

    goto :goto_3

    .line 1216
    .end local v4    # "referencedColumnEnd":I
    .end local v17    # "referencedColumnBegin":I
    .end local v28    # "indexOfRef":I
    .restart local v2    # "referencedColumnBegin":I
    .local v5, "indexOfRef":I
    :cond_6
    move/from16 v17, v2

    move/from16 v28, v5

    .end local v2    # "referencedColumnBegin":I
    .end local v5    # "indexOfRef":I
    .restart local v17    # "referencedColumnBegin":I
    .restart local v28    # "indexOfRef":I
    move-object/from16 v2, v23

    goto :goto_3

    .line 1199
    .end local v17    # "referencedColumnBegin":I
    .end local v24    # "afterFk":I
    .end local v25    # "indexOfFK":I
    .end local v26    # "indexOfParenClose":I
    .end local v27    # "indexOfParenOpen":I
    .end local v28    # "indexOfRef":I
    .local v2, "afterFk":I
    .restart local v5    # "indexOfRef":I
    .local v6, "indexOfFK":I
    :cond_7
    move/from16 v24, v2

    move/from16 v28, v5

    move/from16 v25, v6

    .end local v2    # "afterFk":I
    .end local v5    # "indexOfRef":I
    .end local v6    # "indexOfFK":I
    .restart local v24    # "afterFk":I
    .restart local v25    # "indexOfFK":I
    .restart local v28    # "indexOfRef":I
    goto :goto_2

    .line 1194
    .end local v24    # "afterFk":I
    .end local v25    # "indexOfFK":I
    .end local v28    # "indexOfRef":I
    .restart local v6    # "indexOfFK":I
    :cond_8
    move/from16 v25, v6

    .line 1237
    .end local v6    # "indexOfFK":I
    .restart local v25    # "indexOfFK":I
    :goto_2
    move-object/from16 v2, v23

    .end local v23    # "referencedColumnName":Ljava/lang/String;
    .local v2, "referencedColumnName":Ljava/lang/String;
    :goto_3
    if-nez v10, :cond_9

    .line 1238
    const-string v4, "; "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1240
    :cond_9
    const/4 v10, 0x0

    .line 1243
    :goto_4
    if-eqz v12, :cond_a

    .line 1244
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1246
    :cond_a
    const-string v4, "not_available"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :goto_5
    const-string v4, "("

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string v5, ") REFER "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v5, "/"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v4, ")"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1261
    .local v4, "lastParenIndex":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v4, v5, :cond_b

    .line 1262
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1263
    .local v5, "cascadeOptions":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    .end local v2    # "referencedColumnName":Ljava/lang/String;
    .end local v4    # "lastParenIndex":I
    .end local v5    # "cascadeOptions":Ljava/lang/String;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "constraintName":Ljava/lang/String;
    .end local v13    # "localColumnName":Ljava/lang/String;
    .end local v14    # "referencedCatalogName":Ljava/lang/String;
    .end local v15    # "referencedTableName":Ljava/lang/String;
    .end local v25    # "indexOfFK":I
    :cond_b
    move-object/from16 v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1269
    :cond_c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 1270
    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    return-object v1
.end method

.method public extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 13
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v0, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1294
    .local v1, "rs":Ljava/sql/ResultSet;
    const/4 v2, 0x0

    .line 1296
    .local v2, "stmt":Ljava/sql/Statement;
    const-string v3, ""

    if-eqz p2, :cond_0

    .line 1297
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1300
    :cond_0
    :try_start_0
    const-string v4, "%"

    const-string v5, "TABLE"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    move-object v1, v4

    .line 1302
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1303
    const-string v4, "TABLE_NAME"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 1305
    :cond_1
    nop

    .line 1360
    if-eqz v1, :cond_2

    .line 1307
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1310
    :cond_2
    const/4 v1, 0x0

    .line 1311
    nop

    .line 1314
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v4, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mysql/jdbc/Field;

    .line 1316
    .local v5, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v6, 0x0

    new-instance v7, Lcom/mysql/jdbc/Field;

    const-string v8, "Name"

    const/4 v9, 0x1

    const v10, 0x7fffffff

    invoke-direct {v7, v3, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v7, v5, v6

    .line 1317
    new-instance v6, Lcom/mysql/jdbc/Field;

    const/16 v7, 0xff

    const-string v8, "Type"

    invoke-direct {v6, v3, v8, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v6, v5, v9

    .line 1318
    const/4 v6, 0x2

    new-instance v7, Lcom/mysql/jdbc/Field;

    const-string v8, "Comment"

    invoke-direct {v7, v3, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v7, v5, v6

    .line 1320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1321
    .local v3, "numTables":I
    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 1324
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_8

    .line 1325
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1327
    .local v7, "tableToExtract":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SHOW CREATE TABLE "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1330
    .local v8, "query":Ljava/lang/String;
    :try_start_2
    invoke-interface {v2, v8}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v9
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v9

    .line 1340
    nop

    .line 1342
    :goto_3
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1343
    invoke-virtual {p0, v4, v1, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyForTable(Ljava/util/ArrayList;Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/util/List;

    goto :goto_3

    .line 1331
    :catch_0
    move-exception v9

    .line 1333
    .local v9, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v9}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v10

    .line 1335
    .local v10, "sqlState":Ljava/lang/String;
    const-string v11, "42S02"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v9}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v11

    const/16 v12, 0x47a

    if-ne v11, v12, :cond_3

    goto :goto_4

    .line 1336
    :cond_3
    nop

    .end local v0    # "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "rs":Ljava/sql/ResultSet;
    .end local v2    # "stmt":Ljava/sql/Statement;
    .end local v3    # "numTables":I
    .end local v4    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v5    # "fields":[Lcom/mysql/jdbc/Field;
    .end local p1    # "catalog":Ljava/lang/String;
    .end local p2    # "tableName":Ljava/lang/String;
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1339
    .restart local v0    # "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "rs":Ljava/sql/ResultSet;
    .restart local v2    # "stmt":Ljava/sql/Statement;
    .restart local v3    # "numTables":I
    .restart local v4    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local v5    # "fields":[Lcom/mysql/jdbc/Field;
    .restart local p1    # "catalog":Ljava/lang/String;
    .restart local p2    # "tableName":Ljava/lang/String;
    :cond_4
    :goto_4
    nop

    .line 1324
    .end local v7    # "tableToExtract":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .end local v9    # "sqlEx":Ljava/sql/SQLException;
    .end local v10    # "sqlState":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1347
    .end local v6    # "i":I
    :catchall_0
    move-exception v6

    .line 1357
    if-eqz v1, :cond_6

    .line 1348
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1351
    :cond_6
    const/4 v1, 0x0

    .line 1353
    if-eqz v2, :cond_7

    .line 1354
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 1357
    :cond_7
    const/4 v2, 0x0

    .line 1347
    throw v6

    .line 1346
    :cond_8
    nop

    .line 1310
    if-eqz v1, :cond_9

    .line 1348
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1351
    :cond_9
    const/4 v1, 0x0

    .line 1353
    if-eqz v2, :cond_a

    .line 1354
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 1357
    :cond_a
    const/4 v2, 0x0

    .line 1358
    nop

    .line 1360
    invoke-direct {p0, v5, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v6

    return-object v6

    .line 1306
    .end local v3    # "numTables":I
    .end local v4    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v5    # "fields":[Lcom/mysql/jdbc/Field;
    :catchall_1
    move-exception v3

    .line 1310
    if-eqz v1, :cond_b

    .line 1307
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1310
    :cond_b
    const/4 v1, 0x0

    .line 1306
    throw v3
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7904
    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1367
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 1368
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 1369
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TYPE_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 1370
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TYPE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 1371
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "ATTR_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 1372
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "DATA_TYPE"

    const/4 v6, 0x5

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 1373
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "ATTR_TYPE_NAME"

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 1374
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "ATTR_SIZE"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    .line 1375
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "DECIMAL_DIGITS"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v1, v0, v7

    .line 1376
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "NUM_PREC_RADIX"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v1, v0, v7

    .line 1377
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "NULLABLE "

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v1, v0, v7

    .line 1378
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "REMARKS"

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xa

    aput-object v1, v0, v7

    .line 1379
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "ATTR_DEF"

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v1, v0, v7

    .line 1380
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "SQL_DATA_TYPE"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v1, v0, v7

    .line 1381
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "SQL_DATETIME_SUB"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xd

    aput-object v1, v0, v7

    .line 1382
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "CHAR_OCTET_LENGTH"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v7, 0xe

    aput-object v1, v0, v7

    .line 1383
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, "ORDINAL_POSITION"

    invoke-direct {v1, v2, v7, v3, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 1384
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "IS_NULLABLE"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 1385
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SCOPE_CATALOG"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 1386
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SCOPE_SCHEMA"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 1387
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SCOPE_TABLE"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    .line 1388
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SOURCE_DATA_TYPE"

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 10
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "scope"    # I
    .param p5, "nullable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1436
    if-eqz p3, :cond_2

    .line 1440
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 1441
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1442
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, "COLUMN_NAME"

    const/4 v4, 0x1

    const/16 v6, 0x20

    invoke-direct {v1, v3, v2, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 1443
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x4

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1444
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v7, "TYPE_NAME"

    invoke-direct {v2, v3, v7, v4, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1445
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, "COLUMN_SIZE"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v2, v8, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 1446
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, "BUFFER_LENGTH"

    invoke-direct {v1, v3, v2, v8, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 1447
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v6, "DECIMAL_DIGITS"

    invoke-direct {v2, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1448
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "PSEUDO_COLUMN"

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 1450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 1455
    .local v8, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$1;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v4

    move-object v2, v9

    move-object v3, p0

    move-object v5, p3

    move-object v6, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$1;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData$1;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    nop

    .line 1542
    if-eqz v8, :cond_0

    .line 1536
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    :cond_0
    nop

    .line 1538
    nop

    .line 1540
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 1542
    .local v2, "results":Ljava/sql/ResultSet;
    return-object v2

    .line 1535
    .end local v2    # "results":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v2

    .line 1536
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 1535
    :cond_1
    throw v2

    .line 1437
    .end local v0    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v1    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v8    # "stmt":Ljava/sql/Statement;
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    .locals 3
    .param p1, "catalogSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2025
    if-eqz p1, :cond_2

    .line 2026
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2027
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    .local v0, "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    goto :goto_0

    .line 2030
    .end local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    .restart local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    goto :goto_0

    .line 2034
    .end local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    .restart local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    goto :goto_0

    .line 2036
    .end local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2038
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    .restart local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    goto :goto_0

    .line 2040
    .end local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogs()Ljava/sql/ResultSet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/sql/ResultSet;I)V

    .line 2043
    .restart local v0    # "allCatalogsIter":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<Ljava/lang/String;>;"
    :goto_0
    return-object v0
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2121
    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2134
    const-string v0, "database"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2061
    const/4 v0, 0x0

    .line 2062
    .local v0, "results":Ljava/sql/ResultSet;
    const/4 v1, 0x0

    .line 2065
    .local v1, "stmt":Ljava/sql/Statement;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object v1, v2

    .line 2066
    const-string v2, "SHOW DATABASES"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    move-object v0, v2

    .line 2068
    const/4 v2, 0x0

    .line 2069
    .local v2, "catalogsCount":I
    invoke-interface {v0}, Ljava/sql/ResultSet;->last()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2070
    invoke-interface {v0}, Ljava/sql/ResultSet;->getRow()I

    move-result v3

    move v2, v3

    .line 2071
    invoke-interface {v0}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 2074
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2075
    .local v3, "resultsAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 2076
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2078
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2080
    new-array v4, v5, [Lcom/mysql/jdbc/Field;

    .line 2081
    .local v4, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v6, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v8, "TABLE_CAT"

    const/16 v9, 0xc

    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 2083
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2084
    .local v6, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2085
    .local v9, "cat":Ljava/lang/String;
    new-array v10, v5, [[B

    .line 2086
    .local v10, "rowVal":[[B
    invoke-virtual {p0, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v10, v7

    .line 2087
    new-instance v11, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    nop

    .end local v9    # "cat":Ljava/lang/String;
    .end local v10    # "rowVal":[[B
    goto :goto_1

    .line 2090
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v4, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    .end local v2    # "catalogsCount":I
    .end local v3    # "resultsAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v6    # "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    if-eqz v0, :cond_3

    .line 2094
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2097
    goto :goto_2

    .line 2095
    :catch_0
    move-exception v7

    .line 2096
    .local v7, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v7}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2099
    .end local v7    # "sqlEx":Ljava/sql/SQLException;
    :goto_2
    const/4 v0, 0x0

    .line 2102
    :cond_3
    if-eqz v1, :cond_4

    .line 2104
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2107
    goto :goto_3

    .line 2105
    :catch_1
    move-exception v7

    .line 2106
    .restart local v7    # "sqlEx":Ljava/sql/SQLException;
    invoke-static {v7}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2109
    .end local v7    # "sqlEx":Ljava/sql/SQLException;
    :goto_3
    const/4 v1, 0x0

    :cond_4
    nop

    .line 2090
    .restart local v2    # "catalogsCount":I
    .restart local v3    # "resultsAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "fields":[Lcom/mysql/jdbc/Field;
    .restart local v6    # "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    return-object v5

    .line 2092
    .end local v2    # "catalogsCount":I
    .end local v3    # "resultsAsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v6    # "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    :catchall_0
    move-exception v2

    .line 2109
    if-eqz v0, :cond_5

    .line 2094
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2097
    goto :goto_4

    .line 2095
    :catch_2
    move-exception v3

    .line 2096
    .local v3, "sqlEx":Ljava/sql/SQLException;
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2099
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :goto_4
    const/4 v0, 0x0

    .line 2102
    :cond_5
    if-eqz v1, :cond_6

    .line 2104
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2107
    goto :goto_5

    .line 2105
    :catch_3
    move-exception v3

    .line 2106
    .restart local v3    # "sqlEx":Ljava/sql/SQLException;
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2109
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    :goto_5
    const/4 v1, 0x0

    :cond_6
    nop

    .line 2092
    throw v2
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7754
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    .line 7755
    .local v1, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NAME"

    const/16 v5, 0xc

    const/16 v6, 0xff

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 7756
    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "MAX_LEN"

    const/16 v7, 0xa

    invoke-direct {v2, v3, v4, v0, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 7757
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, "DEFAULT_VALUE"

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 7758
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, "DESCRIPTION"

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 7760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 29
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2170
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/16 v0, 0x8

    new-array v3, v0, [Lcom/mysql/jdbc/Field;

    .line 2171
    .local v3, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_CAT"

    const/4 v7, 0x1

    const/16 v8, 0x40

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 2172
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v9, "TABLE_SCHEM"

    invoke-direct {v4, v5, v9, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, v7

    .line 2173
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v9, "TABLE_NAME"

    invoke-direct {v4, v5, v9, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x2

    aput-object v4, v3, v9

    .line 2174
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v10, "COLUMN_NAME"

    invoke-direct {v4, v5, v10, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v10, 0x3

    aput-object v4, v3, v10

    .line 2175
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v11, "GRANTOR"

    const/16 v12, 0x4d

    invoke-direct {v4, v5, v11, v7, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x4

    aput-object v4, v3, v11

    .line 2176
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v13, "GRANTEE"

    invoke-direct {v4, v5, v13, v7, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v12, 0x5

    aput-object v4, v3, v12

    .line 2177
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v13, "PRIVILEGE"

    invoke-direct {v4, v5, v13, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v8, 0x6

    aput-object v4, v3, v8

    .line 2178
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v13, "IS_GRANTABLE"

    invoke-direct {v4, v5, v13, v7, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 2180
    const-string v4, "SELECT c.host, c.db, t.grantor, c.user, c.table_name, c.column_name, c.column_priv FROM mysql.columns_priv c, mysql.tables_priv t WHERE c.host = t.host AND c.db = t.db AND c.table_name = t.table_name AND c.db LIKE ? AND c.table_name = ? AND c.column_name LIKE ?"

    .line 2184
    .local v4, "grantQuery":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2185
    .local v13, "pStmt":Ljava/sql/PreparedStatement;
    const/4 v14, 0x0

    .line 2186
    .local v14, "results":Ljava/sql/ResultSet;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2189
    .local v15, "grantRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v13, v16

    .line 2191
    const-string v16, "%"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_0

    move-object/from16 v12, p1

    goto :goto_1

    .line 2244
    :catchall_0
    move-exception v0

    move-object/from16 v12, p4

    :goto_0
    move-object v2, v0

    move-object/from16 v27, v4

    goto/16 :goto_b

    .line 2191
    :cond_0
    move-object/from16 v12, v16

    :goto_1
    :try_start_2
    invoke-interface {v13, v7, v12}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2192
    invoke-interface {v13, v9, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2193
    move-object/from16 v12, p4

    :try_start_3
    invoke-interface {v13, v10, v12}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2195
    invoke-interface {v13}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v18

    move-object/from16 v14, v18

    .line 2197
    :goto_2
    invoke-interface {v14}, Ljava/sql/ResultSet;->next()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2198
    invoke-interface {v14, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 2199
    .local v19, "host":Ljava/lang/String;
    invoke-interface {v14, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    .line 2200
    .local v20, "db":Ljava/lang/String;
    invoke-interface {v14, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v21, v18

    .line 2201
    .local v21, "grantor":Ljava/lang/String;
    invoke-interface {v14, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2203
    .local v18, "user":Ljava/lang/String;
    if-eqz v18, :cond_2

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v22, :cond_1

    goto :goto_3

    :cond_1
    move-object/from16 v11, v18

    goto :goto_4

    .line 2244
    .end local v18    # "user":Ljava/lang/String;
    .end local v19    # "host":Ljava/lang/String;
    .end local v20    # "db":Ljava/lang/String;
    .end local v21    # "grantor":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 2204
    .restart local v18    # "user":Ljava/lang/String;
    .restart local v19    # "host":Ljava/lang/String;
    .restart local v20    # "db":Ljava/lang/String;
    .restart local v21    # "grantor":Ljava/lang/String;
    :cond_2
    :goto_3
    move-object/from16 v18, v16

    move-object/from16 v11, v18

    .line 2207
    .end local v18    # "user":Ljava/lang/String;
    .local v11, "user":Ljava/lang/String;
    :goto_4
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2209
    .local v10, "fullUser":Ljava/lang/StringBuilder;
    move-object/from16 v9, v19

    .end local v19    # "host":Ljava/lang/String;
    .local v9, "host":Ljava/lang/String;
    if-eqz v9, :cond_3

    :try_start_6
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2210
    const-string v7, "@"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2214
    :cond_3
    :try_start_7
    invoke-interface {v14, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2215
    .local v7, "columnName":Ljava/lang/String;
    invoke-interface {v14, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    .line 2217
    .local v25, "allPrivileges":Ljava/lang/String;
    move-object/from16 v5, v25

    .end local v25    # "allPrivileges":Ljava/lang/String;
    .local v5, "allPrivileges":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 2218
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 2220
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v8, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 2222
    .local v6, "st":Ljava/util/StringTokenizer;
    :goto_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2223
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2224
    .local v8, "privilege":Ljava/lang/String;
    move-object/from16 v27, v4

    .end local v4    # "grantQuery":Ljava/lang/String;
    .local v27, "grantQuery":Ljava/lang/String;
    :try_start_8
    new-array v4, v0, [[B

    .line 2225
    .local v4, "tuple":[[B
    move-object/from16 v0, v20

    .end local v20    # "db":Ljava/lang/String;
    .local v0, "db":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v20

    const/16 v26, 0x0

    aput-object v20, v4, v26

    .line 2226
    const/16 v20, 0x0

    const/16 v19, 0x1

    aput-object v20, v4, v19

    .line 2227
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v28

    const/16 v23, 0x2

    aput-object v28, v4, v23

    .line 2228
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v28

    const/16 v18, 0x3

    aput-object v28, v4, v18

    .line 2230
    move-object/from16 v28, v0

    move-object/from16 v0, v21

    .end local v21    # "grantor":Ljava/lang/String;
    .local v0, "grantor":Ljava/lang/String;
    .local v28, "db":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 2231
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v4, v22

    goto :goto_6

    .line 2233
    :cond_4
    const/16 v22, 0x4

    aput-object v20, v4, v22

    .line 2236
    :goto_6
    move-object/from16 v21, v0

    .end local v0    # "grantor":Ljava/lang/String;
    .restart local v21    # "grantor":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v17, 0x5

    aput-object v0, v4, v17

    .line 2237
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v25, 0x6

    aput-object v0, v4, v25

    .line 2238
    const/4 v0, 0x7

    aput-object v20, v4, v0

    .line 2239
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2240
    move-object/from16 v2, p3

    move-object/from16 v4, v27

    move-object/from16 v20, v28

    const/16 v0, 0x8

    .end local v4    # "tuple":[[B
    .end local v8    # "privilege":Ljava/lang/String;
    goto :goto_5

    .line 2244
    .end local v5    # "allPrivileges":Ljava/lang/String;
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "fullUser":Ljava/lang/StringBuilder;
    .end local v11    # "user":Ljava/lang/String;
    .end local v21    # "grantor":Ljava/lang/String;
    .end local v28    # "db":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 2222
    .end local v27    # "grantQuery":Ljava/lang/String;
    .local v4, "grantQuery":Ljava/lang/String;
    .restart local v5    # "allPrivileges":Ljava/lang/String;
    .restart local v6    # "st":Ljava/util/StringTokenizer;
    .restart local v7    # "columnName":Ljava/lang/String;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v10    # "fullUser":Ljava/lang/StringBuilder;
    .restart local v11    # "user":Ljava/lang/String;
    .restart local v20    # "db":Ljava/lang/String;
    .restart local v21    # "grantor":Ljava/lang/String;
    :cond_5
    move-object/from16 v27, v4

    move-object/from16 v28, v20

    const/16 v17, 0x5

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x2

    const/16 v25, 0x6

    const/16 v26, 0x0

    .end local v4    # "grantQuery":Ljava/lang/String;
    .end local v20    # "db":Ljava/lang/String;
    .restart local v27    # "grantQuery":Ljava/lang/String;
    .restart local v28    # "db":Ljava/lang/String;
    goto :goto_7

    .line 2217
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v27    # "grantQuery":Ljava/lang/String;
    .end local v28    # "db":Ljava/lang/String;
    .restart local v4    # "grantQuery":Ljava/lang/String;
    .restart local v20    # "db":Ljava/lang/String;
    :cond_6
    move-object/from16 v27, v4

    move-object/from16 v28, v20

    const/16 v17, 0x5

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x2

    const/16 v25, 0x6

    const/16 v26, 0x0

    .line 2242
    .end local v4    # "grantQuery":Ljava/lang/String;
    .end local v5    # "allPrivileges":Ljava/lang/String;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "fullUser":Ljava/lang/StringBuilder;
    .end local v11    # "user":Ljava/lang/String;
    .end local v20    # "db":Ljava/lang/String;
    .end local v21    # "grantor":Ljava/lang/String;
    .restart local v27    # "grantQuery":Ljava/lang/String;
    :goto_7
    move-object/from16 v2, p3

    move-object/from16 v4, v27

    const/16 v0, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x4

    goto/16 :goto_2

    .line 2243
    .end local v27    # "grantQuery":Ljava/lang/String;
    .restart local v4    # "grantQuery":Ljava/lang/String;
    :cond_7
    move-object/from16 v27, v4

    .line 2263
    .end local v4    # "grantQuery":Ljava/lang/String;
    .restart local v27    # "grantQuery":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 2246
    :try_start_9
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2248
    goto :goto_8

    .line 2247
    :catch_0
    move-exception v0

    .line 2250
    :goto_8
    const/4 v14, 0x0

    .line 2253
    :cond_8
    if-eqz v13, :cond_9

    .line 2255
    :try_start_a
    invoke-interface {v13}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 2257
    goto :goto_9

    .line 2256
    :catch_1
    move-exception v0

    .line 2259
    :goto_9
    const/4 v13, 0x0

    :cond_9
    nop

    .line 2261
    nop

    .line 2263
    invoke-direct {v1, v3, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 2244
    .end local v27    # "grantQuery":Ljava/lang/String;
    .restart local v4    # "grantQuery":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v12, p4

    :goto_a
    move-object/from16 v27, v4

    move-object v2, v0

    .line 2259
    .end local v4    # "grantQuery":Ljava/lang/String;
    .restart local v27    # "grantQuery":Ljava/lang/String;
    :goto_b
    if-eqz v14, :cond_a

    .line 2246
    :try_start_b
    invoke-interface {v14}, Ljava/sql/ResultSet;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 2248
    goto :goto_c

    .line 2247
    :catch_2
    move-exception v0

    .line 2250
    :goto_c
    const/4 v14, 0x0

    .line 2253
    :cond_a
    if-eqz v13, :cond_b

    .line 2255
    :try_start_c
    invoke-interface {v13}, Ljava/sql/PreparedStatement;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 2257
    goto :goto_d

    .line 2256
    :catch_3
    move-exception v0

    .line 2259
    :goto_d
    const/4 v13, 0x0

    :cond_b
    nop

    .line 2244
    throw v2
.end method

.method protected getColumnType(ZZZZ)I
    .locals 1
    .param p1, "isOutParam"    # Z
    .param p2, "isInParam"    # Z
    .param p3, "isReturnParam"    # Z
    .param p4, "forGetFunctionColumns"    # Z

    .line 1062
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1063
    const/4 v0, 0x2

    return v0

    .line 1064
    :cond_0
    if-eqz p2, :cond_1

    .line 1065
    const/4 v0, 0x1

    return v0

    .line 1066
    :cond_1
    if-eqz p1, :cond_2

    .line 1067
    const/4 v0, 0x4

    return v0

    .line 1068
    :cond_2
    if-eqz p3, :cond_3

    .line 1069
    const/4 v0, 0x5

    return v0

    .line 1071
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 14
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "tableNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2320
    move-object v9, p0

    if-nez p4, :cond_1

    .line 2321
    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    const-string v0, "%"

    move-object v10, v0

    .end local p4    # "columnNamePattern":Ljava/lang/String;
    .local v0, "columnNamePattern":Ljava/lang/String;
    goto :goto_0

    .line 2324
    .end local v0    # "columnNamePattern":Ljava/lang/String;
    .restart local p4    # "columnNamePattern":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Column name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2320
    :cond_1
    move-object/from16 v10, p4

    .line 2329
    .end local p4    # "columnNamePattern":Ljava/lang/String;
    .local v10, "columnNamePattern":Ljava/lang/String;
    :goto_0
    move-object v6, v10

    .line 2331
    .local v6, "colPattern":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v11

    .line 2333
    .local v11, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2334
    .local v12, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v0, v9, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v13

    .line 2338
    .local v13, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$2;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object v7, v13

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/mysql/jdbc/DatabaseMetaData$2;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$2;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    nop

    .line 2569
    if-eqz v13, :cond_2

    .line 2563
    invoke-interface {v13}, Ljava/sql/Statement;->close()V

    :cond_2
    nop

    .line 2565
    nop

    .line 2567
    invoke-direct {p0, v11, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 2569
    .local v0, "results":Ljava/sql/ResultSet;
    return-object v0

    .line 2562
    .end local v0    # "results":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 2563
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/sql/Statement;->close()V

    .line 2562
    :cond_3
    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2609
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 16
    .param p1, "primaryCatalog"    # Ljava/lang/String;
    .param p2, "primarySchema"    # Ljava/lang/String;
    .param p3, "primaryTable"    # Ljava/lang/String;
    .param p4, "foreignCatalog"    # Ljava/lang/String;
    .param p5, "foreignSchema"    # Ljava/lang/String;
    .param p6, "foreignTable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2668
    move-object/from16 v12, p0

    if-eqz p3, :cond_3

    .line 2672
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v13

    .line 2674
    .local v13, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 2676
    .local v14, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v0, v12, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2678
    iget-object v0, v12, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v15

    .line 2682
    .local v15, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$3;

    move-object/from16 v11, p4

    invoke-virtual {v12, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v3

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v4, v15

    move-object/from16 v5, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v11, v14

    invoke-direct/range {v1 .. v11}, Lcom/mysql/jdbc/DatabaseMetaData$3;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$3;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2793
    nop

    .line 2802
    if-eqz v15, :cond_0

    .line 2795
    invoke-interface {v15}, Ljava/sql/Statement;->close()V

    :cond_0
    nop

    .line 2797
    goto :goto_0

    .line 2794
    :catchall_0
    move-exception v0

    .line 2795
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/sql/Statement;->close()V

    .line 2794
    :cond_1
    throw v0

    .line 2800
    .end local v15    # "stmt":Ljava/sql/Statement;
    :cond_2
    :goto_0
    invoke-direct {v12, v13, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 2802
    .local v0, "results":Ljava/sql/ResultSet;
    return-object v0

    .line 2669
    .end local v0    # "results":Ljava/sql/ResultSet;
    .end local v13    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v14    # "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDatabaseMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2828
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2835
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2845
    const-string v0, "MySQL"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2855
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2868
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    const/4 v0, 0x2

    return v0

    .line 2872
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    .line 2881
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMajorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    .line 2890
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMinorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2900
    const-string v0, "MySQL Connector Java"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2910
    const-string v0, "mysql-connector-java-5.1.49 ( Revision: ad86f36e100e104cd926c6b81c8cab9565750116 )"

    return-object v0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method protected getExportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "exportingTable"    # Ljava/lang/String;
    .param p3, "keysComment"    # Ljava/lang/String;
    .param p5, "fkTableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3071
    .local p4, "tuples":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 3072
    return-void
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2960
    if-eqz p3, :cond_3

    .line 2964
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 2966
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2968
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x3

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2970
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 2974
    .local v8, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$4;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v4

    move-object v2, v9

    move-object v3, p0

    move-object v5, v8

    move-object v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$4;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData$4;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3039
    nop

    .line 3048
    if-eqz v8, :cond_0

    .line 3041
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    :cond_0
    nop

    .line 3043
    goto :goto_0

    .line 3040
    :catchall_0
    move-exception v2

    .line 3041
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 3040
    :cond_1
    throw v2

    .line 3046
    .end local v8    # "stmt":Ljava/sql/Statement;
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 3048
    .local v2, "results":Ljava/sql/ResultSet;
    return-object v2

    .line 2961
    .end local v0    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v1    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v2    # "results":Ljava/sql/ResultSet;
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3082
    const-string v0, "#@"

    return-object v0
.end method

.method protected getForeignKeyActions(Ljava/lang/String;)[I
    .locals 6
    .param p1, "commentString"    # Ljava/lang/String;

    .line 3095
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 3097
    .local v0, "actions":[I
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3099
    .local v1, "lastParenIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    .line 3100
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 3102
    .local v2, "cascadeOptions":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getCascadeDeleteOption(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    .line 3103
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getCascadeUpdateOption(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    .line 3106
    .end local v2    # "cascadeOptions":Ljava/lang/String;
    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method protected getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "entity"    # Ljava/lang/String;

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, "fullyQualifiedName":Ljava/lang/StringBuilder;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "functionNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7771
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v8

    .line 7773
    .local v8, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "functionNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7832
    const/4 v0, 0x6

    new-array v8, v0, [Lcom/mysql/jdbc/Field;

    .line 7834
    .local v8, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_CAT"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v8, v3

    .line 7835
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "FUNCTION_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v8, v4

    .line 7836
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "FUNCTION_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v8, v3

    .line 7837
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "REMARKS"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v8, v3

    .line 7838
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "FUNCTION_TYPE"

    const/4 v6, 0x5

    invoke-direct {v1, v2, v3, v6, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x4

    aput-object v1, v8, v0

    .line 7839
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, "SPECIFIC_NAME"

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v8, v6

    .line 7841
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3118
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3119
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    goto :goto_0

    :cond_0
    const-string v0, "`"

    :goto_0
    return-object v0

    .line 3123
    :cond_1
    const-string v0, " "

    return-object v0
.end method

.method protected getImportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "importingTable"    # Ljava/lang/String;
    .param p3, "keysComment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3279
    .local p4, "tuples":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/ResultSetRow;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 3280
    return-void
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3173
    if-eqz p3, :cond_3

    .line 3177
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 3179
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3181
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x3

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3183
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 3187
    .local v8, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$5;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v4

    move-object v2, v9

    move-object v3, p0

    move-object v5, p3

    move-object v6, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$5;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData$5;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3249
    nop

    .line 3258
    if-eqz v8, :cond_0

    .line 3251
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    :cond_0
    nop

    .line 3253
    goto :goto_0

    .line 3250
    :catchall_0
    move-exception v2

    .line 3251
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 3250
    :cond_1
    throw v2

    .line 3256
    .end local v8    # "stmt":Ljava/sql/Statement;
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 3258
    .local v2, "results":Ljava/sql/ResultSet;
    return-object v2

    .line 3174
    .end local v0    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v1    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v2    # "results":Ljava/sql/ResultSet;
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 12
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "unique"    # Z
    .param p5, "approximate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3334
    move-object v8, p0

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createIndexInfoFields()[Lcom/mysql/jdbc/Field;

    move-result-object v9

    .line 3336
    .local v9, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 3337
    .local v7, "sortedRows":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;Lcom/mysql/jdbc/ResultSetRow;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 3338
    .local v10, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v11

    .line 3342
    .local v11, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$6;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$6;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;ZLjava/util/SortedMap;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$6;->doForAll()V

    .line 3421
    invoke-interface {v7}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3422
    .local v0, "sortedRowsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/ResultSetRow;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3423
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3426
    :cond_0
    invoke-direct {p0, v9, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3428
    .local v1, "indexInfo":Ljava/sql/ResultSet;
    nop

    .line 3430
    .end local v0    # "sortedRowsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v1    # "indexInfo":Ljava/sql/ResultSet;
    if-eqz v11, :cond_1

    .line 3431
    invoke-interface {v11}, Ljava/sql/Statement;->close()V

    :cond_1
    move-object v2, v1

    .line 3428
    .restart local v0    # "sortedRowsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/ResultSetRow;>;"
    .local v2, "indexInfo":Ljava/sql/ResultSet;
    return-object v1

    .line 3430
    .end local v0    # "sortedRowsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v2    # "indexInfo":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 3431
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/sql/Statement;->close()V

    .line 3430
    :cond_2
    throw v0
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public getJDBCMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3463
    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3470
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3480
    const v0, 0xfffff8

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3490
    const/16 v0, 0x20

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3500
    const v0, 0xfffff8

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3510
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3520
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3530
    const/16 v0, 0x10

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3540
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3550
    const/16 v0, 0x100

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3560
    const/16 v0, 0x200

    return v0
.end method

.method public getMaxConnections()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3570
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3580
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3590
    const/16 v0, 0x100

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3600
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3610
    const v0, 0x7ffffff7

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3620
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3630
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public getMaxStatements()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3640
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3650
    const/16 v0, 0x40

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3660
    const/16 v0, 0x100

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3670
    const/16 v0, 0x10

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3680
    const-string v0, "ABS,ACOS,ASIN,ATAN,ATAN2,BIT_COUNT,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,MAX,MIN,MOD,PI,POW,POWER,RADIANS,RAND,ROUND,SIN,SQRT,TAN,TRUNCATE"

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3709
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3710
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 3711
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 3712
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TABLE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 3713
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "COLUMN_NAME"

    const/16 v5, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 3714
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "KEY_SEQ"

    const/4 v6, 0x5

    invoke-direct {v1, v2, v3, v6, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 3715
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "PK_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 3717
    if-eqz p3, :cond_2

    .line 3721
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3722
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 3726
    .local v8, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$7;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v4

    move-object v2, v9

    move-object v3, p0

    move-object v5, p3

    move-object v6, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$7;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData$7;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3780
    nop

    .line 3788
    if-eqz v8, :cond_0

    .line 3782
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    :cond_0
    nop

    .line 3784
    nop

    .line 3786
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 3788
    .local v2, "results":Ljava/sql/ResultSet;
    return-object v2

    .line 3781
    .end local v2    # "results":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v2

    .line 3782
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 3781
    :cond_1
    throw v2

    .line 3718
    .end local v1    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v8    # "stmt":Ljava/sql/Statement;
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Table not specified."

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3865
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v8

    .line 3867
    .local v8, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method protected getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 24
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "schemaPattern"    # Ljava/lang/String;
    .param p4, "procedureOrFunctionNamePattern"    # Ljava/lang/String;
    .param p5, "columnNamePattern"    # Ljava/lang/String;
    .param p6, "returnProcedures"    # Z
    .param p7, "returnFunctions"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3899
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 3901
    .local v11, "procsOrFuncsToExtractList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;>;>;"
    const/4 v12, 0x0

    .line 3903
    .local v12, "procsAndOrFuncsRs":Ljava/sql/ResultSet;
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->supportsStoredProcedures()Z

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_a

    .line 3906
    const/4 v0, 0x0

    .line 3908
    .local v0, "tmpProcedureOrFunctionNamePattern":Ljava/lang/String;
    if-eqz v10, :cond_0

    :try_start_0
    const-string v1, "%"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3909
    invoke-static/range {p4 .. p4}, Lcom/mysql/jdbc/StringUtils;->sanitizeProcOrFuncName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 3957
    .end local v0    # "tmpProcedureOrFunctionNamePattern":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    .line 3913
    .restart local v0    # "tmpProcedureOrFunctionNamePattern":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3914
    move-object/from16 v0, p4

    goto :goto_1

    .line 3918
    :cond_1
    move-object/from16 v1, p2

    .line 3919
    .local v1, "tmpCatalog":Ljava/lang/String;
    iget-object v2, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 3923
    .local v2, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 3924
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 3925
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 3931
    .end local v1    # "tmpCatalog":Ljava/lang/String;
    .end local v2    # "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v0

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v1

    move-object v12, v1

    .line 3934
    const/4 v1, 0x0

    .line 3935
    .local v1, "hasResults":Z
    :goto_2
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3936
    new-instance v2, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-interface {v12, v14}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v12, v4}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v4

    if-ne v4, v14, :cond_3

    sget-object v4, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    :goto_3
    invoke-direct {v2, v8, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3939
    const/4 v1, 0x1

    goto :goto_2

    .line 3943
    :cond_4
    if-nez v1, :cond_5

    goto :goto_4

    .line 3950
    :cond_5
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3956
    .end local v0    # "tmpProcedureOrFunctionNamePattern":Ljava/lang/String;
    .end local v1    # "hasResults":Z
    :goto_4
    nop

    .line 3999
    const/4 v1, 0x0

    .line 3959
    .local v1, "rethrowSqlEx":Ljava/sql/SQLException;
    if-eqz v12, :cond_6

    .line 3961
    :try_start_1
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3964
    goto :goto_5

    .line 3962
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3963
    .local v0, "sqlEx":Ljava/sql/SQLException;
    move-object v1, v0

    .line 3967
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_6
    :goto_5
    if-nez v1, :cond_7

    .line 3970
    .end local v1    # "rethrowSqlEx":Ljava/sql/SQLException;
    goto :goto_8

    .line 3968
    .restart local v1    # "rethrowSqlEx":Ljava/sql/SQLException;
    :cond_7
    throw v1

    .line 3970
    .end local v1    # "rethrowSqlEx":Ljava/sql/SQLException;
    :goto_6
    const/4 v2, 0x0

    .line 3959
    .local v2, "rethrowSqlEx":Ljava/sql/SQLException;
    if-eqz v12, :cond_8

    .line 3961
    :try_start_2
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3964
    goto :goto_7

    .line 3962
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 3963
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    move-object v2, v0

    .line 3967
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    .line 3968
    throw v2

    .line 3970
    .end local v2    # "rethrowSqlEx":Ljava/sql/SQLException;
    :cond_9
    nop

    .line 3957
    throw v1

    .line 3973
    :cond_a
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3974
    .local v0, "resultRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    const/4 v1, 0x0

    .line 3975
    .local v1, "idx":I
    const-string v2, ""

    .line 3977
    .local v2, "procNameToCall":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p2

    .end local p2    # "catalog":Ljava/lang/String;
    .local v1, "catalog":Ljava/lang/String;
    .local v2, "idx":I
    .local v3, "procNameToCall":Ljava/lang/String;
    .local v15, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    .line 3978
    .local v16, "procOrFunc":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 3979
    .local v7, "procName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    .line 3982
    .local v23, "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    iget-object v4, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3983
    const/16 v17, 0x0

    iget-object v4, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_a

    :cond_b
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_a
    move-object/from16 v22, v5

    const-string v19, "."

    move-object/from16 v18, v7

    move-object/from16 v20, v4

    move-object/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    move v6, v2

    goto :goto_b

    .line 3986
    :cond_c
    const-string v4, "."

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    .line 3989
    .end local v2    # "idx":I
    .local v6, "idx":I
    :goto_b
    if-lez v6, :cond_d

    .line 3990
    invoke-virtual {v7, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3991
    move-object v2, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v3    # "procNameToCall":Ljava/lang/String;
    .local v2, "procNameToCall":Ljava/lang/String;
    goto :goto_c

    .line 3994
    .end local v2    # "procNameToCall":Ljava/lang/String;
    .restart local v3    # "procNameToCall":Ljava/lang/String;
    :cond_d
    move-object v2, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 3996
    .end local v1    # "catalog":Ljava/lang/String;
    .end local v3    # "procNameToCall":Ljava/lang/String;
    .local v17, "catalog":Ljava/lang/String;
    .local v18, "procNameToCall":Ljava/lang/String;
    :goto_c
    array-length v1, v9

    const/16 v2, 0x11

    if-ne v1, v2, :cond_e

    const/16 v19, 0x1

    goto :goto_d

    :cond_e
    const/16 v19, 0x0

    :goto_d
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    move-object/from16 v5, p5

    move/from16 v20, v6

    .end local v6    # "idx":I
    .local v20, "idx":I
    move-object v6, v0

    move-object/from16 v21, v7

    .end local v7    # "procName":Ljava/lang/String;
    .local v21, "procName":Ljava/lang/String;
    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getCallStmtParameterTypes(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;Ljava/lang/String;Ljava/util/List;Z)V

    .line 3997
    .end local v16    # "procOrFunc":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;>;"
    .end local v21    # "procName":Ljava/lang/String;
    .end local v23    # "procType":Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    move-object/from16 v1, v17

    move/from16 v2, v20

    goto/16 :goto_9

    .line 3999
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "catalog":Ljava/lang/String;
    .end local v18    # "procNameToCall":Ljava/lang/String;
    .end local v20    # "idx":I
    .restart local v1    # "catalog":Ljava/lang/String;
    .local v2, "idx":I
    .restart local v3    # "procNameToCall":Ljava/lang/String;
    :cond_f
    invoke-direct {v8, v9, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v4

    return-object v4
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4205
    const-string v0, "PROCEDURE"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "procedureNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4039
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v7

    .line 4041
    .local v7, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method protected getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 13
    .param p1, "fields"    # [Lcom/mysql/jdbc/Field;
    .param p2, "catalog"    # Ljava/lang/String;
    .param p3, "schemaPattern"    # Ljava/lang/String;
    .param p4, "procedureNamePattern"    # Ljava/lang/String;
    .param p5, "returnProcedures"    # Z
    .param p6, "returnFunctions"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4070
    move-object v8, p0

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    goto :goto_1

    .line 4071
    :cond_1
    :goto_0
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4072
    const-string v0, "%"

    move-object v9, v0

    .line 4079
    .end local p4    # "procedureNamePattern":Ljava/lang/String;
    .local v9, "procedureNamePattern":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 4081
    .local v10, "procedureRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->supportsStoredProcedures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4082
    move-object v5, v9

    .line 4084
    .local v5, "procNamePattern":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4086
    .local v6, "procedureRowsToSort":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/ResultSetRow;>;>;"
    new-instance v11, Lcom/mysql/jdbc/DatabaseMetaData$8;

    move-object v12, p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, v11

    move-object v1, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$8;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;ZZLjava/lang/String;Ljava/util/List;[Lcom/mysql/jdbc/Field;)V

    invoke-virtual {v11}, Lcom/mysql/jdbc/DatabaseMetaData$8;->doForAll()V

    .line 4188
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4189
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    .line 4190
    .local v1, "procRow":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4081
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "procRow":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v5    # "procNamePattern":Ljava/lang/String;
    .end local v6    # "procedureRowsToSort":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<Ljava/lang/String;Lcom/mysql/jdbc/ResultSetRow;>;>;"
    :cond_2
    move-object v12, p2

    .line 4194
    :cond_3
    move-object v0, p1

    invoke-direct {p0, p1, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1

    .line 4074
    .end local v9    # "procedureNamePattern":Ljava/lang/String;
    .end local v10    # "procedureRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local p4    # "procedureNamePattern":Ljava/lang/String;
    :cond_4
    move-object v0, p1

    move-object v12, p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Procedure name pattern can not be NULL or empty."

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "tableNamePattern"    # Ljava/lang/String;
    .param p4, "columnNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7892
    const/16 v0, 0xc

    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_CAT"

    const/16 v5, 0x200

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "TABLE_SCHEM"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "TABLE_NAME"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "COLUMN_NAME"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "DATA_TYPE"

    const/4 v6, 0x4

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "COLUMN_SIZE"

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "DECIMAL_DIGITS"

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "NUM_PREC_RADIX"

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "COLUMN_USAGE"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "REMARKS"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "CHAR_OCTET_LENGTH"

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "IS_NULLABLE"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v0, 0xb

    aput-object v2, v1, v0

    move-object v0, v1

    .line 7899
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4212
    const/4 v0, 0x1

    return v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4318
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4319
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    return-object v0

    .line 4322
    :cond_0
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData;

    monitor-enter v0

    .line 4324
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4325
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 4328
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 4329
    .local v1, "mysqlKeywordSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4331
    .local v2, "mysqlKeywordsBuffer":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->MYSQL_KEYWORDS:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4332
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->SQL2003_KEYWORDS:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->SQL92_KEYWORDS:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4334
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4335
    .local v4, "keyword":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4338
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "keyword":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    .line 4339
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 4340
    .end local v1    # "mysqlKeywordSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "mysqlKeywordsBuffer":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSQLStateType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4347
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 4348
    return v1

    .line 4351
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4352
    return v1

    .line 4355
    :cond_1
    return v2
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4291
    const-string v0, ""

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4274
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4275
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4276
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TABLE_CATALOG"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 4278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4279
    .local v1, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    .line 4281
    .local v2, "results":Ljava/sql/ResultSet;
    return-object v2
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7854
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    const/16 v4, 0xc

    const/16 v5, 0xff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TABLE_CATALOG"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7856
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4308
    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4365
    const-string v0, "ASCII,BIN,BIT_LENGTH,CHAR,CHARACTER_LENGTH,CHAR_LENGTH,CONCAT,CONCAT_WS,CONV,ELT,EXPORT_SET,FIELD,FIND_IN_SET,HEX,INSERT,INSTR,LCASE,LEFT,LENGTH,LOAD_FILE,LOCATE,LOCATE,LOWER,LPAD,LTRIM,MAKE_SET,MATCH,MID,OCT,OCTET_LENGTH,ORD,POSITION,QUOTE,REPEAT,REPLACE,REVERSE,RIGHT,RPAD,RTRIM,SOUNDEX,SPACE,STRCMP,SUBSTRING,SUBSTRING,SUBSTRING,SUBSTRING,SUBSTRING_INDEX,TRIM,UCASE,UPPER"

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4375
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4376
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 4377
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TABLE_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 4378
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TABLE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 4379
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SUPERTABLE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4388
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4389
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_CAT"

    const/4 v4, 0x1

    const/16 v5, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 4390
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TYPE_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 4391
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TYPE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 4392
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SUPERTYPE_CAT"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 4393
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SUPERTYPE_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 4394
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "SUPERTYPE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4406
    const-string v0, "DATABASE,USER,SYSTEM_USER,SESSION_USER,PASSWORD,ENCRYPT,LAST_INSERT_ID,VERSION"

    return-object v0
.end method

.method protected getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "table"    # Ljava/lang/String;

    .line 4410
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4412
    .local v0, "tableNameWithCase":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 30
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "tableNamePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4448
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez p3, :cond_1

    .line 4449
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4450
    const-string v0, "%"

    move-object v3, v0

    .end local p3    # "tableNamePattern":Ljava/lang/String;
    .local v0, "tableNamePattern":Ljava/lang/String;
    goto :goto_0

    .line 4452
    .end local v0    # "tableNamePattern":Ljava/lang/String;
    .restart local p3    # "tableNamePattern":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v3, "Table name pattern can not be NULL or empty."

    const-string v4, "S1009"

    invoke-static {v3, v4, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4448
    :cond_1
    move-object/from16 v3, p3

    .line 4457
    .end local p3    # "tableNamePattern":Ljava/lang/String;
    .local v3, "tableNamePattern":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x7

    new-array v4, v0, [Lcom/mysql/jdbc/Field;

    .line 4458
    .local v4, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_CAT"

    const/4 v7, 0x1

    const/16 v8, 0x40

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x0

    aput-object v0, v4, v6

    .line 4459
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v9, "TABLE_SCHEM"

    invoke-direct {v0, v5, v9, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v4, v7

    .line 4460
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v9, "TABLE_NAME"

    invoke-direct {v0, v5, v9, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x2

    aput-object v0, v4, v9

    .line 4461
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v10, "GRANTOR"

    const/16 v11, 0x4d

    invoke-direct {v0, v5, v10, v7, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v10, 0x3

    aput-object v0, v4, v10

    .line 4462
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v12, "GRANTEE"

    invoke-direct {v0, v5, v12, v7, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x4

    aput-object v0, v4, v11

    .line 4463
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v12, "PRIVILEGE"

    invoke-direct {v0, v5, v12, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v8, 0x5

    aput-object v0, v4, v8

    .line 4464
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v12, "IS_GRANTABLE"

    invoke-direct {v0, v5, v12, v7, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x6

    aput-object v0, v4, v5

    .line 4466
    const-string v12, "SELECT host,db,table_name,grantor,user,table_priv FROM mysql.tables_priv WHERE db LIKE ? AND table_name LIKE ?"

    .line 4468
    .local v12, "grantQuery":Ljava/lang/String;
    const/4 v13, 0x0

    .line 4469
    .local v13, "results":Ljava/sql/ResultSet;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 4470
    .local v14, "grantRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    const/4 v15, 0x0

    .line 4473
    .local v15, "pStmt":Ljava/sql/PreparedStatement;
    :try_start_0
    invoke-virtual {v1, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move-object v15, v0

    .line 4475
    const-string v6, "%"

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 4543
    :catchall_0
    move-exception v0

    move-object/from16 v7, p2

    move-object v2, v0

    move-object/from16 v18, v3

    goto/16 :goto_10

    .line 4475
    :cond_2
    move-object v0, v6

    :goto_1
    :try_start_2
    invoke-interface {v15, v7, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4476
    invoke-interface {v15, v9, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4478
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    move-object v13, v0

    .line 4480
    :goto_2
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4481
    invoke-interface {v13, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 4482
    .local v16, "host":Ljava/lang/String;
    invoke-interface {v13, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 4483
    .local v17, "db":Ljava/lang/String;
    invoke-interface {v13, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 4484
    .local v18, "table":Ljava/lang/String;
    invoke-interface {v13, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 4485
    .local v19, "grantor":Ljava/lang/String;
    invoke-interface {v13, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 4487
    .local v0, "user":Ljava/lang/String;
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v20, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, v0

    goto :goto_4

    .line 4488
    :cond_4
    :goto_3
    move-object v0, v6

    move-object v8, v0

    .line 4491
    .end local v0    # "user":Ljava/lang/String;
    .local v8, "user":Ljava/lang/String;
    :goto_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-object/from16 v21, v0

    .line 4493
    .local v21, "fullUser":Ljava/lang/StringBuilder;
    move-object/from16 v11, v16

    .end local v16    # "host":Ljava/lang/String;
    .local v11, "host":Ljava/lang/String;
    if-eqz v11, :cond_5

    :try_start_5
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4494
    const-string v0, "@"

    move-object/from16 v10, v21

    .end local v21    # "fullUser":Ljava/lang/StringBuilder;
    .local v10, "fullUser":Ljava/lang/StringBuilder;
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4495
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 4493
    .end local v10    # "fullUser":Ljava/lang/StringBuilder;
    .restart local v21    # "fullUser":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v10, v21

    .line 4498
    .end local v21    # "fullUser":Ljava/lang/StringBuilder;
    .restart local v10    # "fullUser":Ljava/lang/StringBuilder;
    :goto_5
    :try_start_6
    invoke-interface {v13, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4500
    .local v0, "allPrivileges":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 4501
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 4503
    .end local v0    # "allPrivileges":Ljava/lang/String;
    .local v5, "allPrivileges":Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v0, v5, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 4505
    .local v9, "st":Ljava/util/StringTokenizer;
    :goto_6
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4506
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    move-object/from16 v24, v0

    .line 4509
    .local v24, "privilege":Ljava/lang/String;
    const/16 v25, 0x0

    .line 4512
    .local v25, "columnResults":Ljava/sql/ResultSet;
    move-object/from16 v7, p2

    move-object/from16 v29, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v29

    .local v3, "table":Ljava/lang/String;
    .local v18, "tableNamePattern":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v1, v2, v7, v3, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    move-object/from16 v25, v0

    .line 4514
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4515
    const/16 v0, 0x8

    new-array v0, v0, [[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 4516
    .local v0, "tuple":[[B
    move-object/from16 v2, v17

    .end local v17    # "db":Ljava/lang/String;
    .local v2, "db":Ljava/lang/String;
    :try_start_8
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v27, 0x0

    aput-object v17, v0, v27

    .line 4517
    const/16 v17, 0x0

    const/16 v26, 0x1

    aput-object v17, v0, v26

    .line 4518
    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v28

    const/16 v23, 0x2

    aput-object v28, v0, v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 4520
    move-object/from16 v28, v2

    move-object/from16 v2, v19

    .end local v19    # "grantor":Ljava/lang/String;
    .local v2, "grantor":Ljava/lang/String;
    .local v28, "db":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 4521
    :try_start_9
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v19

    const/16 v16, 0x3

    aput-object v19, v0, v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    .line 4532
    .end local v0    # "tuple":[[B
    :catchall_1
    move-exception v0

    move-object/from16 p3, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v24

    move-object v2, v0

    goto/16 :goto_a

    .line 4523
    .restart local v0    # "tuple":[[B
    :cond_6
    const/16 v16, 0x3

    :try_start_a
    aput-object v17, v0, v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 4526
    :goto_8
    move-object/from16 p3, v2

    .end local v2    # "grantor":Ljava/lang/String;
    .local p3, "grantor":Ljava/lang/String;
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v19, 0x4

    aput-object v2, v0, v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 4527
    move-object/from16 v2, v24

    .end local v24    # "privilege":Ljava/lang/String;
    .local v2, "privilege":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v22

    const/16 v20, 0x5

    aput-object v22, v0, v20

    .line 4528
    const/16 v21, 0x6

    aput-object v17, v0, v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 4529
    move-object/from16 v17, v2

    .end local v2    # "privilege":Ljava/lang/String;
    .local v17, "privilege":Ljava/lang/String;
    :try_start_d
    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v22, v3

    .end local v3    # "table":Ljava/lang/String;
    .local v22, "table":Ljava/lang/String;
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 4530
    move-object/from16 v2, p1

    move-object/from16 v19, p3

    move-object/from16 v24, v17

    move-object/from16 v3, v22

    move-object/from16 v17, v28

    .end local v0    # "tuple":[[B
    goto :goto_7

    .line 4532
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a

    .end local v22    # "table":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v3

    move-object v2, v0

    .end local v3    # "table":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    goto/16 :goto_a

    .end local v17    # "privilege":Ljava/lang/String;
    .end local v22    # "table":Ljava/lang/String;
    .restart local v2    # "privilege":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object v2, v0

    .end local v2    # "privilege":Ljava/lang/String;
    .end local v3    # "table":Ljava/lang/String;
    .restart local v17    # "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    goto :goto_a

    .end local v17    # "privilege":Ljava/lang/String;
    .end local v22    # "table":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    .restart local v24    # "privilege":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v17, v24

    move-object v2, v0

    .end local v3    # "table":Ljava/lang/String;
    .end local v24    # "privilege":Ljava/lang/String;
    .restart local v17    # "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    goto :goto_a

    .end local v17    # "privilege":Ljava/lang/String;
    .end local v22    # "table":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    .local v2, "grantor":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    .restart local v24    # "privilege":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 p3, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v24

    move-object v2, v0

    .end local v2    # "grantor":Ljava/lang/String;
    .end local v3    # "table":Ljava/lang/String;
    .end local v24    # "privilege":Ljava/lang/String;
    .restart local v17    # "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    .restart local p3    # "grantor":Ljava/lang/String;
    goto :goto_a

    .end local v17    # "privilege":Ljava/lang/String;
    .end local v22    # "table":Ljava/lang/String;
    .end local v28    # "db":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    .local v2, "db":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    .restart local v19    # "grantor":Ljava/lang/String;
    .restart local v24    # "privilege":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v22, v3

    move-object/from16 p3, v19

    move-object/from16 v17, v24

    move-object v2, v0

    .end local v2    # "db":Ljava/lang/String;
    .end local v3    # "table":Ljava/lang/String;
    .end local v19    # "grantor":Ljava/lang/String;
    .end local v24    # "privilege":Ljava/lang/String;
    .restart local v17    # "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    .restart local v28    # "db":Ljava/lang/String;
    .restart local p3    # "grantor":Ljava/lang/String;
    goto :goto_a

    .line 4531
    .end local v22    # "table":Ljava/lang/String;
    .end local v28    # "db":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    .local v17, "db":Ljava/lang/String;
    .restart local v19    # "grantor":Ljava/lang/String;
    .restart local v24    # "privilege":Ljava/lang/String;
    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v28, v17

    move-object/from16 p3, v19

    move-object/from16 v17, v24

    const/16 v16, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v23, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x0

    .line 4562
    .end local v3    # "table":Ljava/lang/String;
    .end local v19    # "grantor":Ljava/lang/String;
    .end local v24    # "privilege":Ljava/lang/String;
    .local v17, "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    .restart local v28    # "db":Ljava/lang/String;
    .restart local p3    # "grantor":Ljava/lang/String;
    if-eqz v25, :cond_8

    .line 4534
    :try_start_f
    invoke-interface/range {v25 .. v25}, Ljava/sql/ResultSet;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 4536
    goto :goto_9

    .line 4535
    :catch_0
    move-exception v0

    .line 4536
    :cond_8
    :goto_9
    nop

    .line 4538
    nop

    .line 4539
    .end local v17    # "privilege":Ljava/lang/String;
    .end local v25    # "columnResults":Ljava/sql/ResultSet;
    move-object/from16 v2, p1

    move-object/from16 v19, p3

    move-object/from16 v3, v18

    move-object/from16 v18, v22

    move-object/from16 v17, v28

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 4532
    .end local v22    # "table":Ljava/lang/String;
    .end local v28    # "db":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    .restart local v3    # "table":Ljava/lang/String;
    .local v17, "db":Ljava/lang/String;
    .restart local v19    # "grantor":Ljava/lang/String;
    .restart local v24    # "privilege":Ljava/lang/String;
    .restart local v25    # "columnResults":Ljava/sql/ResultSet;
    :catchall_8
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v28, v17

    move-object/from16 p3, v19

    move-object/from16 v17, v24

    move-object v2, v0

    .line 4536
    .end local v3    # "table":Ljava/lang/String;
    .end local v19    # "grantor":Ljava/lang/String;
    .end local v24    # "privilege":Ljava/lang/String;
    .local v17, "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    .restart local v28    # "db":Ljava/lang/String;
    .restart local p3    # "grantor":Ljava/lang/String;
    :goto_a
    if-eqz v25, :cond_9

    .line 4534
    :try_start_10
    invoke-interface/range {v25 .. v25}, Ljava/sql/ResultSet;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_b

    .line 4543
    .end local v5    # "allPrivileges":Ljava/lang/String;
    .end local v8    # "user":Ljava/lang/String;
    .end local v9    # "st":Ljava/util/StringTokenizer;
    .end local v10    # "fullUser":Ljava/lang/StringBuilder;
    .end local v11    # "host":Ljava/lang/String;
    .end local v17    # "privilege":Ljava/lang/String;
    .end local v22    # "table":Ljava/lang/String;
    .end local v25    # "columnResults":Ljava/sql/ResultSet;
    .end local v28    # "db":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object v2, v0

    goto/16 :goto_10

    .line 4535
    .restart local v5    # "allPrivileges":Ljava/lang/String;
    .restart local v8    # "user":Ljava/lang/String;
    .restart local v9    # "st":Ljava/util/StringTokenizer;
    .restart local v10    # "fullUser":Ljava/lang/StringBuilder;
    .restart local v11    # "host":Ljava/lang/String;
    .restart local v17    # "privilege":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    .restart local v25    # "columnResults":Ljava/sql/ResultSet;
    .restart local v28    # "db":Ljava/lang/String;
    .restart local p3    # "grantor":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_c

    .line 4536
    :cond_9
    :goto_b
    nop

    :goto_c
    nop

    .line 4532
    nop

    .end local v4    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v12    # "grantQuery":Ljava/lang/String;
    .end local v13    # "results":Ljava/sql/ResultSet;
    .end local v14    # "grantRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v15    # "pStmt":Ljava/sql/PreparedStatement;
    .end local v18    # "tableNamePattern":Ljava/lang/String;
    .end local p1    # "catalog":Ljava/lang/String;
    .end local p2    # "schemaPattern":Ljava/lang/String;
    :try_start_11
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 4505
    .end local v22    # "table":Ljava/lang/String;
    .end local v25    # "columnResults":Ljava/sql/ResultSet;
    .end local v28    # "db":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    .local v3, "tableNamePattern":Ljava/lang/String;
    .restart local v4    # "fields":[Lcom/mysql/jdbc/Field;
    .restart local v12    # "grantQuery":Ljava/lang/String;
    .restart local v13    # "results":Ljava/sql/ResultSet;
    .restart local v14    # "grantRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .restart local v15    # "pStmt":Ljava/sql/PreparedStatement;
    .local v17, "db":Ljava/lang/String;
    .local v18, "table":Ljava/lang/String;
    .restart local v19    # "grantor":Ljava/lang/String;
    .restart local p1    # "catalog":Ljava/lang/String;
    .restart local p2    # "schemaPattern":Ljava/lang/String;
    :cond_a
    move-object/from16 v7, p2

    move-object/from16 v28, v17

    move-object/from16 v22, v18

    move-object/from16 p3, v19

    const/16 v16, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v23, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v18, v3

    .end local v3    # "tableNamePattern":Ljava/lang/String;
    .end local v17    # "db":Ljava/lang/String;
    .end local v19    # "grantor":Ljava/lang/String;
    .local v18, "tableNamePattern":Ljava/lang/String;
    .restart local v22    # "table":Ljava/lang/String;
    .restart local v28    # "db":Ljava/lang/String;
    .restart local p3    # "grantor":Ljava/lang/String;
    goto :goto_d

    .line 4500
    .end local v5    # "allPrivileges":Ljava/lang/String;
    .end local v9    # "st":Ljava/util/StringTokenizer;
    .end local v22    # "table":Ljava/lang/String;
    .end local v28    # "db":Ljava/lang/String;
    .end local p3    # "grantor":Ljava/lang/String;
    .local v0, "allPrivileges":Ljava/lang/String;
    .restart local v3    # "tableNamePattern":Ljava/lang/String;
    .restart local v17    # "db":Ljava/lang/String;
    .local v18, "table":Ljava/lang/String;
    .restart local v19    # "grantor":Ljava/lang/String;
    :cond_b
    move-object/from16 v7, p2

    move-object/from16 v28, v17

    move-object/from16 v22, v18

    move-object/from16 p3, v19

    const/16 v16, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v23, 0x2

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v18, v3

    .line 4541
    .end local v0    # "allPrivileges":Ljava/lang/String;
    .end local v3    # "tableNamePattern":Ljava/lang/String;
    .end local v8    # "user":Ljava/lang/String;
    .end local v10    # "fullUser":Ljava/lang/StringBuilder;
    .end local v11    # "host":Ljava/lang/String;
    .end local v17    # "db":Ljava/lang/String;
    .end local v19    # "grantor":Ljava/lang/String;
    .local v18, "tableNamePattern":Ljava/lang/String;
    :goto_d
    move-object/from16 v2, p1

    move-object/from16 v3, v18

    const/4 v5, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x4

    goto/16 :goto_2

    .line 4542
    .end local v18    # "tableNamePattern":Ljava/lang/String;
    .restart local v3    # "tableNamePattern":Ljava/lang/String;
    :cond_c
    move-object/from16 v7, p2

    move-object/from16 v18, v3

    .line 4536
    .end local v3    # "tableNamePattern":Ljava/lang/String;
    .restart local v18    # "tableNamePattern":Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 4545
    :try_start_12
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 4547
    goto :goto_e

    .line 4546
    :catch_2
    move-exception v0

    .line 4549
    :goto_e
    const/4 v13, 0x0

    .line 4552
    :cond_d
    if-eqz v15, :cond_e

    .line 4554
    :try_start_13
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 4556
    goto :goto_f

    .line 4555
    :catch_3
    move-exception v0

    .line 4558
    :goto_f
    const/4 v15, 0x0

    :cond_e
    nop

    .line 4560
    nop

    .line 4562
    invoke-direct {v1, v4, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 4543
    .end local v18    # "tableNamePattern":Ljava/lang/String;
    .restart local v3    # "tableNamePattern":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v18, v3

    move-object v2, v0

    .line 4558
    .end local v3    # "tableNamePattern":Ljava/lang/String;
    .restart local v18    # "tableNamePattern":Ljava/lang/String;
    :goto_10
    if-eqz v13, :cond_f

    .line 4545
    :try_start_14
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 4547
    goto :goto_11

    .line 4546
    :catch_4
    move-exception v0

    .line 4549
    :goto_11
    const/4 v13, 0x0

    .line 4552
    :cond_f
    if-eqz v15, :cond_10

    .line 4554
    :try_start_15
    invoke-interface {v15}, Ljava/sql/PreparedStatement;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 4556
    goto :goto_12

    .line 4555
    :catch_5
    move-exception v0

    .line 4558
    :goto_12
    const/4 v15, 0x0

    :cond_10
    nop

    .line 4543
    throw v2
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4851
    .local v0, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/mysql/jdbc/Field;

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TABLE_TYPE"

    const/16 v6, 0xc

    const/16 v7, 0x100

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4853
    .local v2, "fields":[Lcom/mysql/jdbc/Field;
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    invoke-interface {v3, v5, v4, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    .line 4855
    .local v3, "minVersion5_0_1":Z
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4856
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4857
    if-eqz v3, :cond_0

    .line 4858
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4860
    :cond_0
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4861
    if-eqz v3, :cond_1

    .line 4862
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v1, v1, [[B

    sget-object v6, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v5, v1, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4865
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 15
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "tableNamePattern"    # Ljava/lang/String;
    .param p4, "types"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4600
    move-object v8, p0

    if-nez p3, :cond_1

    .line 4601
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4602
    const-string v0, "%"

    move-object v9, v0

    .end local p3    # "tableNamePattern":Ljava/lang/String;
    .local v0, "tableNamePattern":Ljava/lang/String;
    goto :goto_0

    .line 4604
    .end local v0    # "tableNamePattern":Ljava/lang/String;
    .restart local p3    # "tableNamePattern":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 4600
    :cond_1
    move-object/from16 v9, p3

    .line 4609
    .end local p3    # "tableNamePattern":Ljava/lang/String;
    .local v9, "tableNamePattern":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 4610
    .local v7, "sortedRows":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;Lcom/mysql/jdbc/ResultSetRow;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 4612
    .local v10, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v11

    .line 4615
    .local v11, "stmt":Ljava/sql/Statement;
    const-string v0, ""

    .line 4617
    .local v0, "tmpCat":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 4622
    :cond_2
    move-object/from16 v0, p1

    move-object v12, v0

    goto :goto_2

    .line 4618
    :cond_3
    :goto_1
    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4619
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    move-object v12, v0

    goto :goto_2

    .line 4618
    :cond_4
    move-object v12, v0

    .line 4625
    .end local v0    # "tmpCat":Ljava/lang/String;
    .local v12, "tmpCat":Ljava/lang/String;
    :goto_2
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    invoke-static {v9, v12, v0, v1}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v13

    .line 4627
    .local v13, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 4628
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .local v0, "tableNamePat":Ljava/lang/String;
    goto :goto_3

    .line 4630
    .end local v0    # "tableNamePat":Ljava/lang/String;
    :cond_5
    move-object v0, v9

    move-object v14, v0

    .line 4634
    .local v14, "tableNamePat":Ljava/lang/String;
    :goto_3
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$9;

    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object v4, v11

    move-object v5, v14

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$9;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/SortedMap;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$9;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4807
    nop

    .line 4816
    if-eqz v11, :cond_6

    .line 4809
    invoke-interface {v11}, Ljava/sql/Statement;->close()V

    :cond_6
    nop

    .line 4811
    nop

    .line 4813
    invoke-interface {v7}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4814
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createTablesFields()[Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 4816
    .local v0, "tables":Ljava/sql/ResultSet;
    return-object v0

    .line 4808
    .end local v0    # "tables":Ljava/sql/ResultSet;
    :catchall_0
    move-exception v0

    .line 4809
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/sql/Statement;->close()V

    .line 4808
    :cond_7
    throw v0
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4875
    const-string v0, "DAYOFWEEK,WEEKDAY,DAYOFMONTH,DAYOFYEAR,MONTH,DAYNAME,MONTHNAME,QUARTER,WEEK,YEAR,HOUR,MINUTE,SECOND,PERIOD_ADD,PERIOD_DIFF,TO_DAYS,FROM_DAYS,DATE_FORMAT,TIME_FORMAT,CURDATE,CURRENT_DATE,CURTIME,CURRENT_TIME,NOW,SYSDATE,CURRENT_TIMESTAMP,UNIX_TIMESTAMP,FROM_UNIXTIME,SEC_TO_TIME,TIME_TO_SEC"

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4969
    move-object/from16 v0, p0

    const/16 v1, 0x12

    new-array v2, v1, [Lcom/mysql/jdbc/Field;

    .line 4970
    .local v2, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TYPE_NAME"

    const/4 v6, 0x1

    const/16 v7, 0x20

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 4971
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x4

    const/4 v9, 0x5

    invoke-direct {v3, v4, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v6

    .line 4972
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v7, "PRECISION"

    const/16 v10, 0xa

    invoke-direct {v3, v4, v7, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    .line 4973
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v11, "LITERAL_PREFIX"

    invoke-direct {v3, v4, v11, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x3

    aput-object v3, v2, v11

    .line 4974
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v12, "LITERAL_SUFFIX"

    invoke-direct {v3, v4, v12, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v8

    .line 4975
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v12, "CREATE_PARAMS"

    const/16 v13, 0x20

    invoke-direct {v3, v4, v12, v6, v13}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v9

    .line 4976
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v12, "NULLABLE"

    invoke-direct {v3, v4, v12, v9, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v12, 0x6

    aput-object v3, v2, v12

    .line 4977
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, "CASE_SENSITIVE"

    const/16 v14, 0x10

    invoke-direct {v3, v4, v13, v14, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v13, 0x7

    aput-object v3, v2, v13

    .line 4978
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "SEARCHABLE"

    invoke-direct {v3, v4, v15, v9, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0x8

    aput-object v3, v2, v15

    .line 4979
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "UNSIGNED_ATTRIBUTE"

    invoke-direct {v3, v4, v15, v14, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0x9

    aput-object v3, v2, v15

    .line 4980
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "FIXED_PREC_SCALE"

    invoke-direct {v3, v4, v15, v14, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v10

    .line 4981
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "AUTO_INCREMENT"

    invoke-direct {v3, v4, v15, v14, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0xb

    aput-object v3, v2, v15

    .line 4982
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "LOCAL_TYPE_NAME"

    const/16 v13, 0x20

    invoke-direct {v3, v4, v15, v6, v13}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0xc

    aput-object v3, v2, v13

    .line 4983
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "MINIMUM_SCALE"

    invoke-direct {v3, v4, v15, v9, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0xd

    aput-object v3, v2, v15

    .line 4984
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "MAXIMUM_SCALE"

    invoke-direct {v3, v4, v15, v9, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0xe

    aput-object v3, v2, v15

    .line 4985
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "SQL_DATA_TYPE"

    invoke-direct {v3, v4, v15, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0xf

    aput-object v3, v2, v15

    .line 4986
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "SQL_DATETIME_SUB"

    invoke-direct {v3, v4, v15, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v14

    .line 4987
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, "NUM_PREC_RADIX"

    invoke-direct {v3, v4, v15, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v15, 0x11

    aput-object v3, v2, v15

    .line 4989
    const/4 v3, 0x0

    check-cast v3, [[B

    .line 4990
    .local v3, "rowVal":[[B
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4998
    .local v15, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    new-array v3, v1, [[B

    .line 4999
    const-string v1, "BIT"

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v5

    .line 5000
    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, v3, v6

    .line 5003
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v7

    .line 5004
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v11

    .line 5005
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v8

    .line 5006
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v9

    .line 5007
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    aput-object v1, v3, v12

    .line 5010
    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v19, 0x7

    aput-object v1, v3, v19

    .line 5011
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v16, 0x8

    aput-object v1, v3, v16

    .line 5014
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v23

    const/16 v17, 0x9

    aput-object v23, v3, v17

    .line 5015
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v23

    aput-object v23, v3, v10

    .line 5016
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v23

    const/16 v18, 0xb

    aput-object v23, v3, v18

    .line 5017
    const-string v10, "BIT"

    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v3, v13

    .line 5018
    const-string v10, "0"

    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v20, 0xd

    aput-object v24, v3, v20

    .line 5019
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v21, 0xe

    aput-object v24, v3, v21

    .line 5020
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v22, 0xf

    aput-object v24, v3, v22

    .line 5021
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v24

    aput-object v24, v3, v14

    .line 5022
    const-string v14, "10"

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v25

    const/16 v26, 0x11

    aput-object v25, v3, v26

    .line 5023
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v13, v3, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5028
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5029
    const-string v12, "BOOL"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5030
    const/4 v12, -0x7

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5033
    const-string v12, "1"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5034
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5035
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5036
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5037
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5040
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5041
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5044
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5045
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5046
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5047
    const-string v12, "BOOL"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5048
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5049
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5050
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5051
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5052
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5053
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5058
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5059
    const-string v12, "TINYINT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5060
    const/4 v12, -0x6

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5063
    const-string v12, "3"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5064
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5065
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5066
    const-string v12, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5067
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5070
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5071
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5074
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5075
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5076
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5077
    const-string v12, "TINYINT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5078
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5079
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5080
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5081
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5082
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5083
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5085
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5086
    const-string v12, "TINYINT UNSIGNED"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5087
    const/4 v12, -0x6

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5090
    const-string v12, "3"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5091
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5092
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5093
    const-string v12, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5094
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5097
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5098
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5101
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5102
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5103
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5104
    const-string v12, "TINYINT UNSIGNED"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5105
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5106
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5107
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5108
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5109
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5110
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5115
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5116
    const-string v12, "BIGINT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5117
    const/4 v12, -0x5

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5120
    const-string v12, "19"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5121
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5122
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5123
    const-string v12, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5124
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5127
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5128
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5131
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5132
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5133
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5134
    const-string v12, "BIGINT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5135
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5136
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5137
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5138
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5139
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5140
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5142
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5143
    const-string v12, "BIGINT UNSIGNED"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5144
    const/4 v12, -0x5

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5147
    const-string v12, "20"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5148
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5149
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5150
    const-string v12, "[(M)] [ZEROFILL]"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5151
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5154
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5155
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5158
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5159
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5160
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5161
    const-string v12, "BIGINT UNSIGNED"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5162
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5163
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5164
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5165
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5166
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5167
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5172
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5173
    const-string v12, "LONG VARBINARY"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5174
    const/4 v12, -0x4

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5177
    const-string v12, "16777215"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5178
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5179
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5180
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5181
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5184
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5185
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5188
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5189
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5190
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5191
    const-string v12, "LONG VARBINARY"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5192
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5193
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5194
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5195
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5196
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5197
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5202
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5203
    const-string v12, "MEDIUMBLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5204
    const/4 v12, -0x4

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5207
    const-string v12, "16777215"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5208
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5209
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5210
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5211
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5214
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5215
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5218
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5219
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5220
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5221
    const-string v12, "MEDIUMBLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5222
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5223
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5224
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5225
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5226
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5227
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5232
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5233
    const-string v12, "LONGBLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5234
    const/4 v12, -0x4

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5237
    const v12, 0x7fffffff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5240
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5241
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5242
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5243
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5246
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5247
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5250
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5251
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5252
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5253
    const-string v12, "LONGBLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5254
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5255
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5256
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5257
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5258
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5259
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5264
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5265
    const-string v12, "BLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5266
    const/4 v12, -0x4

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5269
    const-string v12, "65535"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5270
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5271
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5272
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5273
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5276
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5277
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5280
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5281
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5282
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5283
    const-string v12, "BLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5284
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5285
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5286
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5287
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5288
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5289
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5294
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5295
    const-string v12, "TINYBLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5296
    const/4 v12, -0x4

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5299
    const-string v12, "255"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5300
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5301
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5302
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5303
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5306
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5307
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5310
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5311
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5312
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5313
    const-string v12, "TINYBLOB"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5314
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5315
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5316
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5317
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5318
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x11

    aput-object v12, v3, v13

    .line 5319
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5325
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5326
    const-string v12, "VARBINARY"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5327
    const/4 v12, -0x3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5330
    iget-object v12, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v12, v9, v5, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "65535"

    goto :goto_0

    :cond_0
    const-string v12, "255"

    :goto_0
    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5331
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5332
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5333
    const-string v12, "(M)"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5334
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5337
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5338
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5341
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5342
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5343
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5344
    const-string v12, "VARBINARY"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5345
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5346
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5347
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5348
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5349
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5350
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5356
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5357
    const-string v12, "BINARY"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5358
    const/4 v12, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5361
    const-string v12, "255"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5362
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5363
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5364
    const-string v12, "(M)"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5365
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5368
    const-string v12, "true"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5369
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5372
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5373
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5374
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5375
    const-string v12, "BINARY"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5376
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5377
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5378
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5379
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5380
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5381
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5386
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5387
    const-string v12, "LONG VARCHAR"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5388
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5391
    const-string v12, "16777215"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5392
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5393
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5394
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5395
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5398
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5399
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5402
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5403
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5404
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5405
    const-string v12, "LONG VARCHAR"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5406
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5407
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5408
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5409
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5410
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5411
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5416
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5417
    const-string v12, "MEDIUMTEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5418
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5421
    const-string v12, "16777215"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5422
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5423
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5424
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5425
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5428
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5429
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5432
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5433
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5434
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5435
    const-string v12, "MEDIUMTEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5436
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5437
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5438
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5439
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5440
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5441
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5446
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5447
    const-string v12, "LONGTEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5448
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5451
    const v12, 0x7fffffff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5454
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5455
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5456
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5457
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5460
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5461
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5464
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5465
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5466
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5467
    const-string v12, "LONGTEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5468
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5469
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5470
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5471
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5472
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5473
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5478
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5479
    const-string v12, "TEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5480
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5483
    const-string v12, "65535"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5484
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5485
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5486
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5487
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5490
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5491
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5494
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5495
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5496
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5497
    const-string v12, "TEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5498
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5499
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5500
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5501
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5502
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5503
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5508
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5509
    const-string v12, "TINYTEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5510
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5513
    const-string v12, "255"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5514
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5515
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5516
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5517
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5520
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5521
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5524
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5525
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5526
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5527
    const-string v12, "TINYTEXT"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5528
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5529
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5530
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5531
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5532
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5533
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5538
    const/16 v12, 0x12

    new-array v3, v12, [[B

    .line 5539
    const-string v12, "CHAR"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v5

    .line 5540
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    aput-object v12, v3, v6

    .line 5543
    const-string v12, "255"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v7

    .line 5544
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v11

    .line 5545
    const-string v12, "\'"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v8

    .line 5546
    const-string v12, "(M)"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v3, v9

    .line 5547
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    .line 5550
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v3, v13

    .line 5551
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v3, v13

    .line 5554
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x9

    aput-object v12, v3, v13

    .line 5555
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xa

    aput-object v12, v3, v13

    .line 5556
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v3, v13

    .line 5557
    const-string v12, "CHAR"

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v3, v13

    .line 5558
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v3, v13

    .line 5559
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v3, v13

    .line 5560
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0xf

    aput-object v12, v3, v13

    .line 5561
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v3, v13

    .line 5562
    const/16 v12, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v12

    .line 5563
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v12, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5567
    const/16 v12, 0xfe

    .line 5569
    .local v12, "decimalPrecision":I
    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v13, v9, v5, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5570
    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v8, 0x6

    invoke-interface {v13, v9, v5, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5571
    const/16 v12, 0x41

    goto :goto_1

    .line 5573
    :cond_1
    const/16 v12, 0x40

    .line 5580
    :cond_2
    :goto_1
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5581
    const-string v8, "NUMERIC"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5582
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5585
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5586
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5587
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5588
    const-string v8, "[(M[,D])] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5589
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5592
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5593
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5596
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5597
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5598
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5599
    const-string v8, "NUMERIC"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5600
    const-string v8, "-308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5601
    const-string v8, "308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5602
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5603
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5604
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5605
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5610
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5611
    const-string v8, "DECIMAL"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5612
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5615
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5616
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5617
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5618
    const-string v8, "[(M[,D])] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5619
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5622
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5623
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5626
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5627
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5628
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5629
    const-string v8, "DECIMAL"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5630
    const-string v8, "-308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5631
    const-string v8, "308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5632
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5633
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5634
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5635
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5640
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5641
    const-string v8, "INTEGER"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5642
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v3, v6

    .line 5645
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v7

    .line 5646
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v11

    .line 5647
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5648
    const-string v8, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5649
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5652
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5653
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5656
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5657
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5658
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5659
    const-string v8, "INTEGER"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5660
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5661
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5662
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5663
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5664
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5665
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5667
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5668
    const-string v8, "INTEGER UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5669
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v3, v6

    .line 5672
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v7

    .line 5673
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v11

    .line 5674
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5675
    const-string v8, "[(M)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5676
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5679
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5680
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5683
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5684
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5685
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5686
    const-string v8, "INTEGER UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5687
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5688
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5689
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5690
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5691
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5692
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5697
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5698
    const-string v8, "INT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5699
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v3, v6

    .line 5702
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v7

    .line 5703
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v11

    .line 5704
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5705
    const-string v8, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5706
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5709
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5710
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5713
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5714
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5715
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5716
    const-string v8, "INT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5717
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5718
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5719
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5720
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5721
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5722
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5724
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5725
    const-string v8, "INT UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5726
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v3, v6

    .line 5729
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v7

    .line 5730
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v11

    .line 5731
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5732
    const-string v8, "[(M)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5733
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5736
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5737
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5740
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5741
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5742
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5743
    const-string v8, "INT UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5744
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5745
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5746
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5747
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5748
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5749
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5754
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5755
    const-string v8, "MEDIUMINT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5756
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5759
    const-string v8, "7"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5760
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5761
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5762
    const-string v8, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5763
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5766
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5767
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5770
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5771
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5772
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5773
    const-string v8, "MEDIUMINT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5774
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5775
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5776
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5777
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5778
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5779
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5781
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5782
    const-string v8, "MEDIUMINT UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5783
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5786
    const-string v8, "8"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5787
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5788
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5789
    const-string v8, "[(M)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5790
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5793
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5794
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5797
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5798
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5799
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5800
    const-string v8, "MEDIUMINT UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5801
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5802
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5803
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5804
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5805
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5806
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5811
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5812
    const-string v8, "SMALLINT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5813
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5816
    const-string v8, "5"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5817
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5818
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5819
    const-string v8, "[(M)] [UNSIGNED] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5820
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5823
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5824
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5827
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5828
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5829
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5830
    const-string v8, "SMALLINT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5831
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5832
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5833
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5834
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5835
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5836
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5838
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5839
    const-string v8, "SMALLINT UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5840
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5843
    const-string v8, "5"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5844
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5845
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5846
    const-string v8, "[(M)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5847
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5850
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5851
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5854
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5855
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5856
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5857
    const-string v8, "SMALLINT UNSIGNED"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5858
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5859
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5860
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5861
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5862
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5863
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5869
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5870
    const-string v8, "FLOAT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5871
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5874
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5875
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5876
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5877
    const-string v8, "[(M,D)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5878
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5881
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5882
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5885
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5886
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5887
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5888
    const-string v8, "FLOAT"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5889
    const-string v8, "-38"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5890
    const-string v8, "38"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5891
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5892
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5893
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5894
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5899
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5900
    const-string v8, "DOUBLE"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5901
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5904
    const-string v8, "17"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5905
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5906
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5907
    const-string v8, "[(M,D)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5908
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5911
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5912
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5915
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5916
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5917
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5918
    const-string v8, "DOUBLE"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5919
    const-string v8, "-308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5920
    const-string v8, "308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5921
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5922
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5923
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5924
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5929
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5930
    const-string v8, "DOUBLE PRECISION"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5931
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5934
    const-string v8, "17"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5935
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5936
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5937
    const-string v8, "[(M,D)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5938
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5941
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5942
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5945
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5946
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5947
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5948
    const-string v8, "DOUBLE PRECISION"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5949
    const-string v8, "-308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5950
    const-string v8, "308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5951
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5952
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5953
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5954
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5959
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5960
    const-string v8, "REAL"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5961
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5964
    const-string v8, "17"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5965
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5966
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5967
    const-string v8, "[(M,D)] [ZEROFILL]"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5968
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 5971
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 5972
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 5975
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 5976
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 5977
    const-string v8, "true"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 5978
    const-string v8, "REAL"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 5979
    const-string v8, "-308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 5980
    const-string v8, "308"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 5981
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 5982
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 5983
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 5984
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5989
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 5990
    const-string v8, "VARCHAR"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 5991
    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 5994
    iget-object v8, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8, v9, v5, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "65535"

    goto :goto_2

    :cond_3
    const-string v8, "255"

    :goto_2
    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 5995
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 5996
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 5997
    const-string v8, "(M)"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 5998
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 6001
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 6002
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 6005
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 6006
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 6007
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 6008
    const-string v8, "VARCHAR"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 6009
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 6010
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 6011
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 6012
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 6013
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 6014
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6019
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 6020
    const-string v8, "ENUM"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 6021
    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 6024
    const-string v8, "65535"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 6025
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 6026
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 6027
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 6028
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 6031
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 6032
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 6035
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 6036
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 6037
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 6038
    const-string v8, "ENUM"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 6039
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 6040
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 6041
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 6042
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 6043
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 6044
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6049
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 6050
    const-string v8, "SET"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 6051
    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 6054
    const-string v8, "64"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 6055
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 6056
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 6057
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 6058
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 6061
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 6062
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 6065
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 6066
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 6067
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 6068
    const-string v8, "SET"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 6069
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 6070
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 6071
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 6072
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 6073
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 6074
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6079
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 6080
    const-string v8, "DATE"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 6081
    const/16 v8, 0x5b

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 6084
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 6085
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 6086
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 6087
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 6088
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 6091
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 6092
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 6095
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 6096
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 6097
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 6098
    const-string v8, "DATE"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 6099
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 6100
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 6101
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 6102
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 6103
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 6104
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6109
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 6110
    const-string v8, "TIME"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 6111
    const/16 v8, 0x5c

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 6114
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 6115
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 6116
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 6117
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v9

    .line 6118
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v13, 0x6

    aput-object v8, v3, v13

    .line 6121
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 6122
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v13, 0x8

    aput-object v8, v3, v13

    .line 6125
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x9

    aput-object v8, v3, v13

    .line 6126
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xa

    aput-object v8, v3, v13

    .line 6127
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xb

    aput-object v8, v3, v13

    .line 6128
    const-string v8, "TIME"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xc

    aput-object v8, v3, v13

    .line 6129
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xd

    aput-object v8, v3, v13

    .line 6130
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xe

    aput-object v8, v3, v13

    .line 6131
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0xf

    aput-object v8, v3, v13

    .line 6132
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v13, 0x10

    aput-object v8, v3, v13

    .line 6133
    const/16 v8, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v3, v8

    .line 6134
    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v13

    invoke-direct {v8, v3, v13}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6139
    const/16 v8, 0x12

    new-array v3, v8, [[B

    .line 6140
    const-string v8, "DATETIME"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v5

    .line 6141
    const/16 v8, 0x5d

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v3, v6

    .line 6144
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v7

    .line 6145
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v11

    .line 6146
    const-string v8, "\'"

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    aput-object v8, v3, v13

    .line 6147
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v9

    .line 6148
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v3, v8

    .line 6151
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v8, 0x7

    aput-object v4, v3, v8

    .line 6152
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v8, 0x8

    aput-object v4, v3, v8

    .line 6155
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0x9

    aput-object v4, v3, v8

    .line 6156
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0xa

    aput-object v4, v3, v8

    .line 6157
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0xb

    aput-object v4, v3, v8

    .line 6158
    const-string v4, "DATETIME"

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0xc

    aput-object v4, v3, v8

    .line 6159
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0xd

    aput-object v4, v3, v8

    .line 6160
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0xe

    aput-object v4, v3, v8

    .line 6161
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0xf

    aput-object v4, v3, v8

    .line 6162
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0x10

    aput-object v4, v3, v8

    .line 6163
    const/16 v4, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v3, v4

    .line 6164
    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-direct {v4, v3, v8}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6169
    const/16 v4, 0x12

    new-array v3, v4, [[B

    .line 6170
    const-string v4, "TIMESTAMP"

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v5

    .line 6171
    const/16 v4, 0x5d

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v3, v6

    .line 6174
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v7

    .line 6175
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v11

    .line 6176
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 6177
    const-string v4, "[(M)]"

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v9

    .line 6178
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 6181
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 6182
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 6185
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 6186
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 6187
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v3, v4

    .line 6188
    const-string v1, "TIMESTAMP"

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v3, v4

    .line 6189
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v3, v4

    .line 6190
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v3, v4

    .line 6191
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v3, v4

    .line 6192
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v3, v4

    .line 6193
    const/16 v1, 0x11

    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v1

    .line 6194
    new-instance v1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6196
    invoke-direct {v0, v2, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 8
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schemaPattern"    # Ljava/lang/String;
    .param p3, "typeNamePattern"    # Ljava/lang/String;
    .param p4, "types"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6237
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 6238
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_CAT"

    const/16 v4, 0xc

    const/16 v5, 0x20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 6239
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TYPE_SCHEM"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 6240
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "TYPE_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 6241
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "CLASS_NAME"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 6242
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "DATA_TYPE"

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 6243
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, "REMARKS"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 6244
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, "BASE_TYPE"

    invoke-direct {v1, v2, v4, v3, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 6246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6248
    .local v1, "tuples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    return-object v2
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6258
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6268
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6269
    const/4 v0, 0x0

    .line 6270
    .local v0, "stmt":Ljava/sql/Statement;
    const/4 v1, 0x0

    .line 6273
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2

    move-object v0, v2

    .line 6275
    const-string v2, "SELECT USER()"

    invoke-interface {v0, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 6276
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    .line 6278
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6302
    if-eqz v1, :cond_0

    .line 6282
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6285
    goto :goto_0

    .line 6283
    :catch_0
    move-exception v3

    .line 6284
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 6287
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    .line 6290
    :cond_0
    if-eqz v0, :cond_1

    .line 6292
    :try_start_2
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6295
    goto :goto_1

    .line 6293
    :catch_1
    move-exception v3

    .line 6294
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 6297
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    nop

    .line 6278
    return-object v2

    .line 6280
    :catchall_0
    move-exception v2

    .line 6297
    if-eqz v1, :cond_2

    .line 6282
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 6285
    goto :goto_2

    .line 6283
    :catch_2
    move-exception v3

    .line 6284
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 6287
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    .line 6290
    :cond_2
    if-eqz v0, :cond_3

    .line 6292
    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 6295
    goto :goto_3

    .line 6293
    :catch_3
    move-exception v3

    .line 6294
    .restart local v3    # "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 6297
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    :cond_3
    nop

    .line 6280
    throw v2

    .line 6302
    .end local v0    # "stmt":Ljava/sql/Statement;
    .end local v1    # "rs":Ljava/sql/ResultSet;
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "schema"    # Ljava/lang/String;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6339
    if-eqz p3, :cond_2

    .line 6343
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 6344
    .local v0, "fields":[Lcom/mysql/jdbc/Field;
    const/4 v1, 0x0

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SCOPE"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6345
    new-instance v1, Lcom/mysql/jdbc/Field;

    const/16 v2, 0x20

    const-string v4, "COLUMN_NAME"

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 6346
    const/4 v1, 0x2

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "DATA_TYPE"

    const/4 v7, 0x4

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6347
    const/4 v1, 0x3

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "TYPE_NAME"

    const/16 v8, 0x10

    invoke-direct {v2, v3, v4, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6348
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, "COLUMN_SIZE"

    invoke-direct {v1, v3, v2, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 6349
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, "BUFFER_LENGTH"

    invoke-direct {v1, v3, v2, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 6350
    const/4 v1, 0x6

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "DECIMAL_DIGITS"

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6351
    const/4 v1, 0x7

    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v4, "PSEUDO_COLUMN"

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 6353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6355
    .local v1, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 6359
    .local v8, "stmt":Ljava/sql/Statement;
    :try_start_0
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$10;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v4

    move-object v2, v9

    move-object v3, p0

    move-object v5, p3

    move-object v6, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$10;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData$10;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6478
    nop

    .line 6484
    if-eqz v8, :cond_0

    .line 6480
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    :cond_0
    nop

    .line 6482
    nop

    .line 6484
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v2

    return-object v2

    .line 6479
    :catchall_0
    move-exception v2

    .line 6480
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 6479
    :cond_1
    throw v2

    .line 6340
    .end local v0    # "fields":[Lcom/mysql/jdbc/Field;
    .end local v1    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mysql/jdbc/ResultSetRow;>;"
    .end local v8    # "stmt":Ljava/sql/Statement;
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public insertsAreDetected(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6498
    const/4 v0, 0x0

    return v0
.end method

.method public isCatalogAtStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6509
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6519
    const/4 v0, 0x0

    return v0
.end method

.method public locatorsUpdateCopy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6526
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6537
    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6547
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6557
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v3, 0xb

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public nullsAreSortedHigh()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6567
    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6577
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->nullsAreSortedHigh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6585
    const/4 v0, 0x0

    return v0
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6593
    const/4 v0, 0x0

    return v0
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6606
    const/4 v0, 0x0

    return v0
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6614
    const/4 v0, 0x0

    return v0
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6622
    const/4 v0, 0x0

    return v0
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6635
    const/4 v0, 0x0

    return v0
.end method

.method protected parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
    .locals 26
    .param p1, "keysComment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6650
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    const-string v8, ","

    .line 6652
    .local v8, "columnsDelimitter":Ljava/lang/String;
    iget-object v4, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const/4 v0, 0x0

    const-string v2, "("

    move-object/from16 v1, p1

    move-object v3, v4

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v9

    .line 6654
    .local v9, "indexOfOpenParenLocalColumns":I
    const-string v0, "S1000"

    const/4 v1, -0x1

    if-eq v9, v1, :cond_5

    .line 6659
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6660
    .local v10, "constraintName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 6662
    .end local p1    # "keysComment":Ljava/lang/String;
    .local v11, "keysComment":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 6664
    .local v6, "keysCommentTrimmed":Ljava/lang/String;
    const/4 v12, 0x0

    iget-object v3, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v17, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v14, ")"

    move-object v13, v6

    move-object v15, v3

    move-object/from16 v16, v3

    invoke-static/range {v12 .. v17}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    .line 6667
    .local v5, "indexOfCloseParenLocalColumns":I
    if-eq v5, v1, :cond_4

    .line 6672
    const/4 v3, 0x1

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 6674
    .local v4, "localColumnNamesString":Ljava/lang/String;
    const/4 v12, 0x0

    iget-object v3, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v17, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v14, "REFER "

    move-object v13, v6

    move-object v15, v3

    move-object/from16 v16, v3

    invoke-static/range {v12 .. v17}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    .line 6676
    .local v3, "indexOfRefer":I
    if-eq v3, v1, :cond_3

    .line 6681
    iget-object v15, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v17, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    const-string v14, "("

    move v12, v3

    move-object v13, v6

    move-object/from16 v16, v15

    invoke-static/range {v12 .. v17}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v15

    .line 6684
    .local v15, "indexOfOpenParenReferCol":I
    if-eq v15, v1, :cond_2

    .line 6689
    const-string v12, "REFER "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v6, v12, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 6691
    .local v14, "referCatalogTableString":Ljava/lang/String;
    const/16 v16, 0x0

    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v21, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    const-string v18, "/"

    move-object/from16 v17, v14

    move-object/from16 v19, v12

    move-object/from16 v20, v12

    invoke-static/range {v16 .. v21}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v13

    .line 6693
    .local v13, "indexOfSlash":I
    if-eq v13, v1, :cond_1

    .line 6698
    invoke-virtual {v14, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iget-object v2, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 6699
    .local v19, "referCatalog":Ljava/lang/String;
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 6701
    .local v20, "referTable":Ljava/lang/String;
    iget-object v2, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v17, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v16, ")"

    move v12, v15

    move/from16 v21, v13

    .end local v13    # "indexOfSlash":I
    .local v21, "indexOfSlash":I
    move-object v13, v6

    move-object/from16 v22, v14

    .end local v14    # "referCatalogTableString":Ljava/lang/String;
    .local v22, "referCatalogTableString":Ljava/lang/String;
    move-object/from16 v14, v16

    move/from16 v23, v15

    .end local v15    # "indexOfOpenParenReferCol":I
    .local v23, "indexOfOpenParenReferCol":I
    move-object v15, v2

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v12

    .line 6704
    .local v12, "indexOfCloseParenRefer":I
    if-eq v12, v1, :cond_0

    .line 6709
    add-int/lit8 v15, v23, 0x1

    invoke-virtual {v6, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 6711
    .local v13, "referColumnNamesString":Ljava/lang/String;
    iget-object v0, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v13, v8, v0, v0, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v14

    .line 6712
    .local v14, "referColumnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v4, v8, v0, v0, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v15

    .line 6714
    .local v15, "localColumnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v17, v3

    .end local v3    # "indexOfRefer":I
    .local v17, "indexOfRefer":I
    move-object v3, v14

    move-object/from16 v18, v4

    .end local v4    # "localColumnNamesString":Ljava/lang/String;
    .local v18, "localColumnNamesString":Ljava/lang/String;
    move-object v4, v10

    move/from16 v24, v5

    .end local v5    # "indexOfCloseParenLocalColumns":I
    .local v24, "indexOfCloseParenLocalColumns":I
    move-object/from16 v5, v19

    move-object/from16 v25, v6

    .end local v6    # "keysCommentTrimmed":Ljava/lang/String;
    .local v25, "keysCommentTrimmed":Ljava/lang/String;
    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16

    .line 6705
    .end local v13    # "referColumnNamesString":Ljava/lang/String;
    .end local v14    # "referColumnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "localColumnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "indexOfRefer":I
    .end local v18    # "localColumnNamesString":Ljava/lang/String;
    .end local v24    # "indexOfCloseParenLocalColumns":I
    .end local v25    # "keysCommentTrimmed":Ljava/lang/String;
    .restart local v3    # "indexOfRefer":I
    .restart local v4    # "localColumnNamesString":Ljava/lang/String;
    .restart local v5    # "indexOfCloseParenLocalColumns":I
    .restart local v6    # "keysCommentTrimmed":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, couldn\'t find end of referenced columns list."

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6694
    .end local v12    # "indexOfCloseParenRefer":I
    .end local v19    # "referCatalog":Ljava/lang/String;
    .end local v20    # "referTable":Ljava/lang/String;
    .end local v21    # "indexOfSlash":I
    .end local v22    # "referCatalogTableString":Ljava/lang/String;
    .end local v23    # "indexOfOpenParenReferCol":I
    .local v13, "indexOfSlash":I
    .local v14, "referCatalogTableString":Ljava/lang/String;
    .local v15, "indexOfOpenParenReferCol":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, couldn\'t find name of referenced catalog."

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6685
    .end local v13    # "indexOfSlash":I
    .end local v14    # "referCatalogTableString":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, couldn\'t find start of referenced columns list."

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6677
    .end local v15    # "indexOfOpenParenReferCol":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, couldn\'t find start of referenced tables list."

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6668
    .end local v3    # "indexOfRefer":I
    .end local v4    # "localColumnNamesString":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, couldn\'t find end of local columns list."

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6655
    .end local v5    # "indexOfCloseParenLocalColumns":I
    .end local v6    # "keysCommentTrimmed":Ljava/lang/String;
    .end local v10    # "constraintName":Ljava/lang/String;
    .end local v11    # "keysComment":Ljava/lang/String;
    .restart local p1    # "keysComment":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, couldn\'t find start of local columns list."

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7871
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 7873
    .local v0, "pStmt":Ljava/sql/PreparedStatement;
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMaxRows()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7874
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 7877
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/Statement;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/Statement;->setHoldResultsOpenOverClose(Z)V

    .line 7879
    return-object v0
.end method

.method public providesQueryObjectGenerator()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7845
    const/4 v0, 0x0

    return v0
.end method

.method protected s2b(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6724
    if-nez p1, :cond_0

    .line 6725
    const/4 v0, 0x0

    return-object v0

    .line 6728
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0

    return-object v0
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6740
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6751
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6762
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6773
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6784
    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6795
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6826
    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6836
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6846
    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6805
    const/4 v0, 0x1

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6815
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6856
    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6867
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6878
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6889
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6900
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6911
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6925
    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6935
    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 2
    .param p1, "fromType"    # I
    .param p2, "toType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6951
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 7105
    return v1

    .line 7038
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    .line 7048
    return v1

    .line 7045
    :sswitch_1
    return v0

    .line 7088
    :sswitch_2
    sparse-switch p2, :sswitch_data_2

    .line 7100
    return v1

    .line 7097
    :sswitch_3
    return v0

    .line 7070
    :sswitch_4
    sparse-switch p2, :sswitch_data_3

    .line 7080
    return v1

    .line 7077
    :sswitch_5
    return v0

    .line 7054
    :sswitch_6
    sparse-switch p2, :sswitch_data_4

    .line 7064
    return v1

    .line 7061
    :sswitch_7
    return v0

    .line 7031
    :sswitch_8
    return v1

    .line 6962
    :sswitch_9
    sparse-switch p2, :sswitch_data_5

    .line 6985
    return v1

    .line 6982
    :sswitch_a
    return v0

    .line 7007
    :sswitch_b
    packed-switch p2, :pswitch_data_0

    .line 7026
    :pswitch_0
    return v1

    .line 7023
    :pswitch_1
    return v0

    .line 6992
    :sswitch_c
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_c
        -0x6 -> :sswitch_b
        -0x5 -> :sswitch_b
        -0x4 -> :sswitch_9
        -0x3 -> :sswitch_9
        -0x2 -> :sswitch_9
        -0x1 -> :sswitch_9
        0x0 -> :sswitch_8
        0x1 -> :sswitch_9
        0x2 -> :sswitch_b
        0x3 -> :sswitch_b
        0x4 -> :sswitch_b
        0x5 -> :sswitch_b
        0x6 -> :sswitch_b
        0x7 -> :sswitch_b
        0x8 -> :sswitch_b
        0xc -> :sswitch_9
        0x5b -> :sswitch_6
        0x5c -> :sswitch_4
        0x5d -> :sswitch_2
        0x457 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_1
        0x1 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_3
        0x1 -> :sswitch_3
        0xc -> :sswitch_3
        0x5b -> :sswitch_3
        0x5c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_5
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_5
        0xc -> :sswitch_5
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x4 -> :sswitch_7
        -0x3 -> :sswitch_7
        -0x2 -> :sswitch_7
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_7
        0xc -> :sswitch_7
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x6 -> :sswitch_a
        -0x5 -> :sswitch_a
        -0x4 -> :sswitch_a
        -0x3 -> :sswitch_a
        -0x2 -> :sswitch_a
        -0x1 -> :sswitch_a
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x3 -> :sswitch_a
        0x4 -> :sswitch_a
        0x5 -> :sswitch_a
        0x6 -> :sswitch_a
        0x7 -> :sswitch_a
        0x8 -> :sswitch_a
        0xc -> :sswitch_a
        0x5b -> :sswitch_a
        0x5c -> :sswitch_a
        0x5d -> :sswitch_a
        0x457 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7116
    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7127
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7138
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7148
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7160
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7170
    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7180
    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7190
    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    .line 7197
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7207
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7218
    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7228
    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7238
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getOverrideSupportsIntegrityEnhancementFacility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7239
    const/4 v0, 0x0

    return v0

    .line 7242
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7253
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7264
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7275
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7285
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7296
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7303
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7313
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7324
    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7331
    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7342
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7354
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7366
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7378
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7390
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7400
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7410
    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7420
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7430
    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "concurrency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7447
    const/16 v0, 0x3f0

    const/4 v1, 0x1

    const/16 v2, 0x3ef

    const-string v3, "S1009"

    const-string v4, "Illegal arguments to supportsResultSetConcurrency()"

    packed-switch p1, :pswitch_data_0

    .line 7465
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7463
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 7449
    :pswitch_1
    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 7452
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7450
    :cond_1
    :goto_0
    return v1

    .line 7456
    :pswitch_2
    if-eq p2, v2, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 7459
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 7457
    :cond_3
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 1
    .param p1, "holdability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7475
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsResultSetType(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7489
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsSavepoints()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7497
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v1, v3, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7507
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7517
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7527
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7537
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7547
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7557
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7564
    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7860
    const/4 v0, 0x1

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7575
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7586
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7597
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7608
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7619
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7630
    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 2
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7644
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7645
    sparse-switch p1, :sswitch_data_0

    .line 7653
    return v1

    .line 7650
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 7657
    :cond_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public supportsTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7668
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsTransactions()Z

    move-result v0

    return v0
.end method

.method public supportsUnion()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7678
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7688
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public updatesAreDetected(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7702
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFilePerTable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7712
    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7722
    const/4 v0, 0x0

    return v0
.end method
