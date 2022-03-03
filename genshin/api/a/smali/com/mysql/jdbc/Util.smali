.class public Lcom/mysql/jdbc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/Util$RandStructcture;
    }
.end annotation


# static fields
.field private static final MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

.field private static enclosingInstance:Lcom/mysql/jdbc/Util;

.field private static final implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static isColdFusion:Z

.field private static isJdbc4:Z

.field private static isJdbc42:Z

.field private static final isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static jvmUpdateNumber:I

.field private static jvmVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 60
    new-instance v0, Lcom/mysql/jdbc/Util;

    invoke-direct {v0}, Lcom/mysql/jdbc/Util;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->enclosingInstance:Lcom/mysql/jdbc/Util;

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    .line 68
    sput v0, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    .line 70
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    .line 74
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "java.sql.NClob"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 75
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isJdbc4:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    .line 81
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_1
    const-string v3, "java.sql.JDBCType"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isJdbc42:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v3

    .line 84
    .local v3, "t":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    .line 87
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "java.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "jvmVersionString":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 89
    .local v4, "startPos":I
    add-int/lit8 v5, v4, 0x1

    .line 90
    .local v5, "endPos":I
    if-eq v4, v0, :cond_0

    .line 91
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    add-int/2addr v4, v2

    .line 96
    if-le v5, v4, :cond_1

    .line 97
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/mysql/jdbc/Util;->jvmVersion:I

    goto :goto_4

    .line 100
    :cond_1
    sget-boolean v6, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    goto :goto_3

    :cond_2
    sget-boolean v6, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x6

    goto :goto_3

    :cond_3
    const/4 v6, 0x5

    :goto_3
    sput v6, Lcom/mysql/jdbc/Util;->jvmVersion:I

    .line 102
    :goto_4
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 103
    add-int/lit8 v5, v4, 0x1

    .line 104
    if-eq v4, v0, :cond_4

    .line 105
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    goto :goto_5

    .line 109
    :cond_4
    add-int/2addr v4, v2

    .line 110
    if-le v5, v4, :cond_5

    .line 111
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    .line 120
    :cond_5
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "loadedFrom":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 123
    const-string v7, "coldfusion"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    goto :goto_7

    .line 125
    :cond_7
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    .line 528
    .end local v3    # "jvmVersionString":Ljava/lang/String;
    .end local v4    # "startPos":I
    .end local v5    # "endPos":I
    .end local v6    # "loadedFrom":Ljava/lang/String;
    :goto_7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    .line 575
    const-class v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "jdbc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/Util;->MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

    .line 592
    .end local v0    # "packageName":Ljava/lang/String;
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static calculateDifferences(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 443
    .local p0, "map1":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p1, "map2":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v0, "diffMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 446
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 448
    .local v3, "key":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 449
    .local v4, "value1":Ljava/lang/Number;
    const/4 v5, 0x0

    .line 451
    .local v5, "value2":Ljava/lang/Number;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_0

    .line 453
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/lang/Number;

    .line 454
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/Number;

    goto :goto_1

    .line 457
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/Double;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 458
    new-instance v6, Ljava/lang/Double;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 461
    nop

    .line 464
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 465
    goto :goto_0

    .line 468
    :cond_1
    instance-of v6, v4, Ljava/lang/Byte;

    if-eqz v6, :cond_2

    .line 469
    move-object v6, v5

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    move-object v7, v4

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 470
    :cond_2
    instance-of v6, v4, Ljava/lang/Short;

    if-eqz v6, :cond_3

    .line 471
    move-object v6, v5

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    move-object v7, v4

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    sub-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 472
    :cond_3
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 473
    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 474
    :cond_4
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_5

    .line 475
    move-object v6, v5

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v8, v4

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 476
    :cond_5
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_6

    .line 477
    move-object v6, v5

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v7, v4

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 478
    :cond_6
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_7

    .line 479
    move-object v6, v5

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->shortValue()S

    move-result v6

    move-object v7, v4

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->shortValue()S

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 480
    :cond_7
    instance-of v6, v4, Ljava/math/BigDecimal;

    if-eqz v6, :cond_8

    .line 481
    move-object v6, v5

    check-cast v6, Ljava/math/BigDecimal;

    move-object v7, v4

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 482
    :cond_8
    instance-of v6, v4, Ljava/math/BigInteger;

    if-eqz v6, :cond_9

    .line 483
    move-object v6, v5

    check-cast v6, Ljava/math/BigInteger;

    move-object v7, v4

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value1":Ljava/lang/Number;
    .end local v5    # "value2":Ljava/lang/Number;
    :cond_9
    :goto_2
    goto/16 :goto_0

    .line 459
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v3    # "key":Ljava/lang/Object;
    .restart local v4    # "value1":Ljava/lang/Number;
    .restart local v5    # "value2":Ljava/lang/Number;
    :catch_0
    move-exception v6

    .line 460
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 487
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value1":Ljava/lang/Number;
    .end local v5    # "value2":Ljava/lang/Number;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_a
    return-object v0
.end method

.method public static getImplementedInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 604
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 605
    .local v0, "implementedInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 606
    return-object v0

    .line 609
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 610
    .local v1, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    move-object v2, p0

    .line 612
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    if-nez v3, :cond_2

    .line 615
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Class;

    .line 616
    sget-object v3, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 617
    .local v3, "oldValue":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    .line 618
    move-object v0, v3

    .line 620
    :cond_1
    return-object v0

    .line 613
    .end local v3    # "oldValue":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 386
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "S1000"

    const-string v1, "Can\'t instantiate required class"

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v1, v0, v2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 389
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 387
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static getJVMUpdateNumber()I
    .locals 1

    .line 146
    sget v0, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    return v0
.end method

.method public static getJVMVersion()I
    .locals 1

    .line 138
    sget v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    return v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 669
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "fqcn":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 671
    .local v1, "classNameStartsAt":I
    if-lez v1, :cond_0

    .line 672
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 674
    :cond_0
    const-string v2, ""

    return-object v2
.end method

.method public static final handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 403
    .local p0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v0, "Can\'t instantiate required class"

    const-string v1, "S1000"

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 413
    .local v2, "target":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/sql/SQLException;

    if-nez v3, :cond_1

    .line 417
    instance-of v3, v2, Ljava/lang/ExceptionInInitializerError;

    if-eqz v3, :cond_0

    .line 418
    move-object v3, v2

    check-cast v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v3}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 421
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 414
    :cond_1
    move-object v1, v2

    check-cast v1, Ljava/sql/SQLException;

    throw v1

    .line 408
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "target":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 406
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {v0, v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 404
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public static hashPre41Password(Ljava/lang/String;)[J
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 213
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 206
    :try_start_0
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    new-array v1, v1, [J

    return-object v1
.end method

.method public static interfaceExists(Ljava/lang/String;)Z
    .locals 5
    .param p0, "hostname"    # Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.net.NetworkInterface"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 436
    .local v1, "networkInterfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getByName"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 437
    .end local v1    # "networkInterfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    .line 438
    .local v1, "t":Ljava/lang/Throwable;
    return v0
.end method

.method public static isColdFusion()Z
    .locals 1

    .line 150
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    return v0
.end method

.method public static isCommunityEdition(Ljava/lang/String;)Z
    .locals 1
    .param p0, "serverVersion"    # Ljava/lang/String;

    .line 157
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->isEnterpriseEdition(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEnterpriseEdition(Ljava/lang/String;)Z
    .locals 1
    .param p0, "serverVersion"    # Ljava/lang/String;

    .line 164
    const-string v0, "enterprise"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "commercial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "advanced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isJdbc4()Z
    .locals 1

    .line 130
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    return v0
.end method

.method public static isJdbc42()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    return v0
.end method

.method public static isJdbcInterface(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 537
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 541
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 543
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/Util;->isJdbcPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    return v2

    .line 552
    :cond_1
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 555
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 556
    .local v4, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 557
    sget-object v5, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, p0, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return v2

    .line 555
    .end local v4    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 563
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return v2

    .line 567
    :cond_5
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return v1
.end method

.method public static isJdbcPackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 587
    if-eqz p0, :cond_1

    const-string v0, "java.sql"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax.sql"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/Util;->MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static jvmMeetsMinimum(II)Z
    .locals 1
    .param p0, "version"    # I
    .param p1, "updateNumber"    # I

    .line 142
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v0

    if-gt v0, p0, :cond_1

    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMUpdateNumber()I

    move-result v0

    if-lt v0, p1, :cond_0

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

.method public static loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;
    .locals 7
    .param p0, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "extensionClassNames"    # Ljava/lang/String;
    .param p3, "errorMessageKey"    # Ljava/lang/String;
    .param p4, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 505
    .local v0, "extensionList":Ljava/util/List;, "Ljava/util/List<Lcom/mysql/jdbc/Extension;>;"
    const-string v1, ","

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, "interceptorsToCreate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 510
    .local v3, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "s":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 511
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 512
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Extension;

    .line 513
    .local v6, "extensionInstance":Lcom/mysql/jdbc/Extension;
    invoke-interface {v6, p0, p1}, Lcom/mysql/jdbc/Extension;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 515
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    nop

    .end local v6    # "extensionInstance":Lcom/mysql/jdbc/Extension;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_0
    nop

    .line 524
    return-object v0

    .line 517
    :catchall_0
    move-exception v4

    .line 518
    .local v4, "t":Ljava/lang/Throwable;
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {p3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 519
    .local v2, "sqlEx":Ljava/sql/SQLException;
    invoke-virtual {v2, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 521
    throw v2
.end method

.method public static newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 176
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v1

    .line 177
    .local v1, "pw":[J
    move-object/from16 v2, p2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v3

    .line 178
    .local v3, "msg":[J
    const-wide/32 v4, 0x3fffffff

    .line 179
    .local v4, "max":J
    const/4 v6, 0x0

    aget-wide v7, v1, v6

    aget-wide v9, v3, v6

    xor-long v6, v7, v9

    rem-long/2addr v6, v4

    .line 180
    .local v6, "seed1":J
    const/4 v8, 0x1

    aget-wide v9, v1, v8

    aget-wide v11, v3, v8

    xor-long v8, v9, v11

    rem-long/2addr v8, v4

    .line 181
    .local v8, "seed2":J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    new-array v10, v10, [C

    .line 183
    .local v10, "chars":[C
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const-wide/16 v15, 0x21

    const-wide/16 v17, 0x3

    if-ge v11, v12, :cond_1

    .line 184
    mul-long v17, v17, v6

    add-long v17, v17, v8

    rem-long v6, v17, v4

    .line 185
    add-long v17, v6, v8

    add-long v17, v17, v15

    rem-long v8, v17, v4

    .line 186
    long-to-double v13, v6

    move-object v12, v1

    .end local v1    # "pw":[J
    .local v12, "pw":[J
    long-to-double v1, v4

    div-double/2addr v13, v1

    .line 187
    .local v13, "d":D
    const-wide/high16 v1, 0x403f000000000000L    # 31.0

    mul-double v1, v1, v13

    const-wide/high16 v15, 0x4050000000000000L    # 64.0

    add-double/2addr v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    .line 188
    .local v1, "b":B
    int-to-char v2, v1

    aput-char v2, v10, v11

    .line 183
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object v1, v12

    goto :goto_0

    .end local v12    # "pw":[J
    .end local v13    # "d":D
    .local v1, "pw":[J
    :cond_1
    move-object v12, v1

    .line 191
    .end local v1    # "pw":[J
    .end local v11    # "i":I
    .restart local v12    # "pw":[J
    invoke-static {v6, v7}, Ljava/lang/Long;->signum(J)I

    mul-long v17, v17, v6

    add-long v17, v17, v8

    rem-long v1, v17, v4

    .line 192
    .end local v6    # "seed1":J
    .local v1, "seed1":J
    add-long v6, v1, v8

    add-long/2addr v6, v15

    rem-long/2addr v6, v4

    .line 193
    .end local v8    # "seed2":J
    .local v6, "seed2":J
    long-to-double v8, v1

    long-to-double v13, v4

    div-double/2addr v8, v13

    .line 194
    .local v8, "d":D
    const-wide/high16 v13, 0x403f000000000000L    # 31.0

    mul-double v13, v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v11, v13

    int-to-byte v11, v11

    .line 196
    .local v11, "b":B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 197
    aget-char v14, v10, v13

    int-to-char v15, v11

    xor-int/2addr v14, v15

    int-to-char v14, v14

    aput-char v14, v10, v13

    .line 196
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 200
    .end local v13    # "i":I
    :cond_2
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v10}, Ljava/lang/String;-><init>([C)V

    return-object v13

    .line 173
    .end local v1    # "seed1":J
    .end local v3    # "msg":[J
    .end local v4    # "max":J
    .end local v6    # "seed2":J
    .end local v8    # "d":D
    .end local v10    # "chars":[C
    .end local v11    # "b":B
    .end local v12    # "pw":[J
    :cond_3
    :goto_2
    return-object v0
.end method

.method static newHash([B)[J
    .locals 17
    .param p0, "password"    # [B

    .line 217
    const-wide/32 v0, 0x50305735

    .line 218
    .local v0, "nr":J
    const-wide/16 v2, 0x7

    .line 219
    .local v2, "add":J
    const-wide/32 v4, 0x12345671

    .line 222
    .local v4, "nr2":J
    move-object/from16 v6, p0

    .local v6, "arr$":[B
    array-length v7, v6

    .local v7, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v7, :cond_0

    aget-byte v9, v6, v8

    .line 223
    .local v9, "b":B
    and-int/lit16 v10, v9, 0xff

    int-to-long v10, v10

    .line 224
    .local v10, "tmp":J
    const-wide/16 v12, 0x3f

    and-long/2addr v12, v0

    add-long/2addr v12, v2

    mul-long v12, v12, v10

    const/16 v14, 0x8

    shl-long v15, v0, v14

    add-long/2addr v12, v15

    xor-long/2addr v0, v12

    .line 225
    shl-long v12, v4, v14

    xor-long/2addr v12, v0

    add-long/2addr v4, v12

    .line 226
    add-long/2addr v2, v10

    .line 222
    .end local v9    # "b":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 229
    .end local v6    # "arr$":[B
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    .end local v10    # "tmp":J
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [J

    .line 230
    .local v6, "result":[J
    const/4 v7, 0x0

    const-wide/32 v8, 0x7fffffff

    and-long v10, v0, v8

    aput-wide v10, v6, v7

    .line 231
    and-long v7, v4, v8

    const/4 v9, 0x1

    aput-wide v7, v6, v9

    .line 233
    return-object v6
.end method

.method public static oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "seed"    # Ljava/lang/String;

    .line 241
    const-wide/32 v0, 0x1ffffff

    .line 245
    .local v0, "max":J
    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/Util;->oldHash(Ljava/lang/String;)J

    move-result-wide v2

    .line 250
    .local v2, "hp":J
    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/Util;->oldHash(Ljava/lang/String;)J

    move-result-wide v4

    .line 252
    .local v4, "hm":J
    xor-long v6, v2, v4

    .line 253
    .local v6, "nr":J
    rem-long/2addr v6, v0

    .line 254
    move-wide v8, v6

    .line 255
    .local v8, "s1":J
    const-wide/16 v10, 0x2

    div-long v10, v6, v10

    .line 257
    .local v10, "s2":J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    new-array v12, v12, [C

    .line 259
    .local v12, "chars":[C
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 260
    const-wide/16 v14, 0x3

    mul-long v14, v14, v8

    add-long/2addr v14, v10

    rem-long v8, v14, v0

    .line 261
    add-long v14, v8, v10

    const-wide/16 v16, 0x21

    add-long v14, v14, v16

    rem-long v10, v14, v0

    .line 262
    long-to-double v14, v8

    move-wide/from16 v16, v2

    .end local v2    # "hp":J
    .local v16, "hp":J
    long-to-double v2, v0

    div-double/2addr v14, v2

    .line 263
    .local v14, "d":D
    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    mul-double v2, v2, v14

    const-wide/high16 v18, 0x4050000000000000L    # 64.0

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    .line 264
    .local v2, "b":B
    int-to-char v3, v2

    aput-char v3, v12, v13

    .line 259
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v16

    goto :goto_0

    .end local v14    # "d":D
    .end local v16    # "hp":J
    .local v2, "hp":J
    :cond_1
    move-wide/from16 v16, v2

    .line 267
    .end local v2    # "hp":J
    .end local v13    # "i":I
    .restart local v16    # "hp":J
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 246
    .end local v4    # "hm":J
    .end local v6    # "nr":J
    .end local v8    # "s1":J
    .end local v10    # "s2":J
    .end local v12    # "chars":[C
    .end local v16    # "hp":J
    :cond_2
    :goto_1
    return-object p0
.end method

.method static oldHash(Ljava/lang/String;)J
    .locals 11
    .param p0, "password"    # Ljava/lang/String;

    .line 271
    const-wide/32 v0, 0x50305735

    .line 272
    .local v0, "nr":J
    const-wide/16 v2, 0x7

    .line 275
    .local v2, "nr2":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 276
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 277
    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-long v5, v5

    .line 281
    .local v5, "tmp":J
    const-wide/16 v7, 0x3f

    and-long/2addr v7, v0

    add-long/2addr v7, v2

    mul-long v7, v7, v5

    const/16 v9, 0x8

    shl-long v9, v0, v9

    add-long/2addr v7, v9

    xor-long/2addr v0, v7

    .line 282
    add-long/2addr v2, v5

    .line 275
    .end local v5    # "tmp":J
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    .end local v4    # "i":I
    :cond_2
    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, v0

    return-wide v4
.end method

.method private static randomInit(JJ)Lcom/mysql/jdbc/Util$RandStructcture;
    .locals 3
    .param p0, "seed1"    # J
    .param p2, "seed2"    # J

    .line 289
    new-instance v0, Lcom/mysql/jdbc/Util$RandStructcture;

    sget-object v1, Lcom/mysql/jdbc/Util;->enclosingInstance:Lcom/mysql/jdbc/Util;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Util$RandStructcture;-><init>(Lcom/mysql/jdbc/Util;)V

    .line 291
    .local v0, "randStruct":Lcom/mysql/jdbc/Util$RandStructcture;
    const-wide/32 v1, 0x3fffffff

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    .line 292
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValueDbl:D

    .line 293
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long v1, p0, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    .line 294
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long v1, p2, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    .line 296
    return-object v0
.end method

.method private static rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D
    .locals 4
    .param p0, "randStruct"    # Lcom/mysql/jdbc/Util$RandStructcture;

    .line 300
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    .line 301
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x21

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    .line 303
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValueDbl:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static scramble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 313
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 314
    .local v1, "to":[B
    const-string v2, ""

    .line 316
    .local v2, "val":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 318
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 319
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;)[J

    move-result-object v0

    .line 320
    .local v0, "hashPass":[J
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v4

    .line 322
    .local v4, "hashMessage":[J
    aget-wide v5, v0, v3

    aget-wide v7, v4, v3

    xor-long/2addr v5, v7

    const/4 v3, 0x1

    aget-wide v7, v0, v3

    aget-wide v9, v4, v3

    xor-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Lcom/mysql/jdbc/Util;->randomInit(JJ)Lcom/mysql/jdbc/Util$RandStructcture;

    move-result-object v3

    .line 324
    .local v3, "randStruct":Lcom/mysql/jdbc/Util$RandStructcture;
    const/4 v5, 0x0

    .line 325
    .local v5, "msgPos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 326
    .local v6, "msgLength":I
    const/4 v7, 0x0

    .line 328
    .local v7, "toPos":I
    :goto_0
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "msgPos":I
    .local v8, "msgPos":I
    const-wide/high16 v9, 0x403f000000000000L    # 31.0

    if-ge v5, v6, :cond_0

    .line 329
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "toPos":I
    .local v5, "toPos":I
    invoke-static {v3}, Lcom/mysql/jdbc/Util;->rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D

    move-result-wide v11

    mul-double v11, v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4050000000000000L    # 64.0

    add-double/2addr v9, v11

    double-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v7

    move v7, v5

    move v5, v8

    goto :goto_0

    .line 333
    .end local v5    # "toPos":I
    .restart local v7    # "toPos":I
    :cond_0
    invoke-static {v3}, Lcom/mysql/jdbc/Util;->rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D

    move-result-wide v11

    mul-double v11, v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    int-to-byte v5, v5

    .line 335
    .local v5, "extra":B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v10, v1

    if-ge v9, v10, :cond_1

    .line 336
    aget-byte v10, v1, v9

    xor-int/2addr v10, v5

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 335
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 339
    .end local v9    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 342
    .end local v0    # "hashPass":[J
    .end local v3    # "randStruct":Lcom/mysql/jdbc/Util$RandStructcture;
    .end local v4    # "hashMessage":[J
    .end local v5    # "extra":B
    .end local v6    # "msgLength":I
    .end local v7    # "toPos":I
    .end local v8    # "msgPos":I
    :cond_2
    return-object v2
.end method

.method public static secondsSinceMillis(J)J
    .locals 4
    .param p0, "timeInMillis"    # J

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "traceBuf":Ljava/lang/StringBuilder;
    const-string v1, "Util.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    if-eqz p0, :cond_1

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 364
    const-string v2, "Util.2"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 370
    .local v2, "out":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 372
    .local v3, "printOut":Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 374
    const-string v4, "Util.3"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/StringWriter;
    .end local v3    # "printOut":Ljava/io/PrintWriter;
    :cond_1
    const-string v1, "Util.4"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static truncateAndConvertToInt(J)I
    .locals 3
    .param p0, "longValue"    # J

    .line 642
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    :goto_0
    return v0
.end method

.method public static truncateAndConvertToInt([J)[I
    .locals 7
    .param p0, "longArray"    # [J

    .line 652
    array-length v0, p0

    new-array v0, v0, [I

    .line 654
    .local v0, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 655
    aget-wide v2, p0, v1

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const v2, 0x7fffffff

    goto :goto_1

    :cond_0
    aget-wide v2, p0, v1

    const-wide/32 v4, -0x80000000

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/high16 v2, -0x80000000

    goto :goto_1

    :cond_1
    aget-wide v2, p0, v1

    long-to-int v2, v2

    :goto_1
    aput v2, v0, v1

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method
