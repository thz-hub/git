.class public Lcom/mysql/fabric/FabricStateResponse;
.super Ljava/lang/Object;
.source "FabricStateResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private expireTimeMillis:J

.field private secsTtl:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 5
    .param p2, "secsTtl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mysql/fabric/FabricStateResponse;->data:Ljava/lang/Object;

    .line 35
    iput p2, p0, Lcom/mysql/fabric/FabricStateResponse;->secsTtl:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/fabric/FabricStateResponse;->expireTimeMillis:J

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0
    .param p2, "secsTtl"    # I
    .param p3, "presetExpireTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IJ)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mysql/fabric/FabricStateResponse;->data:Ljava/lang/Object;

    .line 41
    iput p2, p0, Lcom/mysql/fabric/FabricStateResponse;->secsTtl:I

    .line 42
    iput-wide p3, p0, Lcom/mysql/fabric/FabricStateResponse;->expireTimeMillis:J

    .line 43
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<TT;>;"
    iget-object v0, p0, Lcom/mysql/fabric/FabricStateResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpireTimeMillis()J
    .locals 2

    .line 57
    .local p0, "this":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<TT;>;"
    iget-wide v0, p0, Lcom/mysql/fabric/FabricStateResponse;->expireTimeMillis:J

    return-wide v0
.end method

.method public getTtl()I
    .locals 1

    .line 50
    .local p0, "this":Lcom/mysql/fabric/FabricStateResponse;, "Lcom/mysql/fabric/FabricStateResponse<TT;>;"
    iget v0, p0, Lcom/mysql/fabric/FabricStateResponse;->secsTtl:I

    return v0
.end method
