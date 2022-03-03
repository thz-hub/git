.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;
.super Ljava/lang/Object;
.source "MysqlDataSourceFactory.java"

# interfaces
.implements Ljavax/naming/spi/ObjectFactory;


# static fields
.field protected static final DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlDataSource"

.field protected static final POOL_DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource"

.field protected static final XA_DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlXADataSource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;
    .locals 2
    .param p1, "referenceName"    # Ljava/lang/String;
    .param p2, "ref"    # Ljavax/naming/Reference;

    .line 129
    invoke-virtual {p2, p1}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object v0

    .line 131
    .local v0, "refAddr":Ljavax/naming/RefAddr;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "asString":Ljava/lang/String;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getObjectInstance(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 11
    .param p1, "refObj"    # Ljava/lang/Object;
    .param p2, "nm"    # Ljavax/naming/Name;
    .param p3, "ctx"    # Ljavax/naming/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavax/naming/Name;",
            "Ljavax/naming/Context;",
            "Ljava/util/Hashtable<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    .local p4, "env":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    move-object v0, p1

    check-cast v0, Ljavax/naming/Reference;

    .line 65
    .local v0, "ref":Ljavax/naming/Reference;
    invoke-virtual {v0}, Ljavax/naming/Reference;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v2, "com.mysql.jdbc.jdbc2.optional.MysqlDataSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.mysql.jdbc.jdbc2.optional.MysqlXADataSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 72
    .local v2, "dataSource":Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 75
    nop

    .line 77
    const/16 v3, 0xcea

    .line 79
    .local v3, "portNumber":I
    const-string v4, "port"

    invoke-direct {p0, v4, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "portNumberAsString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    :cond_1
    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPort(I)V

    .line 87
    const-string v5, "user"

    invoke-direct {p0, v5, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "user":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 90
    invoke-virtual {v2, v5}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUser(Ljava/lang/String;)V

    .line 93
    :cond_2
    const-string v6, "password"

    invoke-direct {p0, v6, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "password":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 96
    invoke-virtual {v2, v6}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPassword(Ljava/lang/String;)V

    .line 99
    :cond_3
    const-string v7, "serverName"

    invoke-direct {p0, v7, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "serverName":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 102
    invoke-virtual {v2, v7}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setServerName(Ljava/lang/String;)V

    .line 105
    :cond_4
    const-string v8, "databaseName"

    invoke-direct {p0, v8, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "databaseName":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 108
    invoke-virtual {v2, v8}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setDatabaseName(Ljava/lang/String;)V

    .line 111
    :cond_5
    const-string v9, "explicitUrl"

    invoke-direct {p0, v9, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "explicitUrlAsString":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 114
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 115
    const-string v10, "url"

    invoke-direct {p0, v10, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUrl(Ljava/lang/String;)V

    .line 119
    :cond_6
    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPropertiesViaRef(Ljavax/naming/Reference;)V

    .line 121
    return-object v2

    .line 73
    .end local v3    # "portNumber":I
    .end local v4    # "portNumberAsString":Ljava/lang/String;
    .end local v5    # "user":Ljava/lang/String;
    .end local v6    # "password":Ljava/lang/String;
    .end local v7    # "serverName":Ljava/lang/String;
    .end local v8    # "databaseName":Ljava/lang/String;
    .end local v9    # "explicitUrlAsString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create DataSource of class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    .end local v2    # "dataSource":Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method
