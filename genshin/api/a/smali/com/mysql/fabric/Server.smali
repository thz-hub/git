.class public Lcom/mysql/fabric/Server;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mysql/fabric/Server;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private groupName:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private mode:Lcom/mysql/fabric/ServerMode;

.field private port:I

.field private role:Lcom/mysql/fabric/ServerRole;

.field private uuid:Ljava/lang/String;

.field private weight:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mysql/fabric/ServerMode;Lcom/mysql/fabric/ServerRole;D)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "mode"    # Lcom/mysql/fabric/ServerMode;
    .param p6, "role"    # Lcom/mysql/fabric/ServerRole;
    .param p7, "weight"    # D

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mysql/fabric/Server;->groupName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/mysql/fabric/Server;->port:I

    .line 43
    iput-object p5, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    .line 44
    iput-object p6, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    .line 45
    iput-wide p7, p0, Lcom/mysql/fabric/Server;->weight:D

    .line 46
    if-eqz p2, :cond_5

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 47
    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    if-lez p4, :cond_3

    .line 49
    if-eqz p5, :cond_2

    .line 50
    if-eqz p6, :cond_1

    .line 51
    const-wide/16 v0, 0x0

    cmpl-double v2, p7, v0

    if-lez v2, :cond_0

    .line 52
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/mysql/fabric/Server;)I
    .locals 2
    .param p1, "other"    # Lcom/mysql/fabric/Server;

    .line 114
    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/mysql/fabric/Server;

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/Server;->compareTo(Lcom/mysql/fabric/Server;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    instance-of v0, p1, Lcom/mysql/fabric/Server;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mysql/fabric/Server;

    .line 105
    .local v0, "s":Lcom/mysql/fabric/Server;
    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mysql/fabric/Server;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mysql/fabric/Server;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/mysql/fabric/ServerMode;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/mysql/fabric/Server;->port:I

    return v0
.end method

.method public getRole()Lcom/mysql/fabric/ServerRole;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/mysql/fabric/Server;->weight:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMaster()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSlave()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SECONDARY:Lcom/mysql/fabric/ServerRole;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SPARE:Lcom/mysql/fabric/ServerRole;

    if-ne v0, v1, :cond_0

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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/mysql/fabric/Server;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/mysql/fabric/Server;->weight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Server[%s, %s:%d, %s, %s, weight=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
