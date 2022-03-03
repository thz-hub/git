.class public Lcom/mysql/jdbc/ConnectionGroupManager;
.super Ljava/lang/Object;
.source "ConnectionGroupManager.java"


# static fields
.field private static GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static hasRegisteredJmx:Z

.field private static mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    invoke-direct {v0}, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .param p2, "forExisting"    # Z

    .line 82
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 83
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionGroup;

    .line 84
    .local v2, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/ConnectionGroup;->addHost(Ljava/lang/String;Z)V

    .end local v2    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 86
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static getActiveHostCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "group"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    .local v0, "active":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 91
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionGroup;

    .line 92
    .local v3, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 94
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    return v2
.end method

.method public static getActiveHostLists(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "group"    # Ljava/lang/String;

    .line 164
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 165
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v1, "hosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionGroup;

    .line 168
    .local v3, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v4

    .line 169
    .local v4, "l":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 170
    .local v6, "host":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 171
    .local v7, "o":Ljava/lang/Integer;
    const/4 v8, 0x1

    if-nez v7, :cond_0

    .line 172
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    .line 174
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 176
    :goto_2
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "o":Ljava/lang/Integer;
    goto :goto_1

    .line 179
    .end local v3    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    .end local v4    # "l":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    goto :goto_0

    .line 181
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 183
    .local v3, "sep":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, "host":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    const-string v3, ","

    .end local v5    # "host":Ljava/lang/String;
    goto :goto_3

    .line 191
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getActiveLogicalConnectionCount(Ljava/lang/String;)J
    .locals 8
    .param p0, "group"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "count":I
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 100
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionGroup;

    .line 101
    .local v3, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    int-to-long v4, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getActiveLogicalConnectionCount()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    .end local v3    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 103
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public static getActivePhysicalConnectionCount(Ljava/lang/String;)J
    .locals 8
    .param p0, "group"    # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "count":I
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 109
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionGroup;

    .line 110
    .local v3, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    int-to-long v4, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getActivePhysicalConnectionCount()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    .end local v3    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 112
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public static getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    return-object v0
.end method

.method public static declared-synchronized getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;
    .locals 3
    .param p0, "groupName"    # Ljava/lang/String;

    const-class v0, Lcom/mysql/jdbc/ConnectionGroupManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :cond_0
    :try_start_1
    new-instance v1, Lcom/mysql/jdbc/ConnectionGroup;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/ConnectionGroup;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "group":Lcom/mysql/jdbc/ConnectionGroup;
    sget-object v2, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v0

    return-object v1

    .line 43
    .end local v1    # "group":Lcom/mysql/jdbc/ConnectionGroup;
    .end local p0    # "groupName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/mysql/jdbc/ConnectionGroup;",
            ">;"
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/ConnectionGroup;>;"
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;

    .line 74
    .local v1, "o":Lcom/mysql/jdbc/ConnectionGroup;
    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    return-object v0

    .line 67
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/ConnectionGroup;>;"
    .end local v1    # "o":Lcom/mysql/jdbc/ConnectionGroup;
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 69
    .restart local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/mysql/jdbc/ConnectionGroup;>;"
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-object v0
.end method

.method public static getRegisteredConnectionGroups()Ljava/lang/String;
    .locals 6

    .line 195
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 196
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 198
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

    check-cast v4, Lcom/mysql/jdbc/ConnectionGroup;

    .line 199
    .local v4, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "group":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v2, ","

    .line 203
    .end local v4    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    .end local v5    # "group":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getTotalHostCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "group"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 117
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v1, "hosts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionGroup;

    .line 119
    .local v3, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getClosedHosts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 122
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    return v2
.end method

.method public static getTotalLogicalConnectionCount(Ljava/lang/String;)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;

    .line 126
    const-wide/16 v0, 0x0

    .line 127
    .local v0, "count":J
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 128
    .local v2, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ConnectionGroup;

    .line 129
    .local v4, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalLogicalConnectionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 131
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public static getTotalPhysicalConnectionCount(Ljava/lang/String;)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;

    .line 135
    const-wide/16 v0, 0x0

    .line 136
    .local v0, "count":J
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 137
    .local v2, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ConnectionGroup;

    .line 138
    .local v4, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalPhysicalConnectionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 140
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public static getTotalTransactionCount(Ljava/lang/String;)J
    .locals 7
    .param p0, "group"    # Ljava/lang/String;

    .line 144
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "count":J
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 146
    .local v2, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ConnectionGroup;

    .line 147
    .local v4, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v4}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalTransactionCount()J

    move-result-wide v5

    add-long/2addr v0, v5

    .end local v4    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 149
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-wide v0
.end method

.method public static registerJmx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    sget-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    if-eqz v0, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    invoke-virtual {v0}, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;->registerJmx()V

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    .line 59
    return-void
.end method

.method public static removeHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->removeHost(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public static removeHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "removeExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 158
    .local v0, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mysql/jdbc/ConnectionGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionGroup;

    .line 159
    .local v2, "cg":Lcom/mysql/jdbc/ConnectionGroup;
    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/ConnectionGroup;->removeHost(Ljava/lang/String;Z)V

    .end local v2    # "cg":Lcom/mysql/jdbc/ConnectionGroup;
    goto :goto_0

    .line 161
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
