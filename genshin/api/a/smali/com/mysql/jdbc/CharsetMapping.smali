.class public Lcom/mysql/jdbc/CharsetMapping;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# static fields
.field public static final CHARSET_NAME_TO_CHARSET:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/MysqlCharset;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

.field public static final COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

.field public static final COLLATION_NOT_DEFINED:Ljava/lang/String; = "none"

.field private static final ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_ENCODINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/MysqlCharset;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MAP_SIZE:I = 0x800

.field private static final MULTIBYTE_ENCODINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MYSQL_4_0_CHARSET_NAME_cp1251cias:Ljava/lang/String; = "cp1251cias"

.field private static final MYSQL_4_0_CHARSET_NAME_cp1251csas:Ljava/lang/String; = "cp1251csas"

.field private static final MYSQL_4_0_CHARSET_NAME_croat:Ljava/lang/String; = "croat"

.field private static final MYSQL_4_0_CHARSET_NAME_czech:Ljava/lang/String; = "czech"

.field private static final MYSQL_4_0_CHARSET_NAME_danish:Ljava/lang/String; = "danish"

.field private static final MYSQL_4_0_CHARSET_NAME_dos:Ljava/lang/String; = "dos"

.field private static final MYSQL_4_0_CHARSET_NAME_estonia:Ljava/lang/String; = "estonia"

.field private static final MYSQL_4_0_CHARSET_NAME_euc_kr:Ljava/lang/String; = "euc_kr"

.field private static final MYSQL_4_0_CHARSET_NAME_german1:Ljava/lang/String; = "german1"

.field private static final MYSQL_4_0_CHARSET_NAME_hungarian:Ljava/lang/String; = "hungarian"

.field private static final MYSQL_4_0_CHARSET_NAME_koi8_ru:Ljava/lang/String; = "koi8_ru"

.field private static final MYSQL_4_0_CHARSET_NAME_koi8_ukr:Ljava/lang/String; = "koi8_ukr"

.field private static final MYSQL_4_0_CHARSET_NAME_latin1_de:Ljava/lang/String; = "latin1_de"

.field private static final MYSQL_4_0_CHARSET_NAME_latvian:Ljava/lang/String; = "latvian"

.field private static final MYSQL_4_0_CHARSET_NAME_latvian1:Ljava/lang/String; = "latvian1"

.field private static final MYSQL_4_0_CHARSET_NAME_usa7:Ljava/lang/String; = "usa7"

.field private static final MYSQL_4_0_CHARSET_NAME_win1250:Ljava/lang/String; = "win1250"

.field private static final MYSQL_4_0_CHARSET_NAME_win1251:Ljava/lang/String; = "win1251"

.field private static final MYSQL_4_0_CHARSET_NAME_win1251ukr:Ljava/lang/String; = "win1251ukr"

.field private static final MYSQL_CHARSET_NAME_armscii8:Ljava/lang/String; = "armscii8"

.field private static final MYSQL_CHARSET_NAME_ascii:Ljava/lang/String; = "ascii"

.field private static final MYSQL_CHARSET_NAME_big5:Ljava/lang/String; = "big5"

.field private static final MYSQL_CHARSET_NAME_binary:Ljava/lang/String; = "binary"

.field private static final MYSQL_CHARSET_NAME_cp1250:Ljava/lang/String; = "cp1250"

.field private static final MYSQL_CHARSET_NAME_cp1251:Ljava/lang/String; = "cp1251"

.field private static final MYSQL_CHARSET_NAME_cp1256:Ljava/lang/String; = "cp1256"

.field private static final MYSQL_CHARSET_NAME_cp1257:Ljava/lang/String; = "cp1257"

.field private static final MYSQL_CHARSET_NAME_cp850:Ljava/lang/String; = "cp850"

.field private static final MYSQL_CHARSET_NAME_cp852:Ljava/lang/String; = "cp852"

.field private static final MYSQL_CHARSET_NAME_cp866:Ljava/lang/String; = "cp866"

.field private static final MYSQL_CHARSET_NAME_cp932:Ljava/lang/String; = "cp932"

.field private static final MYSQL_CHARSET_NAME_dec8:Ljava/lang/String; = "dec8"

.field private static final MYSQL_CHARSET_NAME_eucjpms:Ljava/lang/String; = "eucjpms"

.field private static final MYSQL_CHARSET_NAME_euckr:Ljava/lang/String; = "euckr"

.field private static final MYSQL_CHARSET_NAME_gb18030:Ljava/lang/String; = "gb18030"

.field private static final MYSQL_CHARSET_NAME_gb2312:Ljava/lang/String; = "gb2312"

.field private static final MYSQL_CHARSET_NAME_gbk:Ljava/lang/String; = "gbk"

.field private static final MYSQL_CHARSET_NAME_geostd8:Ljava/lang/String; = "geostd8"

.field private static final MYSQL_CHARSET_NAME_greek:Ljava/lang/String; = "greek"

.field private static final MYSQL_CHARSET_NAME_hebrew:Ljava/lang/String; = "hebrew"

.field private static final MYSQL_CHARSET_NAME_hp8:Ljava/lang/String; = "hp8"

.field private static final MYSQL_CHARSET_NAME_keybcs2:Ljava/lang/String; = "keybcs2"

.field private static final MYSQL_CHARSET_NAME_koi8r:Ljava/lang/String; = "koi8r"

.field private static final MYSQL_CHARSET_NAME_koi8u:Ljava/lang/String; = "koi8u"

.field private static final MYSQL_CHARSET_NAME_latin1:Ljava/lang/String; = "latin1"

.field private static final MYSQL_CHARSET_NAME_latin2:Ljava/lang/String; = "latin2"

.field private static final MYSQL_CHARSET_NAME_latin5:Ljava/lang/String; = "latin5"

.field private static final MYSQL_CHARSET_NAME_latin7:Ljava/lang/String; = "latin7"

.field private static final MYSQL_CHARSET_NAME_macce:Ljava/lang/String; = "macce"

.field private static final MYSQL_CHARSET_NAME_macroman:Ljava/lang/String; = "macroman"

.field private static final MYSQL_CHARSET_NAME_sjis:Ljava/lang/String; = "sjis"

.field private static final MYSQL_CHARSET_NAME_swe7:Ljava/lang/String; = "swe7"

.field private static final MYSQL_CHARSET_NAME_tis620:Ljava/lang/String; = "tis620"

.field private static final MYSQL_CHARSET_NAME_ucs2:Ljava/lang/String; = "ucs2"

.field private static final MYSQL_CHARSET_NAME_ujis:Ljava/lang/String; = "ujis"

.field private static final MYSQL_CHARSET_NAME_utf16:Ljava/lang/String; = "utf16"

.field private static final MYSQL_CHARSET_NAME_utf16le:Ljava/lang/String; = "utf16le"

.field private static final MYSQL_CHARSET_NAME_utf32:Ljava/lang/String; = "utf32"

.field private static final MYSQL_CHARSET_NAME_utf8:Ljava/lang/String; = "utf8"

.field private static final MYSQL_CHARSET_NAME_utf8mb4:Ljava/lang/String; = "utf8mb4"

.field public static final MYSQL_COLLATION_INDEX_binary:I = 0x3f

.field public static final MYSQL_COLLATION_INDEX_utf8:I = 0x21

.field public static final NOT_USED:Ljava/lang/String; = "latin1"

