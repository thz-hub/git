.class Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;
.super Ljava/io/InputStream;
.source "BlobFromLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/BlobFromLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocatorInputStream"
.end annotation


# instance fields
.field currentPositionInBlob:J

.field length:J

.field pStmt:Ljava/sql/PreparedStatement;

.field final synthetic this$0:Lcom/mysql/jdbc/BlobFromLocator;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/BlobFromLocator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 529
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 534
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 535
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->createGetBytesStatement()Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 536
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/BlobFromLocator;JJ)V
    .locals 7
    .param p2, "pos"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 529
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 540
    add-long v0, p2, p4

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 541
    iput-wide p2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 542
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v0

    .line 544
    .local v0, "blobLength":J
    add-long v2, p2, p4

    const-string v4, "S1009"

    cmp-long v5, v2, v0

    if-gtz v5, :cond_2

    .line 550
    const-wide/16 v2, 0x1

    const-string v5, "Blob.invalidStreamPos"

    cmp-long v6, p2, v2

    if-ltz v6, :cond_1

    .line 555
    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 559
    return-void

    .line 556
    :cond_0
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    invoke-static {v2, v4, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 551
    :cond_1
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    invoke-static {v2, v4, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 545
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Blob.invalidStreamLength"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    invoke-static {v2, v4, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 652
    return-void
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iget-wide v6, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v8, -0x1

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    .line 564
    return v8

    .line 568
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v5, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const/4 v2, 0x1

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v0

    .line 570
    .local v0, "asBytes":[B
    if-nez v0, :cond_1

    .line 571
    return v8

    .line 574
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, v0, v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 575
    .end local v0    # "asBytes":[B
    :catch_0
    move-exception v0

    .line 576
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([B)I
    .locals 10
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    iget-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iget-wide v6, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v8, -0x1

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    .line 616
    return v8

    .line 620
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v5, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    add-long/2addr v0, v2

    array-length v2, p1

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v0

    .line 622
    .local v0, "asBytes":[B
    if-nez v0, :cond_1

    .line 623
    return v8

    .line 626
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 630
    array-length v1, v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 631
    .end local v0    # "asBytes":[B
    :catch_0
    move-exception v0

    .line 632
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iget-wide v6, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v8, -0x1

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    .line 588
    return v8

    .line 592
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v5, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    add-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1, p3}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v0

    .line 594
    .local v0, "asBytes":[B
    if-nez v0, :cond_1

    .line 595
    return v8

    .line 598
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iget-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 602
    array-length v1, v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 603
    .end local v0    # "asBytes":[B
    :catch_0
    move-exception v0

    .line 604
    .local v0, "sqlEx":Ljava/sql/SQLException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
