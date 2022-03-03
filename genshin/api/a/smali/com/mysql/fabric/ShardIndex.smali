.class public Lcom/mysql/fabric/ShardIndex;
.super Ljava/lang/Object;
.source "ShardIndex.java"


# instance fields
.field private bound:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private shardId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "bound"    # Ljava/lang/String;
    .param p2, "shardId"    # Ljava/lang/Integer;
    .param p3, "groupName"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mysql/fabric/ShardIndex;->bound:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/mysql/fabric/ShardIndex;->shardId:Ljava/lang/Integer;

    .line 38
    iput-object p3, p0, Lcom/mysql/fabric/ShardIndex;->groupName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getBound()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mysql/fabric/ShardIndex;->bound:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mysql/fabric/ShardIndex;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getShardId()Ljava/lang/Integer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mysql/fabric/ShardIndex;->shardId:Ljava/lang/Integer;

    return-object v0
.end method