.field public static final UTF8MB4_INDEXES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static numberOfEncodingsConfigured:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 129
    const/4 v0, 0x0

    sput v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    .line 133
    const/16 v1, 0x3c

    new-array v1, v1, [Lcom/mysql/jdbc/MysqlCharset;

    new-instance v9, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "US-ASCII"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "usa7"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    aput-object v9, v1, v0

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "US-ASCII"

    const-string v4, "ASCII"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ascii"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v0, v3}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "Big5"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "big5"

    const/4 v6, 0x2

    invoke-direct {v2, v4, v6, v0, v3}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "GBK"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v7, "gbk"

    invoke-direct {v2, v7, v6, v0, v3}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v8, "SHIFT_JIS"

    const-string v9, "Cp943"

    const-string v10, "WINDOWS-31J"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "sjis"

    invoke-direct {v2, v9, v6, v0, v8}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "WINDOWS-31J"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "cp932"

    invoke-direct {v2, v11, v6, v5, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v10, 0x5

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "GB2312"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "gb2312"

    invoke-direct {v2, v11, v6, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v10, 0x6

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "EUC_JP"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "ujis"

    invoke-direct {v2, v11, v3, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "EUC_JP_Solaris"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v12, "eucjpms"

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;III)V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "GB18030"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v12, "gb18030"

    const/4 v13, 0x4

    const/16 v17, 0x7

    const/16 v18, 0x4

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;III)V

    const/16 v10, 0x9

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "EUC_KR"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v12, "euc_kr"

    const/4 v13, 0x2

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v10, 0xa

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "EUC-KR"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "euckr"

    invoke-direct {v2, v11, v6, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v10, 0xb

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "Cp1252"

    const-string v11, "ISO8859_1"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "latin1"

    invoke-direct {v2, v13, v5, v5, v12}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v12, 0xc

    aput-object v2, v1, v12

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "swe7"

    invoke-direct {v2, v14, v5, v0, v12}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v12, 0xd

    aput-object v2, v1, v12

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "hp8"

    invoke-direct {v2, v14, v5, v0, v12}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v12, 0xe

    aput-object v2, v1, v12

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "dec8"

    invoke-direct {v2, v14, v5, v0, v12}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v12, 0xf

    aput-object v2, v1, v12

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "armscii8"

    invoke-direct {v2, v14, v5, v0, v12}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v12, 0x10

    aput-object v2, v1, v12

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "geostd8"

    invoke-direct {v2, v12, v5, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v10, 0x11

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO8859_2"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "latin2"

    invoke-direct {v2, v12, v5, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v10, 0x12

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO8859_2"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    const-string v15, "czech"

    const/16 v16, 0x1

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v10, 0x13

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO8859_2"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    const-string v15, "hungarian"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v10, 0x14

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO8859_2"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    const-string v15, "croat"

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v10, 0x15

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO8859_7"

    const-string v14, "greek"

    filled-new-array {v10, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v14, v5, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v10, 0x16

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO-8859-13"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "latin7"

    invoke-direct {v2, v15, v5, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v10, 0x17

    aput-object v2, v1, v10

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ISO8859_8"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v6, "hebrew"

    invoke-direct {v2, v6, v5, v0, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x18

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "ISO8859_9"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "latin5"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x19

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "ISO8859_13"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "latvian"

    const/16 v19, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "ISO8859_13"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "latvian1"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "ISO8859_13"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "estonia"

    const/16 v20, 0x1

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp850"

    const-string v10, "Cp437"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "cp850"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x1d

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp850"

    const-string v10, "Cp437"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "dos"

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp852"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "cp852"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x1f

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp852"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "keybcs2"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x20

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp866"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "cp866"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x21

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "KOI8_R"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "koi8_ru"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "KOI8_R"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "koi8r"

    invoke-direct {v2, v10, v5, v5, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x23

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "KOI8_R"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "koi8u"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x24

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "KOI8_R"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "koi8_ukr"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "TIS620"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "tis620"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x26

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp1250"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "cp1250"

    invoke-direct {v2, v10, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x27

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp1250"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v18, "win1250"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp1251"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    const-string v3, "cp1251"

    invoke-direct {v2, v3, v5, v5, v8}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v8, 0x29

    aput-object v2, v1, v8

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const-string v20, "win1251"

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v8, 0x2a

    aput-object v2, v1, v8

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const-string v20, "cp1251cias"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const-string v20, "cp1251csas"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v8, 0x2c

    aput-object v2, v1, v8

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    const-string v20, "win1251ukr"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp1256"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "cp1256"

    invoke-direct {v2, v8, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x2e

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "Cp1257"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "cp1257"

    invoke-direct {v2, v8, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x2f

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "MacRoman"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "macroman"

    invoke-direct {v2, v8, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x30

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "MacCentralEurope"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "macce"

    invoke-direct {v2, v8, v5, v0, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v6, 0x31

    aput-object v2, v1, v6

    new-instance v2, Lcom/mysql/jdbc/MysqlCharset;

    const-string v6, "UTF-8"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "utf8"

    const/4 v0, 0x3

    invoke-direct {v2, v8, v0, v5, v6}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v0, 0x32

    aput-object v2, v1, v0

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "UTF-8"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v6, "utf8mb4"

    move-object/from16 v21, v8

    const/4 v5, 0x4

    const/4 v8, 0x0

    invoke-direct {v0, v6, v5, v8, v2}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "UnicodeBig"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "ucs2"

    move-object/from16 v22, v6

    const/4 v6, 0x2

    invoke-direct {v0, v5, v6, v8, v2}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    const-string v6, "binary"

    const/4 v8, 0x1

    invoke-direct {v0, v6, v8, v8, v2}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v27

    const-string v24, "latin1_de"

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v2, 0x36

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v27

    const-string v24, "german1"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v2, 0x37

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v27

    const-string v24, "danish"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v2, 0x38

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "UTF-16"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v6, "utf16"

    const/4 v8, 0x4

    const/4 v11, 0x0

    invoke-direct {v0, v6, v8, v11, v2}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "UTF-16LE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v6

    const-string v6, "utf16le"

    invoke-direct {v0, v6, v8, v11, v2}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v2, "UTF-32"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v6, "utf32"

    invoke-direct {v0, v6, v8, v11, v2}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    move-object v0, v1

    .line 217
    .local v0, "charset":[Lcom/mysql/jdbc/MysqlCharset;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v1, "charsetNameToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/mysql/jdbc/MysqlCharset;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v2, "javaUcToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v8, "tempMultibyteEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 221
    .local v11, "tempEscapeEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v24, 0x0

    move-object/from16 v25, v6

    move/from16 v6, v24

    .local v6, "i":I
    :goto_0
    move-object/from16 v24, v5

    array-length v5, v0

    if-ge v6, v5, :cond_5

    .line 222
    aget-object v5, v0, v6

    iget-object v5, v5, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 224
    .local v5, "charsetName":Ljava/lang/String;
    move-object/from16 v26, v10

    aget-object v10, v0, v6

    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget v10, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    move-object/from16 v27, v14

    aget-object v14, v0, v6

    iget-object v14, v14, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v10, v14

    sput v10, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    .line 228
    aget-object v10, v0, v6

    iget-object v10, v10, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 231
    .local v14, "encUC":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    .line 232
    .local v28, "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    if-nez v28, :cond_0

    .line 233
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v29

    .line 234
    move-object/from16 v29, v10

    move-object/from16 v10, v28

    .end local v28    # "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    .local v10, "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    .local v29, "i$":Ljava/util/Iterator;
    invoke-virtual {v2, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 232
    .end local v29    # "i$":Ljava/util/Iterator;
    .local v10, "i$":Ljava/util/Iterator;
    .restart local v28    # "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    :cond_0
    move-object/from16 v29, v10

    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v29    # "i$":Ljava/util/Iterator;
    move-object/from16 v10, v28

    .line 236
    .end local v28    # "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    .local v10, "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    :goto_2
    move-object/from16 v28, v15

    aget-object v15, v0, v6

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    aget-object v15, v0, v6

    iget v15, v15, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    move-object/from16 v30, v10

    const/4 v10, 0x1

    .end local v10    # "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    .local v30, "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    if-le v15, v10, :cond_1

    .line 240
    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v14    # "encUC":Ljava/lang/String;
    .end local v30    # "charsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    :cond_1
    move-object/from16 v15, v28

    move-object/from16 v10, v29

    goto :goto_1

    .line 228
    .end local v29    # "i$":Ljava/util/Iterator;
    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v29, v10

    move-object/from16 v28, v15

    .line 247
    .end local v10    # "i$":Ljava/util/Iterator;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 248
    :cond_3
    aget-object v10, v0, v6

    iget-object v10, v10, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    .end local v5    # "charsetName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v24

    move-object/from16 v10, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    goto/16 :goto_0

    :cond_5
    move-object/from16 v26, v10

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    .line 252
    .end local v6    # "i":I
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    .line 253
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lcom/mysql/jdbc/CharsetMapping;->JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;

    .line 254
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/mysql/jdbc/CharsetMapping;->MULTIBYTE_ENCODINGS:Ljava/util/Set;

    .line 255
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/mysql/jdbc/CharsetMapping;->ESCAPE_ENCODINGS:Ljava/util/Set;

    .line 258
    const/16 v5, 0x800

    new-array v5, v5, [Lcom/mysql/jdbc/Collation;

    .line 259
    .local v5, "collation":[Lcom/mysql/jdbc/Collation;
    new-instance v6, Lcom/mysql/jdbc/Collation;

    const-string v10, "big5_chinese_ci"

    const/4 v14, 0x1

    invoke-direct {v6, v14, v10, v14, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v14

    .line 260
    new-instance v6, Lcom/mysql/jdbc/Collation;

    const-string v10, "latin2_czech_cs"

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-direct {v6, v14, v10, v15, v12}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v14

    .line 261
    new-instance v6, Lcom/mysql/jdbc/Collation;

    const-string v10, "dec8_swedish_ci"

    const-string v14, "dec8"

    move-object/from16 v16, v0

    const/4 v0, 0x3

    .end local v0    # "charset":[Lcom/mysql/jdbc/MysqlCharset;
    .local v16, "charset":[Lcom/mysql/jdbc/MysqlCharset;
    invoke-direct {v6, v0, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v0

    .line 262
    new-instance v0, Lcom/mysql/jdbc/Collation;

    const-string v6, "cp850_general_ci"

    const-string v10, "cp850"

    const/4 v14, 0x4

    const/4 v15, 0x1

    invoke-direct {v0, v14, v6, v15, v10}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v0, v5, v14

    .line 263
    const/4 v0, 0x5

    new-instance v6, Lcom/mysql/jdbc/Collation;

    const/4 v10, 0x5

    const-string v14, "latin1_german1_ci"

    const/4 v15, 0x0

    invoke-direct {v6, v10, v14, v15, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v0

    .line 264
    const/4 v0, 0x6

    new-instance v6, Lcom/mysql/jdbc/Collation;

    const/4 v10, 0x6

    const-string v14, "hp8_english_ci"

    move-object/from16 v17, v1

    .end local v1    # "charsetNameToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/mysql/jdbc/MysqlCharset;>;"
    .local v17, "charsetNameToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/mysql/jdbc/MysqlCharset;>;"
    const-string v1, "hp8"

    invoke-direct {v6, v10, v14, v15, v1}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v0

    .line 265
    const/4 v0, 0x7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/4 v6, 0x7

    const-string v10, "koi8r_general_ci"

    const-string v14, "koi8r"

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 266
    const/16 v0, 0x8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x8

    const-string v10, "latin1_swedish_ci"

    const/4 v14, 0x1

    invoke-direct {v1, v6, v10, v14, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 267
    const/16 v0, 0x9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x9

    const-string v10, "latin2_general_ci"

    invoke-direct {v1, v6, v10, v14, v12}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 268
    const/16 v0, 0xa

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0xa

    const-string v10, "swe7_swedish_ci"

    const-string v14, "swe7"

    const/4 v15, 0x0

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 269
    const/16 v0, 0xb

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0xb

    const-string v10, "ascii_general_ci"

    const-string v14, "ascii"

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 270
    const/16 v0, 0xc

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0xc

    const-string v10, "ujis_japanese_ci"

    const-string v14, "ujis"

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 271
    const/16 v0, 0xd

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0xd

    const-string v10, "sjis_japanese_ci"

    invoke-direct {v1, v6, v10, v15, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 272
    const/16 v0, 0xe

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0xe

    const-string v10, "cp1251_bulgarian_ci"

    invoke-direct {v1, v6, v10, v15, v3}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 273
    const/16 v0, 0xf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0xf

    const-string v10, "latin1_danish_ci"

    invoke-direct {v1, v6, v10, v15, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 274
    const/16 v0, 0x10

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x10

    const-string v10, "hebrew_general_ci"

    const-string v14, "hebrew"

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 276
    const/16 v0, 0x12

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x12

    const-string v10, "tis620_thai_ci"

    const-string v14, "tis620"

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 277
    const/16 v0, 0x13

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x13

    const-string v10, "euckr_korean_ci"

    const-string v14, "euckr"

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 278
    const/16 v0, 0x14

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x14

    const-string v10, "latin7_estonian_cs"

    move-object/from16 v14, v28

    invoke-direct {v1, v6, v10, v15, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 279
    const/16 v0, 0x15

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x15

    const-string v10, "latin2_hungarian_ci"

    invoke-direct {v1, v6, v10, v15, v12}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 280
    const/16 v0, 0x16

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v6, 0x16

    const-string v10, "koi8u_general_ci"

    move-object/from16 v18, v2

    .end local v2    # "javaUcToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;>;"
    .local v18, "javaUcToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;>;"
    const-string v2, "koi8u"

    invoke-direct {v1, v6, v10, v15, v2}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 281
    const/16 v0, 0x17

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x17

    const-string v6, "cp1251_ukrainian_ci"

    invoke-direct {v1, v2, v6, v15, v3}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 282
    const/16 v0, 0x18

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x18

    const-string v6, "gb2312_chinese_ci"

    const-string v10, "gb2312"

    invoke-direct {v1, v2, v6, v15, v10}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 283
    const/16 v0, 0x19

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x19

    const-string v6, "greek_general_ci"

    move-object/from16 v10, v27

    invoke-direct {v1, v2, v6, v15, v10}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 284
    const/16 v0, 0x1a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1a

    const-string v6, "cp1250_general_ci"

    move-object/from16 v15, v26

    move-object/from16 v26, v8

    const/4 v8, 0x1

    .end local v8    # "tempMultibyteEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v26, "tempMultibyteEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v2, v6, v8, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 285
    const/16 v0, 0x1b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1b

    const-string v6, "latin2_croatian_ci"

    const/4 v8, 0x0

    invoke-direct {v1, v2, v6, v8, v12}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 286
    const/16 v0, 0x1c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1c

    const-string v6, "gbk_chinese_ci"

    const/4 v8, 0x1

    invoke-direct {v1, v2, v6, v8, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 287
    const/16 v0, 0x1d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1d

    const-string v6, "cp1257_lithuanian_ci"

    const-string v8, "cp1257"

    move-object/from16 v27, v11

    const/4 v11, 0x0

    .end local v11    # "tempEscapeEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v27, "tempEscapeEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v2, v6, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 288
    const/16 v0, 0x1e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1e

    const-string v6, "latin5_turkish_ci"

    const-string v8, "latin5"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v6, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 289
    const/16 v0, 0x1f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x1f

    const-string v6, "latin1_german2_ci"

    const/4 v8, 0x0

    invoke-direct {v1, v2, v6, v8, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 290
    const/16 v0, 0x20

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x20

    const-string v6, "armscii8_general_ci"

    const-string v11, "armscii8"

    invoke-direct {v1, v2, v6, v8, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 291
    const/16 v0, 0x21

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x21

    const-string v6, "utf8_general_ci"

    move-object/from16 v8, v21

    const/4 v11, 0x1

    invoke-direct {v1, v2, v6, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 292
    const/16 v0, 0x22

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x22

    const-string v6, "cp1250_czech_cs"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v6, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 293
    const/16 v0, 0x23

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x23

    const-string v6, "ucs2_general_ci"

    move-object/from16 v21, v9

    move-object/from16 v11, v24

    const/4 v9, 0x1

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 294
    const/16 v0, 0x24

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x24

    const-string v6, "cp866_general_ci"

    const-string v11, "cp866"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 295
    const/16 v0, 0x25

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x25

    const-string v6, "keybcs2_general_ci"

    const-string v11, "keybcs2"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 296
    const/16 v0, 0x26

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x26

    const-string v6, "macce_general_ci"

    const-string v11, "macce"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 297
    const/16 v0, 0x27

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x27

    const-string v6, "macroman_general_ci"

    const-string v11, "macroman"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 298
    const/16 v0, 0x28

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x28

    const-string v6, "cp852_general_ci"

    const-string v11, "cp852"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 299
    const/16 v0, 0x29

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x29

    const-string v6, "latin7_general_ci"

    invoke-direct {v1, v2, v6, v9, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 300
    const/16 v0, 0x2a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2a

    const-string v6, "latin7_general_cs"

    const/4 v9, 0x0

    invoke-direct {v1, v2, v6, v9, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 301
    const/16 v0, 0x2b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2b

    const-string v6, "macce_bin"

    const-string v11, "macce"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 302
    const/16 v0, 0x2c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2c

    const-string v6, "cp1250_croatian_ci"

    invoke-direct {v1, v2, v6, v9, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 303
    const/16 v0, 0x2d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2d

    const-string v6, "utf8mb4_general_ci"

    move-object/from16 v11, v22

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 304
    const/16 v0, 0x2e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2e

    const-string v6, "utf8mb4_bin"

    invoke-direct {v1, v2, v6, v9, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 305
    const/16 v0, 0x2f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x2f

    const-string v6, "latin1_bin"

    invoke-direct {v1, v2, v6, v9, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 306
    const/16 v0, 0x30

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x30

    const-string v6, "latin1_general_ci"

    invoke-direct {v1, v2, v6, v9, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 307
    const/16 v0, 0x31

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x31

    const-string v6, "latin1_general_cs"

    invoke-direct {v1, v2, v6, v9, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 308
    const/16 v0, 0x32

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x32

    const-string v6, "cp1251_bin"

    invoke-direct {v1, v2, v6, v9, v3}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 309
    const/16 v0, 0x33

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x33

    const-string v6, "cp1251_general_ci"

    const/4 v9, 0x1

    invoke-direct {v1, v2, v6, v9, v3}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 310
    const/16 v0, 0x34

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x34

    const-string v6, "cp1251_general_cs"

    const/4 v9, 0x0

    invoke-direct {v1, v2, v6, v9, v3}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 311
    const/16 v0, 0x35

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x35

    const-string v3, "macroman_bin"

    const-string v6, "macroman"

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 312
    const/16 v0, 0x36

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x36

    const-string v3, "utf16_general_ci"

    move-object/from16 v6, v23

    const/4 v9, 0x1

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 313
    const/16 v0, 0x37

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x37

    const-string v3, "utf16_bin"

    const/4 v9, 0x0

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 314
    const/16 v0, 0x38

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x38

    const-string v3, "utf16le_general_ci"

    const-string v9, "utf16le"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 315
    const/16 v0, 0x39

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x39

    const-string v3, "cp1256_general_ci"

    const-string v9, "cp1256"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 316
    const/16 v0, 0x3a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3a

    const-string v3, "cp1257_bin"

    const-string v9, "cp1257"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 317
    const/16 v0, 0x3b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3b

    const-string v3, "cp1257_general_ci"

    const-string v9, "cp1257"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 318
    const/16 v0, 0x3c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3c

    const-string v3, "utf32_general_ci"

    move-object/from16 v9, v25

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 319
    const/16 v0, 0x3d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3d

    const-string v3, "utf32_bin"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 320
    const/16 v0, 0x3e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3e

    const-string v3, "utf16le_bin"

    const-string v9, "utf16le"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 321
    const/16 v0, 0x3f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x3f

    const-string v3, "binary"

    const-string v9, "binary"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 322
    const/16 v0, 0x40

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x40

    const-string v3, "armscii8_bin"

    const-string v9, "armscii8"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 323
    const/16 v0, 0x41

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x41

    const-string v3, "ascii_bin"

    const-string v9, "ascii"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 324
    const/16 v0, 0x42

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x42

    const-string v3, "cp1250_bin"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 325
    const/16 v0, 0x43

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x43

    const-string v3, "cp1256_bin"

    const-string v9, "cp1256"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 326
    const/16 v0, 0x44

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x44

    const-string v3, "cp866_bin"

    const-string v9, "cp866"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 327
    const/16 v0, 0x45

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x45

    const-string v3, "dec8_bin"

    const-string v9, "dec8"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 328
    const/16 v0, 0x46

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x46

    const-string v3, "greek_bin"

    invoke-direct {v1, v2, v3, v11, v10}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 329
    const/16 v0, 0x47

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x47

    const-string v3, "hebrew_bin"

    const-string v9, "hebrew"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 330
    const/16 v0, 0x48

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x48

    const-string v3, "hp8_bin"

    const-string v9, "hp8"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 331
    const/16 v0, 0x49

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x49

    const-string v3, "keybcs2_bin"

    const-string v9, "keybcs2"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 332
    const/16 v0, 0x4a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4a

    const-string v3, "koi8r_bin"

    const-string v9, "koi8r"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 333
    const/16 v0, 0x4b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4b

    const-string v3, "koi8u_bin"

    const-string v9, "koi8u"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 334
    const/16 v0, 0x4c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4c

    const-string v3, "utf8_tolower_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 335
    const/16 v0, 0x4d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4d

    const-string v3, "latin2_bin"

    invoke-direct {v1, v2, v3, v11, v12}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 336
    const/16 v0, 0x4e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4e

    const-string v3, "latin5_bin"

    const-string v9, "latin5"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 337
    const/16 v0, 0x4f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x4f

    const-string v3, "latin7_bin"

    invoke-direct {v1, v2, v3, v11, v14}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 338
    const/16 v0, 0x50

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x50

    const-string v3, "cp850_bin"

    const-string v9, "cp850"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 339
    const/16 v0, 0x51

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x51

    const-string v3, "cp852_bin"

    const-string v9, "cp852"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 340
    const/16 v0, 0x52

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x52

    const-string v3, "swe7_bin"

    const-string v9, "swe7"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 341
    const/16 v0, 0x53

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x53

    const-string v3, "utf8_bin"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 342
    const/16 v0, 0x54

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x54

    const-string v3, "big5_bin"

    invoke-direct {v1, v2, v3, v11, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 343
    const/16 v0, 0x55

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x55

    const-string v3, "euckr_bin"

    const-string v4, "euckr"

    invoke-direct {v1, v2, v3, v11, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 344
    const/16 v0, 0x56

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x56

    const-string v3, "gb2312_bin"

    const-string v4, "gb2312"

    invoke-direct {v1, v2, v3, v11, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 345
    const/16 v0, 0x57

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x57

    const-string v3, "gbk_bin"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 346
    const/16 v0, 0x58

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x58

    const-string v3, "sjis_bin"

    move-object/from16 v4, v21

    invoke-direct {v1, v2, v3, v11, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 347
    const/16 v0, 0x59

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x59

    const-string v3, "tis620_bin"

    const-string v7, "tis620"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 348
    const/16 v0, 0x5a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5a

    const-string v3, "ucs2_bin"

    move-object/from16 v7, v24

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 349
    const/16 v0, 0x5b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5b

    const-string v3, "ujis_bin"

    const-string v9, "ujis"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 350
    const/16 v0, 0x5c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5c

    const-string v3, "geostd8_general_ci"

    const-string v9, "geostd8"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 351
    const/16 v0, 0x5d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5d

    const-string v3, "geostd8_bin"

    const-string v9, "geostd8"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 352
    const/16 v0, 0x5e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5e

    const-string v3, "latin1_spanish_ci"

    invoke-direct {v1, v2, v3, v11, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 353
    const/16 v0, 0x5f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x5f

    const-string v3, "cp932_japanese_ci"

    const-string v9, "cp932"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 354
    const/16 v0, 0x60

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x60

    const-string v3, "cp932_bin"

    const-string v9, "cp932"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 355
    const/16 v0, 0x61

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x61

    const-string v3, "eucjpms_japanese_ci"

    const-string v9, "eucjpms"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 356
    const/16 v0, 0x62

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x62

    const-string v3, "eucjpms_bin"

    const-string v9, "eucjpms"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 357
    const/16 v0, 0x63

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x63

    const-string v3, "cp1250_polish_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 359
    const/16 v0, 0x65

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x65

    const-string v3, "utf16_unicode_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 360
    const/16 v0, 0x66

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x66

    const-string v3, "utf16_icelandic_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 361
    const/16 v0, 0x67

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x67

    const-string v3, "utf16_latvian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 362
    const/16 v0, 0x68

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x68

    const-string v3, "utf16_romanian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 363
    const/16 v0, 0x69

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x69

    const-string v3, "utf16_slovenian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 364
    const/16 v0, 0x6a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6a

    const-string v3, "utf16_polish_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 365
    const/16 v0, 0x6b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6b

    const-string v3, "utf16_estonian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 366
    const/16 v0, 0x6c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6c

    const-string v3, "utf16_spanish_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 367
    const/16 v0, 0x6d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6d

    const-string v3, "utf16_swedish_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 368
    const/16 v0, 0x6e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6e

    const-string v3, "utf16_turkish_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 369
    const/16 v0, 0x6f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x6f

    const-string v3, "utf16_czech_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 370
    const/16 v0, 0x70

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x70

    const-string v3, "utf16_danish_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 371
    const/16 v0, 0x71

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x71

    const-string v3, "utf16_lithuanian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 372
    const/16 v0, 0x72

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x72

    const-string v3, "utf16_slovak_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 373
    const/16 v0, 0x73

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x73

    const-string v3, "utf16_spanish2_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 374
    const/16 v0, 0x74

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x74

    const-string v3, "utf16_roman_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 375
    const/16 v0, 0x75

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x75

    const-string v3, "utf16_persian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 376
    const/16 v0, 0x76

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x76

    const-string v3, "utf16_esperanto_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 377
    const/16 v0, 0x77

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x77

    const-string v3, "utf16_hungarian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 378
    const/16 v0, 0x78

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x78

    const-string v3, "utf16_sinhala_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 379
    const/16 v0, 0x79

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x79

    const-string v3, "utf16_german2_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 380
    const/16 v0, 0x7a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7a

    const-string v3, "utf16_croatian_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 381
    const/16 v0, 0x7b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7b

    const-string v3, "utf16_unicode_520_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 382
    const/16 v0, 0x7c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7c

    const-string v3, "utf16_vietnamese_ci"

    invoke-direct {v1, v2, v3, v11, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 384
    const/16 v0, 0x80

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x80

    const-string v3, "ucs2_unicode_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 385
    const/16 v0, 0x81

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x81

    const-string v3, "ucs2_icelandic_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 386
    const/16 v0, 0x82

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x82

    const-string v3, "ucs2_latvian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 387
    const/16 v0, 0x83

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x83

    const-string v3, "ucs2_romanian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 388
    const/16 v0, 0x84

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x84

    const-string v3, "ucs2_slovenian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 389
    const/16 v0, 0x85

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x85

    const-string v3, "ucs2_polish_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 390
    const/16 v0, 0x86

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x86

    const-string v3, "ucs2_estonian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 391
    const/16 v0, 0x87

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x87

    const-string v3, "ucs2_spanish_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 392
    const/16 v0, 0x88

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x88

    const-string v3, "ucs2_swedish_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 393
    const/16 v0, 0x89

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x89

    const-string v3, "ucs2_turkish_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 394
    const/16 v0, 0x8a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8a

    const-string v3, "ucs2_czech_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 395
    const/16 v0, 0x8b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8b

    const-string v3, "ucs2_danish_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 396
    const/16 v0, 0x8c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8c

    const-string v3, "ucs2_lithuanian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 397
    const/16 v0, 0x8d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8d

    const-string v3, "ucs2_slovak_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 398
    const/16 v0, 0x8e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8e

    const-string v3, "ucs2_spanish2_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 399
    const/16 v0, 0x8f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x8f

    const-string v3, "ucs2_roman_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 400
    const/16 v0, 0x90

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x90

    const-string v3, "ucs2_persian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 401
    const/16 v0, 0x91

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x91

    const-string v3, "ucs2_esperanto_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 402
    const/16 v0, 0x92

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x92

    const-string v3, "ucs2_hungarian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 403
    const/16 v0, 0x93

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x93

    const-string v3, "ucs2_sinhala_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 404
    const/16 v0, 0x94

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x94

    const-string v3, "ucs2_german2_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 405
    const/16 v0, 0x95

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x95

    const-string v3, "ucs2_croatian_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 406
    const/16 v0, 0x96

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x96

    const-string v3, "ucs2_unicode_520_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 407
    const/16 v0, 0x97

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x97

    const-string v3, "ucs2_vietnamese_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 409
    const/16 v0, 0x9f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x9f

    const-string v3, "ucs2_general_mysql500_ci"

    invoke-direct {v1, v2, v3, v11, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 410
    const/16 v0, 0xa0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa0

    const-string v3, "utf32_unicode_ci"

    move-object/from16 v9, v25

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 411
    const/16 v0, 0xa1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa1

    const-string v3, "utf32_icelandic_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 412
    const/16 v0, 0xa2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa2

    const-string v3, "utf32_latvian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 413
    const/16 v0, 0xa3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa3

    const-string v3, "utf32_romanian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 414
    const/16 v0, 0xa4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa4

    const-string v3, "utf32_slovenian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 415
    const/16 v0, 0xa5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa5

    const-string v3, "utf32_polish_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 416
    const/16 v0, 0xa6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa6

    const-string v3, "utf32_estonian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 417
    const/16 v0, 0xa7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa7

    const-string v3, "utf32_spanish_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 418
    const/16 v0, 0xa8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa8

    const-string v3, "utf32_swedish_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 419
    const/16 v0, 0xa9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xa9

    const-string v3, "utf32_turkish_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 420
    const/16 v0, 0xaa

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xaa

    const-string v3, "utf32_czech_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 421
    const/16 v0, 0xab

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xab

    const-string v3, "utf32_danish_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 422
    const/16 v0, 0xac

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xac

    const-string v3, "utf32_lithuanian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 423
    const/16 v0, 0xad

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xad

    const-string v3, "utf32_slovak_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 424
    const/16 v0, 0xae

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xae

    const-string v3, "utf32_spanish2_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 425
    const/16 v0, 0xaf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xaf

    const-string v3, "utf32_roman_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 426
    const/16 v0, 0xb0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb0

    const-string v3, "utf32_persian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 427
    const/16 v0, 0xb1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb1

    const-string v3, "utf32_esperanto_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 428
    const/16 v0, 0xb2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb2

    const-string v3, "utf32_hungarian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 429
    const/16 v0, 0xb3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb3

    const-string v3, "utf32_sinhala_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 430
    const/16 v0, 0xb4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb4

    const-string v3, "utf32_german2_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 431
    const/16 v0, 0xb5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb5

    const-string v3, "utf32_croatian_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 432
    const/16 v0, 0xb6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb6

    const-string v3, "utf32_unicode_520_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 433
    const/16 v0, 0xb7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xb7

    const-string v3, "utf32_vietnamese_ci"

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 435
    const/16 v0, 0xc0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc0

    const-string v3, "utf8_unicode_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 436
    const/16 v0, 0xc1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc1

    const-string v3, "utf8_icelandic_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 437
    const/16 v0, 0xc2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc2

    const-string v3, "utf8_latvian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 438
    const/16 v0, 0xc3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc3

    const-string v3, "utf8_romanian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 439
    const/16 v0, 0xc4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc4

    const-string v3, "utf8_slovenian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 440
    const/16 v0, 0xc5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc5

    const-string v3, "utf8_polish_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 441
    const/16 v0, 0xc6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc6

    const-string v3, "utf8_estonian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 442
    const/16 v0, 0xc7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc7

    const-string v3, "utf8_spanish_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 443
    const/16 v0, 0xc8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc8

    const-string v3, "utf8_swedish_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 444
    const/16 v0, 0xc9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xc9

    const-string v3, "utf8_turkish_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 445
    const/16 v0, 0xca

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xca

    const-string v3, "utf8_czech_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 446
    const/16 v0, 0xcb

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcb

    const-string v3, "utf8_danish_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 447
    const/16 v0, 0xcc

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcc

    const-string v3, "utf8_lithuanian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 448
    const/16 v0, 0xcd

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcd

    const-string v3, "utf8_slovak_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 449
    const/16 v0, 0xce

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xce

    const-string v3, "utf8_spanish2_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 450
    const/16 v0, 0xcf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xcf

    const-string v3, "utf8_roman_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 451
    const/16 v0, 0xd0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd0

    const-string v3, "utf8_persian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 452
    const/16 v0, 0xd1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd1

    const-string v3, "utf8_esperanto_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 453
    const/16 v0, 0xd2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd2

    const-string v3, "utf8_hungarian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 454
    const/16 v0, 0xd3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd3

    const-string v3, "utf8_sinhala_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 455
    const/16 v0, 0xd4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd4

    const-string v3, "utf8_german2_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 456
    const/16 v0, 0xd5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd5

    const-string v3, "utf8_croatian_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 457
    const/16 v0, 0xd6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd6

    const-string v3, "utf8_unicode_520_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 458
    const/16 v0, 0xd7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xd7

    const-string v3, "utf8_vietnamese_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 460
    const/16 v0, 0xdf

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xdf

    const-string v3, "utf8_general_mysql500_ci"

    invoke-direct {v1, v2, v3, v11, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 461
    const/16 v0, 0xe0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe0

    const-string v3, "utf8mb4_unicode_ci"

    move-object/from16 v21, v15

    move-object/from16 v15, v22

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 462
    const/16 v0, 0xe1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe1

    const-string v3, "utf8mb4_icelandic_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 463
    const/16 v0, 0xe2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe2

    const-string v3, "utf8mb4_latvian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 464
    const/16 v0, 0xe3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe3

    const-string v3, "utf8mb4_romanian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 465
    const/16 v0, 0xe4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe4

    const-string v3, "utf8mb4_slovenian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 466
    const/16 v0, 0xe5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe5

    const-string v3, "utf8mb4_polish_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 467
    const/16 v0, 0xe6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe6

    const-string v3, "utf8mb4_estonian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 468
    const/16 v0, 0xe7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe7

    const-string v3, "utf8mb4_spanish_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 469
    const/16 v0, 0xe8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe8

    const-string v3, "utf8mb4_swedish_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 470
    const/16 v0, 0xe9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xe9

    const-string v3, "utf8mb4_turkish_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 471
    const/16 v0, 0xea

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xea

    const-string v3, "utf8mb4_czech_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 472
    const/16 v0, 0xeb

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xeb

    const-string v3, "utf8mb4_danish_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 473
    const/16 v0, 0xec

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xec

    const-string v3, "utf8mb4_lithuanian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 474
    const/16 v0, 0xed

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xed

    const-string v3, "utf8mb4_slovak_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 475
    const/16 v0, 0xee

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xee

    const-string v3, "utf8mb4_spanish2_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 476
    const/16 v0, 0xef

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xef

    const-string v3, "utf8mb4_roman_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 477
    const/16 v0, 0xf0

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf0

    const-string v3, "utf8mb4_persian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 478
    const/16 v0, 0xf1

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf1

    const-string v3, "utf8mb4_esperanto_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 479
    const/16 v0, 0xf2

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf2

    const-string v3, "utf8mb4_hungarian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 480
    const/16 v0, 0xf3

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf3

    const-string v3, "utf8mb4_sinhala_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 481
    const/16 v0, 0xf4

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf4

    const-string v3, "utf8mb4_german2_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 482
    const/16 v0, 0xf5

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf5

    const-string v3, "utf8mb4_croatian_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 483
    const/16 v0, 0xf6

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf6

    const-string v3, "utf8mb4_unicode_520_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 484
    const/16 v0, 0xf7

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf7

    const-string v3, "utf8mb4_vietnamese_ci"

    invoke-direct {v1, v2, v3, v11, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 485
    const/16 v0, 0xf8

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf8

    const-string v3, "gb18030_chinese_ci"

    const-string v11, "gb18030"

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 486
    const/16 v0, 0xf9

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xf9

    const-string v3, "gb18030_bin"

    const-string v4, "gb18030"

    const/4 v11, 0x0

    invoke-direct {v1, v2, v3, v11, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 487
    const/16 v0, 0xfa

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xfa

    const-string v3, "gb18030_unicode_520_ci"

    const-string v4, "gb18030"

    invoke-direct {v1, v2, v3, v11, v4}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 489
    const/16 v0, 0xff

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0xff

    const-string v3, "utf8mb4_0900_ai_ci"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 490
    const/16 v0, 0x100

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x100

    const-string v3, "utf8mb4_de_pb_0900_ai_ci"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 491
    const/16 v0, 0x101

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x101

    const-string v3, "utf8mb4_is_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 492
    const/16 v0, 0x102

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x102

    const-string v3, "utf8mb4_lv_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 493
    const/16 v0, 0x103

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x103

    const-string v3, "utf8mb4_ro_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 494
    const/16 v0, 0x104

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x104

    const-string v3, "utf8mb4_sl_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 495
    const/16 v0, 0x105

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x105

    const-string v3, "utf8mb4_pl_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 496
    const/16 v0, 0x106

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x106

    const-string v3, "utf8mb4_et_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 497
    const/16 v0, 0x107

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x107

    const-string v3, "utf8mb4_es_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 498
    const/16 v0, 0x108

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x108

    const-string v3, "utf8mb4_sv_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 499
    const/16 v0, 0x109

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x109

    const-string v3, "utf8mb4_tr_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 500
    const/16 v0, 0x10a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10a

    const-string v3, "utf8mb4_cs_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 501
    const/16 v0, 0x10b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10b

    const-string v3, "utf8mb4_da_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 502
    const/16 v0, 0x10c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10c

    const-string v3, "utf8mb4_lt_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 503
    const/16 v0, 0x10d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10d

    const-string v3, "utf8mb4_sk_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 504
    const/16 v0, 0x10e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10e

    const-string v3, "utf8mb4_es_trad_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 505
    const/16 v0, 0x10f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x10f

    const-string v3, "utf8mb4_la_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 507
    const/16 v0, 0x111

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x111

    const-string v3, "utf8mb4_eo_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 508
    const/16 v0, 0x112

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x112

    const-string v3, "utf8mb4_hu_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 509
    const/16 v0, 0x113

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x113

    const-string v3, "utf8mb4_hr_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 511
    const/16 v0, 0x115

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x115

    const-string v3, "utf8mb4_vi_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 512
    const/16 v0, 0x116

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x116

    const-string v3, "utf8mb4_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 513
    const/16 v0, 0x117

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x117

    const-string v3, "utf8mb4_de_pb_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 514
    const/16 v0, 0x118

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x118

    const-string v3, "utf8mb4_is_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 515
    const/16 v0, 0x119

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x119

    const-string v3, "utf8mb4_lv_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 516
    const/16 v0, 0x11a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11a

    const-string v3, "utf8mb4_ro_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 517
    const/16 v0, 0x11b

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11b

    const-string v3, "utf8mb4_sl_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 518
    const/16 v0, 0x11c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11c

    const-string v3, "utf8mb4_pl_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 519
    const/16 v0, 0x11d

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11d

    const-string v3, "utf8mb4_et_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 520
    const/16 v0, 0x11e

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11e

    const-string v3, "utf8mb4_es_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 521
    const/16 v0, 0x11f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x11f

    const-string v3, "utf8mb4_sv_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 522
    const/16 v0, 0x120

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x120

    const-string v3, "utf8mb4_tr_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 523
    const/16 v0, 0x121

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x121

    const-string v3, "utf8mb4_cs_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 524
    const/16 v0, 0x122

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x122

    const-string v3, "utf8mb4_da_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 525
    const/16 v0, 0x123

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x123

    const-string v3, "utf8mb4_lt_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 526
    const/16 v0, 0x124

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x124

    const-string v3, "utf8mb4_sk_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 527
    const/16 v0, 0x125

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x125

    const-string v3, "utf8mb4_es_trad_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 528
    const/16 v0, 0x126

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x126

    const-string v3, "utf8mb4_la_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 530
    const/16 v0, 0x128

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x128

    const-string v3, "utf8mb4_eo_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 531
    const/16 v0, 0x129

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x129

    const-string v3, "utf8mb4_hu_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 532
    const/16 v0, 0x12a

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12a

    const-string v3, "utf8mb4_hr_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 534
    const/16 v0, 0x12c

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12c

    const-string v3, "utf8mb4_vi_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 536
    const/16 v0, 0x12f

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x12f

    const-string v3, "utf8mb4_ja_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 537
    const/16 v0, 0x130

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x130

    const-string v3, "utf8mb4_ja_0900_as_cs_ks"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 538
    const/16 v0, 0x131

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x131

    const-string v3, "utf8mb4_0900_as_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 539
    const/16 v0, 0x132

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x132

    const-string v3, "utf8mb4_ru_0900_ai_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 540
    const/16 v0, 0x133

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x133

    const-string v3, "utf8mb4_ru_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 541
    const/16 v0, 0x134

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x134

    const-string v3, "utf8mb4_zh_0900_as_cs"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 542
    const/16 v0, 0x135

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x135

    const-string v3, "utf8mb4_0900_bin"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 544
    const/16 v0, 0x146

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x146

    const-string v3, "utf8mb4_test_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 545
    const/16 v0, 0x147

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x147

    const-string v3, "utf16_test_ci"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 546
    const/16 v0, 0x148

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x148

    const-string v3, "utf8mb4_test_400_ci"

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 548
    const/16 v0, 0x150

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x150

    const-string v3, "utf8_bengali_standard_ci"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 549
    const/16 v0, 0x151

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x151

    const-string v3, "utf8_bengali_traditional_ci"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 551
    const/16 v0, 0x160

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x160

    const-string v3, "utf8_phone_ci"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 552
    const/16 v0, 0x161

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x161

    const-string v3, "utf8_test_ci"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 553
    const/16 v0, 0x162

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x162

    const-string v3, "utf8_5624_1"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 554
    const/16 v0, 0x163

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x163

    const-string v3, "utf8_5624_2"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 555
    const/16 v0, 0x164

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x164

    const-string v3, "utf8_5624_3"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 556
    const/16 v0, 0x165

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x165

    const-string v3, "utf8_5624_4"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 557
    const/16 v0, 0x166

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x166

    const-string v3, "ucs2_test_ci"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 558
    const/16 v0, 0x167

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x167

    const-string v3, "ucs2_vn_ci"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 559
    const/16 v0, 0x168

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x168

    const-string v3, "ucs2_5624_1"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 561
    const/16 v0, 0x170

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x170

    const-string v3, "utf8_5624_5"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 562
    const/16 v0, 0x187

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x187

    const-string v3, "utf32_test_ci"

    invoke-direct {v1, v2, v3, v4, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 563
    const/16 v0, 0x7ff

    new-instance v1, Lcom/mysql/jdbc/Collation;

    const/16 v2, 0x7ff

    const-string v3, "utf8_maxuserid_ci"

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v1, v5, v0

    .line 565
    const/16 v0, 0x800

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    .line 566
    const/16 v0, 0x800

    new-array v0, v0, [Lcom/mysql/jdbc/MysqlCharset;

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    .line 567
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 568
    .local v0, "charsetNameToCollationIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 569
    .local v1, "charsetNameToCollationPriorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 571
    .local v2, "tempUTF8MB4Indexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "none"

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v6, v13}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 572
    .local v3, "notUsedCollation":Lcom/mysql/jdbc/Collation;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    const/16 v6, 0x800

    if-ge v4, v6, :cond_a

    .line 573
    aget-object v6, v5, v4

    if-eqz v6, :cond_6

    aget-object v6, v5, v4

    goto :goto_4

    :cond_6
    move-object v6, v3

    .line 574
    .local v6, "coll":Lcom/mysql/jdbc/Collation;
    :goto_4
    sget-object v7, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    iget-object v8, v6, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 575
    sget-object v7, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    iget-object v8, v6, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    aput-object v8, v7, v4

    .line 576
    iget-object v7, v6, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    iget-object v7, v7, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 578
    .local v7, "charsetName":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v6, Lcom/mysql/jdbc/Collation;->priority:I

    if-ge v8, v9, :cond_8

    .line 579
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget v8, v6, Lcom/mysql/jdbc/Collation;->priority:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_8
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 585
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v6    # "coll":Lcom/mysql/jdbc/Collation;
    .end local v7    # "charsetName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 589
    .end local v4    # "i":I
    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    sput-object v4, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;

    .line 590
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/mysql/jdbc/CharsetMapping;->UTF8MB4_INDEXES:Ljava/util/Set;

    .line 595
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 596
    .local v4, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "czech"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v6, "danish"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v6, "dutch"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v6, "english"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v6, "estonian"

    invoke-interface {v4, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v6, "french"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v6, "german"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-interface {v4, v10, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v6, "hungarian"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v6, "italian"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v6, "japanese"

    const-string v7, "ujis"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v6, "japanese-sjis"

    move-object/from16 v7, v22

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v6, "korean"

    const-string v7, "euckr"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v6, "norwegian"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v6, "norwegian-ny"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v6, "polish"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v6, "portuguese"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v6, "romanian"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v6, "russian"

    const-string v7, "koi8r"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v6, "serbian"

    move-object/from16 v7, v21

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v6, "slovak"

    invoke-interface {v4, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v6, "spanish"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v6, "swedish"

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v6, "ukrainian"

    const-string v7, "koi8u"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lcom/mysql/jdbc/CharsetMapping;->ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;

    .line 622
    nop

    .line 623
    .end local v0    # "charsetNameToCollationIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "charsetNameToCollationPriorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "tempUTF8MB4Indexes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "notUsedCollation":Lcom/mysql/jdbc/Collation;
    .end local v4    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "collation":[Lcom/mysql/jdbc/Collation;
    .end local v16    # "charset":[Lcom/mysql/jdbc/MysqlCharset;
    .end local v17    # "charsetNameToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/mysql/jdbc/MysqlCharset;>;"
    .end local v18    # "javaUcToMysqlCharsetMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;>;"
    .end local v26    # "tempMultibyteEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "tempEscapeEncodings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getCharacterEncodingForErrorMessages(Lcom/mysql/jdbc/ConnectionImpl;)Ljava/lang/String;
    .locals 7
    .param p0, "conn"    # Lcom/mysql/jdbc/ConnectionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 747
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    const-string v0, "jdbc.local.character_set_results"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "errorMessageCharsetName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 750
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "javaEncoding":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 752
    return-object v1

    .line 756
    .end local v1    # "javaEncoding":Ljava/lang/String;
    :cond_0
    const-string v1, "UTF-8"

    return-object v1

    .line 759
    .end local v0    # "errorMessageCharsetName":Ljava/lang/String;
    :cond_1
    const-string v0, "language"

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "errorMessageFile":Ljava/lang/String;
    const-string v1, "Cp1252"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 766
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 768
    .local v2, "endWithoutSlash":I
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 769
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 772
    :cond_4
    const/16 v3, 0x2f

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 774
    .local v3, "lastSlashIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 775
    const/16 v5, 0x5c

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 778
    :cond_5
    if-ne v3, v4, :cond_6

    .line 779
    const/4 v3, 0x0

    .line 782
    :cond_6
    if-eq v3, v2, :cond_a

    if-ge v2, v3, :cond_7

    goto :goto_0

    .line 787
    :cond_7
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 789
    sget-object v4, Lcom/mysql/jdbc/CharsetMapping;->ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 791
    .local v4, "errorMessageEncodingMysql":Ljava/lang/String;
    if-nez v4, :cond_8

    .line 793
    return-object v1

    .line 796
    :cond_8
    invoke-static {v4}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "javaEncoding":Ljava/lang/String;
    if-nez v5, :cond_9

    .line 800
    return-object v1

    .line 803
    :cond_9
    return-object v5

    .line 784
    .end local v4    # "errorMessageEncodingMysql":Ljava/lang/String;
    .end local v5    # "javaEncoding":Ljava/lang/String;
    :cond_a
    :goto_0
    return-object v1

    .line 763
    .end local v2    # "endWithoutSlash":I
    .end local v3    # "lastSlashIndex":I
    :cond_b
    :goto_1
    return-object v1
.end method

.method public static getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I
    .locals 3
    .param p0, "javaEncoding"    # Ljava/lang/String;
    .param p1, "conn"    # Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 670
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "charsetName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 672
    sget-object v1, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 673
    .local v1, "ci":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 677
    .end local v1    # "ci":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "collationIndex"    # Ljava/lang/Integer;

    .line 723
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "collationIndex"    # Ljava/lang/Integer;
    .param p1, "javaEncoding"    # Ljava/lang/String;

    .line 715
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 716
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    .line 717
    .local v0, "cs":Lcom/mysql/jdbc/MysqlCharset;
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 719
    .end local v0    # "cs":Lcom/mysql/jdbc/MysqlCharset;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mysqlCharsetName"    # Ljava/lang/String;

    .line 711
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mysqlCharsetName"    # Ljava/lang/String;
    .param p1, "javaEncoding"    # Ljava/lang/String;

    .line 702
    move-object v0, p1

    .line 703
    .local v0, "res":Ljava/lang/String;
    sget-object v1, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/MysqlCharset;

    .line 704
    .local v1, "cs":Lcom/mysql/jdbc/MysqlCharset;
    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    :cond_0
    return-object v0
.end method

.method public static getMblen(Ljava/lang/String;)I
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 820
    if-eqz p0, :cond_0

    .line 821
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MysqlCharset;

    .line 822
    .local v0, "cs":Lcom/mysql/jdbc/MysqlCharset;
    if-eqz v0, :cond_0

    .line 823
    iget v1, v0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    return v1

    .line 826
    .end local v0    # "cs":Lcom/mysql/jdbc/MysqlCharset;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;
    .locals 7
    .param p0, "javaEncoding"    # Ljava/lang/String;
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 628
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/CharsetMapping;->JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 630
    .local v1, "mysqlCharsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    if-eqz v1, :cond_4

    .line 631
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 633
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/MysqlCharset;>;"
    const/4 v3, 0x0

    .line 635
    .local v3, "versionedProp":Lcom/mysql/jdbc/MysqlCharset;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/MysqlCharset;

    .line 638
    .local v4, "charset":Lcom/mysql/jdbc/MysqlCharset;
    if-nez p1, :cond_0

    .line 641
    iget-object v0, v4, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    return-object v0

    .line 644
    :cond_0
    if-eqz v3, :cond_1

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->major:I

    if-lt v5, v6, :cond_1

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    if-lt v5, v6, :cond_1

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    if-lt v5, v6, :cond_1

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    if-ge v5, v6, :cond_2

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->major:I

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    if-ne v5, v6, :cond_2

    iget v5, v3, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    iget v6, v4, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    if-ne v5, v6, :cond_2

    .line 647
    :cond_1
    invoke-virtual {v4, p1}, Lcom/mysql/jdbc/MysqlCharset;->isOkayForVersion(Lcom/mysql/jdbc/Connection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 648
    move-object v3, v4

    .line 651
    .end local v4    # "charset":Lcom/mysql/jdbc/MysqlCharset;
    :cond_2
    goto :goto_0

    .line 653
    :cond_3
    if-eqz v3, :cond_4

    .line 654
    iget-object v0, v3, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 658
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/MysqlCharset;>;"
    .end local v3    # "versionedProp":Lcom/mysql/jdbc/MysqlCharset;
    :cond_4
    return-object v0

    .line 661
    .end local v1    # "mysqlCharsets":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/MysqlCharset;>;"
    :catch_0
    move-exception v1

    .line 662
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 663
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 664
    throw v0

    .line 659
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 660
    .local v0, "ex":Ljava/sql/SQLException;
    throw v0
.end method

.method public static getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p0, "collationIndex"    # Ljava/lang/Integer;

    .line 681
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 682
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    return-object v0

    .line 684
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static final getNumberOfCharsetsConfigured()I
    .locals 1

    .line 727
    sget v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    return v0
.end method

.method public static final isMultibyteCharset(Ljava/lang/String;)Z
    .locals 2
    .param p0, "javaEncodingName"    # Ljava/lang/String;

    .line 816
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->MULTIBYTE_ENCODINGS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static final requiresEscapeEasternUnicode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "javaEncodingName"    # Ljava/lang/String;

    .line 807
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->ESCAPE_ENCODINGS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
