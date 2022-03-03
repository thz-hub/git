.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;
.super Ljava/lang/Object;
.source "MysqlXid.java"

# interfaces
.implements Ljavax/transaction/xa/Xid;


# instance fields
.field hash:I

.field myBqual:[B

.field myFormatId:I

.field myGtrid:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1
    .param p1, "gtrid"    # [B
    .param p2, "bqual"    # [B
    .param p3, "formatId"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    .line 42
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    .line 43
    iput-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    .line 44
    iput p3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myFormatId:I

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "another"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Ljavax/transaction/xa/Xid;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 51
    move-object v0, p1

    check-cast v0, Ljavax/transaction/xa/Xid;

    .line 53
    .local v0, "anotherAsXid":Ljavax/transaction/xa/Xid;
    iget v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myFormatId:I

    invoke-interface {v0}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 54
    return v1

    .line 57
    :cond_0
    invoke-interface {v0}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v2

    .line 58
    .local v2, "otherBqual":[B
    invoke-interface {v0}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object v3

    .line 60
    .local v3, "otherGtrid":[B
    if-eqz v3, :cond_6

    array-length v4, v3

    iget-object v5, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    array-length v5, v5

    if-ne v4, v5, :cond_6

    .line 61
    array-length v4, v3

    .line 63
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 64
    aget-byte v6, v3, v5

    iget-object v7, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    aget-byte v7, v7, v5

    if-eq v6, v7, :cond_1

    .line 65
    return v1

    .line 63
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    .end local v5    # "i":I
    :cond_2
    if-eqz v2, :cond_5

    array-length v5, v2

    iget-object v6, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    array-length v6, v6

    if-ne v5, v6, :cond_5

    .line 70
    array-length v4, v2

    .line 72
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 73
    aget-byte v6, v2, v5

    iget-object v7, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    aget-byte v7, v7, v5

    if-eq v6, v7, :cond_3

    .line 74
    return v1

    .line 72
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 81
    .end local v5    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 78
    :cond_5
    return v1

    .line 85
    .end local v0    # "anotherAsXid":Ljavax/transaction/xa/Xid;
    .end local v2    # "otherBqual":[B
    .end local v3    # "otherGtrid":[B
    .end local v4    # "length":I
    :cond_6
    return v1
.end method

.method public getBranchQualifier()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myFormatId:I

    return v0
.end method

.method public getGlobalTransactionId()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 104
    iget v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    mul-int/lit8 v2, v2, 0x21

    aget-byte v1, v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
