.class public Lcom/mysql/jdbc/ReplicationConnectionGroupManager;
.super Ljava/lang/Object;
.source "ReplicationConnectionGroupManager.java"


# static fields
.field private static GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ReplicationConnectionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static hasRegisteredJmx:Z

.field private static mbean:Lcom/mysql/jdbc/jmx/ReplicationGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;

    invoke-direct {v0}, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/ReplicationGroupManager;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->hasRegisteredJmx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 79
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 80
    .local v2, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->addSlaveHost(Ljava/lang/String;)V

    .end local v2    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 82
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static getActiveConnectionCount(Ljava/lang/String;)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;

    .line 193
    const-wide/16 v0, 0x0

    .line 194
    .local v0, "connections":J
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 195
    .local v2, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 196
    .local v4, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getActiveConnectionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 198
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public static getConnectionCountWithHostAsMaster(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "groupFilter"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "total":I
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 159
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 160
    .local v3, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getConnectionCountWithHostAsMaster(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .end local v3    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 162
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public static getConnectionCountWithHostAsSlave(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "groupFilter"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "total":I
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 150
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 151
    .local v3, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getConnectionCountWithHostAsSlave(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .end local v3    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 153
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public static getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    return-object v0
.end method

.method public static declared-synchronized getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .locals 3
    .param p0, "groupName"    # Ljava/lang/String;

    const-class v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnectionGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    :cond_0
    :try_start_1
    new-instance v1, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "group":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    sget-object v2, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit v0

    return-object v1

    .line 40
    .end local v1    # "group":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .end local p0    # "groupName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/mysql/jdbc/ReplicationConnectionGroup;",
            ">;"
        }
    .end annotation

    .line 63
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    sget-object v1, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 71
    .local v1, "o":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    return-object v0

    .line 64
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    .end local v1    # "o":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    .restart local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    sget-object v1, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    return-object v0
.end method

.method public static getMasterHosts(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p0, "groupFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 176
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 178
    .local v3, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 180
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    :cond_0
    return-object v1
.end method

.method public static getNumberOfMasterPromotion(Ljava/lang/String;)I
    .locals 8
    .param p0, "groupFilter"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "total":I
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 141
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 142
    .local v3, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    int-to-long v4, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getNumberOfSlavePromotions()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    .end local v3    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 144
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public static getRegisteredReplicationConnectionGroups()Ljava/lang/String;
    .locals 6

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 127
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 129
    .local v2, "sep":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 130
    .local v4, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "group":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, ","

    .line 134
    .end local v4    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .end local v5    # "group":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getSlaveHosts(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p0, "groupFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 167
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 169
    .local v3, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 171
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    :cond_0
    return-object v1
.end method

.method public static getSlavePromotionCount(Ljava/lang/String;)J
    .locals 8
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 104
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    const-wide/16 v1, 0x0

    .line 105
    .local v1, "promoted":J
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 106
    .local v4, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getNumberOfSlavePromotions()J

    move-result-wide v5

    .line 107
    .local v5, "tmp":J
    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    .line 108
    move-wide v1, v5

    .line 110
    .end local v4    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    .end local v5    # "tmp":J
    :cond_0
    goto :goto_0

    .line 111
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v1
.end method

.method public static getTotalConnectionCount(Ljava/lang/String;)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;

    .line 184
    const-wide/16 v0, 0x0

    .line 185
    .local v0, "connections":J
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 186
    .local v2, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 187
    .local v4, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getTotalConnectionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 189
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public static promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 97
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 98
    .local v2, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->promoteSlaveToMaster(Ljava/lang/String;)V

    .end local v2    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 100
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static registerJmx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    sget-boolean v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->hasRegisteredJmx:Z

    if-eqz v0, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/ReplicationGroupManager;

    invoke-virtual {v0}, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->registerJmx()V

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->hasRegisteredJmx:Z

    .line 56
    return-void
.end method

.method public static removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeMasterHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public static removeMasterHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "closeGently"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 120
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 121
    .local v2, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeMasterHost(Ljava/lang/String;Z)V

    .end local v2    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 123
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeSlaveHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public static removeSlaveHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "closeGently"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 89
    invoke-static {p0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 90
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ReplicationConnectionGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 91
    .local v2, "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeSlaveHost(Ljava/lang/String;Z)V

    .end local v2    # "cg":Lcom/mysql/jdbc/ReplicationConnectionGroup;
    goto :goto_0

    .line 93
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
