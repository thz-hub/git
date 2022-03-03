.class public Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;
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
    name = "ComparableWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ":",
        "Ljava/lang/Comparable<",
        "-TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 494
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData;

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 498
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->key:Ljava/lang/Object;

    .line 500
    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->value:Ljava/lang/Object;

    .line 501
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 512
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    .local p1, "other":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 494
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->compareTo(Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 517
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 518
    return v0

    .line 521
    :cond_0
    if-ne p1, p0, :cond_1

    .line 522
    const/4 v0, 0x1

    return v0

    .line 525
    :cond_1
    instance-of v1, p1, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    if-nez v1, :cond_2

    .line 526
    return v0

    .line 529
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, "otherKey":Ljava/lang/Object;
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->key:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 508
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 535
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 541
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;, "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{KEY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; VALUE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
