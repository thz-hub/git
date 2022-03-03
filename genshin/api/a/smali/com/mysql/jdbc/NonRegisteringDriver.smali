.class public Lcom/mysql/jdbc/NonRegisteringDriver;
.super Ljava/lang/Object;
.source "NonRegisteringDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field private static final ALLOWED_QUOTES:Ljava/lang/String; = "\"\'"

.field public static final DBNAME_PROPERTY_KEY:Ljava/lang/String; = "DBNAME"

.field public static final DEBUG:Z = false

.field public static final HOST_NAME_INDEX:I = 0x0

.field public static final HOST_PROPERTY_KEY:Ljava/lang/String; = "HOST"

.field public static final LICENSE:Ljava/lang/String; = "GPL"

.field public static final LOADBALANCE_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:loadbalance://"

.field private static final MXJ_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:mxj://"

.field public static final NAME:Ljava/lang/String; = "MySQL Connector Java"

.field public static final NUM_HOSTS_PROPERTY_KEY:Ljava/lang/String; = "NUM_HOSTS"

.field public static final OS:Ljava/lang/String;

.field public static final PASSWORD_PROPERTY_KEY:Ljava/lang/String; = "password"

.field public static final PATH_PROPERTY_KEY:Ljava/lang/String; = "PATH"

.field public static final PLATFORM:Ljava/lang/String;

.field public static final PORT_NUMBER_INDEX:I = 0x1

.field public static final PORT_PROPERTY_KEY:Ljava/lang/String; = "PORT"

.field public static final PROPERTIES_TRANSFORM_KEY:Ljava/lang/String; = "propertiesTransform"

.field public static final PROTOCOL_PROPERTY_KEY:Ljava/lang/String; = "PROTOCOL"

.field private static final REPLICATION_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:replication://"

.field public static final RUNTIME_VENDOR:Ljava/lang/String;

.field public static final RUNTIME_VERSION:Ljava/lang/String;

.field public static final TRACE:Z = false

.field private static final URL_PREFIX:Ljava/lang/String; = "jdbc:mysql://"

.field public static final USER_PROPERTY_KEY:Ljava/lang/String; = "user"

.field public static final USE_CONFIG_PROPERTY_KEY:Ljava/lang/String; = "useConfigs"

