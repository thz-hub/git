.class public Lcom/mysql/jdbc/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/StringUtils$SearchMode;
    }
.end annotation


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final HEX_DIGITS:[C

.field private static final NON_COMMENTS_MYSQL_VERSION_REF_LENGTH:I = 0x5

.field public static final SEARCH_MODE__ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__BSESC_COM_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__COM_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__MRK_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ID_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@"

.field static final WILDCARD_ESCAPE:C = '\\'

.field static final WILDCARD_MANY:C = '%'

.field static final WILDCARD_ONE:C = '_'

.field private static final WILD_COMPARE_CONTINUE_WITH_WILD:I = 0x1

.field private static final WILD_COMPARE_MATCH:I = 0x0

.field private static final WILD_COMPARE_NO_MATCH:I = -0x1

.field private static allBytes:[B

.field private static byteToChars:[C

.field private static final charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final platformEncoding:Ljava/lang/String;

.field private static toPlainStringMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    const-class v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    .line 68
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    .line 74
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_COM_WS:Ljava/util/Set;

    .line 80
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;

    .line 86
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__COM_WS:Ljava/util/Set;

    .line 92
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_WS:Ljava/util/Set;

    .line 98
    const-class v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__NONE:Ljava/util/Set;

    .line 105
    const/16 v0, 0x100

    new-array v1, v0, [B

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    .line 107
    new-array v0, v0, [C

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->byteToChars:[C

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    .line 151
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 152
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    add-int/lit16 v2, v0, 0x80

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 157
    .local v0, "allBytesString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 159
    .local v1, "allBytesStringLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    if-ge v4, v1, :cond_1

    .line 160
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->byteToChars:[C

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v4

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    .end local v4    # "i":I
    :cond_1
    :try_start_0
    const-class v3, Ljava/math/BigDecimal;

    const-string v4, "toPlainString"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_2

    .line 165
    :catch_0
    move-exception v2

    .line 2376
    .end local v0    # "allBytesString":Ljava/lang/String;
    .end local v1    # "allBytesStringLen":I
    :goto_2
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static appendAsHex(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I

    .line 2386
    if-nez p1, :cond_0

    .line 2387
    const-string v0, "0x0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    return-void

    .line 2391
    :cond_0
    const/16 v0, 0x20

    .line 2393
    .local v0, "shift":I
    const/4 v1, 0x0

    .line 2395
    .local v1, "nonZeroFound":Z
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    :goto_0
    add-int/lit8 v0, v0, -0x4

    .line 2398
    ushr-int v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    .line 2399
    .local v2, "nibble":B
    if-eqz v1, :cond_1

    .line 2400
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2401
    :cond_1
    if-eqz v2, :cond_2

    .line 2402
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2403
    const/4 v1, 0x1

    .line 2405
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 2406
    return-void

    .line 2405
    :cond_3
    goto :goto_0
.end method

.method public static appendAsHex(Ljava/lang/StringBuilder;[B)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B

    .line 2379
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 2381
    .local v3, "b":B
    sget-object v4, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2380
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2383
    .end local v0    # "arr$":[B
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public static consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2
    .param p0, "decimal"    # Ljava/math/BigDecimal;

    .line 180
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 181
    return-object v0

    .line 184
    :cond_0
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 186
    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpAsHex([BI)Ljava/lang/String;
    .locals 16
    .param p0, "byteBuffer"    # [B
    .param p1, "length"    # I

    .line 208
    move/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v1, "outputBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 211
    .local v2, "p":I
    div-int/lit8 v3, v0, 0x8

    .line 213
    .local v3, "rows":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v6, ". "

    const-string v8, "\n"

    const-string v9, "    "

    const-string v10, "0"

    const-string v11, " "

    const/16 v12, 0x8

    const/4 v13, 0x1

    if-ge v4, v3, :cond_4

    if-ge v2, v0, :cond_4

    .line 214
    move v14, v2

    .line 216
    .local v14, "ptemp":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v12, :cond_1

    .line 217
    aget-byte v5, p0, v14

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "hexVal":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v13, :cond_0

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    nop

    .end local v5    # "hexVal":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    .line 216
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 227
    .end local v15    # "j":I
    :cond_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v12, :cond_3

    .line 230
    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    .line 232
    .local v7, "b":I
    const/16 v9, 0x20

    if-le v7, v9, :cond_2

    const/16 v9, 0x7f

    if-ge v7, v9, :cond_2

    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 235
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_3
    nop

    .end local v7    # "b":I
    add-int/lit8 v2, v2, 0x1

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 241
    .end local v5    # "j":I
    :cond_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .end local v14    # "ptemp":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .line 246
    .local v4, "n":I
    move v5, v2

    .local v5, "i":I
    :goto_4
    if-ge v5, v0, :cond_6

    .line 247
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "hexVal":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v13, :cond_5

    .line 250
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 253
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    nop

    .end local v7    # "hexVal":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 257
    .end local v5    # "i":I
    :cond_6
    move v5, v4

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v12, :cond_7

    .line 258
    const-string v7, "   "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 261
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    move v5, v2

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v0, :cond_a

    .line 264
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    .line 266
    .local v7, "b":I
    const/16 v9, 0x20

    if-le v7, v9, :cond_8

    const/16 v10, 0x7f

    if-ge v7, v10, :cond_9

    .line 267
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 266
    :cond_8
    const/16 v10, 0x7f

    .line 269
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .end local v7    # "b":I
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 273
    .end local v5    # "i":I
    :cond_a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static endsWith([BLjava/lang/String;)Z
    .locals 5
    .param p0, "dataFrom"    # [B
    .param p1, "suffix"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 280
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 281
    .local v1, "dfOffset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    .line 282
    .local v2, "suffixOffset":I
    aget-byte v3, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    .line 283
    const/4 v3, 0x0

    return v3

    .line 279
    .end local v1    # "dfOffset":I
    .end local v2    # "suffixOffset":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    .locals 8
    .param p0, "origBytes"    # [B
    .param p1, "origString"    # Ljava/lang/String;

    .line 301
    if-nez p0, :cond_0

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 305
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 308
    :cond_1
    array-length v0, p0

    .line 309
    .local v0, "bytesLen":I
    const/4 v1, 0x0

    .line 310
    .local v1, "bufIndex":I
    const/4 v2, 0x0

    .line 312
    .local v2, "strIndex":I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 315
    .local v3, "bytesOut":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 317
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bufIndex":I
    .local v4, "bufIndex":I
    aget-byte v1, p0, v1

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v4

    goto :goto_2

    .line 322
    .end local v4    # "bufIndex":I
    .restart local v1    # "bufIndex":I
    :cond_2
    aget-byte v4, p0, v1

    .line 324
    .local v4, "loByte":I
    if-gez v4, :cond_3

    .line 325
    add-int/lit16 v4, v4, 0x100

    .line 329
    :cond_3
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    const/16 v6, 0x80

    if-lt v4, v6, :cond_6

    .line 348
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_8

    .line 349
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    .line 351
    .local v6, "hiByte":I
    if-gez v6, :cond_4

    .line 352
    add-int/lit16 v6, v6, 0x100

    .line 356
    :cond_4
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 360
    if-ne v6, v5, :cond_5

    .line 361
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    .end local v6    # "hiByte":I
    :cond_5
    goto :goto_1

    .line 364
    :cond_6
    if-ne v4, v5, :cond_8

    .line 365
    add-int/lit8 v6, v0, -0x1

    if-ge v1, v6, :cond_8

    .line 366
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    .line 368
    .restart local v6    # "hiByte":I
    if-gez v6, :cond_7

    .line 369
    add-int/lit16 v6, v6, 0x100

    .line 372
    :cond_7
    const/16 v7, 0x62

    if-ne v6, v7, :cond_8

    .line 374
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 381
    .end local v6    # "hiByte":I
    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 384
    .end local v4    # "loByte":I
    :goto_2
    if-lt v1, v0, :cond_9

    .line 386
    nop

    .line 392
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 389
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static escapeQuote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "quotChar"    # Ljava/lang/String;

    .line 2038
    if-nez p0, :cond_0

    .line 2039
    const/4 v0, 0x0

    return-object v0

    .line 2042
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    .line 2044
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2048
    .local v0, "lastNdx":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2049
    .local v2, "tmpSrc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2051
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2053
    .local v3, "tmpRest":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2054
    :goto_0
    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    .line 2056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2058
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2060
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2063
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2064
    .end local v2    # "tmpSrc":Ljava/lang/String;
    .local v1, "tmpSrc":Ljava/lang/String;
    move-object p0, v1

    .line 2066
    return-object p0
.end method

.method static findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 127
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 129
    .local v1, "cs":Ljava/nio/charset/Charset;
    if-nez v1, :cond_0

    .line 130
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v1, v2

    .line 131
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v0, "oldCs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    .line 134
    move-object v1, v0

    .line 138
    .end local v0    # "oldCs":Ljava/nio/charset/Charset;
    :cond_0
    return-object v1

    .line 145
    .end local v1    # "cs":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "icne":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v0    # "icne":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "uce":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static firstAlphaCharUc(Ljava/lang/String;I)C
    .locals 5
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "startAt"    # I

    .line 426
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 427
    return v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 432
    .local v1, "length":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 433
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 435
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0

    .line 432
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static firstNonWsCharUc(Ljava/lang/String;)C
    .locals 1
    .param p0, "searchIn"    # Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->firstNonWsCharUc(Ljava/lang/String;I)C

    move-result v0

    return v0
.end method

.method public static firstNonWsCharUc(Ljava/lang/String;I)C
    .locals 5
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "startAt"    # I

    .line 408
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 409
    return v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 414
    .local v1, "length":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 417
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 418
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0

    .line 414
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dString"    # Ljava/lang/String;

    .line 453
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 455
    .local v0, "ePos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 456
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 459
    :cond_0
    if-eq v0, v1, :cond_1

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1

    .line 461
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 463
    .local v1, "maybeMinusChar":C
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 465
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 473
    .end local v1    # "maybeMinusChar":C
    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 2325
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2326
    :catch_0
    move-exception v0

    .line 2330
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;II)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 2335
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2336
    :catch_0
    move-exception v0

    .line 2340
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;IILjava/lang/String;)[B
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2353
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2354
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2357
    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 2355
    :cond_1
    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 2360
    :cond_2
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2362
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2365
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 2366
    .local v2, "encodedLen":I
    new-array v3, v2, [B

    .line 2367
    .local v3, "asBytes":[B
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2369
    return-object v3
.end method

.method public static getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "serverEncoding"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "parserKnowsUnicode"    # Z
    .param p7, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 594
    if-eqz p1, :cond_0

    .line 595
    :try_start_0
    invoke-virtual {p1, p0, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;II)[B

    move-result-object v0

    .local v0, "b":[B
    goto :goto_0

    .line 611
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    goto :goto_1

    .line 596
    :cond_0
    if-nez p2, :cond_1

    .line 597
    invoke-static {p0, p4, p5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;II)[B

    move-result-object v0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 599
    .end local v0    # "b":[B
    :cond_1
    add-int v0, p4, p5

    invoke-virtual {p0, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 600
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 602
    .restart local v0    # "b":[B
    if-nez p6, :cond_2

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 605
    invoke-static {v0, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 610
    :cond_2
    :goto_0
    return-object v0

    .line 612
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.5"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "serverEncoding"    # Ljava/lang/String;
    .param p4, "parserKnowsUnicode"    # Z
    .param p5, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 563
    if-eqz p1, :cond_0

    .line 564
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "b":[B
    goto :goto_0

    .line 579
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    goto :goto_1

    .line 565
    :cond_0
    if-nez p2, :cond_1

    .line 566
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 568
    .end local v0    # "b":[B
    :cond_1
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 570
    .restart local v0    # "b":[B
    if-nez p4, :cond_2

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    invoke-static {v0, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 578
    :cond_2
    :goto_0
    return-object v0

    .line 580
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.5"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "serverEncoding"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "parserKnowsUnicode"    # Z
    .param p6, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p7, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v9, p1

    move-object/from16 v10, p6

    .line 640
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 642
    .local v2, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 643
    .end local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.5"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    move-object/from16 v3, p7

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "serverEncoding"    # Ljava/lang/String;
    .param p3, "parserKnowsUnicode"    # Z
    .param p4, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p5, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 624
    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 626
    .local v2, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 627
    .end local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.5"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytes([C)[B
    .locals 3
    .param p0, "value"    # [C

    .line 2288
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2289
    :catch_0
    move-exception v0

    .line 2293
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes([CII)[B
    .locals 1
    .param p0, "value"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 2298
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2299
    :catch_0
    move-exception v0

    .line 2303
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes([CIILjava/lang/String;)[B
    .locals 5
    .param p0, "value"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2311
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2313
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2316
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 2317
    .local v2, "encodedLen":I
    new-array v3, v2, [B

    .line 2318
    .local v3, "asBytes":[B
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2320
    return-object v3
.end method

.method public static getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
    .param p0, "c"    # [C
    .param p1, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "serverEncoding"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "parserKnowsUnicode"    # Z
    .param p7, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 516
    if-eqz p1, :cond_0

    .line 517
    :try_start_0
    invoke-virtual {p1, p0, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes([CII)[B

    move-result-object v0

    .local v0, "b":[B
    goto :goto_0

    .line 532
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    goto :goto_1

    .line 518
    :cond_0
    if-nez p2, :cond_1

    .line 519
    invoke-static {p0, p4, p5}, Lcom/mysql/jdbc/StringUtils;->getBytes([CII)[B

    move-result-object v0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 521
    .end local v0    # "b":[B
    :cond_1
    invoke-static {p0, p4, p5, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object v0

    .line 523
    .restart local v0    # "b":[B
    if-nez p6, :cond_2

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 526
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p4, p5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 531
    :cond_2
    :goto_0
    return-object v0

    .line 533
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.0"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
    .param p0, "c"    # [C
    .param p1, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "serverEncoding"    # Ljava/lang/String;
    .param p4, "parserKnowsUnicode"    # Z
    .param p5, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 485
    if-eqz p1, :cond_0

    .line 486
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes([C)[B

    move-result-object v0

    .local v0, "b":[B
    goto :goto_0

    .line 501
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    goto :goto_1

    .line 487
    :cond_0
    if-nez p2, :cond_1

    .line 488
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes([C)[B

    move-result-object v0

    .restart local v0    # "b":[B
    goto :goto_0

    .line 490
    .end local v0    # "b":[B
    :cond_1
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLjava/lang/String;)[B

    move-result-object v0

    .line 492
    .restart local v0    # "b":[B
    if-nez p4, :cond_2

    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 495
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 500
    :cond_2
    :goto_0
    return-object v0

    .line 502
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.0"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytes([CLjava/lang/String;)[B
    .locals 2
    .param p0, "value"    # [C
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2307
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes([CLjava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 7
    .param p0, "c"    # [C
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "serverEncoding"    # Ljava/lang/String;
    .param p3, "parserKnowsUnicode"    # Z
    .param p4, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p5, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 545
    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 547
    .local v2, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 548
    .end local v2    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :catch_0
    move-exception v0

    .line 549
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.0"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getBytesNullTerminated(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2409
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2411
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2413
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 2414
    .local v2, "encodedLen":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    .line 2415
    .local v3, "asBytes":[B
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2416
    aput-byte v4, v3, v2

    .line 2418
    return-object v3
.end method

.method public static getBytesWrapped(Ljava/lang/String;CCLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "beginWrap"    # C
    .param p2, "endWrap"    # C
    .param p3, "converter"    # Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "serverEncoding"    # Ljava/lang/String;
    .param p6, "parserKnowsUnicode"    # Z
    .param p7, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 658
    if-eqz p3, :cond_0

    .line 659
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytesWrapped(Ljava/lang/String;CC)[B

    move-result-object v0

    .local v0, "b":[B
    goto :goto_0

    .line 685
    .end local v0    # "b":[B
    :catch_0
    move-exception v0

    goto :goto_1

    .line 660
    :cond_0
    if-nez p4, :cond_1

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 662
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    .line 667
    .local v0, "b":[B
    goto :goto_0

    .line 668
    .end local v0    # "b":[B
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 669
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 674
    invoke-static {p0, p4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 676
    .local v1, "b":[B
    if-nez p6, :cond_2

    invoke-static {p4}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 678
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 679
    invoke-static {v1, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    move-object v0, v1

    goto :goto_0

    .line 684
    .end local v0    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_2
    move-object v0, v1

    .end local v1    # "b":[B
    .local v0, "b":[B
    :goto_0
    return-object v0

    .line 686
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringUtils.10"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StringUtils.11"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public static getInt([B)I
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 692
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    return v0
.end method

.method public static getInt([BII)I
    .locals 10
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "endPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 696
    const/16 v0, 0xa

    .line 698
    .local v0, "base":I
    move v1, p1

    .line 701
    .local v1, "s":I
    :goto_0
    if-ge v1, p2, :cond_0

    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_0
    if-eq v1, p2, :cond_c

    .line 710
    const/4 v2, 0x0

    .line 712
    .local v2, "negative":Z
    aget-byte v3, p0, v1

    int-to-char v3, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 713
    const/4 v2, 0x1

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 715
    :cond_1
    aget-byte v3, p0, v1

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 716
    add-int/lit8 v1, v1, 0x1

    .line 720
    :cond_2
    :goto_1
    move v3, v1

    .line 722
    .local v3, "save":I
    const v4, 0x7fffffff

    div-int v5, v4, v0

    .line 723
    .local v5, "cutoff":I
    rem-int/2addr v4, v0

    .line 725
    .local v4, "cutlim":I
    if-eqz v2, :cond_3

    .line 726
    add-int/lit8 v4, v4, 0x1

    .line 729
    :cond_3
    const/4 v6, 0x0

    .line 731
    .local v6, "overflow":Z
    const/4 v7, 0x0

    .line 733
    .local v7, "i":I
    :goto_2
    if-ge v1, p2, :cond_8

    .line 734
    aget-byte v8, p0, v1

    int-to-char v8, v8

    .line 736
    .local v8, "c":C
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 737
    add-int/lit8 v9, v8, -0x30

    int-to-char v8, v9

    goto :goto_3

    .line 738
    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 739
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    add-int/lit8 v9, v9, -0x41

    add-int/lit8 v9, v9, 0xa

    int-to-char v8, v9

    .line 744
    :goto_3
    if-lt v8, v0, :cond_5

    .line 745
    goto :goto_6

    .line 749
    :cond_5
    if-gt v7, v5, :cond_7

    if-ne v7, v5, :cond_6

    if-le v8, v4, :cond_6

    goto :goto_4

    .line 752
    :cond_6
    mul-int v7, v7, v0

    .line 753
    add-int/2addr v7, v8

    goto :goto_5

    .line 750
    :cond_7
    :goto_4
    const/4 v6, 0x1

    .line 733
    .end local v8    # "c":C
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 757
    :cond_8
    :goto_6
    if-eq v1, v3, :cond_b

    .line 761
    if-nez v6, :cond_a

    .line 766
    if-eqz v2, :cond_9

    neg-int v8, v7

    goto :goto_7

    :cond_9
    move v8, v7

    :goto_7
    return v8

    .line 762
    :cond_a
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 758
    :cond_b
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 706
    .end local v2    # "negative":Z
    .end local v3    # "save":I
    .end local v4    # "cutlim":I
    .end local v5    # "cutoff":I
    .end local v6    # "overflow":Z
    .end local v7    # "i":I
    :cond_c
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong([B)J
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 770
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->getLong([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BII)J
    .locals 16
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "endpos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 774
    move/from16 v0, p2

    const/16 v1, 0xa

    .line 776
    .local v1, "base":I
    move/from16 v2, p1

    .line 779
    .local v2, "s":I
    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    :cond_0
    if-eq v2, v0, :cond_c

    .line 788
    const/4 v3, 0x0

    .line 790
    .local v3, "negative":Z
    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 791
    const/4 v3, 0x1

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 793
    :cond_1
    aget-byte v4, p0, v2

    int-to-char v4, v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 794
    add-int/lit8 v2, v2, 0x1

    .line 798
    :cond_2
    :goto_1
    move v4, v2

    .line 800
    .local v4, "save":I
    int-to-long v5, v1

    const-wide v7, 0x7fffffffffffffffL

    div-long v5, v7, v5

    .line 801
    .local v5, "cutoff":J
    int-to-long v9, v1

    rem-long/2addr v7, v9

    long-to-int v8, v7

    int-to-long v7, v8

    .line 803
    .local v7, "cutlim":J
    if-eqz v3, :cond_3

    .line 804
    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 807
    :cond_3
    const/4 v9, 0x0

    .line 808
    .local v9, "overflow":Z
    const-wide/16 v10, 0x0

    .line 810
    .local v10, "i":J
    :goto_2
    if-ge v2, v0, :cond_8

    .line 811
    aget-byte v12, p0, v2

    int-to-char v12, v12

    .line 813
    .local v12, "c":C
    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 814
    add-int/lit8 v13, v12, -0x30

    int-to-char v12, v13

    goto :goto_3

    .line 815
    :cond_4
    invoke-static {v12}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 816
    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    add-int/lit8 v13, v13, -0x41

    add-int/lit8 v13, v13, 0xa

    int-to-char v12, v13

    .line 821
    :goto_3
    if-lt v12, v1, :cond_5

    .line 822
    goto :goto_6

    .line 826
    :cond_5
    cmp-long v13, v10, v5

    if-gtz v13, :cond_7

    cmp-long v13, v10, v5

    if-nez v13, :cond_6

    int-to-long v13, v12

    cmp-long v15, v13, v7

    if-lez v15, :cond_6

    goto :goto_4

    .line 829
    :cond_6
    int-to-long v13, v1

    mul-long v10, v10, v13

    .line 830
    int-to-long v13, v12

    add-long/2addr v10, v13

    goto :goto_5

    .line 827
    :cond_7
    :goto_4
    const/4 v9, 0x1

    .line 810
    .end local v12    # "c":C
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 834
    :cond_8
    :goto_6
    if-eq v2, v4, :cond_b

    .line 838
    if-nez v9, :cond_a

    .line 843
    if-eqz v3, :cond_9

    neg-long v12, v10

    goto :goto_7

    :cond_9
    move-wide v12, v10

    :goto_7
    return-wide v12

    .line 839
    :cond_a
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 835
    :cond_b
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 784
    .end local v3    # "negative":Z
    .end local v4    # "save":I
    .end local v5    # "cutoff":J
    .end local v7    # "cutlim":J
    .end local v9    # "overflow":Z
    .end local v10    # "i":J
    :cond_c
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getShort([B)S
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 847
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->getShort([BII)S

    move-result v0

    return v0
.end method

.method public static getShort([BII)S
    .locals 10
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "endpos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 851
    const/16 v0, 0xa

    .line 853
    .local v0, "base":S
    move v1, p1

    .line 856
    .local v1, "s":I
    :goto_0
    if-ge v1, p2, :cond_0

    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    :cond_0
    if-eq v1, p2, :cond_c

    .line 865
    const/4 v2, 0x0

    .line 867
    .local v2, "negative":Z
    aget-byte v3, p0, v1

    int-to-char v3, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 868
    const/4 v2, 0x1

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    :cond_1
    aget-byte v3, p0, v1

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 871
    add-int/lit8 v1, v1, 0x1

    .line 875
    :cond_2
    :goto_1
    move v3, v1

    .line 877
    .local v3, "save":I
    const/16 v4, 0x7fff

    div-int v5, v4, v0

    int-to-short v5, v5

    .line 878
    .local v5, "cutoff":S
    rem-int/2addr v4, v0

    int-to-short v4, v4

    .line 880
    .local v4, "cutlim":S
    if-eqz v2, :cond_3

    .line 881
    add-int/lit8 v6, v4, 0x1

    int-to-short v4, v6

    .line 884
    :cond_3
    const/4 v6, 0x0

    .line 885
    .local v6, "overflow":Z
    const/4 v7, 0x0

    .line 887
    .local v7, "i":S
    :goto_2
    if-ge v1, p2, :cond_8

    .line 888
    aget-byte v8, p0, v1

    int-to-char v8, v8

    .line 890
    .local v8, "c":C
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 891
    add-int/lit8 v9, v8, -0x30

    int-to-char v8, v9

    goto :goto_3

    .line 892
    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 893
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    add-int/lit8 v9, v9, -0x41

    add-int/lit8 v9, v9, 0xa

    int-to-char v8, v9

    .line 898
    :goto_3
    if-lt v8, v0, :cond_5

    .line 899
    goto :goto_6

    .line 903
    :cond_5
    if-gt v7, v5, :cond_7

    if-ne v7, v5, :cond_6

    if-le v8, v4, :cond_6

    goto :goto_4

    .line 906
    :cond_6
    mul-int v9, v7, v0

    int-to-short v7, v9

    .line 907
    add-int v9, v7, v8

    int-to-short v7, v9

    goto :goto_5

    .line 904
    :cond_7
    :goto_4
    const/4 v6, 0x1

    .line 887
    .end local v8    # "c":C
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 911
    :cond_8
    :goto_6
    if-eq v1, v3, :cond_b

    .line 915
    if-nez v6, :cond_a

    .line 920
    if-eqz v2, :cond_9

    neg-int v8, v7

    int-to-short v8, v8

    goto :goto_7

    :cond_9
    move v8, v7

    :goto_7
    return v8

    .line 916
    :cond_a
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 912
    :cond_b
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 861
    .end local v2    # "negative":Z
    .end local v3    # "save":I
    .end local v4    # "cutlim":S
    .end local v5    # "cutoff":S
    .end local v6    # "overflow":Z
    .end local v7    # "i":S
    :cond_c
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static indexOf([BC)I
    .locals 4
    .param p0, "s"    # [B
    .param p1, "c"    # C

    .line 1830
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1831
    return v0

    .line 1834
    :cond_0
    array-length v1, p0

    .line 1836
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1837
    aget-byte v3, p0, v2

    if-ne v3, p1, :cond_1

    .line 1838
    return v2

    .line 1836
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1842
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "startingPosition"    # I
    .param p1, "searchIn"    # Ljava/lang/String;
    .param p2, "searchFor"    # Ljava/lang/String;

    .line 948
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 952
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 953
    .local v1, "searchInLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 954
    .local v2, "searchForLength":I
    sub-int v3, v1, v2

    .line 956
    .local v3, "stopSearchingAt":I
    if-gt p0, v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_2

    .line 961
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 962
    .local v5, "firstCharOfSearchForUc":C
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 964
    .local v4, "firstCharOfSearchForLc":C
    move v6, p0

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_4

    .line 965
    invoke-static {p1, v6, v5, v4}, Lcom/mysql/jdbc/StringUtils;->isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 967
    :goto_1
    add-int/lit8 v6, v6, 0x1

    if-gt v6, v3, :cond_2

    invoke-static {p1, v6, v5, v4}, Lcom/mysql/jdbc/StringUtils;->isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 971
    :cond_2
    if-gt v6, v3, :cond_3

    invoke-static {p1, v6, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 972
    return v6

    .line 964
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 976
    .end local v6    # "i":I
    :cond_4
    return v0

    .line 957
    .end local v4    # "firstCharOfSearchForLc":C
    .end local v5    # "firstCharOfSearchForUc":C
    :cond_5
    :goto_2
    return v0

    .line 949
    .end local v1    # "searchInLength":I
    .end local v2    # "searchForLength":I
    .end local v3    # "stopSearchingAt":I
    :cond_6
    :goto_3
    return v0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 19
    .param p0, "startingPosition"    # I
    .param p1, "searchIn"    # Ljava/lang/String;
    .param p2, "searchFor"    # Ljava/lang/String;
    .param p3, "openingMarkers"    # Ljava/lang/String;
    .param p4, "closingMarkers"    # Ljava/lang/String;
    .param p5, "overridingMarkers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .line 1118
    .local p6, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p6

    const/4 v10, -0x1

    if-eqz v7, :cond_c

    if-nez v8, :cond_0

    move/from16 v14, p0

    goto/16 :goto_5

    .line 1122
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 1123
    .local v11, "searchInLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 1124
    .local v12, "searchForLength":I
    sub-int v13, v11, v12

    .line 1126
    .local v13, "stopSearchingAt":I
    move/from16 v14, p0

    if-gt v14, v13, :cond_b

    if-nez v12, :cond_1

    goto/16 :goto_4

    .line 1130
    :cond_1
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1131
    const/4 v1, 0x2

    if-eqz v9, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 1134
    const-string v4, "StringUtils.16"

    if-eqz p5, :cond_4

    .line 1137
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .local v5, "arr$":[C
    array-length v6, v5

    .local v6, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    if-ge v15, v6, :cond_3

    aget-char v3, v5, v15

    .line 1138
    .local v3, "c":C
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v10, :cond_2

    .line 1137
    .end local v3    # "c":C
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1139
    .restart local v3    # "c":C
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object p5, v1, v17

    const/16 v16, 0x1

    aput-object v9, v1, v16

    invoke-static {v4, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1137
    .end local v3    # "c":C
    :cond_3
    const/16 v17, 0x0

    const/4 v3, 0x0

    goto :goto_1

    .line 1135
    .end local v5    # "arr$":[C
    .end local v6    # "len$":I
    .end local v15    # "i$":I
    :cond_4
    const/16 v16, 0x1

    const/16 v17, 0x0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p5, v1, v17

    aput-object v9, v1, v16

    invoke-static {v4, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1132
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v1, v3

    const/4 v3, 0x1

    aput-object p4, v1, v3

    const-string v3, "StringUtils.15"

    invoke-static {v3, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1130
    :cond_6
    const/4 v3, 0x0

    .line 1145
    :goto_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    .line 1146
    .local v15, "firstCharOfSearchForUc":C
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 1148
    .local v6, "firstCharOfSearchForLc":C
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1150
    invoke-static/range {p6 .. p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1151
    .end local p6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v0, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v16, v0

    goto :goto_2

    .line 1154
    .end local v0    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local p6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_7
    move-object/from16 v16, v0

    .end local p6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v16, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :goto_2
    move/from16 v0, p0

    move v5, v0

    .local v5, "i":I
    :goto_3
    if-gt v5, v13, :cond_a

    .line 1155
    move v0, v5

    move v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v17, v5

    .end local v5    # "i":I
    .local v17, "i":I
    move-object/from16 v5, p5

    move/from16 v18, v6

    .end local v6    # "firstCharOfSearchForLc":C
    .local v18, "firstCharOfSearchForLc":C
    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 1157
    .end local v17    # "i":I
    .local v0, "i":I
    if-ne v0, v10, :cond_8

    .line 1158
    return v10

    .line 1161
    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1163
    .local v1, "c":C
    move/from16 v2, v18

    .end local v18    # "firstCharOfSearchForLc":C
    .local v2, "firstCharOfSearchForLc":C
    invoke-static {v1, v15, v2}, Lcom/mysql/jdbc/StringUtils;->isCharEqualIgnoreCase(CCC)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v7, v0, v8}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1164
    return v0

    .line 1154
    .end local v1    # "c":C
    :cond_9
    add-int/lit8 v5, v0, 0x1

    move v6, v2

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 1168
    .end local v2    # "firstCharOfSearchForLc":C
    .end local v5    # "i":I
    .restart local v6    # "firstCharOfSearchForLc":C
    :cond_a
    return v10

    .line 1127
    .end local v6    # "firstCharOfSearchForLc":C
    .end local v15    # "firstCharOfSearchForUc":C
    .end local v16    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local p6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_b
    :goto_4
    return v10

    .line 1118
    .end local v11    # "searchInLength":I
    .end local v12    # "searchForLength":I
    .end local v13    # "stopSearchingAt":I
    :cond_c
    move/from16 v14, p0

    .line 1119
    :goto_5
    return v10
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 7
    .param p0, "startingPosition"    # I
    .param p1, "searchIn"    # Ljava/lang/String;
    .param p2, "searchFor"    # Ljava/lang/String;
    .param p3, "openingMarkers"    # Ljava/lang/String;
    .param p4, "closingMarkers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .line 1091
    .local p5, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    const-string v5, ""

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 23
    .param p0, "startingPosition"    # I
    .param p1, "searchIn"    # Ljava/lang/String;
    .param p2, "searchForSequence"    # [Ljava/lang/String;
    .param p3, "openingMarkers"    # Ljava/lang/String;
    .param p4, "closingMarkers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .line 1004
    .local p5, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p5

    const/4 v9, -0x1

    if-eqz v7, :cond_f

    if-nez v8, :cond_0

    move/from16 v15, p0

    goto/16 :goto_9

    .line 1008
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1009
    .local v10, "searchInLength":I
    const/4 v1, 0x0

    .line 1010
    .local v1, "searchForLength":I
    move-object/from16 v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1011
    .local v5, "searchForPart":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 1010
    .end local v5    # "searchForPart":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1014
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    if-nez v1, :cond_2

    .line 1015
    return v9

    .line 1018
    :cond_2
    array-length v11, v8

    .line 1019
    .local v11, "searchForWordsCount":I
    const/4 v12, 0x0

    if-lez v11, :cond_3

    add-int/lit8 v2, v11, -0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int v13, v1, v2

    .line 1020
    .end local v1    # "searchForLength":I
    .local v13, "searchForLength":I
    sub-int v14, v10, v13

    .line 1022
    .local v14, "stopSearchingAt":I
    move/from16 v15, p0

    if-le v15, v14, :cond_4

    .line 1023
    return v9

    .line 1026
    :cond_4
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v16, 0x1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 1028
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v12

    aput-object p4, v2, v16

    const-string v3, "StringUtils.15"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1031
    :cond_6
    :goto_2
    aget-object v1, v8, v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1033
    invoke-static/range {p5 .. p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1034
    .end local p5    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v0, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v6, v0

    goto :goto_3

    .line 1039
    .end local v0    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local p5    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_7
    move-object v6, v0

    .end local p5    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v6, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :goto_3
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 1040
    .local v5, "searchMode2":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1041
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1043
    move/from16 v0, p0

    move v4, v0

    .local v4, "positionOfFirstWord":I
    :goto_4
    if-gt v4, v14, :cond_e

    .line 1044
    aget-object v2, v8, v12

    move v0, v4

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v17, v4

    .end local v4    # "positionOfFirstWord":I
    .local v17, "positionOfFirstWord":I
    move-object/from16 v4, p4

    move-object/from16 v18, v5

    .end local v5    # "searchMode2":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v18, "searchMode2":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    .line 1046
    .end local v17    # "positionOfFirstWord":I
    .local v5, "positionOfFirstWord":I
    if-eq v5, v9, :cond_d

    if-le v5, v14, :cond_8

    move/from16 v20, v5

    move-object/from16 v21, v6

    goto/16 :goto_8

    .line 1050
    :cond_8
    aget-object v0, v8, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    .line 1051
    .local v0, "startingPositionForNextWord":I
    const/4 v1, 0x0

    .line 1052
    .local v1, "wc":I
    const/4 v2, 0x1

    move v4, v0

    move/from16 v17, v2

    .line 1053
    .end local v0    # "startingPositionForNextWord":I
    .local v4, "startingPositionForNextWord":I
    .local v17, "match":Z
    :goto_5
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "wc":I
    .local v3, "wc":I
    if-ge v3, v11, :cond_b

    if-eqz v17, :cond_b

    .line 1054
    add-int/lit8 v1, v10, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v0, v4

    move-object/from16 v2, p1

    move/from16 v22, v3

    .end local v3    # "wc":I
    .local v22, "wc":I
    move-object/from16 v3, v19

    move v12, v4

    .end local v4    # "startingPositionForNextWord":I
    .local v12, "startingPositionForNextWord":I
    move-object/from16 v4, v20

    move/from16 v20, v5

    .end local v5    # "positionOfFirstWord":I
    .local v20, "positionOfFirstWord":I
    move-object/from16 v5, v21

    move-object/from16 v21, v6

    .end local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v21, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    move-object/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 1055
    .local v0, "positionOfNextWord":I
    if-eq v12, v0, :cond_a

    aget-object v1, v8, v22

    invoke-static {v7, v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 1059
    :cond_9
    aget-object v1, v8, v22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    move v4, v1

    .end local v12    # "startingPositionForNextWord":I
    .local v1, "startingPositionForNextWord":I
    goto :goto_7

    .line 1057
    .end local v1    # "startingPositionForNextWord":I
    .restart local v12    # "startingPositionForNextWord":I
    :cond_a
    :goto_6
    const/4 v1, 0x0

    move/from16 v17, v1

    move v4, v12

    .line 1061
    .end local v0    # "positionOfNextWord":I
    .end local v12    # "startingPositionForNextWord":I
    .restart local v4    # "startingPositionForNextWord":I
    :goto_7
    move/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v1, v22

    const/4 v12, 0x0

    goto :goto_5

    .line 1053
    .end local v20    # "positionOfFirstWord":I
    .end local v21    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .end local v22    # "wc":I
    .restart local v3    # "wc":I
    .restart local v5    # "positionOfFirstWord":I
    .restart local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_b
    move/from16 v22, v3

    move v12, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 1063
    .end local v3    # "wc":I
    .end local v4    # "startingPositionForNextWord":I
    .end local v5    # "positionOfFirstWord":I
    .end local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local v12    # "startingPositionForNextWord":I
    .restart local v20    # "positionOfFirstWord":I
    .restart local v21    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local v22    # "wc":I
    if-eqz v17, :cond_c

    .line 1064
    return v20

    .line 1043
    .end local v12    # "startingPositionForNextWord":I
    .end local v17    # "match":Z
    .end local v22    # "wc":I
    :cond_c
    add-int/lit8 v4, v20, 0x1

    move-object/from16 v5, v18

    move-object/from16 v6, v21

    const/4 v12, 0x0

    .end local v20    # "positionOfFirstWord":I
    .local v4, "positionOfFirstWord":I
    goto :goto_4

    .line 1046
    .end local v4    # "positionOfFirstWord":I
    .end local v21    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local v5    # "positionOfFirstWord":I
    .restart local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_d
    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 1047
    .end local v5    # "positionOfFirstWord":I
    .end local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local v20    # "positionOfFirstWord":I
    .restart local v21    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :goto_8
    return v9

    .line 1068
    .end local v18    # "searchMode2":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .end local v20    # "positionOfFirstWord":I
    .end local v21    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .local v5, "searchMode2":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .restart local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_e
    return v9

    .line 1004
    .end local v5    # "searchMode2":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .end local v6    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    .end local v10    # "searchInLength":I
    .end local v11    # "searchForWordsCount":I
    .end local v13    # "searchForLength":I
    .end local v14    # "stopSearchingAt":I
    .restart local p5    # "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    :cond_f
    move/from16 v15, p0

    .line 1005
    :goto_9
    return v9
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;

    .line 933
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 20
    .param p0, "startingPosition"    # I
    .param p1, "stopPosition"    # I
    .param p2, "searchIn"    # Ljava/lang/String;
    .param p3, "openingMarkers"    # Ljava/lang/String;
    .param p4, "closingMarkers"    # Ljava/lang/String;
    .param p5, "overridingMarkers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    .line 1191
    .local p6, "searchMode":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/StringUtils$SearchMode;>;"
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const/4 v7, -0x1

    if-nez v2, :cond_0

    .line 1192
    return v7

    .line 1195
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    .line 1197
    .local v8, "searchInLength":I
    if-lt v0, v8, :cond_1

    .line 1198
    return v7

    .line 1201
    :cond_1
    const/4 v9, 0x0

    .line 1202
    .local v9, "c0":C
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1203
    .local v10, "c1":C
    add-int/lit8 v11, v0, 0x1

    if-ge v11, v8, :cond_2

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    .line 1205
    .local v11, "c2":C
    :goto_0
    move/from16 v13, p0

    .local v13, "i":I
    :goto_1
    if-gt v13, v1, :cond_33

    .line 1206
    move v9, v10

    .line 1207
    move v10, v11

    .line 1208
    add-int/lit8 v14, v13, 0x2

    if-ge v14, v8, :cond_3

    add-int/lit8 v14, v13, 0x2

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    move v11, v14

    .line 1210
    const/4 v14, 0x0

    .line 1211
    .local v14, "dashDashCommentImmediateEnd":Z
    const/4 v15, -0x1

    .line 1213
    .local v15, "markerIndex":I
    sget-object v12, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/16 v7, 0x5c

    const/16 v16, 0x1

    if-eqz v12, :cond_5

    if-ne v9, v7, :cond_5

    .line 1214
    add-int/lit8 v13, v13, 0x1

    .line 1216
    move v7, v11

    .line 1217
    .end local v10    # "c1":C
    .local v7, "c1":C
    add-int/lit8 v10, v13, 0x2

    if-ge v10, v8, :cond_4

    add-int/lit8 v10, v13, 0x2

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    move v11, v10

    move v10, v7

    .end local v11    # "c2":C
    .local v10, "c2":C
    goto/16 :goto_19

    .line 1219
    .end local v7    # "c1":C
    .local v10, "c1":C
    .restart local v11    # "c2":C
    :cond_5
    sget-object v12, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move v15, v12

    const/4 v7, -0x1

    if-eq v12, v7, :cond_16

    .line 1221
    const/4 v12, 0x0

    .line 1222
    .local v12, "nestedMarkersCount":I
    move/from16 v17, v9

    .line 1223
    .local v17, "openingMarker":C
    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1224
    .local v7, "closingMarker":C
    move/from16 v0, v17

    move/from16 v17, v12

    .end local v12    # "nestedMarkersCount":I
    .local v0, "openingMarker":C
    .local v17, "nestedMarkersCount":I
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move/from16 v18, v14

    const/4 v14, -0x1

    .end local v14    # "dashDashCommentImmediateEnd":Z
    .local v18, "dashDashCommentImmediateEnd":Z
    if-eq v12, v14, :cond_6

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 1225
    .local v12, "outerIsAnOverridingMarker":Z
    :goto_4
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v1, :cond_13

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v9, v14

    if-ne v14, v7, :cond_7

    if-eqz v17, :cond_13

    .line 1226
    :cond_7
    if-nez v12, :cond_e

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v5, -0x1

    if-eq v14, v5, :cond_e

    .line 1228
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1229
    .local v5, "overridingMarkerIndex":I
    const/4 v14, 0x0

    .line 1230
    .local v14, "overridingNestedMarkersCount":I
    move/from16 v19, v9

    .line 1231
    .local v19, "overridingOpeningMarker":C
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1232
    .local v3, "overridingClosingMarker":C
    :goto_5
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v1, :cond_c

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v9, v4

    if-ne v4, v3, :cond_8

    if-eqz v14, :cond_d

    .line 1234
    :cond_8
    move/from16 v4, v19

    .end local v19    # "overridingOpeningMarker":C
    .local v4, "overridingOpeningMarker":C
    if-ne v9, v4, :cond_9

    .line 1235
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v4

    move-object/from16 v4, p4

    goto :goto_5

    .line 1236
    :cond_9
    if-ne v9, v3, :cond_a

    .line 1237
    add-int/lit8 v14, v14, -0x1

    move/from16 v19, v4

    move-object/from16 v4, p4

    goto :goto_5

    .line 1238
    :cond_a
    move/from16 v19, v3

    .end local v3    # "overridingClosingMarker":C
    .local v19, "overridingClosingMarker":C
    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x5c

    if-ne v9, v3, :cond_b

    .line 1239
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, p4

    goto :goto_5

    .line 1232
    :cond_b
    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, p4

    goto :goto_5

    .end local v4    # "overridingOpeningMarker":C
    .restart local v3    # "overridingClosingMarker":C
    .local v19, "overridingOpeningMarker":C
    :cond_c
    move/from16 v4, v19

    move/from16 v19, v3

    .line 1242
    .end local v3    # "overridingClosingMarker":C
    .end local v5    # "overridingMarkerIndex":I
    .end local v14    # "overridingNestedMarkersCount":I
    .end local v19    # "overridingOpeningMarker":C
    :cond_d
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto :goto_4

    :cond_e
    if-ne v9, v0, :cond_f

    .line 1243
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto :goto_4

    .line 1244
    :cond_f
    if-ne v9, v7, :cond_10

    .line 1245
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto/16 :goto_4

    .line 1246
    :cond_10
    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5c

    if-ne v9, v3, :cond_12

    .line 1247
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto/16 :goto_4

    .line 1246
    :cond_11
    const/16 v3, 0x5c

    .line 1225
    :cond_12
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto/16 :goto_4

    .line 1251
    :cond_13
    add-int/lit8 v3, v13, 0x1

    if-ge v3, v8, :cond_14

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    .line 1252
    .end local v10    # "c1":C
    .local v3, "c1":C
    :goto_6
    add-int/lit8 v4, v13, 0x2

    if-ge v4, v8, :cond_15

    add-int/lit8 v4, v13, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_7

    :cond_15
    const/4 v4, 0x0

    :goto_7
    move v0, v4

    .line 1254
    .end local v7    # "closingMarker":C
    .end local v11    # "c2":C
    .end local v12    # "outerIsAnOverridingMarker":Z
    .end local v17    # "nestedMarkersCount":I
    .local v0, "c2":C
    move v11, v0

    move v10, v3

    goto/16 :goto_19

    .line 1219
    .end local v0    # "c2":C
    .end local v3    # "c1":C
    .end local v18    # "dashDashCommentImmediateEnd":Z
    .restart local v10    # "c1":C
    .restart local v11    # "c2":C
    .local v14, "dashDashCommentImmediateEnd":Z
    :cond_16
    move/from16 v18, v14

    .line 1254
    .end local v14    # "dashDashCommentImmediateEnd":Z
    .restart local v18    # "dashDashCommentImmediateEnd":Z
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x2a

    const/16 v4, 0x2f

    if-eqz v0, :cond_20

    if-ne v9, v4, :cond_20

    if-ne v10, v3, :cond_20

    .line 1255
    const/16 v0, 0x21

    if-eq v11, v0, :cond_1a

    .line 1257
    add-int/lit8 v13, v13, 0x1

    .line 1259
    :goto_8
    add-int/lit8 v13, v13, 0x1

    if-gt v13, v1, :cond_19

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_18

    add-int/lit8 v0, v13, 0x1

    if-ge v0, v8, :cond_17

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    :goto_9
    if-eq v0, v4, :cond_19

    :cond_18
    goto :goto_8

    .line 1262
    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 1266
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    .line 1267
    add-int/lit8 v13, v13, 0x1

    .line 1269
    const/4 v0, 0x1

    .line 1270
    .local v0, "j":I
    :goto_a
    const/4 v3, 0x5

    if-gt v0, v3, :cond_1c

    .line 1271
    add-int v4, v13, v0

    if-ge v4, v8, :cond_1c

    add-int v4, v13, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1272
    goto :goto_b

    .line 1270
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1275
    :cond_1c
    :goto_b
    if-ne v0, v3, :cond_1d

    .line 1276
    add-int/lit8 v13, v13, 0x5

    .line 1280
    .end local v0    # "j":I
    :cond_1d
    :goto_c
    add-int/lit8 v0, v13, 0x1

    if-ge v0, v8, :cond_1e

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_d

    :cond_1e
    const/4 v0, 0x0

    .line 1281
    .end local v10    # "c1":C
    .local v0, "c1":C
    :goto_d
    add-int/lit8 v3, v13, 0x2

    if-ge v3, v8, :cond_1f

    add-int/lit8 v3, v13, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    :goto_e
    move v10, v0

    move v11, v3

    .end local v11    # "c2":C
    .local v3, "c2":C
    goto/16 :goto_19

    .line 1283
    .end local v0    # "c1":C
    .end local v3    # "c2":C
    .restart local v10    # "c1":C
    .restart local v11    # "c2":C
    :cond_20
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-ne v9, v3, :cond_22

    if-ne v10, v4, :cond_22

    .line 1286
    add-int/lit8 v13, v13, 0x1

    .line 1288
    move v0, v11

    .line 1289
    .end local v10    # "c1":C
    .restart local v0    # "c1":C
    add-int/lit8 v3, v13, 0x2

    if-ge v3, v8, :cond_21

    add-int/lit8 v3, v13, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_f

    :cond_21
    const/4 v3, 0x0

    :goto_f
    move v10, v0

    move v11, v3

    .end local v11    # "c2":C
    .restart local v3    # "c2":C
    goto/16 :goto_19

    .line 1291
    .end local v0    # "c1":C
    .end local v3    # "c2":C
    .restart local v10    # "c1":C
    .restart local v11    # "c2":C
    :cond_22
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x2d

    if-ne v9, v0, :cond_25

    if-ne v10, v0, :cond_25

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x3b

    if-ne v11, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_10

    :cond_23
    const/4 v0, 0x0

    :goto_10
    move v14, v0

    .end local v18    # "dashDashCommentImmediateEnd":Z
    .restart local v14    # "dashDashCommentImmediateEnd":Z
    if-nez v0, :cond_26

    if-eqz v11, :cond_26

    goto :goto_11

    .end local v14    # "dashDashCommentImmediateEnd":Z
    .restart local v18    # "dashDashCommentImmediateEnd":Z
    :cond_24
    move/from16 v14, v18

    goto :goto_12

    :cond_25
    move/from16 v14, v18

    .end local v18    # "dashDashCommentImmediateEnd":Z
    .restart local v14    # "dashDashCommentImmediateEnd":Z
    :goto_11
    const/16 v0, 0x23

    if-ne v9, v0, :cond_30

    .line 1294
    :cond_26
    :goto_12
    if-eqz v14, :cond_29

    .line 1296
    add-int/lit8 v13, v13, 0x1

    .line 1297
    add-int/lit8 v13, v13, 0x1

    .line 1299
    add-int/lit8 v0, v13, 0x1

    if-ge v0, v8, :cond_27

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_13

    :cond_27
    const/4 v0, 0x0

    .line 1300
    .end local v10    # "c1":C
    .restart local v0    # "c1":C
    :goto_13
    add-int/lit8 v3, v13, 0x2

    if-ge v3, v8, :cond_28

    add-int/lit8 v3, v13, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_14

    :cond_28
    const/4 v3, 0x0

    :goto_14
    move v10, v0

    move v11, v3

    .end local v11    # "c2":C
    .restart local v3    # "c2":C
    goto :goto_19

    .line 1303
    .end local v0    # "c1":C
    .end local v3    # "c2":C
    .restart local v10    # "c1":C
    .restart local v11    # "c2":C
    :cond_29
    :goto_15
    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0xd

    const/16 v3, 0xa

    if-gt v13, v1, :cond_2a

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v9, v4

    if-eq v4, v3, :cond_2a

    if-eq v9, v0, :cond_2a

    goto :goto_15

    .line 1307
    :cond_2a
    add-int/lit8 v4, v13, 0x1

    if-ge v4, v8, :cond_2b

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_16

    :cond_2b
    const/4 v4, 0x0

    .line 1308
    .end local v10    # "c1":C
    .local v4, "c1":C
    :goto_16
    if-ne v9, v0, :cond_2d

    if-ne v4, v3, :cond_2d

    .line 1310
    add-int/lit8 v13, v13, 0x1

    .line 1311
    add-int/lit8 v0, v13, 0x1

    if-ge v0, v8, :cond_2c

    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_17

    :cond_2c
    const/4 v0, 0x0

    :goto_17
    move v4, v0

    .line 1313
    :cond_2d
    add-int/lit8 v0, v13, 0x2

    if-ge v0, v8, :cond_2e

    add-int/lit8 v0, v13, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_18

    :cond_2e
    const/4 v0, 0x0

    :goto_18
    move v11, v0

    move v10, v4

    .end local v11    # "c2":C
    .local v0, "c2":C
    goto :goto_19

    .line 1291
    .end local v0    # "c2":C
    .end local v4    # "c1":C
    .end local v14    # "dashDashCommentImmediateEnd":Z
    .restart local v10    # "c1":C
    .restart local v11    # "c2":C
    .restart local v18    # "dashDashCommentImmediateEnd":Z
    :cond_2f
    move/from16 v14, v18

    .line 1316
    .end local v18    # "dashDashCommentImmediateEnd":Z
    .restart local v14    # "dashDashCommentImmediateEnd":Z
    :cond_30
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_1a

    .line 1205
    .end local v14    # "dashDashCommentImmediateEnd":Z
    .end local v15    # "markerIndex":I
    :cond_31
    :goto_19
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v7, -0x1

    goto/16 :goto_1

    .line 1317
    .restart local v14    # "dashDashCommentImmediateEnd":Z
    .restart local v15    # "markerIndex":I
    :cond_32
    :goto_1a
    return v13

    .line 1321
    .end local v13    # "i":I
    .end local v14    # "dashDashCommentImmediateEnd":Z
    .end local v15    # "markerIndex":I
    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "quoteChar"    # Ljava/lang/String;
    .param p2, "startFrom"    # I

    .line 2220
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_0

    goto :goto_2

    .line 2224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2226
    .local v1, "lastIndex":I
    move v2, p2

    .line 2227
    .local v2, "beginPos":I
    const/4 v3, -0x1

    .line 2229
    .local v3, "pos":I
    const/4 v4, 0x1

    .line 2230
    .local v4, "next":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 2231
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2232
    if-eq v3, v0, :cond_2

    if-eq v3, v1, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 2235
    :cond_1
    add-int/lit8 v2, v3, 0x2

    goto :goto_0

    .line 2233
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2239
    :cond_3
    return v3

    .line 2221
    .end local v1    # "lastIndex":I
    .end local v2    # "beginPos":I
    .end local v3    # "pos":I
    .end local v4    # "next":Z
    :cond_4
    :goto_2
    return v0
.end method

.method private static isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z
    .locals 1
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "firstCharOfSearchForUc"    # C
    .param p3, "firstCharOfSearchForLc"    # C

    .line 1325
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isCharEqualIgnoreCase(CCC)Z
    .locals 1
    .param p0, "charToCompare"    # C
    .param p1, "compareToCharUC"    # C
    .param p2, "compareToCharLC"    # C

    .line 1329
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 2022
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2026
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2028
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2029
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2030
    const/4 v0, 0x0

    return v0

    .line 2028
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2034
    .end local v2    # "i":I
    :cond_2
    return v0

    .line 2023
    .end local v1    # "length":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "toTest"    # Ljava/lang/String;

    .line 1846
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isStrictlyNumeric(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 2430
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2433
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2434
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2435
    return v0

    .line 2433
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2438
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2431
    :cond_3
    :goto_1
    return v0
.end method

.method public static final isValidIdChar(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 2373
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lastIndexOf([BC)I
    .locals 3
    .param p0, "s"    # [B
    .param p1, "c"    # C

    .line 1816
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 1817
    return v0

    .line 1820
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1821
    aget-byte v2, p0, v1

    if-ne v2, p1, :cond_1

    .line 1822
    return v1

    .line 1820
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1826
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "quoteChar"    # Ljava/lang/String;
    .param p2, "isPedantic"    # Z

    .line 2100
    if-nez p0, :cond_0

    .line 2101
    const/4 v0, 0x0

    return-object v0

    .line 2104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2107
    .local v0, "quoteCharLength":I
    if-eqz v0, :cond_4

    const-string v1, " "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2112
    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2117
    .local v1, "identifierQuoteTrimmed":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2118
    .local v2, "quoteCharPos":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2119
    add-int v3, v2, v0

    .line 2120
    .local v3, "quoteCharNextExpectedPos":I
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 2122
    .local v4, "quoteCharNextPosition":I
    if-ne v4, v3, :cond_2

    .line 2123
    add-int v5, v4, v0

    invoke-virtual {v1, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2128
    .end local v3    # "quoteCharNextExpectedPos":I
    .end local v4    # "quoteCharNextPosition":I
    goto :goto_0

    .line 2130
    :cond_2
    if-gez v2, :cond_3

    .line 2131
    return-object p0

    .line 2135
    .end local v1    # "identifierQuoteTrimmed":Ljava/lang/String;
    .end local v2    # "quoteCharPos":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2108
    :cond_4
    :goto_1
    return-object p0
.end method

.method public static quoteIdentifier(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "isPedantic"    # Z

    .line 2158
    const-string v0, "`"

    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1788
    if-nez p0, :cond_0

    .line 1789
    const/4 v0, 0x0

    return-object v0

    .line 1792
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1794
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1796
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1797
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 1800
    :cond_1
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    .line 1802
    .local v1, "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    if-eqz v1, :cond_2

    .line 1803
    invoke-virtual {v1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 1806
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1807
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v1    # "converter":Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "E":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 1812
    .end local v0    # "E":Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static sanitizeProcOrFuncName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .line 1975
    if-eqz p0, :cond_1

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1979
    :cond_0
    return-object p0

    .line 1976
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .param p0, "stringToSplit"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "openingMarkers"    # Ljava/lang/String;
    .param p3, "closingMarkers"    # Ljava/lang/String;
    .param p4, "overridingMarkers"    # Ljava/lang/String;
    .param p5, "trim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1418
    if-nez p0, :cond_0

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1422
    :cond_0
    if-eqz p1, :cond_5

    .line 1426
    const/4 v0, 0x0

    .line 1427
    .local v0, "delimPos":I
    const/4 v1, 0x0

    .line 1429
    .local v1, "currentPos":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .local v2, "splitTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    move v0, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1433
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1435
    .local v3, "token":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 1436
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1439
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    add-int/lit8 v1, v0, 0x1

    .line 1441
    .end local v3    # "token":Ljava/lang/String;
    goto :goto_0

    .line 1443
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1444
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1446
    .restart local v3    # "token":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 1447
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1450
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    .end local v3    # "token":Ljava/lang/String;
    :cond_4
    return-object v2

    .line 1423
    .end local v0    # "delimPos":I
    .end local v1    # "currentPos":I
    .end local v2    # "splitTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p0, "stringToSplit"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "openingMarkers"    # Ljava/lang/String;
    .param p3, "closingMarkers"    # Ljava/lang/String;
    .param p4, "trim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1391
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p0, "stringToSplit"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "trim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1347
    if-nez p0, :cond_0

    .line 1348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1351
    :cond_0
    if-eqz p1, :cond_3

    .line 1355
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1359
    .local v1, "splitTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "token":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1363
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1366
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    .end local v2    # "token":Ljava/lang/String;
    goto :goto_0

    .line 1369
    :cond_2
    return-object v1

    .line 1352
    .end local v0    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v1    # "splitTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "catalog"    # Ljava/lang/String;
    .param p2, "quoteId"    # Ljava/lang/String;
    .param p3, "isNoBslashEscSet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1998
    if-eqz p0, :cond_4

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2002
    :cond_0
    const/4 v0, -0x1

    .line 2003
    .local v0, "dotIndex":I
    const-string v1, " "

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2004
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2006
    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_WS:Ljava/util/Set;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;

    :goto_0
    move-object v6, v2

    const-string v3, "."

    move-object v2, p0

    move-object v4, p2

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    .line 2009
    :goto_1
    move-object v1, p1

    .line 2011
    .local v1, "database":Ljava/lang/String;
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    .line 2012
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "entityName":Ljava/lang/String;
    goto :goto_2

    .line 2015
    .end local v2    # "entityName":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2018
    .restart local v2    # "entityName":Ljava/lang/String;
    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v3

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1999
    .end local v0    # "dotIndex":I
    .end local v1    # "database":Ljava/lang/String;
    .end local v2    # "entityName":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static startsWith([BLjava/lang/String;)Z
    .locals 5
    .param p0, "dataFrom"    # [B
    .param p1, "chars"    # Ljava/lang/String;

    .line 1457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1459
    .local v0, "charsLength":I
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 1460
    return v2

    .line 1462
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1463
    aget-byte v3, p0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1464
    return v2

    .line 1462
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1467
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "startAt"    # I
    .param p2, "searchFor"    # Ljava/lang/String;

    .line 1485
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;

    .line 1500
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;

    .line 1516
    if-nez p0, :cond_1

    .line 1517
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1520
    :cond_1
    const/4 v0, 0x0

    .line 1521
    .local v0, "beginPos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1523
    .local v1, "inLength":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1524
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1525
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1526
    goto :goto_2

    .line 1523
    .end local v2    # "c":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1530
    :cond_3
    :goto_2
    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # [Ljava/lang/String;

    .line 1590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1591
    aget-object v1, p1, v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1592
    return v0

    .line 1590
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1595
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;

    .line 1545
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;
    .param p2, "beginPos"    # I

    .line 1563
    if-nez p0, :cond_1

    .line 1564
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1567
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1569
    .local v0, "inLength":I
    :goto_1
    if-ge p2, v0, :cond_3

    .line 1570
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1571
    goto :goto_2

    .line 1569
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1575
    :cond_3
    :goto_2
    invoke-static {p0, p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 16
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "stringOpens"    # Ljava/lang/String;
    .param p2, "stringCloses"    # Ljava/lang/String;
    .param p3, "slashStarComments"    # Z
    .param p4, "slashSlashComments"    # Z
    .param p5, "hashComments"    # Z
    .param p6, "dashDashComments"    # Z

    .line 1871
    move-object/from16 v1, p0

    if-nez v1, :cond_0

    .line 1872
    const/4 v0, 0x0

    return-object v0

    .line 1875
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v0

    .line 1880
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1882
    .local v3, "sourceReader":Ljava/io/StringReader;
    const/4 v0, 0x0

    .line 1883
    .local v0, "contextMarker":I
    const/4 v4, 0x0

    .line 1884
    .local v4, "escaped":Z
    const/4 v5, -0x1

    .line 1886
    .local v5, "markerTypeFound":I
    const/4 v6, 0x0

    .line 1888
    .local v6, "ind":I
    const/4 v7, 0x0

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v0

    .line 1891
    .end local v0    # "contextMarker":I
    .local v5, "contextMarker":I
    .local v6, "markerTypeFound":I
    .local v7, "ind":I
    .local v8, "currentChar":I
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v8, v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_10

    .line 1893
    if-eq v6, v9, :cond_2

    move-object/from16 v10, p2

    :try_start_1
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v0, :cond_3

    if-nez v4, :cond_3

    .line 1894
    const/4 v0, 0x0

    .line 1895
    .end local v5    # "contextMarker":I
    .restart local v0    # "contextMarker":I
    const/4 v5, -0x1

    move-object/from16 v11, p1

    move v6, v5

    move v5, v0

    .end local v6    # "markerTypeFound":I
    .local v5, "markerTypeFound":I
    goto :goto_1

    .line 1955
    .end local v0    # "contextMarker":I
    .local v5, "contextMarker":I
    .restart local v6    # "markerTypeFound":I
    :catch_0
    move-exception v0

    move-object/from16 v11, p1

    goto/16 :goto_8

    .line 1893
    :cond_2
    move-object/from16 v10, p2

    .line 1896
    :cond_3
    move-object/from16 v11, p1

    :try_start_2
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v7, v0

    if-eq v0, v9, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 1897
    move v0, v7

    .line 1898
    .end local v6    # "markerTypeFound":I
    .local v0, "markerTypeFound":I
    move v5, v8

    move v6, v0

    .line 1901
    .end local v0    # "markerTypeFound":I
    .restart local v6    # "markerTypeFound":I
    :cond_4
    :goto_1
    const/16 v0, 0xd

    const/16 v12, 0xa

    if-nez v5, :cond_b

    const/16 v13, 0x2f

    if-ne v8, v13, :cond_b

    if-nez p4, :cond_5

    if-eqz p3, :cond_b

    .line 1902
    :cond_5
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v14

    move v8, v14

    .line 1903
    const/16 v14, 0x2a

    if-ne v8, v14, :cond_a

    if-eqz p3, :cond_a

    .line 1904
    const/4 v9, 0x0

    .line 1905
    .local v9, "prevChar":I
    :goto_2
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v15

    move v8, v15

    if-ne v15, v13, :cond_6

    if-eq v9, v14, :cond_1

    .line 1906
    :cond_6
    if-ne v8, v0, :cond_7

    .line 1908
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v15

    move v8, v15

    .line 1909
    if-ne v8, v12, :cond_8

    .line 1910
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v15

    move v8, v15

    goto :goto_3

    .line 1913
    :cond_7
    if-ne v8, v12, :cond_8

    .line 1915
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v15

    move v8, v15

    .line 1918
    :cond_8
    :goto_3
    if-gez v8, :cond_9

    .line 1919
    goto :goto_0

    .line 1921
    :cond_9
    move v9, v8

    goto :goto_2

    .line 1924
    .end local v9    # "prevChar":I
    :cond_a
    if-ne v8, v13, :cond_f

    if-eqz p4, :cond_f

    .line 1925
    :goto_4
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v13

    move v8, v13

    if-eq v13, v12, :cond_f

    if-eq v8, v0, :cond_f

    if-ltz v8, :cond_f

    goto :goto_4

    .line 1928
    :cond_b
    if-nez v5, :cond_c

    const/16 v13, 0x23

    if-ne v8, v13, :cond_c

    if-eqz p5, :cond_c

    .line 1930
    :goto_5
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v13

    move v8, v13

    if-eq v13, v12, :cond_f

    if-eq v8, v0, :cond_f

    if-ltz v8, :cond_f

    goto :goto_5

    .line 1932
    :cond_c
    if-nez v5, :cond_f

    const/16 v13, 0x2d

    if-ne v8, v13, :cond_f

    if-eqz p6, :cond_f

    .line 1933
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v14

    move v8, v14

    .line 1935
    if-eq v8, v9, :cond_e

    if-eq v8, v13, :cond_d

    goto :goto_7

    .line 1947
    :cond_d
    :goto_6
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v13

    move v8, v13

    if-eq v13, v12, :cond_f

    if-eq v8, v0, :cond_f

    if-ltz v8, :cond_f

    goto :goto_6

    .line 1936
    :cond_e
    :goto_7
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1938
    if-eq v8, v9, :cond_1

    .line 1939
    int-to-char v0, v8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1951
    :cond_f
    if-eq v8, v9, :cond_1

    .line 1952
    int-to-char v0, v8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1955
    :catch_1
    move-exception v0

    goto :goto_8

    .line 1957
    :cond_10
    move-object/from16 v11, p1

    move-object/from16 v10, p2

    goto :goto_8

    .line 1955
    :catch_2
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    .line 1959
    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 1604
    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWith([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->endsWith([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1607
    .local v0, "totalToStrip":I
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 1608
    .local v1, "enclosedLength":I
    new-array v2, v1, [B

    .line 1610
    .local v2, "enclosed":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1611
    .local v3, "startPos":I
    array-length v4, v2

    .line 1612
    .local v4, "numToCopy":I
    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1614
    return-object v2

    .line 1616
    .end local v0    # "totalToStrip":I
    .end local v1    # "enclosedLength":I
    .end local v2    # "enclosed":[B
    .end local v3    # "startPos":I
    .end local v4    # "numToCopy":I
    :cond_0
    return-object p0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # [B

    .line 1628
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 1644
    new-array v0, p2, [C

    .line 1645
    .local v0, "charArray":[C
    move v1, p1

    .line 1647
    .local v1, "readpoint":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 1648
    aget-byte v3, p0, v1

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 1649
    add-int/lit8 v1, v1, 0x1

    .line 1647
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1652
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [B

    .line 2276
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2278
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2279
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    .line 2283
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 2264
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2266
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2267
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v0

    .line 2271
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2251
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2253
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2257
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2259
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "quoteChar"    # Ljava/lang/String;

    .line 2183
    if-nez p0, :cond_0

    .line 2184
    const/4 v0, 0x0

    return-object v0

    .line 2187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2190
    .local v0, "quoteCharLength":I
    if-eqz v0, :cond_5

    const-string v1, " "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2195
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2200
    .local v1, "identifierQuoteTrimmed":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2201
    .local v2, "quoteCharPos":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2202
    add-int v3, v2, v0

    .line 2203
    .local v3, "quoteCharNextExpectedPos":I
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 2205
    .local v4, "quoteCharNextPosition":I
    if-ne v4, v3, :cond_2

    .line 2206
    add-int v5, v4, v0

    invoke-virtual {v1, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2211
    .end local v3    # "quoteCharNextExpectedPos":I
    .end local v4    # "quoteCharNextPosition":I
    goto :goto_0

    .line 2209
    .restart local v3    # "quoteCharNextExpectedPos":I
    .restart local v4    # "quoteCharNextPosition":I
    :cond_2
    return-object p0

    .line 2213
    .end local v3    # "quoteCharNextExpectedPos":I
    .end local v4    # "quoteCharNextPosition":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2216
    .end local v1    # "identifierQuoteTrimmed":Ljava/lang/String;
    .end local v2    # "quoteCharPos":I
    :cond_4
    return-object p0

    .line 2191
    :cond_5
    :goto_1
    return-object p0
.end method

.method public static wildCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;

    .line 1664
    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "searchIn"    # Ljava/lang/String;
    .param p1, "searchFor"    # Ljava/lang/String;

    .line 1682
    const/4 v0, -0x1

    if-eqz p0, :cond_19

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 1686
    :cond_0
    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1687
    return v2

    .line 1690
    :cond_1
    const/4 v1, 0x0

    .line 1691
    .local v1, "searchForPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1693
    .local v3, "searchForEnd":I
    const/4 v4, 0x0

    .line 1694
    .local v4, "searchInPos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1696
    .local v5, "searchInEnd":I
    const/4 v6, -0x1

    .line 1698
    .local v6, "result":I
    :cond_2
    const/4 v7, 0x1

    if-eq v1, v3, :cond_17

    .line 1699
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    const/16 v10, 0x25

    const/16 v11, 0x5f

    if-eq v8, v10, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_8

    .line 1700
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v1, 0x1

    if-eq v8, v3, :cond_3

    .line 1701
    add-int/lit8 v1, v1, 0x1

    .line 1704
    :cond_3
    if-eq v4, v5, :cond_7

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "searchForPos":I
    .local v8, "searchForPos":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "searchInPos":I
    .local v9, "searchInPos":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v1, v4, :cond_4

    move v1, v8

    move v4, v9

    goto :goto_1

    .line 1709
    :cond_4
    if-ne v8, v3, :cond_6

    .line 1710
    if-eq v9, v5, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 1713
    :cond_6
    const/4 v6, 0x1

    move v1, v8

    move v4, v9

    goto :goto_0

    .line 1706
    .end local v8    # "searchForPos":I
    .end local v9    # "searchInPos":I
    .restart local v1    # "searchForPos":I
    .restart local v4    # "searchInPos":I
    :cond_7
    :goto_1
    return v7

    .line 1716
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_c

    .line 1718
    :cond_9
    if-ne v4, v5, :cond_a

    .line 1719
    return v6

    .line 1721
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 1722
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_9

    .line 1724
    :cond_b
    if-ne v1, v3, :cond_c

    .line 1725
    goto :goto_5

    .line 1729
    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 1730
    add-int/2addr v1, v7

    .line 1733
    :goto_2
    if-eq v1, v3, :cond_f

    .line 1734
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_d

    .line 1735
    goto :goto_3

    .line 1738
    :cond_d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_f

    .line 1739
    if-ne v4, v5, :cond_e

    .line 1740
    return v0

    .line 1742
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 1733
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1749
    :cond_f
    if-ne v1, v3, :cond_10

    .line 1750
    return v2

    .line 1753
    :cond_10
    if-ne v4, v5, :cond_11

    .line 1754
    return v0

    .line 1758
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v8, v2

    .local v8, "cmp":C
    if-ne v2, v9, :cond_12

    add-int/lit8 v2, v1, 0x1

    if-eq v2, v3, :cond_12

    .line 1759
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1762
    :cond_12
    add-int/2addr v7, v1

    .line 1765
    .end local v1    # "searchForPos":I
    .local v7, "searchForPos":I
    :goto_4
    if-eq v4, v5, :cond_13

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_13

    .line 1766
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1769
    :cond_13
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "searchInPos":I
    .local v1, "searchInPos":I
    if-ne v4, v5, :cond_14

    .line 1770
    return v0

    .line 1773
    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1774
    .local v2, "tmp":I
    if-gtz v2, :cond_15

    .line 1775
    return v2

    .line 1778
    .end local v2    # "tmp":I
    :cond_15
    if-ne v1, v5, :cond_16

    .line 1780
    return v0

    .line 1778
    :cond_16
    move v4, v1

    goto :goto_4

    .line 1784
    .end local v7    # "searchForPos":I
    .end local v8    # "cmp":C
    .local v1, "searchForPos":I
    .restart local v4    # "searchInPos":I
    :cond_17
    :goto_5
    if-eq v4, v5, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2

    .line 1683
    .end local v1    # "searchForPos":I
    .end local v3    # "searchForEnd":I
    .end local v4    # "searchInPos":I
    .end local v5    # "searchInEnd":I
    .end local v6    # "result":I
    :cond_19
    :goto_6
    return v0
.end method
