.class public Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;
.super Ljava/lang/Object;
.source "StandardLoadBalanceExceptionChecker.java"

# interfaces
.implements Lcom/mysql/jdbc/LoadBalanceExceptionChecker;


# instance fields
.field private sqlExClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private sqlStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureSQLExceptionSubclassList(Ljava/lang/String;)V
    .locals 5
    .param p1, "sqlExClasses"    # Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    const/4 v0, 0x1

    const-string v1, ","

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "newClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "exClass":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 107
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 108
    :catch_0
    move-exception v4

    .line 110
    .end local v3    # "exClass":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 112
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 113
    iput-object v1, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    .line 115
    :cond_2
    return-void

    .line 99
    .end local v0    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "newClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_3
    :goto_2
    return-void
.end method

.method private configureSQLStateList(Ljava/lang/String;)V
    .locals 5
    .param p1, "sqlStates"    # Ljava/lang/String;

    .line 81
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    const-string v1, ","

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "newStates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    .local v3, "state":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v3    # "state":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 92
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 93
    iput-object v1, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    .line 95
    :cond_3
    return-void

    .line 82
    .end local v0    # "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "newStates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 73
    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    const-string v0, "loadBalanceSQLStateFailover"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->configureSQLStateList(Ljava/lang/String;)V

    .line 77
    const-string v0, "loadBalanceSQLExceptionSubclassFailover"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->configureSQLExceptionSubclassList(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z
    .locals 4
    .param p1, "ex"    # Ljava/sql/SQLException;

    .line 38
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "sqlState":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 41
    const-string v2, "08"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    return v1

    .line 56
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    instance-of v2, p1, Lcom/mysql/jdbc/CommunicationsException;

    if-eqz v2, :cond_3

    .line 57
    return v1

    .line 60
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 62
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    return v1

    .line 69
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    :cond_5
    const/4 v1, 0x0

    return v1
.end method