.field public static final VERSION:Ljava/lang/String; = "5.1.49"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getPlatform()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->PLATFORM:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getOSName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->OS:Ljava/lang/String;

    .line 71
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VENDOR:Ljava/lang/String;

    .line 72
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VERSION:Ljava/lang/String;

    .line 98
    :try_start_0
    const-class v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method private connectFailover(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 367
    .local v0, "parsedProps":Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    return-object v1

    .line 372
    :cond_0
    const-string v1, "roundRobinLoadBalance"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "NUM_HOSTS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 376
    .local v1, "numHosts":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v2, "hostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 379
    add-int/lit8 v4, v3, 0x1

    .line 381
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOST."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PORT."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/Connection;

    move-result-object v3

    return-object v3
.end method

.method private connectLoadBalanced(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 344
    .local v0, "parsedProps":Ljava/util/Properties;
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    return-object v1

    .line 349
    :cond_0
    const-string v1, "roundRobinLoadBalance"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v1, "NUM_HOSTS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, "numHosts":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, "hostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 356
    add-int/lit8 v4, v3, 0x1

    .line 358
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HOST."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PORT."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/LoadBalancedConnection;

    move-result-object v3

    return-object v3
.end method

.method public static expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;
    .locals 11
    .param p0, "host"    # Ljava/lang/String;

    .line 835
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 837
    .local v0, "hostProps":Ljava/util/Properties;
    invoke-static {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 838
    const-string v1, "address="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 839
    const-string v1, ")"

    const-string v3, "\'\""

    invoke-static {p0, v1, v3, v3, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 841
    .local v1, "hostPropsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 842
    .local v5, "propDef":Ljava/lang/String;
    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 843
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 846
    :cond_0
    const-string v6, "="

    invoke-static {v5, v6, v3, v3, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 848
    .local v6, "kvp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 849
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v2, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 851
    .local v8, "value":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_4

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 852
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 855
    :cond_4
    if-eqz v8, :cond_9

    .line 856
    const-string v9, "HOST"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "DBNAME"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "PORT"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "PROTOCOL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "PATH"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 859
    :cond_5
    const-string v9, "user"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "password"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 860
    :cond_6
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 858
    :cond_7
    :goto_2
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 863
    :cond_8
    :goto_3
    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 865
    .end local v5    # "propDef":Ljava/lang/String;
    .end local v6    # "kvp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_9
    goto/16 :goto_0

    .line 868
    .end local v1    # "hostPropsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_a
    return-object v0
.end method

.method static getMajorVersionInternal()I
    .locals 1

    .line 162
    const-string v0, "5"

    invoke-static {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->safeIntParse(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getMinorVersionInternal()I
    .locals 1

    .line 171
    const-string v0, "1"

    invoke-static {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->safeIntParse(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOSName()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isHostMaster(Ljava/lang/String;)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .line 450
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 452
    .local v0, "hostSpecificProps":Ljava/util/Properties;
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "master"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x1

    return v1

    .line 456
    .end local v0    # "hostSpecificProps":Ljava/util/Properties;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHostPropertiesList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .line 872
    if-eqz p0, :cond_0

    const-string v0, "address="

    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "hostPortPair"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 192
    .local v0, "splitValues":[Ljava/lang/String;
    const-string v1, "address="

    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 194
    aput-object v2, v0, v4

    .line 196
    return-object v0

    .line 199
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 201
    .local v1, "portIndex":I
    const/4 v5, 0x0

    .line 203
    .local v5, "hostname":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 204
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 205
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "portAsString":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 208
    aput-object v5, v0, v3

    .line 210
    aput-object v2, v0, v4

    .line 211
    .end local v2    # "portAsString":Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_1
    const-string v3, "NonRegisteringDriver.37"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "01S00"

    invoke-static {v3, v4, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 215
    :cond_2
    aput-object p0, v0, v3

    .line 216
    aput-object v2, v0, v4

    .line 219
    :goto_0
    return-object v0
.end method

.method private static safeIntParse(Ljava/lang/String;)I
    .locals 2
    .param p0, "intAsString"    # Ljava/lang/String;

    .line 224
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 257
    :cond_1
    const-string v1, "NonRegisteringDriver.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "08001"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 302
    const-string v0, "08001"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 306
    const-string v2, "jdbc:mysql:loadbalance://"

    invoke-static {p1, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connectLoadBalanced(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    const-string v2, "jdbc:mysql:replication://"

    invoke-static {p1, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connectReplicationConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 312
    :cond_1
    const/4 v2, 0x0

    .line 314
    .local v2, "props":Ljava/util/Properties;
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v3

    move-object v2, v3

    if-nez v3, :cond_2

    .line 315
    return-object v1

    .line 318
    :cond_2
    const-string v3, "NUM_HOSTS"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connectFailover(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    .line 323
    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->host(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->port(Ljava/util/Properties;)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->database(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v2, v5, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .local v0, "newConn":Lcom/mysql/jdbc/Connection;
    return-object v0

    .line 330
    .end local v0    # "newConn":Lcom/mysql/jdbc/Connection;
    :catch_0
    move-exception v3

    .line 331
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NonRegisteringDriver.17"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NonRegisteringDriver.18"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 335
    .local v0, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v0, v3}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 337
    throw v0

    .line 326
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 329
    .restart local v0    # "sqlEx":Ljava/sql/SQLException;
    throw v0

    .line 303
    .end local v0    # "sqlEx":Ljava/sql/SQLException;
    .end local v2    # "props":Ljava/util/Properties;
    :cond_4
    const-string v2, "NonRegisteringDriver.1"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected connectReplicationConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 388
    invoke-virtual/range {p0 .. p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 390
    .local v0, "parsedProps":Ljava/util/Properties;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 391
    return-object v1

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Properties;

    .line 395
    .local v2, "masterProps":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;

    .line 399
    .local v3, "slavesProps":Ljava/util/Properties;
    const-string v4, "com.mysql.jdbc.ReplicationConnection.isSlave"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    const-string v4, "NUM_HOSTS"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 403
    .local v5, "numHosts":I
    const/4 v6, 0x2

    if-lt v5, v6, :cond_5

    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v1, "slaveHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v6, "masterHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOST.1"

    invoke-virtual {v2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "PORT.1"

    invoke-virtual {v2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, "firstHost":Ljava/lang/String;
    invoke-static {v7}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v9

    .line 414
    .local v9, "usesExplicitServerType":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_4

    .line 415
    add-int/lit8 v11, v10, 0x1

    .line 417
    .local v11, "index":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HOST."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PORT."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, "host":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 424
    .local v13, "port":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 425
    move-object/from16 v14, p0

    invoke-direct {v14, v12}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostMaster(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 426
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_1
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 431
    :cond_2
    move-object/from16 v14, p0

    if-nez v10, :cond_3

    .line 432
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v11    # "index":I
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "port":Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v14, p0

    .line 439
    .end local v10    # "i":I
    invoke-virtual {v3, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {v2, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v4, "HOST"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v8, "PORT"

    invoke-virtual {v2, v8}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v3, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-virtual {v3, v8}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {v6, v2, v1, v3}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/ReplicationConnection;

    move-result-object v4

    return-object v4

    .line 404
    .end local v1    # "slaveHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "masterHostList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "firstHost":Ljava/lang/String;
    .end local v9    # "usesExplicitServerType":Z
    :cond_5
    move-object/from16 v14, p0

    const-string v4, "Must specify at least one slave host to connect to for master/slave replication load-balancing functionality"

    const-string v6, "01S00"

    invoke-static {v4, v6, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public database(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .line 468
    const-string v0, "DBNAME"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 477
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMajorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 486
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMinorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 515
    if-nez p2, :cond_0

    .line 516
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object p2, v0

    .line 519
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "jdbc:mysql://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p2

    .line 523
    :cond_1
    new-instance v0, Ljava/sql/DriverPropertyInfo;

    const-string v1, "HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .local v0, "hostProp":Ljava/sql/DriverPropertyInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 525
    const-string v2, "NonRegisteringDriver.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 527
    new-instance v2, Ljava/sql/DriverPropertyInfo;

    const-string v3, "PORT"

    const-string v4, "3306"

    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .local v2, "portProp":Ljava/sql/DriverPropertyInfo;
    const/4 v3, 0x0

    iput-boolean v3, v2, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 529
    const-string v4, "NonRegisteringDriver.7"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 531
    new-instance v4, Ljava/sql/DriverPropertyInfo;

    const-string v5, "DBNAME"

    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v4, "dbProp":Ljava/sql/DriverPropertyInfo;
    iput-boolean v3, v4, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 533
    const-string v5, "Database name"

    iput-object v5, v4, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 535
    new-instance v5, Ljava/sql/DriverPropertyInfo;

    const-string v6, "user"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v5, "userProp":Ljava/sql/DriverPropertyInfo;
    iput-boolean v1, v5, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 537
    const-string v6, "NonRegisteringDriver.13"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 539
    new-instance v6, Ljava/sql/DriverPropertyInfo;

    const-string v7, "password"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v6, "passwordProp":Ljava/sql/DriverPropertyInfo;
    iput-boolean v1, v6, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 541
    const-string v7, "NonRegisteringDriver.16"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 543
    const/4 v7, 0x5

    invoke-static {p2, v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exposeAsDriverPropertyInfo(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;

    move-result-object v7

    .line 545
    .local v7, "dpi":[Ljava/sql/DriverPropertyInfo;
    aput-object v0, v7, v3

    .line 546
    aput-object v2, v7, v1

    .line 547
    const/4 v1, 0x2

    aput-object v4, v7, v1

    .line 548
    const/4 v1, 0x3

    aput-object v5, v7, v1

    .line 549
    const/4 v1, 0x4

    aput-object v6, v7, v1

    .line 551
    return-object v7
.end method

.method public host(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;

    .line 568
    const-string v0, "HOST"

    const-string v1, "localhost"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jdbcCompliant()Z
    .locals 1

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 23
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "defaults"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 589
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "\' due to underlying exception: "

    const-string v3, "Unable to create properties transform instance \'"

    new-instance v4, Ljava/util/Properties;

    if-eqz v1, :cond_0

    invoke-direct {v4, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    goto :goto_0

    :cond_0
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 591
    .local v4, "urlProps":Ljava/util/Properties;
    :goto_0
    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 592
    return-object v5

    .line 595
    :cond_1
    const-string v6, "jdbc:mysql://"

    invoke-static {v0, v6}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v7, "jdbc:mysql:mxj://"

    if-nez v6, :cond_2

    invoke-static {v0, v7}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "jdbc:mysql:loadbalance://"

    invoke-static {v0, v6}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "jdbc:mysql:replication://"

    invoke-static {v0, v6}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 598
    return-object v5

    .line 601
    :cond_2
    const-string v6, "//"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 603
    .local v6, "beginningOfSlashes":I
    invoke-static {v0, v7}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 605
    const-string v7, "socketFactory"

    const-string v8, "com.mysql.management.driverlaunched.ServerLauncherSocketFactory"

    invoke-virtual {v4, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    :cond_3
    const-string v7, "?"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 614
    .local v7, "index":I
    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_8

    .line 615
    add-int/lit8 v10, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 616
    .local v10, "paramString":Ljava/lang/String;
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 618
    .end local p1    # "url":Ljava/lang/String;
    .local v11, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v12, "&"

    invoke-direct {v0, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    .line 620
    .local v12, "queryParams":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 621
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 623
    .local v13, "parameterValuePair":Ljava/lang/String;
    const-string v0, "="

    invoke-static {v9, v13, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 625
    .local v14, "indexOfEquals":I
    const/4 v0, 0x0

    .line 626
    .local v0, "parameter":Ljava/lang/String;
    const/4 v15, 0x0

    .line 628
    .local v15, "value":Ljava/lang/String;
    if-eq v14, v8, :cond_5

    .line 629
    invoke-virtual {v13, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 631
    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 632
    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v5, v0

    goto :goto_2

    .line 631
    :cond_4
    move-object v5, v0

    goto :goto_2

    .line 628
    :cond_5
    move-object v5, v0

    .line 636
    .end local v0    # "parameter":Ljava/lang/String;
    .local v5, "parameter":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 638
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v15, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 642
    :catch_0
    move-exception v0

    .line 644
    .local v0, "nsme":Ljava/lang/NoSuchMethodError;
    invoke-static {v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 639
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 641
    .local v0, "badEncoding":Ljava/io/UnsupportedEncodingException;
    invoke-static {v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 647
    .end local v0    # "badEncoding":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "parameter":Ljava/lang/String;
    .end local v13    # "parameterValuePair":Ljava/lang/String;
    .end local v14    # "indexOfEquals":I
    .end local v15    # "value":Ljava/lang/String;
    :cond_6
    :goto_3
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 620
    :cond_7
    move-object v0, v11

    .line 650
    .end local v10    # "paramString":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "queryParams":Ljava/util/StringTokenizer;
    .local v0, "url":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v6, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 652
    .end local v0    # "url":Ljava/lang/String;
    .local v5, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 654
    .local v0, "hostStuff":Ljava/lang/String;
    const/4 v9, 0x0

    sget-object v14, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const-string v11, "/"

    const-string v12, "\"\'"

    const-string v13, "\"\'"

    move-object v10, v5

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v9

    .line 656
    .local v9, "slashIndex":I
    if-eq v9, v8, :cond_a

    .line 657
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 659
    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_9

    .line 660
    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, "DBNAME"

    invoke-virtual {v4, v10, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_9
    move-object v8, v0

    goto :goto_4

    .line 663
    :cond_a
    move-object v0, v5

    move-object v8, v0

    .line 666
    .end local v0    # "hostStuff":Ljava/lang/String;
    .local v8, "hostStuff":Ljava/lang/String;
    :goto_4
    const/4 v0, 0x0

    .line 668
    .local v0, "numHosts":I
    const-string v10, "3306"

    const-string v11, "PORT.1"

    const-string v12, "localhost"

    const-string v13, "HOST.1"

    const-string v14, ","

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_e

    .line 669
    const-string v15, "\"\'"

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "url":Ljava/lang/String;
    .local v17, "url":Ljava/lang/String;
    invoke-static {v8, v14, v15, v15, v5}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v15

    .line 671
    .local v15, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 672
    .local v18, "hostAndPort":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 674
    invoke-static/range {v18 .. v18}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 676
    .local v19, "hostPortPair":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v20, v19, v16

    move-object/from16 v21, v5

    .end local v5    # "i$":Ljava/util/Iterator;
    .local v21, "i$":Ljava/util/Iterator;
    const-string v5, "HOST."

    if-eqz v20, :cond_b

    aget-object v20, v19, v16

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 677
    move/from16 v20, v6

    .end local v6    # "beginningOfSlashes":I
    .local v20, "beginningOfSlashes":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v19, v16

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_6

    .line 676
    .end local v20    # "beginningOfSlashes":I
    .restart local v6    # "beginningOfSlashes":I
    :cond_b
    move/from16 v20, v6

    .line 679
    .end local v6    # "beginningOfSlashes":I
    .restart local v20    # "beginningOfSlashes":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 682
    :goto_6
    const/4 v5, 0x1

    aget-object v6, v19, v5

    const-string v5, "PORT."

    if-eqz v6, :cond_c

    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v22, v7

    const/4 v6, 0x1

    .end local v7    # "index":I
    .local v22, "index":I
    aget-object v7, v19, v6

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_7

    .line 685
    .end local v22    # "index":I
    .restart local v7    # "index":I
    :cond_c
    move/from16 v22, v7

    .end local v7    # "index":I
    .restart local v22    # "index":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 687
    .end local v18    # "hostAndPort":Ljava/lang/String;
    .end local v19    # "hostPortPair":[Ljava/lang/String;
    :goto_7
    move/from16 v6, v20

    move-object/from16 v5, v21

    move/from16 v7, v22

    goto/16 :goto_5

    .line 671
    .end local v20    # "beginningOfSlashes":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "index":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "beginningOfSlashes":I
    .restart local v7    # "index":I
    :cond_d
    move-object/from16 v21, v5

    move/from16 v20, v6

    move/from16 v22, v7

    .line 688
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "beginningOfSlashes":I
    .end local v7    # "index":I
    .end local v15    # "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "beginningOfSlashes":I
    .restart local v22    # "index":I
    move v5, v0

    goto :goto_8

    .line 668
    .end local v17    # "url":Ljava/lang/String;
    .end local v20    # "beginningOfSlashes":I
    .end local v22    # "index":I
    .local v5, "url":Ljava/lang/String;
    .restart local v6    # "beginningOfSlashes":I
    .restart local v7    # "index":I
    :cond_e
    move-object/from16 v17, v5

    move/from16 v20, v6

    move/from16 v22, v7

    .line 689
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "beginningOfSlashes":I
    .end local v7    # "index":I
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v20    # "beginningOfSlashes":I
    .restart local v22    # "index":I
    const/4 v0, 0x1

    .line 690
    invoke-virtual {v4, v13, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    invoke-virtual {v4, v11, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v5, v0

    .line 694
    .end local v0    # "numHosts":I
    .local v5, "numHosts":I
    :goto_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "NUM_HOSTS"

    invoke-virtual {v4, v6, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    invoke-virtual {v4, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "HOST"

    invoke-virtual {v4, v7, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    invoke-virtual {v4, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "PORT"

    invoke-virtual {v4, v7, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 698
    const-string v0, "propertiesTransform"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "propertiesTransformClassName":Ljava/lang/String;
    const-string v10, "01S00"

    if-eqz v7, :cond_f

    .line 702
    :try_start_1
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionPropertiesTransform;

    .line 704
    .local v0, "propTransformer":Lcom/mysql/jdbc/ConnectionPropertiesTransform;
    invoke-interface {v0, v4}, Lcom/mysql/jdbc/ConnectionPropertiesTransform;->transformProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v2

    .line 717
    .end local v0    # "propTransformer":Lcom/mysql/jdbc/ConnectionPropertiesTransform;
    goto :goto_9

    .line 713
    :catch_2
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 709
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 705
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2

    .line 720
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_f
    :goto_9
    invoke-static {}, Lcom/mysql/jdbc/Util;->isColdFusion()Z

    move-result v0

    const-string v2, "useConfigs"

    if-eqz v0, :cond_11

    const-string v0, "autoConfigureForColdFusion"

    const-string v3, "true"

    invoke-virtual {v4, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 721
    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "configs":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v3, "newConfigs":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_10

    .line 726
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_10
    const-string v11, "coldFusion"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    .end local v0    # "configs":Ljava/lang/String;
    .end local v3    # "newConfigs":Ljava/lang/StringBuilder;
    :cond_11
    const/4 v0, 0x0

    .line 739
    .local v0, "configNames":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 740
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_12
    if-nez v0, :cond_13

    .line 744
    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_a

    .line 743
    :cond_13
    move-object v2, v0

    .line 747
    .end local v0    # "configNames":Ljava/lang/String;
    .local v2, "configNames":Ljava/lang/String;
    :goto_a
    if-eqz v2, :cond_17

    .line 748
    const/4 v0, 0x1

    invoke-static {v2, v14, v0}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 750
    .local v3, "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v11, v0

    .line 752
    .local v11, "configProps":Ljava/util/Properties;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 754
    .local v12, "namesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 755
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 758
    .local v13, "configName":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configs/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 760
    .local v0, "configAsStream":Ljava/io/InputStream;
    if-eqz v0, :cond_14

    .line 764
    invoke-virtual {v11, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 772
    .end local v0    # "configAsStream":Ljava/io/InputStream;
    nop

    .line 773
    .end local v13    # "configName":Ljava/lang/String;
    goto :goto_b

    .line 761
    .restart local v0    # "configAsStream":Ljava/io/InputStream;
    .restart local v13    # "configName":Ljava/lang/String;
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t find configuration template named \'"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\'"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    invoke-static {v6, v10, v14}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .end local v2    # "configNames":Ljava/lang/String;
    .end local v3    # "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "urlProps":Ljava/util/Properties;
    .end local v5    # "numHosts":I
    .end local v7    # "propertiesTransformClassName":Ljava/lang/String;
    .end local v8    # "hostStuff":Ljava/lang/String;
    .end local v9    # "slashIndex":I
    .end local v11    # "configProps":Ljava/util/Properties;
    .end local v12    # "namesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "configName":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    .end local v20    # "beginningOfSlashes":I
    .end local v22    # "index":I
    .end local p2    # "defaults":Ljava/util/Properties;
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 765
    .end local v0    # "configAsStream":Ljava/io/InputStream;
    .restart local v2    # "configNames":Ljava/lang/String;
    .restart local v3    # "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "urlProps":Ljava/util/Properties;
    .restart local v5    # "numHosts":I
    .restart local v7    # "propertiesTransformClassName":Ljava/lang/String;
    .restart local v8    # "hostStuff":Ljava/lang/String;
    .restart local v9    # "slashIndex":I
    .restart local v11    # "configProps":Ljava/util/Properties;
    .restart local v12    # "namesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "configName":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v20    # "beginningOfSlashes":I
    .restart local v22    # "index":I
    .restart local p2    # "defaults":Ljava/util/Properties;
    :catch_5
    move-exception v0

    .line 766
    .local v0, "ioEx":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to load configuration template \'"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' due to underlying IOException: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    invoke-static {v6, v10, v14}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v6

    .line 769
    .local v6, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v6, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 771
    throw v6

    .line 775
    .end local v0    # "ioEx":Ljava/io/IOException;
    .end local v6    # "sqlEx":Ljava/sql/SQLException;
    .end local v13    # "configName":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 777
    .local v0, "propsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 778
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 779
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 780
    .local v13, "property":Ljava/lang/String;
    invoke-virtual {v11, v10, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 781
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "property":Ljava/lang/String;
    goto :goto_c

    .line 783
    :cond_16
    move-object v4, v11

    .line 788
    .end local v0    # "propsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "configProps":Ljava/util/Properties;
    .end local v12    # "namesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_17
    if-eqz v1, :cond_19

    .line 789
    invoke-virtual/range {p2 .. p2}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 791
    .restart local v0    # "propsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 792
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 794
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 795
    .local v10, "property":Ljava/lang/String;
    invoke-virtual {v4, v3, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 797
    .end local v3    # "key":Ljava/lang/String;
    .end local v10    # "property":Ljava/lang/String;
    :cond_18
    goto :goto_d

    .line 800
    .end local v0    # "propsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_19
    return-object v4
.end method

.method public port(Ljava/util/Properties;)I
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;

    .line 812
    const-string v0, "PORT"

    const-string v1, "3306"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public property(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;

    .line 826
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
