.class Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;
.super Ljava/lang/Object;
.source "PreparedStatement.java"

# interfaces
.implements Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppendingBatchVisitor"
.end annotation


# instance fields
.field statementComponents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 1
    .param p1, "values"    # [B

    .line 624
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 626
    return-object p0
.end method

.method public decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 637
    return-object p0
.end method

.method public getStaticSqlStrings()[[B
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 658
    .local v0, "asBytes":[[B
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 660
    return-object v0
.end method

.method public increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 0

    .line 631
    return-object p0
.end method

.method public merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 5
    .param p1, "front"    # [B
    .param p2, "back"    # [B

    .line 641
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    .line 642
    .local v0, "mergedLength":I
    new-array v1, v0, [B

    .line 643
    .local v1, "merged":[B
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    array-length v2, p1

    array-length v4, p2

    invoke-static {p2, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 646
    return-object p0
.end method

.method public mergeWithLast([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 1
    .param p1, "values"    # [B

    .line 650
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    return-object v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 667
    .local v2, "comp":[B
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 669
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "comp":[B
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
