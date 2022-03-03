.class public Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TableMetaDataKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field tableCat:Ljava/lang/String;

.field tableName:Ljava/lang/String;

.field tableSchem:Ljava/lang/String;

.field tableType:Ljava/lang/String;

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 440
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData;

    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "tableType"    # Ljava/lang/String;
    .param p3, "tableCat"    # Ljava/lang/String;
    .param p4, "tableSchem"    # Ljava/lang/String;
    .param p5, "tableName"    # Ljava/lang/String;

    .line 446
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const-string p1, ""

    if-nez p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableType:Ljava/lang/String;

    .line 448
    if-nez p3, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableCat:Ljava/lang/String;

    .line 449
    if-nez p4, :cond_2

    move-object v0, p1

    goto :goto_2

    :cond_2
    move-object v0, p4

    :goto_2
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableSchem:Ljava/lang/String;

    .line 450
    if-nez p5, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, p5

    :goto_3
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableName:Ljava/lang/String;

    .line 451
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;)I
    .locals 3
    .param p1, "tablesKey"    # Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    .line 456
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableType:Ljava/lang/String;

    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "compareResult":I
    if-eqz v0, :cond_0

    .line 457
    return v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableCat:Ljava/lang/String;

    iget-object v2, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableCat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_1

    .line 460
    return v1

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableSchem:Ljava/lang/String;

    iget-object v2, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableSchem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_2

    .line 463
    return v1

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableName:Ljava/lang/String;

    iget-object v2, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 440
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 470
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 471
    return v0

    .line 474
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 475
    return v1

    .line 478
    :cond_1
    instance-of v2, p1, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    if-nez v2, :cond_2

    .line 479
    return v0

    .line 481
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
