.class Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundCacheKey"
.end annotation


# instance fields
.field final componentOne:Ljava/lang/String;

.field final componentTwo:Ljava/lang/String;

.field final hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "partOne"    # Ljava/lang/String;
    .param p2, "partTwo"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    .line 202
    const/16 v0, 0x11

    .line 203
    .local v0, "hc":I
    mul-int/lit8 v1, v0, 0x1f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v1, v3

    .line 204
    .end local v0    # "hc":I
    .local v1, "hc":I
    mul-int/lit8 v0, v1, 0x1f

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 205
    .end local v1    # "hc":I
    .restart local v0    # "hc":I
    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->hashCode:I

    .line 206
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 215
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 216
    return v0

    .line 218
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    .line 220
    .local v2, "another":Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 221
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 224
    .end local v2    # "another":Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->hashCode:I

    return v0
.end method
