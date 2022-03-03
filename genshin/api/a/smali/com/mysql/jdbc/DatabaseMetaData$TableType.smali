.class public final enum Lcom/mysql/jdbc/DatabaseMetaData$TableType;
.super Ljava/lang/Enum;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/jdbc/DatabaseMetaData$TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;


# instance fields
.field private name:Ljava/lang/String;

.field private nameAsBytes:[B

.field private synonyms:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 549
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "LOCAL_TEMPORARY"

    const/4 v2, 0x0

    const-string v3, "LOCAL TEMPORARY"

    invoke-direct {v0, v1, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v3, "SYSTEM_TABLE"

    const/4 v4, 0x1

    const-string v5, "SYSTEM TABLE"

    invoke-direct {v1, v3, v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v5, "SYSTEM_VIEW"

    const/4 v6, 0x2

    const-string v7, "SYSTEM VIEW"

    invoke-direct {v3, v5, v6, v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v7, "BASE TABLE"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "TABLE"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v8, v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    .line 550
    new-instance v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v8, "VIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v8, v10, v8}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v8, v11, v12, v11}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    .line 548
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v9

    aput-object v7, v11, v10

    aput-object v8, v11, v12

    sput-object v11, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "tableTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "tableTypeName"    # Ljava/lang/String;
    .param p4, "tableTypeSynonyms"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 561
    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->name:Ljava/lang/String;

    .line 562
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->nameAsBytes:[B

    .line 563
    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->synonyms:[Ljava/lang/String;

    .line 564
    return-void
.end method

.method static getTableTypeCompliantWith(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 5
    .param p0, "tableTypeName"    # Ljava/lang/String;

    .line 602
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v0

    .local v0, "arr$":[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 603
    .local v3, "tableType":Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    invoke-virtual {v3, p0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->compliesWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    return-object v3

    .line 602
    .end local v3    # "tableType":Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "arr$":[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object v0
.end method

.method static getTableTypeEqualTo(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 5
    .param p0, "tableTypeName"    # Ljava/lang/String;

    .line 579
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v0

    .local v0, "arr$":[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 580
    .local v3, "tableType":Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    invoke-virtual {v3, p0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    return-object v3

    .line 579
    .end local v3    # "tableType":Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v0    # "arr$":[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 548
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 1

    .line 548
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/DatabaseMetaData$TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object v0
.end method


# virtual methods
.method asBytes()[B
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->nameAsBytes:[B

    return-object v0
.end method

.method compliesWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tableTypeName"    # Ljava/lang/String;

    .line 588
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 589
    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->synonyms:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->synonyms:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 593
    .local v4, "synonym":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 594
    return v1

    .line 592
    .end local v4    # "synonym":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method equalsTo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tableTypeName"    # Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->name:Ljava/lang/String;

    return-object v0
.end method
