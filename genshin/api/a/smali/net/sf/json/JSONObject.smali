.class public final Lnet/sf/json/JSONObject;
.super Lnet/sf/json/AbstractJSON;
.source "JSONObject.java"

# interfaces
.implements Lnet/sf/json/JSON;
.implements Ljava/util/Map;
.implements Ljava/lang/Comparable;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private nullObject:Z

.field private properties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const-class v0, Lnet/sf/json/JSONObject;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1449
    invoke-direct {p0}, Lnet/sf/json/AbstractJSON;-><init>()V

    .line 1450
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    .line 1451
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isNull"    # Z

    .line 1457
    invoke-direct {p0}, Lnet/sf/json/JSONObject;-><init>()V

    .line 1458
    iput-boolean p1, p0, Lnet/sf/json/JSONObject;->nullObject:Z

    .line 1459
    return-void
.end method

.method private _accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2630
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2634
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2635
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    goto :goto_0

    .line 2637
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2638
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_1

    .line 2639
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONArray;

    invoke-virtual {v1, p2, p3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 2641
    :cond_1
    new-instance v1, Lnet/sf/json/JSONArray;

    invoke-direct {v1}, Lnet/sf/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lnet/sf/json/JSONObject;->setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 2646
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 2631
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Can\'t accumulate on null object"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static _fromBean(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 4
    .param p0, "bean"    # Ljava/lang/Object;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 655
    invoke-static {p0}, Lnet/sf/json/JSONObject;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 665
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 666
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 667
    throw v1

    .line 659
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 660
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 661
    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 662
    throw v0

    .line 670
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 672
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/json/JsonConfig;->findJsonBeanProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/JsonBeanProcessor;

    move-result-object v0

    .line 673
    .local v0, "processor":Lnet/sf/json/processors/JsonBeanProcessor;
    if-eqz v0, :cond_2

    .line 674
    const/4 v1, 0x0

    .line 676
    .local v1, "json":Lnet/sf/json/JSONObject;
    :try_start_1
    invoke-interface {v0, p0, p1}, Lnet/sf/json/processors/JsonBeanProcessor;->processBean(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v2

    move-object v1, v2

    .line 677
    if-nez v1, :cond_1

    .line 678
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/json/JsonConfig;->findDefaultValueProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/DefaultValueProcessor;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/sf/json/processors/DefaultValueProcessor;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/json/JSONObject;

    move-object v1, v2

    .line 680
    if-nez v1, :cond_1

    .line 681
    new-instance v2, Lnet/sf/json/JSONObject;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lnet/sf/json/JSONObject;-><init>(Z)V

    move-object v1, v2

    .line 684
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 685
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 695
    nop

    .line 696
    return-object v1

    .line 690
    :catch_2
    move-exception v2

    .line 691
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 692
    new-instance v3, Lnet/sf/json/JSONException;

    invoke-direct {v3, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 693
    .local v3, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v3, p1}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 694
    throw v3

    .line 686
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "jsone":Lnet/sf/json/JSONException;
    :catch_3
    move-exception v2

    .line 687
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 688
    invoke-static {v2, p1}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 689
    throw v2

    .line 699
    .end local v1    # "json":Lnet/sf/json/JSONObject;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :cond_2
    invoke-static {p0, p1}, Lnet/sf/json/JSONObject;->defaultBeanProcessing(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v1

    .line 700
    .local v1, "jsonObject":Lnet/sf/json/JSONObject;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 701
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 702
    return-object v1
.end method

.method private static _fromDynaBean(Lorg/apache/commons/beanutils/DynaBean;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 19
    .param p0, "bean"    # Lorg/apache/commons/beanutils/DynaBean;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 826
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    if-nez v1, :cond_0

    .line 827
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 828
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 829
    new-instance v0, Lnet/sf/json/JSONObject;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v0

    .line 832
    :cond_0
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 842
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 843
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v2, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 844
    throw v2

    .line 836
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 837
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 838
    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 839
    throw v0

    .line 847
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_1
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 849
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    move-object v9, v0

    .line 851
    .local v9, "jsonObject":Lnet/sf/json/JSONObject;
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 853
    .local v0, "props":[Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getMergedExcludes()Ljava/util/Collection;

    move-result-object v2

    move-object v10, v2

    .line 854
    .local v10, "exclusions":Ljava/util/Collection;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getJsonPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v2

    move-object v11, v2

    .line 855
    .local v11, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_0
    array-length v2, v0

    if-ge v12, v2, :cond_6

    .line 856
    const/4 v2, 0x0

    .line 857
    .local v2, "bypass":Z
    aget-object v3, v0, v12

    move-object v13, v3

    .line 858
    .local v13, "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v13}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 859
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 860
    goto :goto_2

    .line 862
    :cond_2
    invoke-virtual {v13}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object v15, v3

    .line 863
    .local v15, "type":Ljava/lang/Class;
    invoke-virtual {v13}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 864
    .local v3, "value":Ljava/lang/Object;
    if-eqz v11, :cond_3

    invoke-interface {v11, v1, v14, v3}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 865
    goto :goto_2

    .line 867
    :cond_3
    invoke-virtual {v8, v15, v14}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v4

    move-object v7, v4

    .line 868
    .local v7, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    if-eqz v7, :cond_5

    .line 869
    invoke-interface {v7, v14, v3, v8}, Lnet/sf/json/processors/JsonValueProcessor;->processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 870
    const/4 v2, 0x1

    .line 871
    invoke-static {v3}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_1

    .line 872
    :cond_4
    new-instance v4, Lnet/sf/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value is not a valid JSON value. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v9    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local p0    # "bean":Lorg/apache/commons/beanutils/DynaBean;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v4

    .line 868
    .restart local v9    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local p0    # "bean":Lorg/apache/commons/beanutils/DynaBean;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_5
    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 875
    .end local v2    # "bypass":Z
    .end local v3    # "value":Ljava/lang/Object;
    .local v16, "bypass":Z
    .local v17, "value":Ljava/lang/Object;
    :goto_1
    move-object v2, v9

    move-object v3, v14

    move-object/from16 v4, v17

    move-object v5, v15

    move-object/from16 v6, p1

    move-object/from16 v18, v7

    .end local v7    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    .local v18, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    move/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->setValue(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Z)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 855
    .end local v13    # "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/Class;
    .end local v16    # "bypass":Z
    .end local v17    # "value":Ljava/lang/Object;
    .end local v18    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 886
    .end local v0    # "props":[Lorg/apache/commons/beanutils/DynaProperty;
    .end local v10    # "exclusions":Ljava/util/Collection;
    .end local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v12    # "i":I
    :cond_6
    nop

    .line 888
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 889
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 890
    return-object v9

    .line 881
    :catch_2
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 883
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 884
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v2, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 885
    throw v2

    .line 877
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :catch_3
    move-exception v0

    .line 878
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 879
    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 880
    throw v0
.end method

.method private static _fromJSONObject(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 10
    .param p0, "object"    # Lnet/sf/json/JSONObject;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 894
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 900
    :cond_0
    invoke-static {p0}, Lnet/sf/json/JSONObject;->addInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 902
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 910
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 911
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 912
    throw v1

    .line 904
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 905
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 906
    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 907
    throw v0

    .line 915
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_1
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 917
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->names(Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v1

    .line 918
    .local v1, "sa":Lnet/sf/json/JSONArray;
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getMergedExcludes()Ljava/util/Collection;

    move-result-object v2

    .line 919
    .local v2, "exclusions":Ljava/util/Collection;
    new-instance v3, Lnet/sf/json/JSONObject;

    invoke-direct {v3}, Lnet/sf/json/JSONObject;-><init>()V

    .line 920
    .local v3, "jsonObject":Lnet/sf/json/JSONObject;
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getJsonPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v4

    .line 921
    .local v4, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    invoke-virtual {v1}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 922
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 923
    .local v6, "k":Ljava/lang/Object;
    if-eqz v6, :cond_8

    .line 926
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->isAllowNonStringKeys()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 927
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v7, "JSON keys must be strings."

    invoke-direct {v0, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_3
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 930
    .local v7, "key":Ljava/lang/String;
    const-string v8, "null"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 933
    invoke-interface {v2, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 934
    goto :goto_0

    .line 936
    :cond_4
    invoke-virtual {p0, v7}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 937
    .local v8, "value":Ljava/lang/Object;
    if-eqz v4, :cond_5

    invoke-interface {v4, p0, v7, v8}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 938
    goto :goto_0

    .line 940
    :cond_5
    iget-object v9, v3, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 941
    invoke-virtual {v3, v7, v8, p1}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 942
    invoke-static {v7, v8, v0, p1}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    goto :goto_2

    .line 944
    :cond_6
    invoke-direct {v3, v7, v8, p1}, Lnet/sf/json/JSONObject;->setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 945
    const/4 v9, 0x0

    invoke-static {v7, v8, v9, p1}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    .line 947
    .end local v6    # "k":Ljava/lang/Object;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_0

    .line 931
    .restart local v6    # "k":Ljava/lang/Object;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v8, "JSON keys must not be null nor the \'null\' string."

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    .end local v7    # "key":Ljava/lang/String;
    :cond_8
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v7, "JSON keys cannot be null."

    invoke-direct {v0, v7}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    .end local v5    # "i":Ljava/util/Iterator;
    .end local v6    # "k":Ljava/lang/Object;
    :cond_9
    invoke-static {p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 950
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 951
    return-object v3

    .line 895
    .end local v1    # "sa":Lnet/sf/json/JSONArray;
    .end local v2    # "exclusions":Ljava/util/Collection;
    .end local v3    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v4    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_a
    :goto_3
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 896
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 897
    new-instance v1, Lnet/sf/json/JSONObject;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v1
.end method

.method private static _fromJSONString(Lnet/sf/json/JSONString;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p0, "string"    # Lnet/sf/json/JSONString;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 955
    new-instance v0, Lnet/sf/json/util/JSONTokener;

    invoke-interface {p0}, Lnet/sf/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/util/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static _fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 21
    .param p0, "tokener"    # Lnet/sf/json/util/JSONTokener;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 965
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\""

    :try_start_0
    const-string v3, "null.*"

    invoke-virtual {v1, v3}, Lnet/sf/json/util/JSONTokener;->matches(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 966
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 967
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 968
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0, v4}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v0

    .line 971
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v3

    const/16 v5, 0x7b

    if-ne v3, v5, :cond_18

    .line 974
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 976
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getMergedExcludes()Ljava/util/Collection;

    move-result-object v3

    .line 977
    .local v3, "exclusions":Ljava/util/Collection;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getJsonPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v6

    .line 978
    .local v6, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    new-instance v7, Lnet/sf/json/JSONObject;

    invoke-direct {v7}, Lnet/sf/json/JSONObject;-><init>()V

    .line 980
    .local v7, "jsonObject":Lnet/sf/json/JSONObject;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v8

    .line 981
    .local v8, "c":C
    sparse-switch v8, :sswitch_data_0

    .line 988
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->back()V

    goto :goto_1

    .line 985
    :sswitch_0
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 986
    return-object v7

    .line 983
    :sswitch_1
    const-string v0, "A JSONObject text must end with \'}\'"

    invoke-virtual {v1, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 989
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lnet/sf/json/util/JSONTokener;->nextValue(Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 997
    .local v9, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v10

    move v8, v10

    .line 998
    const/16 v10, 0x3d

    if-ne v8, v10, :cond_1

    .line 999
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v10

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_2

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->back()V

    goto :goto_2

    .line 1002
    :cond_1
    const/16 v10, 0x3a

    if-ne v8, v10, :cond_17

    .line 1006
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->peek()C

    move-result v10

    .line 1007
    .local v10, "peek":C
    const/16 v11, 0x22

    if-eq v10, v11, :cond_4

    const/16 v11, 0x27

    if-ne v10, v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x1

    .line 1008
    .local v11, "quoted":Z
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lnet/sf/json/util/JSONTokener;->nextValue(Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v13
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    .local v13, "v":Ljava/lang/Object;
    const-string v14, "Expected a \',\' or \'}\'"

    const/16 v15, 0x7d

    if-nez v11, :cond_e

    :try_start_1
    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isFunctionHeader(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    goto/16 :goto_8

    .line 1042
    :cond_5
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lnet/sf/json/util/JSONUtils;->getFunctionParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1044
    .local v17, "params":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1045
    .local v16, "i":I
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v19, v18

    .line 1047
    .local v19, "sb":Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v18

    move/from16 v20, v18

    .line 1048
    .local v20, "ch":C
    move/from16 v12, v20

    .end local v20    # "ch":C
    .local v12, "ch":C
    if-nez v12, :cond_6

    .line 1049
    move-object/from16 v5, v19

    goto :goto_6

    .line 1051
    :cond_6
    if-ne v12, v5, :cond_7

    .line 1052
    add-int/lit8 v16, v16, 0x1

    .line 1054
    :cond_7
    if-ne v12, v15, :cond_8

    .line 1055
    add-int/lit8 v16, v16, -0x1

    .line 1057
    :cond_8
    move-object/from16 v5, v19

    .end local v19    # "sb":Ljava/lang/StringBuffer;
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1058
    if-nez v16, :cond_d

    .line 1059
    nop

    .line 1062
    .end local v12    # "ch":C
    :goto_6
    if-nez v16, :cond_c

    .line 1066
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1067
    .local v12, "text":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, -0x1

    invoke-virtual {v12, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 1069
    new-instance v15, Lnet/sf/json/JSONFunction;

    move-object/from16 v4, v17

    .end local v17    # "params":Ljava/lang/String;
    .local v4, "params":Ljava/lang/String;
    if-eqz v4, :cond_9

    move-object/from16 v17, v5

    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .local v17, "sb":Ljava/lang/StringBuffer;
    const-string v5, ","

    invoke-static {v4, v5}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .end local v17    # "sb":Ljava/lang/StringBuffer;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    move-object/from16 v17, v5

    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v17    # "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    :goto_7
    invoke-direct {v15, v5, v12}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v15

    .line 1071
    .local v5, "value":Ljava/lang/Object;
    if-eqz v6, :cond_a

    invoke-interface {v6, v1, v9, v5}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 1072
    :cond_a
    iget-object v15, v7, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1073
    invoke-virtual {v7, v9, v5, v2}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1074
    const/4 v15, 0x1

    invoke-static {v9, v5, v15, v2}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    goto :goto_a

    .line 1076
    :cond_b
    invoke-virtual {v7, v9, v5, v2}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1077
    const/4 v15, 0x0

    invoke-static {v9, v5, v15, v2}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    goto :goto_a

    .line 1063
    .end local v4    # "params":Ljava/lang/String;
    .end local v12    # "text":Ljava/lang/String;
    .local v5, "sb":Ljava/lang/StringBuffer;
    .local v17, "params":Ljava/lang/String;
    :cond_c
    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v4    # "params":Ljava/lang/String;
    .local v17, "sb":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbalanced \'{\' or \'}\' on prop: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1058
    .end local v4    # "params":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .local v12, "ch":C
    .local v17, "params":Ljava/lang/String;
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_d
    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .line 1061
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v12    # "ch":C
    .restart local v4    # "params":Ljava/lang/String;
    .local v17, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v19, v17

    const/16 v5, 0x7b

    const/16 v15, 0x7d

    move-object/from16 v17, v4

    const/4 v4, 0x1

    goto/16 :goto_5

    .line 1010
    .end local v4    # "params":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    :cond_e
    :goto_8
    invoke-interface {v3, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 1024
    goto :goto_9

    .line 1021
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1022
    return-object v7

    .line 1014
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_f

    .line 1015
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1016
    return-object v7

    .line 1018
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 1019
    const/4 v4, 0x1

    const/16 v5, 0x7b

    goto/16 :goto_0

    .line 1024
    :goto_9
    invoke-virtual {v1, v14}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1028
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_10
    if-eqz v6, :cond_12

    invoke-interface {v6, v1, v9, v13}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_b

    .line 1086
    :cond_11
    :goto_a
    const/4 v4, 0x1

    goto :goto_c

    .line 1029
    :cond_12
    :goto_b
    if-eqz v11, :cond_14

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object v4, v13

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lnet/sf/json/util/JSONUtils;->mayBeJSON(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1030
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 1032
    :cond_14
    iget-object v4, v7, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1033
    invoke-virtual {v7, v9, v13, v2}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1034
    const/4 v4, 0x1

    invoke-static {v9, v13, v4, v2}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    goto :goto_c

    .line 1036
    :cond_15
    const/4 v4, 0x1

    invoke-virtual {v7, v9, v13, v2}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1037
    const/4 v5, 0x0

    invoke-static {v9, v13, v5, v2}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    .line 1086
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v5

    sparse-switch v5, :sswitch_data_2

    .line 1099
    goto :goto_d

    .line 1096
    :sswitch_4
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1097
    return-object v7

    .line 1089
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v5

    const/16 v12, 0x7d

    if-ne v5, v12, :cond_16

    .line 1090
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1091
    return-object v7

    .line 1093
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 1094
    nop

    .line 1101
    .end local v10    # "peek":C
    .end local v11    # "quoted":Z
    .end local v13    # "v":Ljava/lang/Object;
    const/16 v5, 0x7b

    goto/16 :goto_0

    .line 1099
    .restart local v10    # "peek":C
    .restart local v11    # "quoted":Z
    .restart local v13    # "v":Ljava/lang/Object;
    :goto_d
    invoke-virtual {v1, v14}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1003
    .end local v10    # "peek":C
    .end local v11    # "quoted":Z
    .end local v13    # "v":Ljava/lang/Object;
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_17
    const-string v0, "Expected a \':\' after a key"

    invoke-virtual {v1, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 972
    .end local v3    # "exclusions":Ljava/util/Collection;
    .end local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v7    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v8    # "c":C
    .end local v9    # "key":Ljava/lang/String;
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_18
    const-string v0, "A JSONObject text must begin with \'{\'"

    invoke-virtual {v1, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1102
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v0, v2}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1104
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_3
        0x3b -> :sswitch_3
        0x7d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_5
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private static _fromMap(Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 19
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1109
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const/4 v0, 0x1

    if-nez v1, :cond_0

    .line 1110
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1111
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1112
    new-instance v2, Lnet/sf/json/JSONObject;

    invoke-direct {v2, v0}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v2

    .line 1115
    :cond_0
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->addInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1117
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 1125
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 1126
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v2, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1127
    throw v2

    .line 1119
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 1120
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 1121
    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1122
    throw v0

    .line 1130
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_1
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1132
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getMergedExcludes()Ljava/util/Collection;

    move-result-object v9

    .line 1133
    .local v9, "exclusions":Ljava/util/Collection;
    new-instance v2, Lnet/sf/json/JSONObject;

    invoke-direct {v2}, Lnet/sf/json/JSONObject;-><init>()V

    move-object v10, v2

    .line 1134
    .local v10, "jsonObject":Lnet/sf/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getJsonPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v11

    .line 1136
    .local v11, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :try_start_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v12, v2

    .line 1137
    .local v12, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1138
    const/4 v2, 0x0

    .line 1139
    .local v2, "bypass":Z
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v13, v3

    .line 1140
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    .line 1141
    .local v14, "k":Ljava/lang/Object;
    if-eqz v14, :cond_b

    .line 1144
    instance-of v3, v14, Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isAllowNonStringKeys()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1145
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v3, "JSON keys must be strings."

    invoke-direct {v0, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local v9    # "exclusions":Ljava/util/Collection;
    .end local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local p0    # "map":Ljava/util/Map;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1147
    .restart local v9    # "exclusions":Ljava/util/Collection;
    .restart local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local p0    # "map":Ljava/util/Map;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_3
    :goto_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 1148
    .local v15, "key":Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1151
    invoke-interface {v9, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1152
    goto :goto_0

    .line 1154
    :cond_4
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1155
    .local v3, "value":Ljava/lang/Object;
    if-eqz v11, :cond_5

    invoke-interface {v11, v1, v15, v3}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1156
    goto :goto_0

    .line 1158
    :cond_5
    if-eqz v3, :cond_8

    .line 1159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v8, v4, v15}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v4

    move-object v7, v4

    .line 1161
    .local v7, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    if-eqz v7, :cond_7

    .line 1162
    invoke-interface {v7, v15, v3, v8}, Lnet/sf/json/processors/JsonValueProcessor;->processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 1163
    const/4 v2, 0x1

    .line 1164
    invoke-static {v3}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_2

    .line 1165
    :cond_6
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value is not a valid JSON value. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v9    # "exclusions":Ljava/util/Collection;
    .end local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local p0    # "map":Ljava/util/Map;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1161
    .restart local v9    # "exclusions":Ljava/util/Collection;
    .restart local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local p0    # "map":Ljava/util/Map;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_7
    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 1168
    .end local v2    # "bypass":Z
    .end local v3    # "value":Ljava/lang/Object;
    .local v16, "bypass":Z
    .local v17, "value":Ljava/lang/Object;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v2, v10

    move-object v3, v15

    move-object/from16 v4, v17

    move-object/from16 v6, p1

    move-object/from16 v18, v7

    .end local v7    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    .local v18, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    move/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->setValue(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Z)V

    .line 1169
    .end local v18    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    goto :goto_3

    .line 1170
    .end local v16    # "bypass":Z
    .end local v17    # "value":Ljava/lang/Object;
    .restart local v2    # "bypass":Z
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_8
    iget-object v4, v10, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1171
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v4

    invoke-virtual {v10, v15, v4}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 1172
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v4

    invoke-static {v15, v4, v0, v8}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    goto :goto_3

    .line 1174
    :cond_9
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v4

    invoke-virtual {v10, v15, v4}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 1175
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v15, v4, v5, v8}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    .line 1178
    .end local v2    # "bypass":Z
    .end local v3    # "value":Ljava/lang/Object;
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v14    # "k":Ljava/lang/Object;
    .end local v15    # "key":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 1149
    .restart local v2    # "bypass":Z
    .restart local v13    # "entry":Ljava/util/Map$Entry;
    .restart local v14    # "k":Ljava/lang/Object;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "JSON keys must not be null nor the \'null\' string."

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v9    # "exclusions":Ljava/util/Collection;
    .end local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local p0    # "map":Ljava/util/Map;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1142
    .end local v15    # "key":Ljava/lang/String;
    .restart local v9    # "exclusions":Ljava/util/Collection;
    .restart local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local p0    # "map":Ljava/util/Map;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_b
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v3, "JSON keys cannot be null."

    invoke-direct {v0, v3}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v9    # "exclusions":Ljava/util/Collection;
    .end local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local p0    # "map":Ljava/util/Map;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1188
    .end local v2    # "bypass":Z
    .end local v12    # "entries":Ljava/util/Iterator;
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v14    # "k":Ljava/lang/Object;
    .restart local v9    # "exclusions":Ljava/util/Collection;
    .restart local v10    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local v11    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local p0    # "map":Ljava/util/Map;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_c
    nop

    .line 1190
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 1191
    invoke-static/range {p1 .. p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1192
    return-object v10

    .line 1183
    :catch_2
    move-exception v0

    .line 1184
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 1185
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 1186
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v2, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1187
    throw v2

    .line 1179
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :catch_3
    move-exception v0

    .line 1180
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 1181
    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1182
    throw v0
.end method

.method private static _fromString(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1196
    if-eqz p0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    new-instance v0, Lnet/sf/json/util/JSONTokener;

    invoke-direct {v0, p0}, Lnet/sf/json/util/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 1197
    :cond_1
    :goto_0
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1198
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1199
    new-instance v0, Lnet/sf/json/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v0
.end method

.method private _setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2670
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2671
    if-eqz p1, :cond_3

    .line 2675
    invoke-static {p2}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->mayBeJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2676
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2687
    :cond_0
    sget-object v0, Lnet/sf/json/util/CycleDetectionStrategy;->IGNORE_PROPERTY_OBJ:Lnet/sf/json/JSONObject;

    if-eq v0, p2, :cond_2

    sget-object v0, Lnet/sf/json/util/CycleDetectionStrategy;->IGNORE_PROPERTY_ARR:Lnet/sf/json/JSONArray;

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 2691
    :cond_1
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    :cond_2
    :goto_0
    return-object p0

    .line 2672
    :cond_3
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertPropertyValueToArray(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Ljava/util/Map;)Ljava/lang/Object;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "targetType"    # Ljava/lang/Class;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .param p4, "classMap"    # Ljava/util/Map;

    .line 1206
    invoke-static {p2}, Lnet/sf/json/util/JSONUtils;->getInnerComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1207
    .local v0, "innerType":Ljava/lang/Class;
    invoke-static {p0, p4}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    .line 1208
    .local v1, "targetInnerType":Ljava/lang/Class;
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1210
    move-object v0, v1

    .line 1212
    :cond_0
    invoke-virtual {p3}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v2

    .line 1213
    .local v2, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v2, v0}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 1214
    invoke-virtual {v2, p4}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 1215
    move-object v3, p1

    check-cast v3, Lnet/sf/json/JSONArray;

    invoke-static {v3, v2}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 1216
    .local v3, "array":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1221
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1223
    const-class v4, Ljava/lang/Object;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1224
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v4

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v4

    .line 1227
    .local v4, "morpher":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1229
    new-instance v6, Lnet/sf/ezmorph/array/ObjectArrayMorpher;

    new-instance v7, Lnet/sf/ezmorph/bean/BeanMorpher;

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lnet/sf/ezmorph/bean/BeanMorpher;-><init>(Ljava/lang/Class;Lnet/sf/ezmorph/MorpherRegistry;)V

    invoke-direct {v6, v7}, Lnet/sf/ezmorph/array/ObjectArrayMorpher;-><init>(Lnet/sf/ezmorph/Morpher;)V

    .line 1231
    .local v6, "beanMorpher":Lnet/sf/ezmorph/array/ObjectArrayMorpher;
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sf/ezmorph/MorpherRegistry;->registerMorpher(Lnet/sf/ezmorph/Morpher;)V

    .line 1234
    .end local v6    # "beanMorpher":Lnet/sf/ezmorph/array/ObjectArrayMorpher;
    :cond_2
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v6

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 1218
    .end local v4    # "morpher":Lnet/sf/ezmorph/Morpher;
    :cond_3
    :goto_0
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v4

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1239
    :cond_4
    :goto_1
    return-object v3
.end method

.method private static convertPropertyValueToCollection(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "classMap"    # Ljava/util/Map;
    .param p5, "collectionType"    # Ljava/lang/Class;

    .line 1255
    invoke-static {p0, p4}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    .line 1256
    .local v0, "targetClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    invoke-static {p3, p4}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 1257
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v1

    .line 1258
    .local v1, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v1, v0}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 1259
    invoke-virtual {v1, p4}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 1260
    invoke-virtual {v1, p5}, Lnet/sf/json/JsonConfig;->setCollectionType(Ljava/lang/Class;)V

    .line 1261
    move-object v2, p1

    check-cast v2, Lnet/sf/json/JSONArray;

    invoke-static {v2, v1}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method private static convertPropertyValueToList(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "classMap"    # Ljava/util/Map;

    .line 1244
    invoke-static {p0, p4}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    .line 1245
    .local v0, "targetClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    invoke-static {p3, p4}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 1246
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v1

    .line 1247
    .local v1, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v1, v0}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 1248
    invoke-virtual {v1, p4}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 1249
    move-object v2, p1

    check-cast v2, Lnet/sf/json/JSONArray;

    invoke-static {v2, v1}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1250
    .local v2, "list":Ljava/util/List;
    return-object v2
.end method

.method private static defaultBeanProcessing(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 22
    .param p0, "bean"    # Ljava/lang/Object;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 706
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, " has no read method. SKIPPED"

    const-string v10, "\' of "

    const-string v11, "Property \'"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 707
    .local v12, "beanClass":Ljava/lang/Class;
    invoke-virtual {v8, v12}, Lnet/sf/json/JsonConfig;->findJsonPropertyNameProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/PropertyNameProcessor;

    move-result-object v13

    .line 708
    .local v13, "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    invoke-virtual {v8, v12}, Lnet/sf/json/JsonConfig;->getMergedExcludes(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v14

    .line 709
    .local v14, "exclusions":Ljava/util/Collection;
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    move-object v15, v0

    .line 711
    .local v15, "jsonObject":Lnet/sf/json/JSONObject;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    move-object v7, v0

    .line 712
    .local v7, "pds":[Ljava/beans/PropertyDescriptor;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getJsonPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v0

    move-object v6, v0

    .line 713
    .local v6, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    array-length v0, v7
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    const-string v4, "Value is not a valid JSON value. "

    if-ge v5, v0, :cond_8

    .line 714
    const/4 v2, 0x0

    .line 715
    .local v2, "bypass":Z
    :try_start_1
    aget-object v0, v7, v5

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 716
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v14, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v16, v14

    goto/16 :goto_3

    .line 720
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isIgnoreTransientFields()Z

    move-result v0
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v3, v12, v8}, Lnet/sf/json/JSONObject;->isTransientField(Ljava/lang/String;Ljava/lang/Class;Lnet/sf/json/JsonConfig;)Z

    move-result v0
    :try_end_2
    .catch Lnet/sf/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_1

    .line 721
    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v16, v14

    goto/16 :goto_3

    .line 816
    .end local v2    # "bypass":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v0

    move-object v11, v14

    goto/16 :goto_b

    .line 812
    :catch_1
    move-exception v0

    move-object v11, v14

    goto/16 :goto_c

    .line 724
    .restart local v2    # "bypass":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    :cond_1
    :try_start_3
    aget-object v0, v7, v5

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catch Lnet/sf/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v16, v0

    .line 725
    .local v16, "type":Ljava/lang/Class;
    :try_start_4
    aget-object v0, v7, v5

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lnet/sf/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    .line 732
    nop

    .line 733
    :try_start_5
    aget-object v0, v7, v5

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 747
    aget-object v0, v7, v5

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->isTransient(Ljava/lang/reflect/AnnotatedElement;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v16, v14

    goto/16 :goto_3

    .line 749
    :cond_2
    invoke-static {v1, v3}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Lnet/sf/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 750
    .local v0, "value":Ljava/lang/Object;
    if-eqz v6, :cond_3

    :try_start_6
    invoke-interface {v6, v1, v3, v0}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17
    :try_end_6
    .catch Lnet/sf/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v17, :cond_3

    .line 751
    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v16, v14

    goto/16 :goto_3

    .line 753
    :cond_3
    move-object/from16 v1, v16

    .end local v16    # "type":Ljava/lang/Class;
    .local v1, "type":Ljava/lang/Class;
    :try_start_7
    invoke-virtual {v8, v12, v1, v3}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v16
    :try_end_7
    .catch Lnet/sf/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v17, v16

    .line 755
    .local v17, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    move-object/from16 v16, v14

    move-object/from16 v14, v17

    .end local v17    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    .local v14, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    .local v16, "exclusions":Ljava/util/Collection;
    if-eqz v14, :cond_5

    .line 756
    :try_start_8
    invoke-interface {v14, v3, v0, v8}, Lnet/sf/json/processors/JsonValueProcessor;->processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    .line 757
    const/4 v2, 0x1

    .line 758
    invoke-static {v0}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v17, v2

    goto :goto_1

    .line 759
    :cond_4
    new-instance v9, Lnet/sf/json/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v12    # "beanClass":Ljava/lang/Class;
    .end local v13    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v15    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v16    # "exclusions":Ljava/util/Collection;
    .end local p0    # "bean":Ljava/lang/Object;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v9

    .line 755
    .restart local v12    # "beanClass":Ljava/lang/Class;
    .restart local v13    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v15    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local v16    # "exclusions":Ljava/util/Collection;
    .restart local p0    # "bean":Ljava/lang/Object;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_5
    move/from16 v17, v2

    .line 762
    .end local v2    # "bypass":Z
    .local v17, "bypass":Z
    :goto_1
    if-eqz v13, :cond_6

    .line 763
    invoke-interface {v13, v12, v3}, Lnet/sf/json/processors/PropertyNameProcessor;->processPropertyName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object/from16 v18, v3

    goto :goto_2

    .line 762
    :cond_6
    move-object/from16 v18, v3

    .line 765
    .end local v3    # "key":Ljava/lang/String;
    .local v18, "key":Ljava/lang/String;
    :goto_2
    move-object v2, v15

    move-object/from16 v3, v18

    move-object v4, v0

    move/from16 v19, v5

    .end local v5    # "i":I
    .local v19, "i":I
    move-object v5, v1

    move-object/from16 v20, v1

    move-object v1, v6

    .end local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v1, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v20, "type":Ljava/lang/Class;
    move-object/from16 v6, p1

    move-object/from16 v21, v7

    .end local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .local v21, "pds":[Ljava/beans/PropertyDescriptor;
    move/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->setValue(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Z)V

    .line 766
    .end local v0    # "value":Ljava/lang/Object;
    .end local v14    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    goto :goto_3

    .line 767
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v17    # "bypass":Z
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "type":Ljava/lang/Class;
    .end local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    .restart local v2    # "bypass":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .local v14, "exclusions":Ljava/util/Collection;
    .local v16, "type":Ljava/lang/Class;
    :cond_7
    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v16

    move-object/from16 v16, v14

    .end local v5    # "i":I
    .end local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .end local v14    # "exclusions":Ljava/util/Collection;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v16, "exclusions":Ljava/util/Collection;
    .restart local v19    # "i":I
    .restart local v20    # "type":Ljava/lang/Class;
    .restart local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "warning":Ljava/lang/String;
    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->fireWarnEvent(Ljava/lang/String;Lnet/sf/json/JsonConfig;)V

    .line 769
    sget-object v4, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_3

    .line 726
    .end local v0    # "warning":Ljava/lang/String;
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v19    # "i":I
    .end local v20    # "type":Ljava/lang/Class;
    .end local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    .restart local v5    # "i":I
    .restart local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .restart local v14    # "exclusions":Ljava/util/Collection;
    .local v16, "type":Ljava/lang/Class;
    :catch_2
    move-exception v0

    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v16

    move-object/from16 v16, v14

    .line 728
    .end local v5    # "i":I
    .end local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .end local v14    # "exclusions":Ljava/util/Collection;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v16, "exclusions":Ljava/util/Collection;
    .restart local v19    # "i":I
    .restart local v20    # "type":Ljava/lang/Class;
    .restart local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "warning":Ljava/lang/String;
    invoke-static {v4, v8}, Lnet/sf/json/JSONObject;->fireWarnEvent(Ljava/lang/String;Lnet/sf/json/JsonConfig;)V

    .line 730
    sget-object v5, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_8
    .catch Lnet/sf/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 731
    nop

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "bypass":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "warning":Ljava/lang/String;
    .end local v20    # "type":Ljava/lang/Class;
    :goto_3
    add-int/lit8 v5, v19, 0x1

    move-object v6, v1

    move-object/from16 v14, v16

    move-object/from16 v7, v21

    move-object/from16 v1, p0

    .end local v19    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_0

    .line 816
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v5    # "i":I
    .end local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    :catch_3
    move-exception v0

    move-object/from16 v11, v16

    goto/16 :goto_b

    .line 812
    :catch_4
    move-exception v0

    move-object/from16 v11, v16

    goto/16 :goto_c

    .line 816
    .end local v16    # "exclusions":Ljava/util/Collection;
    .restart local v14    # "exclusions":Ljava/util/Collection;
    :catch_5
    move-exception v0

    move-object v11, v14

    .end local v14    # "exclusions":Ljava/util/Collection;
    .restart local v16    # "exclusions":Ljava/util/Collection;
    goto/16 :goto_b

    .line 812
    .end local v16    # "exclusions":Ljava/util/Collection;
    .restart local v14    # "exclusions":Ljava/util/Collection;
    :catch_6
    move-exception v0

    move-object v11, v14

    .end local v14    # "exclusions":Ljava/util/Collection;
    .restart local v16    # "exclusions":Ljava/util/Collection;
    goto/16 :goto_c

    .line 713
    .end local v16    # "exclusions":Ljava/util/Collection;
    .restart local v5    # "i":I
    .restart local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .restart local v14    # "exclusions":Ljava/util/Collection;
    :cond_8
    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v16, v14

    .line 775
    .end local v5    # "i":I
    .end local v6    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v7    # "pds":[Ljava/beans/PropertyDescriptor;
    .end local v14    # "exclusions":Ljava/util/Collection;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v16    # "exclusions":Ljava/util/Collection;
    .restart local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isIgnorePublicFields()Z

    move-result v0

    if-nez v0, :cond_10

    .line 776
    invoke-virtual {v12}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 777
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_4
    array-length v2, v0

    if-ge v9, v2, :cond_f

    .line 778
    const/4 v2, 0x0

    .line 779
    .restart local v2    # "bypass":Z
    aget-object v3, v0, v9

    move-object v10, v3

    .line 780
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catch Lnet/sf/json/JSONException; {:try_start_9 .. :try_end_9} :catch_a

    .line 781
    .restart local v3    # "key":Ljava/lang/String;
    move-object/from16 v11, v16

    .end local v16    # "exclusions":Ljava/util/Collection;
    .local v11, "exclusions":Ljava/util/Collection;
    :try_start_a
    invoke-interface {v11, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 782
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 785
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isIgnoreTransientFields()Z

    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catch Lnet/sf/json/JSONException; {:try_start_a .. :try_end_a} :catch_d

    if-eqz v5, :cond_a

    :try_start_b
    invoke-static {v10, v8}, Lnet/sf/json/JSONObject;->isTransient(Ljava/lang/reflect/AnnotatedElement;Lnet/sf/json/JsonConfig;)Z

    move-result v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Lnet/sf/json/JSONException; {:try_start_b .. :try_end_b} :catch_d

    if-eqz v5, :cond_a

    .line 786
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 809
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "bypass":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "field":Ljava/lang/reflect/Field;
    :catch_7
    move-exception v0

    move-object/from16 v17, v1

    goto/16 :goto_9

    .line 789
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "bypass":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    :cond_a
    :try_start_c
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    move-object v14, v5

    .line 790
    .local v14, "type":Ljava/lang/Class;
    move-object/from16 v7, p0

    invoke-virtual {v10, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catch Lnet/sf/json/JSONException; {:try_start_c .. :try_end_c} :catch_d

    .line 791
    .local v5, "value":Ljava/lang/Object;
    if-eqz v1, :cond_b

    :try_start_d
    invoke-interface {v1, v7, v3, v5}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Lnet/sf/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    if-eqz v6, :cond_b

    .line 792
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    goto :goto_7

    .line 794
    :cond_b
    :try_start_e
    invoke-virtual {v8, v12, v14, v3}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v6

    .line 795
    .local v6, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    if-eqz v6, :cond_d

    .line 796
    invoke-interface {v6, v3, v5, v8}, Lnet/sf/json/processors/JsonValueProcessor;->processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    .line 797
    const/4 v2, 0x1

    .line 798
    invoke-static {v5}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move v0, v2

    move-object v1, v5

    goto :goto_5

    .line 799
    :cond_c
    move-object/from16 v16, v0

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .local v16, "fields":[Ljava/lang/reflect/Field;
    new-instance v0, Lnet/sf/json/JSONException;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catch Lnet/sf/json/JSONException; {:try_start_e .. :try_end_e} :catch_d

    move-object/from16 v17, v1

    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v17, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v11    # "exclusions":Ljava/util/Collection;
    .end local v12    # "beanClass":Ljava/lang/Class;
    .end local v13    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v15    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    .end local p0    # "bean":Ljava/lang/Object;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 795
    .end local v16    # "fields":[Ljava/lang/reflect/Field;
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    .restart local v12    # "beanClass":Ljava/lang/Class;
    .restart local v13    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v15    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    .restart local p0    # "bean":Ljava/lang/Object;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_d
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v16    # "fields":[Ljava/lang/reflect/Field;
    .restart local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    move v0, v2

    move-object v1, v5

    .line 802
    .end local v2    # "bypass":Z
    .end local v5    # "value":Ljava/lang/Object;
    .local v0, "bypass":Z
    .local v1, "value":Ljava/lang/Object;
    :goto_5
    if-eqz v13, :cond_e

    .line 803
    invoke-interface {v13, v12, v3}, Lnet/sf/json/processors/PropertyNameProcessor;->processPropertyName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object/from16 v18, v3

    goto :goto_6

    .line 802
    :cond_e
    move-object/from16 v18, v3

    .line 805
    .end local v3    # "key":Ljava/lang/String;
    .restart local v18    # "key":Ljava/lang/String;
    :goto_6
    move-object v2, v15

    move-object/from16 v3, v18

    move-object/from16 v19, v4

    move-object v4, v1

    move-object v5, v14

    move-object/from16 v20, v6

    .end local v6    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    .local v20, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    move-object/from16 v6, p1

    move v7, v0

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->setValue(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Lnet/sf/json/JSONException; {:try_start_f .. :try_end_f} :catch_d

    .line 777
    .end local v0    # "bypass":Z
    .end local v1    # "value":Ljava/lang/Object;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "type":Ljava/lang/Class;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v4, v19

    move-object/from16 v16, v11

    goto/16 :goto_4

    .line 809
    .end local v9    # "i":I
    .end local v16    # "fields":[Ljava/lang/reflect/Field;
    :catch_8
    move-exception v0

    goto :goto_9

    .end local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v1, "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_9
    move-exception v0

    move-object/from16 v17, v1

    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    goto :goto_9

    .line 777
    .end local v11    # "exclusions":Ljava/util/Collection;
    .end local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v0, "fields":[Ljava/lang/reflect/Field;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v9    # "i":I
    .local v16, "exclusions":Ljava/util/Collection;
    :cond_f
    move-object/from16 v17, v1

    move-object/from16 v11, v16

    move-object/from16 v16, v0

    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    .local v16, "fields":[Ljava/lang/reflect/Field;
    .restart local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    goto :goto_8

    .line 775
    .end local v9    # "i":I
    .end local v11    # "exclusions":Ljava/util/Collection;
    .end local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v16, "exclusions":Ljava/util/Collection;
    :cond_10
    move-object/from16 v17, v1

    move-object/from16 v11, v16

    .line 811
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v16    # "exclusions":Ljava/util/Collection;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    .restart local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_8
    goto :goto_a

    .line 812
    .end local v11    # "exclusions":Ljava/util/Collection;
    .end local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    .restart local v16    # "exclusions":Ljava/util/Collection;
    :catch_a
    move-exception v0

    move-object/from16 v11, v16

    .end local v16    # "exclusions":Ljava/util/Collection;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    goto :goto_c

    .line 809
    .end local v11    # "exclusions":Ljava/util/Collection;
    .restart local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v16    # "exclusions":Ljava/util/Collection;
    .restart local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    :catch_b
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v11, v16

    .line 810
    .end local v1    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v16    # "exclusions":Ljava/util/Collection;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    .restart local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_9
    :try_start_10
    sget-object v1, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Couldn\'t read public fields."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Lnet/sf/json/JSONException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 821
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "jsonPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .end local v21    # "pds":[Ljava/beans/PropertyDescriptor;
    :goto_a
    nop

    .line 822
    return-object v15

    .line 816
    :catch_c
    move-exception v0

    goto :goto_b

    .line 812
    :catch_d
    move-exception v0

    goto :goto_c

    .line 816
    .end local v11    # "exclusions":Ljava/util/Collection;
    .local v14, "exclusions":Ljava/util/Collection;
    :catch_e
    move-exception v0

    move-object v11, v14

    .line 817
    .end local v14    # "exclusions":Ljava/util/Collection;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    :goto_b
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 818
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 819
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 820
    throw v1

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    .end local v11    # "exclusions":Ljava/util/Collection;
    .restart local v14    # "exclusions":Ljava/util/Collection;
    :catch_f
    move-exception v0

    move-object v11, v14

    .line 813
    .end local v14    # "exclusions":Ljava/util/Collection;
    .local v0, "jsone":Lnet/sf/json/JSONException;
    .restart local v11    # "exclusions":Ljava/util/Collection;
    :goto_c
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->removeInstance(Ljava/lang/Object;)V

    .line 814
    invoke-static {v0, v8}, Lnet/sf/json/JSONObject;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 815
    throw v0
.end method

.method private static findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "classMap"    # Ljava/util/Map;

    .line 1323
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1324
    .local v0, "targetClass":Ljava/lang/Class;
    if-nez v0, :cond_1

    .line 1328
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1329
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1331
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lnet/sf/json/regexp/RegexpUtils;->getMatcher(Ljava/lang/String;)Lnet/sf/json/regexp/RegexpMatcher;

    move-result-object v3

    invoke-interface {v3, p0}, Lnet/sf/json/regexp/RegexpMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Class;

    .line 1334
    goto :goto_1

    .line 1336
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_0
    goto :goto_0

    .line 1339
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 134
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 147
    if-eqz p0, :cond_d

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 149
    :cond_0
    instance-of v0, p0, Ljava/lang/Enum;

    if-nez v0, :cond_c

    .line 151
    instance-of v0, p0, Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_b

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-nez v0, :cond_b

    .line 154
    :cond_1
    instance-of v0, p0, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_2

    .line 155
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONObject;

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromJSONObject(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 156
    :cond_2
    instance-of v0, p0, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v0, :cond_3

    .line 157
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromDynaBean(Lorg/apache/commons/beanutils/DynaBean;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 158
    :cond_3
    instance-of v0, p0, Lnet/sf/json/util/JSONTokener;

    if-eqz v0, :cond_4

    .line 159
    move-object v0, p0

    check-cast v0, Lnet/sf/json/util/JSONTokener;

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 160
    :cond_4
    instance-of v0, p0, Lnet/sf/json/JSONString;

    if-eqz v0, :cond_5

    .line 161
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONString;

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromJSONString(Lnet/sf/json/JSONString;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 162
    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 163
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromMap(Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 164
    :cond_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 165
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sf/json/JSONObject;->_fromString(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 166
    :cond_7
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 169
    :cond_8
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 172
    invoke-static {p0, p1}, Lnet/sf/json/JSONObject;->_fromBean(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 170
    :cond_9
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "\'object\' is an array. Use JSONArray instead"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_a
    :goto_0
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    return-object v0

    .line 153
    :cond_b
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "\'object\' is an Annotation."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_c
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "\'object\' is an Enum. Use JSONArray instead"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_d
    :goto_1
    new-instance v0, Lnet/sf/json/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v0
.end method

.method private static isTransient(Ljava/lang/reflect/AnnotatedElement;Lnet/sf/json/JsonConfig;)Z
    .locals 5
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1354
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getIgnoreFieldAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "annotations":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1356
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1357
    .local v1, "annotationClassName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .end local v1    # "annotationClassName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 1358
    :catch_0
    move-exception v1

    .line 1359
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while inspecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for transient status."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1360
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1362
    .end local v0    # "annotations":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isTransientField(Ljava/lang/String;Ljava/lang/Class;Lnet/sf/json/JsonConfig;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1344
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1345
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1346
    :cond_0
    invoke-static {v0, p2}, Lnet/sf/json/JSONObject;->isTransient(Ljava/lang/reflect/AnnotatedElement;Lnet/sf/json/JsonConfig;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1347
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while inspecting field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for transient status."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1350
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private static morphPropertyValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "targetType"    # Ljava/lang/Class;

    .line 1366
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v0

    .line 1368
    .local v0, "morpher":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    sget-object v1, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t transform property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Will register a default Morpher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1372
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    new-instance v2, Lnet/sf/json/util/EnumMorpher;

    invoke-direct {v2, p3}, Lnet/sf/json/util/EnumMorpher;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lnet/sf/ezmorph/MorpherRegistry;->registerMorpher(Lnet/sf/ezmorph/Morpher;)V

    goto :goto_0

    .line 1376
    :cond_0
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    new-instance v2, Lnet/sf/ezmorph/bean/BeanMorpher;

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lnet/sf/ezmorph/bean/BeanMorpher;-><init>(Ljava/lang/Class;Lnet/sf/ezmorph/MorpherRegistry;)V

    invoke-virtual {v1, v2}, Lnet/sf/ezmorph/MorpherRegistry;->registerMorpher(Lnet/sf/ezmorph/Morpher;)V

    .line 1381
    :cond_1
    :goto_0
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1383
    return-object p1
.end method

.method private processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2699
    if-eqz p1, :cond_1

    .line 2700
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v0

    .line 2701
    .local v0, "processor":Lnet/sf/json/processors/JsonValueProcessor;
    if-eqz v0, :cond_1

    .line 2702
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lnet/sf/json/processors/JsonValueProcessor;->processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object p1

    .line 2703
    invoke-static {p1}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2704
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value is not a valid JSON value. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2708
    .end local v0    # "processor":Lnet/sf/json/processors/JsonValueProcessor;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/json/JSONObject;->_processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private processValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2712
    if-eqz p2, :cond_1

    .line 2713
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v0

    .line 2714
    .local v0, "processor":Lnet/sf/json/processors/JsonValueProcessor;
    if-eqz v0, :cond_1

    .line 2715
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Lnet/sf/json/processors/JsonValueProcessor;->processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object p2

    .line 2716
    invoke-static {p2}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2717
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value is not a valid JSON value. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2721
    .end local v0    # "processor":Lnet/sf/json/processors/JsonValueProcessor;
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lnet/sf/json/JSONObject;->_processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p0, "classMap"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .line 1299
    invoke-static {p1, p0}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    .line 1300
    .local v0, "targetClass":Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 1301
    invoke-static {p2, p0}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    .line 1303
    :cond_0
    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 1304
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    const-class v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 1306
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1307
    const-class v0, Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 1308
    :cond_2
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1309
    const-class v0, Ljava/util/LinkedHashSet;

    goto :goto_0

    .line 1310
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1311
    move-object v0, p3

    .line 1314
    :cond_4
    :goto_0
    return-object v0
.end method

.method private setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2736
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->processValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lnet/sf/json/JSONObject;->_setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V
    .locals 1
    .param p0, "bean"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1392
    invoke-virtual {p3}, Lnet/sf/json/JsonConfig;->getPropertySetStrategy()Lnet/sf/json/util/PropertySetStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lnet/sf/json/JsonConfig;->getPropertySetStrategy()Lnet/sf/json/util/PropertySetStrategy;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sf/json/util/PropertySetStrategy;->DEFAULT:Lnet/sf/json/util/PropertySetStrategy;

    .line 1394
    .local v0, "propertySetStrategy":Lnet/sf/json/util/PropertySetStrategy;
    :goto_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lnet/sf/json/util/PropertySetStrategy;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 1395
    return-void
.end method

.method private static setValue(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Z)V
    .locals 5
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;
    .param p4, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .param p5, "bypass"    # Z

    .line 1399
    const/4 v0, 0x0

    .line 1400
    .local v0, "accumulated":Z
    if-nez p2, :cond_1

    .line 1401
    invoke-virtual {p4, p3}, Lnet/sf/json/JsonConfig;->findDefaultValueProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/DefaultValueProcessor;

    move-result-object v1

    invoke-interface {v1, p3}, Lnet/sf/json/processors/DefaultValueProcessor;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 1403
    invoke-static {p2}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1404
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value is not a valid JSON value. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1407
    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1408
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1409
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1410
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lnet/sf/json/JSONArray;

    if-eqz v2, :cond_2

    .line 1411
    move-object v2, v1

    check-cast v2, Lnet/sf/json/JSONArray;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/sf/json/JSONArray;->addString(Ljava/lang/String;)Lnet/sf/json/JSONArray;

    goto :goto_1

    .line 1413
    :cond_2
    iget-object v2, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    new-instance v3, Lnet/sf/json/JSONArray;

    invoke-direct {v3}, Lnet/sf/json/JSONArray;-><init>()V

    invoke-virtual {v3, v1}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/sf/json/JSONArray;->addString(Ljava/lang/String;)Lnet/sf/json/JSONArray;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    .end local v1    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 1417
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1419
    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    .line 1421
    :cond_4
    if-nez p5, :cond_6

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 1424
    :cond_5
    invoke-direct {p0, p1, p2, p4}, Lnet/sf/json/JSONObject;->setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    goto :goto_4

    .line 1422
    :cond_6
    :goto_3
    iget-object v1, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    :goto_4
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 1429
    if-eqz v0, :cond_7

    .line 1430
    move-object v1, p2

    check-cast v1, Lnet/sf/json/JSONArray;

    .line 1431
    .local v1, "array":Lnet/sf/json/JSONArray;
    invoke-virtual {v1}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1433
    .end local v1    # "array":Lnet/sf/json/JSONArray;
    :cond_7
    invoke-static {p1, p2, v0, p4}, Lnet/sf/json/JSONObject;->firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V

    .line 1434
    return-void
.end method

.method public static toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;
    .locals 12
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;

    .line 180
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 186
    .local v1, "dynaBean":Lorg/apache/commons/beanutils/DynaBean;
    new-instance v2, Lnet/sf/json/JsonConfig;

    invoke-direct {v2}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 187
    .local v2, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->getProperties(Lnet/sf/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 188
    .local v3, "props":Ljava/util/Map;
    invoke-static {p0, v2}, Lnet/sf/json/util/JSONUtils;->newDynaBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v2}, Lnet/sf/json/JSONObject;->names(Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 190
    .local v4, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5, v2}, Lnet/sf/json/util/JSONUtils;->convertToJavaIdentifier(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 194
    .local v7, "type":Ljava/lang/Class;
    invoke-virtual {p0, v5}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 196
    .local v8, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {v8}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 197
    instance-of v9, v8, Lnet/sf/json/JSONArray;

    if-eqz v9, :cond_1

    .line 198
    move-object v9, v8

    check-cast v9, Lnet/sf/json/JSONArray;

    invoke-static {v9}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 199
    :cond_1
    const-class v9, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v7}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    const-class v9, Ljava/lang/Character;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    const-class v9, Lnet/sf/json/JSONFunction;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 205
    :cond_2
    move-object v9, v8

    check-cast v9, Lnet/sf/json/JSONObject;

    invoke-static {v9}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 203
    :cond_3
    :goto_1
    invoke-interface {v1, v6, v8}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 208
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 210
    sget-object v9, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tried to assign null value to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 211
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v9

    invoke-virtual {v9, v7, v0}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    :cond_5
    invoke-interface {v1, v6, v0}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_2
    nop

    .line 222
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Class;
    .end local v8    # "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 219
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/Class;
    .restart local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Lnet/sf/json/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while setting property="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "jsone":Lnet/sf/json/JSONException;
    throw v0

    .line 224
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    .end local v4    # "entries":Ljava/util/Iterator;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Class;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_6
    return-object v1

    .line 181
    .end local v1    # "dynaBean":Lorg/apache/commons/beanutils/DynaBean;
    .end local v2    # "jsonConfig":Lnet/sf/json/JsonConfig;
    .end local v3    # "props":Ljava/util/Map;
    :cond_7
    :goto_3
    return-object v0
.end method

.method public static toBean(Lnet/sf/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p1, "beanClass"    # Ljava/lang/Class;

    .line 231
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 232
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 233
    invoke-static {p0, v0}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toBean(Lnet/sf/json/JSONObject;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "classMap"    # Ljava/util/Map;

    .line 249
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 250
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 251
    invoke-virtual {v0, p2}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 252
    invoke-static {p0, v0}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toBean(Lnet/sf/json/JSONObject;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 21
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 472
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-nez v0, :cond_20

    if-nez v2, :cond_0

    goto/16 :goto_d

    .line 476
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 477
    .local v4, "rootClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 481
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getClassMap()Ljava/util/Map;

    move-result-object v0

    .line 482
    .local v0, "classMap":Ljava/util/Map;
    if-nez v0, :cond_1

    .line 483
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v5, v0

    goto :goto_0

    .line 482
    :cond_1
    move-object v5, v0

    .line 486
    .end local v0    # "classMap":Ljava/util/Map;
    .local v5, "classMap":Ljava/util/Map;
    :goto_0
    invoke-static/range {p0 .. p0}, Lnet/sf/json/util/JSONUtils;->getProperties(Lnet/sf/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    .line 487
    .local v6, "props":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getJavaPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v7

    .line 488
    .local v7, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    invoke-virtual {v1, v3}, Lnet/sf/json/JSONObject;->names(Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 489
    .local v8, "entries":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 490
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 491
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Class;

    .line 492
    .local v10, "type":Ljava/lang/Class;
    invoke-virtual {v1, v9}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 493
    .local v11, "value":Ljava/lang/Object;
    if-eqz v7, :cond_2

    invoke-interface {v7, v2, v9, v11}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    goto :goto_1

    .line 496
    :cond_2
    invoke-static {v9, v3}, Lnet/sf/json/util/JSONUtils;->convertToJavaIdentifier(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Ljava/lang/String;

    move-result-object v12

    .line 498
    .local v12, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, v12}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 499
    .local v0, "pd":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    if-nez v13, :cond_3

    .line 500
    sget-object v13, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Property \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\' of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " has no write method. SKIPPED."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    goto :goto_1

    .line 638
    .end local v0    # "pd":Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    goto/16 :goto_b

    .line 636
    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    goto/16 :goto_c

    .line 504
    .restart local v0    # "pd":Ljava/beans/PropertyDescriptor;
    :cond_3
    :try_start_2
    invoke-static {v11}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Lnet/sf/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    const-string v14, ":"

    if-nez v13, :cond_1c

    .line 505
    :try_start_3
    instance-of v13, v11, Lnet/sf/json/JSONArray;

    if-eqz v13, :cond_c

    .line 506
    if-eqz v0, :cond_b

    const-class v13, Ljava/util/List;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    goto/16 :goto_5

    .line 513
    :cond_4
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->getInnerComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 514
    .local v13, "innerType":Ljava/lang/Class;
    invoke-static {v12, v5}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v14

    .line 515
    .local v14, "targetInnerType":Ljava/lang/Class;
    const-class v15, Ljava/lang/Object;

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_3
    .catch Lnet/sf/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v15, :cond_5

    if-eqz v14, :cond_5

    :try_start_4
    const-class v15, Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_4
    .catch Lnet/sf/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v15, :cond_5

    .line 517
    move-object v13, v14

    .line 519
    :cond_5
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v15

    const/4 v1, 0x0

    invoke-virtual {v15, v13, v1}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 521
    .local v1, "newRoot":Ljava/lang/Object;
    move-object v15, v11

    check-cast v15, Lnet/sf/json/JSONArray;

    invoke-static {v15, v1, v3}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v15

    .line 522
    .local v15, "array":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    move-object/from16 v17, v1

    .end local v1    # "newRoot":Ljava/lang/Object;
    .local v17, "newRoot":Ljava/lang/Object;
    if-nez v16, :cond_a

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v16

    if-nez v16, :cond_a

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    goto/16 :goto_3

    .line 528
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Lnet/sf/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v18, v6

    .end local v6    # "props":Ljava/util/Map;
    .local v18, "props":Ljava/util/Map;
    :try_start_6
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 530
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 532
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v13, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v1

    .line 535
    .local v1, "morpher":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v6

    invoke-virtual {v6, v1}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 537
    new-instance v6, Lnet/sf/ezmorph/array/ObjectArrayMorpher;

    move-object/from16 v19, v1

    .end local v1    # "morpher":Lnet/sf/ezmorph/Morpher;
    .local v19, "morpher":Lnet/sf/ezmorph/Morpher;
    new-instance v1, Lnet/sf/ezmorph/bean/BeanMorpher;
    :try_end_6
    .catch Lnet/sf/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v20, v7

    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v20, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :try_start_7
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-direct {v1, v13, v7}, Lnet/sf/ezmorph/bean/BeanMorpher;-><init>(Ljava/lang/Class;Lnet/sf/ezmorph/MorpherRegistry;)V

    invoke-direct {v6, v1}, Lnet/sf/ezmorph/array/ObjectArrayMorpher;-><init>(Lnet/sf/ezmorph/Morpher;)V

    move-object v1, v6

    .line 539
    .local v1, "beanMorpher":Lnet/sf/ezmorph/array/ObjectArrayMorpher;
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v6

    invoke-virtual {v6, v1}, Lnet/sf/ezmorph/MorpherRegistry;->registerMorpher(Lnet/sf/ezmorph/Morpher;)V

    goto :goto_2

    .line 535
    .end local v19    # "morpher":Lnet/sf/ezmorph/Morpher;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v1, "morpher":Lnet/sf/ezmorph/Morpher;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_7
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    .line 542
    .end local v1    # "morpher":Lnet/sf/ezmorph/Morpher;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v19    # "morpher":Lnet/sf/ezmorph/Morpher;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_2
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v13, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6, v15}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    goto :goto_4

    .line 530
    .end local v19    # "morpher":Lnet/sf/ezmorph/Morpher;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_8
    move-object/from16 v20, v7

    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    goto :goto_4

    .line 528
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_9
    move-object/from16 v20, v7

    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    goto :goto_4

    .line 638
    .end local v0    # "pd":Ljava/beans/PropertyDescriptor;
    .end local v13    # "innerType":Ljava/lang/Class;
    .end local v14    # "targetInnerType":Ljava/lang/Class;
    .end local v15    # "array":Ljava/lang/Object;
    .end local v17    # "newRoot":Ljava/lang/Object;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_2
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    goto/16 :goto_b

    .line 636
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_3
    move-exception v0

    move-object/from16 v20, v7

    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    goto/16 :goto_c

    .line 522
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v0    # "pd":Ljava/beans/PropertyDescriptor;
    .restart local v6    # "props":Ljava/util/Map;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v13    # "innerType":Ljava/lang/Class;
    .restart local v14    # "targetInnerType":Ljava/lang/Class;
    .restart local v15    # "array":Ljava/lang/Object;
    .restart local v17    # "newRoot":Ljava/lang/Object;
    :cond_a
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .line 525
    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_3
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v13, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6, v15}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    .line 547
    :goto_4
    invoke-static {v2, v12, v15, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 548
    .end local v13    # "innerType":Ljava/lang/Class;
    .end local v14    # "targetInnerType":Ljava/lang/Class;
    .end local v15    # "array":Ljava/lang/Object;
    .end local v17    # "newRoot":Ljava/lang/Object;
    goto/16 :goto_a

    .line 506
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v6    # "props":Ljava/util/Map;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_b
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .line 507
    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_5
    invoke-static {v5, v12, v9, v10}, Lnet/sf/json/JSONObject;->resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 508
    .local v1, "targetClass":Ljava/lang/Class;
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    .line 510
    .local v6, "newRoot":Ljava/lang/Object;
    move-object v7, v11

    check-cast v7, Lnet/sf/json/JSONArray;

    invoke-static {v7, v6, v3}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/util/List;

    move-result-object v7

    .line 511
    .local v7, "list":Ljava/util/List;
    invoke-static {v2, v12, v7, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 512
    .end local v1    # "targetClass":Ljava/lang/Class;
    .end local v6    # "newRoot":Ljava/lang/Object;
    .end local v7    # "list":Ljava/util/List;
    goto/16 :goto_a

    .line 549
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v6, "props":Ljava/util/Map;
    .local v7, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_c
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_7
    .catch Lnet/sf/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const-string v6, " to bean of class "

    const-string v7, "Tried to assign property "

    if-nez v1, :cond_16

    :try_start_8
    invoke-static {v10}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v10}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v10}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    const-class v1, Lnet/sf/json/JSONFunction;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_9

    .line 582
    :cond_d
    if-eqz v0, :cond_13

    .line 583
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    .line 584
    .restart local v1    # "targetClass":Ljava/lang/Class;
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->isHandleJettisonSingleElementArray()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 585
    new-instance v6, Lnet/sf/json/JSONArray;

    invoke-direct {v6}, Lnet/sf/json/JSONArray;-><init>()V

    invoke-virtual {v6, v11, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v6

    .line 586
    .local v6, "array":Lnet/sf/json/JSONArray;
    invoke-static {v5, v12, v9, v10}, Lnet/sf/json/JSONObject;->resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 587
    .local v7, "newTargetClass":Ljava/lang/Class;
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v13

    move-object v14, v11

    check-cast v14, Lnet/sf/json/JSONObject;

    invoke-virtual {v13, v7, v14}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v13

    .line 589
    .local v13, "newRoot":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 590
    invoke-static {v6, v13, v3}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v2, v12, v14, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_6

    .line 592
    :cond_e
    const-class v14, Ljava/util/Collection;

    invoke-virtual {v14, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 593
    invoke-static {v6, v13, v3}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/util/List;

    move-result-object v14

    invoke-static {v2, v12, v14, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_6

    .line 595
    :cond_f
    const-class v14, Lnet/sf/json/JSONArray;

    invoke-virtual {v14, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 596
    invoke-static {v2, v12, v6, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_6

    .line 598
    :cond_10
    move-object v14, v11

    check-cast v14, Lnet/sf/json/JSONObject;

    invoke-static {v14, v13, v3}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v2, v12, v14, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 601
    .end local v6    # "array":Lnet/sf/json/JSONArray;
    .end local v7    # "newTargetClass":Ljava/lang/Class;
    .end local v13    # "newRoot":Ljava/lang/Object;
    :goto_6
    goto :goto_7

    .line 602
    :cond_11
    const-class v6, Ljava/lang/Object;

    if-ne v1, v6, :cond_12

    .line 603
    invoke-static {v5, v12, v9, v10}, Lnet/sf/json/JSONObject;->resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 604
    if-nez v1, :cond_12

    .line 605
    const-class v6, Ljava/lang/Object;

    move-object v1, v6

    .line 608
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v6

    move-object v7, v11

    check-cast v7, Lnet/sf/json/JSONObject;

    invoke-virtual {v6, v1, v7}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    .line 610
    .local v6, "newRoot":Ljava/lang/Object;
    move-object v7, v11

    check-cast v7, Lnet/sf/json/JSONObject;

    invoke-static {v7, v6, v3}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v12, v7, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 613
    .end local v1    # "targetClass":Ljava/lang/Class;
    .end local v6    # "newRoot":Ljava/lang/Object;
    :goto_7
    goto/16 :goto_a

    :cond_13
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_15

    .line 614
    invoke-static {v12, v5}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    .line 615
    .restart local v1    # "targetClass":Ljava/lang/Class;
    if-nez v1, :cond_14

    invoke-static {v9, v5}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_8

    :cond_14
    move-object v6, v1

    :goto_8
    move-object v1, v6

    .line 617
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    .line 619
    .restart local v6    # "newRoot":Ljava/lang/Object;
    move-object v7, v11

    check-cast v7, Lnet/sf/json/JSONObject;

    invoke-static {v7, v6, v3}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v12, v7, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 621
    .end local v1    # "targetClass":Ljava/lang/Class;
    .end local v6    # "newRoot":Ljava/lang/Object;
    goto/16 :goto_a

    .line 622
    :cond_15
    sget-object v1, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 552
    :cond_16
    :goto_9
    if-eqz v0, :cond_1a

    .line 553
    invoke-virtual/range {p2 .. p2}, Lnet/sf/json/JsonConfig;->isHandleJettisonEmptyElement()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 554
    const/4 v1, 0x0

    invoke-static {v2, v12, v1, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_a

    .line 555
    :cond_17
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 557
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v1

    .line 559
    .local v1, "morpher":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v6

    invoke-virtual {v6, v1}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 561
    sget-object v6, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t transform property \'"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' from "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " into "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ". Will register a default BeanMorpher"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 564
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v6

    new-instance v7, Lnet/sf/ezmorph/bean/BeanMorpher;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Lnet/sf/ezmorph/bean/BeanMorpher;-><init>(Ljava/lang/Class;Lnet/sf/ezmorph/MorpherRegistry;)V

    invoke-virtual {v6, v7}, Lnet/sf/ezmorph/MorpherRegistry;->registerMorpher(Lnet/sf/ezmorph/Morpher;)V

    .line 569
    :cond_18
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v6

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v12, v6, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 571
    .end local v1    # "morpher":Lnet/sf/ezmorph/Morpher;
    goto/16 :goto_a

    .line 572
    :cond_19
    invoke-static {v2, v12, v11, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_a

    .line 574
    :cond_1a
    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_1b

    .line 575
    invoke-static {v2, v12, v11, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_a

    .line 577
    :cond_1b
    sget-object v1, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_a

    .line 627
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v6, "props":Ljava/util/Map;
    .local v7, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_1c
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 629
    sget-object v1, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to assign null value to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 630
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v10, v6}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v12, v1, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_a

    .line 633
    :cond_1d
    const/4 v1, 0x0

    invoke-static {v2, v12, v1, v3}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_8
    .catch Lnet/sf/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 640
    .end local v0    # "pd":Ljava/beans/PropertyDescriptor;
    :goto_a
    nop

    .line 641
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/Class;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "key":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v6, v18

    move-object/from16 v7, v20

    goto/16 :goto_1

    .line 638
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/Class;
    .restart local v11    # "value":Ljava/lang/Object;
    .restart local v12    # "key":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_b

    .line 636
    :catch_5
    move-exception v0

    goto :goto_c

    .line 638
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v6    # "props":Ljava/util/Map;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_6
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .line 639
    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_b
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while setting property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 636
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v6    # "props":Ljava/util/Map;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_7
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    .line 637
    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v0, "jsone":Lnet/sf/json/JSONException;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_c
    throw v0

    .line 643
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    .end local v8    # "entries":Ljava/util/Iterator;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/Class;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "key":Ljava/lang/String;
    .end local v18    # "props":Ljava/util/Map;
    .end local v20    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v6    # "props":Ljava/util/Map;
    .restart local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_1e
    return-object v2

    .line 478
    .end local v5    # "classMap":Ljava/util/Map;
    .end local v6    # "props":Ljava/util/Map;
    .end local v7    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_1f
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root bean is an interface. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    .end local v4    # "rootClass":Ljava/lang/Class;
    :cond_20
    :goto_d
    return-object v2
.end method

.method public static toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 21
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 259
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_15

    .line 263
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getRootClass()Ljava/lang/Class;

    move-result-object v9

    .line 264
    .local v9, "beanClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getClassMap()Ljava/util/Map;

    move-result-object v2

    .line 266
    .local v2, "classMap":Ljava/util/Map;
    if-nez v9, :cond_1

    .line 267
    invoke-static/range {p0 .. p0}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 269
    :cond_1
    if-nez v2, :cond_2

    .line 270
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v10, v2

    goto :goto_0

    .line 269
    :cond_2
    move-object v10, v2

    .line 273
    .end local v2    # "classMap":Ljava/util/Map;
    .local v10, "classMap":Ljava/util/Map;
    :goto_0
    const/4 v2, 0x0

    .line 275
    .local v2, "bean":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 276
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    move-object v11, v2

    goto :goto_1

    .line 277
    :cond_3
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beanClass is an interface. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bean":Ljava/lang/Object;
    .end local v9    # "beanClass":Ljava/lang/Class;
    .end local v10    # "classMap":Ljava/util/Map;
    .end local p0    # "jsonObject":Lnet/sf/json/JSONObject;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 282
    .restart local v2    # "bean":Ljava/lang/Object;
    .restart local v9    # "beanClass":Ljava/lang/Class;
    .restart local v10    # "classMap":Ljava/util/Map;
    .restart local p0    # "jsonObject":Lnet/sf/json/JSONObject;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v3

    invoke-virtual {v3, v9, v1}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object v2, v3

    move-object v11, v2

    .line 289
    .end local v2    # "bean":Ljava/lang/Object;
    .local v11, "bean":Ljava/lang/Object;
    :goto_1
    nop

    .line 291
    invoke-static/range {p0 .. p0}, Lnet/sf/json/util/JSONUtils;->getProperties(Lnet/sf/json/JSONObject;)Ljava/util/Map;

    move-result-object v12

    .line 292
    .local v12, "props":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getJavaPropertyFilter()Lnet/sf/json/util/PropertyFilter;

    move-result-object v13

    .line 293
    .local v13, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    invoke-virtual/range {p0 .. p1}, Lnet/sf/json/JSONObject;->names(Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 294
    .local v14, "entries":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 295
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 296
    .local v15, "name":Ljava/lang/String;
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/Class;

    .line 297
    .local v7, "type":Ljava/lang/Class;
    invoke-virtual {v1, v15}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 298
    .local v6, "value":Ljava/lang/Object;
    if-eqz v13, :cond_5

    invoke-interface {v13, v11, v15, v6}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    goto :goto_2

    .line 301
    :cond_5
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isSkipJavaIdentifierTransformationInMapKeys()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v15

    goto :goto_3

    :cond_6
    invoke-static {v15, v8}, Lnet/sf/json/util/JSONUtils;->convertToJavaIdentifier(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "key":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8, v9}, Lnet/sf/json/JsonConfig;->findJavaPropertyNameProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/PropertyNameProcessor;

    move-result-object v5

    .line 305
    .local v5, "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    if-eqz v5, :cond_7

    .line 306
    invoke-interface {v5, v9, v2}, Lnet/sf/json/processors/PropertyNameProcessor;->processPropertyName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_4

    .line 305
    :cond_7
    move-object v4, v2

    .line 309
    .end local v2    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    :goto_4
    :try_start_1
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v3, ""

    if-eqz v2, :cond_e

    .line 311
    :try_start_2
    invoke-static {v6}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Lnet/sf/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_8

    .line 312
    :try_start_3
    invoke-static {v11, v4, v6, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_3
    .catch Lnet/sf/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    goto/16 :goto_12

    .line 460
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    goto/16 :goto_13

    .line 458
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    goto/16 :goto_14

    .line 313
    :cond_8
    :try_start_4
    instance-of v2, v6, Lnet/sf/json/JSONArray;

    if-eqz v2, :cond_9

    .line 314
    const-class v16, Ljava/util/List;
    :try_end_4
    .catch Lnet/sf/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v4

    move-object v3, v6

    move-object v1, v4

    .end local v4    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    move-object/from16 v4, p1

    move-object/from16 v17, v5

    .end local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .local v17, "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    move-object v5, v15

    move-object/from16 v18, v12

    move-object v12, v6

    .end local v6    # "value":Ljava/lang/Object;
    .local v12, "value":Ljava/lang/Object;
    .local v18, "props":Ljava/util/Map;
    move-object v6, v10

    move-object/from16 v19, v13

    move-object v13, v7

    .end local v7    # "type":Ljava/lang/Class;
    .local v13, "type":Ljava/lang/Class;
    .local v19, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    move-object/from16 v7, v16

    :try_start_5
    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->convertPropertyValueToCollection(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_12

    .line 316
    .end local v1    # "key":Ljava/lang/String;
    .end local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v18    # "props":Ljava/util/Map;
    .end local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v6    # "value":Ljava/lang/Object;
    .restart local v7    # "type":Ljava/lang/Class;
    .local v12, "props":Ljava/util/Map;
    .local v13, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_9
    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/Class;
    .restart local v1    # "key":Ljava/lang/String;
    .local v12, "value":Ljava/lang/Object;
    .local v13, "type":Ljava/lang/Class;
    .restart local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    const-class v2, Lnet/sf/json/JSONFunction;

    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    .line 325
    :cond_a
    invoke-static {v10, v1, v15, v13}, Lnet/sf/json/JSONObject;->resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 326
    .local v2, "targetClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v3

    .line 327
    .local v3, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v3, v2}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 328
    invoke-virtual {v3, v10}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 329
    if-eqz v2, :cond_b

    .line 330
    move-object v4, v12

    check-cast v4, Lnet/sf/json/JSONObject;

    invoke-static {v4, v3}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v1, v4, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_5

    .line 332
    :cond_b
    move-object v4, v12

    check-cast v4, Lnet/sf/json/JSONObject;

    invoke-static {v4}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v1, v4, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 334
    .end local v2    # "targetClass":Ljava/lang/Class;
    .end local v3    # "jsc":Lnet/sf/json/JsonConfig;
    :goto_5
    goto/16 :goto_12

    .line 319
    :cond_c
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isHandleJettisonEmptyElement()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 320
    invoke-static {v11, v1, v0, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_12

    .line 322
    :cond_d
    invoke-static {v11, v1, v12, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_12

    .line 336
    .end local v1    # "key":Ljava/lang/String;
    .end local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v18    # "props":Ljava/util/Map;
    .end local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v6    # "value":Ljava/lang/Object;
    .restart local v7    # "type":Ljava/lang/Class;
    .local v12, "props":Ljava/util/Map;
    .local v13, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_e
    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/Class;
    .restart local v1    # "key":Ljava/lang/String;
    .local v12, "value":Ljava/lang/Object;
    .local v13, "type":Ljava/lang/Class;
    .restart local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    invoke-static {v11, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v2

    move-object/from16 v16, v2

    .line 337
    .local v16, "pd":Ljava/beans/PropertyDescriptor;
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_f

    .line 338
    sget-object v2, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has no write method. SKIPPED."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_5
    .catch Lnet/sf/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 339
    move-object/from16 v1, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    goto/16 :goto_2

    .line 342
    :cond_f
    const-string v2, " to bean of class "

    const-string v4, "Tried to assign property "

    const-string v5, "Tried to assign null value to "

    const-string v6, ":"

    if-eqz v16, :cond_25

    .line 343
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    .line 344
    .local v7, "targetType":Ljava/lang/Class;
    invoke-static {v12}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_23

    .line 345
    instance-of v5, v12, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_12

    .line 346
    const-class v2, Ljava/util/List;

    invoke-virtual/range {v16 .. v16}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 347
    invoke-virtual/range {v16 .. v16}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v20

    move-object v2, v1

    move-object v3, v12

    move-object/from16 v4, p1

    move-object v5, v15

    move-object v6, v10

    move-object v0, v7

    .end local v7    # "targetType":Ljava/lang/Class;
    .local v0, "targetType":Ljava/lang/Class;
    move-object/from16 v7, v20

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->convertPropertyValueToCollection(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_f

    .line 349
    .end local v0    # "targetType":Ljava/lang/Class;
    .restart local v7    # "targetType":Ljava/lang/Class;
    :cond_10
    move-object v0, v7

    .end local v7    # "targetType":Ljava/lang/Class;
    .restart local v0    # "targetType":Ljava/lang/Class;
    const-class v2, Ljava/util/Set;

    invoke-virtual/range {v16 .. v16}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    move-object v2, v1

    move-object v3, v12

    move-object/from16 v4, p1

    move-object v5, v15

    move-object v6, v10

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->convertPropertyValueToCollection(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_f

    .line 353
    :cond_11
    invoke-static {v1, v12, v0, v8, v10}, Lnet/sf/json/JSONObject;->convertPropertyValueToArray(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lnet/sf/json/JsonConfig;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_f

    .line 356
    .end local v0    # "targetType":Ljava/lang/Class;
    .restart local v7    # "targetType":Ljava/lang/Class;
    :cond_12
    move-object v0, v7

    .end local v7    # "targetType":Ljava/lang/Class;
    .restart local v0    # "targetType":Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-class v5, Lnet/sf/json/JSONFunction;

    invoke-virtual {v5, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto/16 :goto_d

    .line 376
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isHandleJettisonSingleElementArray()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 377
    new-instance v2, Lnet/sf/json/JSONArray;

    invoke-direct {v2}, Lnet/sf/json/JSONArray;-><init>()V

    invoke-virtual {v2, v12, v8}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v2

    .line 378
    .local v2, "array":Lnet/sf/json/JSONArray;
    invoke-static {v10, v1, v15, v13}, Lnet/sf/json/JSONObject;->resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 379
    .local v3, "newTargetClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v4

    .line 380
    .local v4, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v4, v3}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 381
    invoke-virtual {v4, v10}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 383
    invoke-static {v2, v4}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v1, v5, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_8

    .line 384
    :cond_14
    const-class v5, Lnet/sf/json/JSONArray;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 385
    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_8

    .line 386
    :cond_15
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_17

    const-class v5, Ljava/util/Set;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_7

    .line 392
    :cond_16
    move-object v5, v12

    check-cast v5, Lnet/sf/json/JSONObject;

    invoke-static {v5, v4}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v1, v5, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_8

    .line 388
    :cond_17
    :goto_7
    invoke-virtual {v4, v0}, Lnet/sf/json/JsonConfig;->setCollectionType(Ljava/lang/Class;)V

    .line 389
    invoke-static {v2, v4}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {v11, v1, v5, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 394
    .end local v2    # "array":Lnet/sf/json/JSONArray;
    .end local v3    # "newTargetClass":Ljava/lang/Class;
    .end local v4    # "jsc":Lnet/sf/json/JsonConfig;
    :goto_8
    goto/16 :goto_f

    .line 395
    :cond_18
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    move-object v7, v0

    goto :goto_c

    .line 396
    :cond_1a
    :goto_9
    move-object v2, v0

    .line 397
    .local v2, "targetTypeCopy":Ljava/lang/Class;
    invoke-static {v1, v10}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 398
    if-nez v0, :cond_1b

    invoke-static {v15, v10}, Lnet/sf/json/JSONObject;->findTargetClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_a

    :cond_1b
    move-object v3, v0

    :goto_a
    move-object v0, v3

    .line 400
    if-nez v0, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v3, v2

    goto :goto_b

    :cond_1c
    move-object v3, v0

    :goto_b
    move-object v7, v3

    .line 403
    .end local v0    # "targetType":Ljava/lang/Class;
    .end local v2    # "targetTypeCopy":Ljava/lang/Class;
    .restart local v7    # "targetType":Ljava/lang/Class;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v0

    .line 404
    .local v0, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, v7}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 405
    invoke-virtual {v0, v10}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 406
    move-object v2, v12

    check-cast v2, Lnet/sf/json/JSONObject;

    invoke-static {v2, v0}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 407
    .end local v0    # "jsc":Lnet/sf/json/JsonConfig;
    goto/16 :goto_f

    .line 359
    .end local v7    # "targetType":Ljava/lang/Class;
    .local v0, "targetType":Ljava/lang/Class;
    :cond_1d
    :goto_d
    if-eqz v16, :cond_20

    .line 360
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isHandleJettisonEmptyElement()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 361
    const/4 v2, 0x0

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_f

    .line 362
    :cond_1e
    invoke-virtual {v0, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 363
    invoke-static {v1, v12, v13, v0}, Lnet/sf/json/JSONObject;->morphPropertyValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_f

    .line 366
    :cond_1f
    invoke-static {v11, v1, v12, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_f

    .line 368
    :cond_20
    if-eqz v9, :cond_22

    instance-of v3, v11, Ljava/util/Map;

    if-eqz v3, :cond_21

    goto :goto_e

    .line 371
    :cond_21
    sget-object v3, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_f

    .line 369
    :cond_22
    :goto_e
    invoke-static {v11, v1, v12, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_f

    .line 410
    .end local v0    # "targetType":Ljava/lang/Class;
    .restart local v7    # "targetType":Ljava/lang/Class;
    :cond_23
    move-object v0, v7

    .end local v7    # "targetType":Ljava/lang/Class;
    .restart local v0    # "targetType":Ljava/lang/Class;
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 412
    sget-object v2, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 413
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_f

    .line 416
    :cond_24
    const/4 v2, 0x0

    invoke-static {v11, v1, v2, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 419
    .end local v0    # "targetType":Ljava/lang/Class;
    :goto_f
    goto/16 :goto_12

    .line 420
    :cond_25
    invoke-static {v12}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 421
    instance-of v0, v12, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_26

    .line 422
    const-class v7, Ljava/util/List;

    move-object v2, v1

    move-object v3, v12

    move-object/from16 v4, p1

    move-object v5, v15

    move-object v6, v10

    invoke-static/range {v2 .. v7}, Lnet/sf/json/JSONObject;->convertPropertyValueToCollection(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v11, v1, v0, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_12

    .line 424
    :cond_26
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {v13}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    const-class v0, Lnet/sf/json/JSONFunction;

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_10

    .line 436
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isHandleJettisonSingleElementArray()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 437
    invoke-static {v10, v1, v15, v13}, Lnet/sf/json/JSONObject;->resolveClass(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 438
    .local v0, "newTargetClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v2

    .line 439
    .local v2, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v2, v0}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 440
    invoke-virtual {v2, v10}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 441
    move-object v3, v12

    check-cast v3, Lnet/sf/json/JSONObject;

    invoke-static {v3, v2}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11, v1, v3, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 442
    .end local v0    # "newTargetClass":Ljava/lang/Class;
    .end local v2    # "jsc":Lnet/sf/json/JsonConfig;
    goto/16 :goto_12

    .line 443
    :cond_28
    invoke-static {v11, v1, v12, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto/16 :goto_12

    .line 427
    :cond_29
    :goto_10
    if-eqz v9, :cond_2b

    instance-of v0, v11, Ljava/util/Map;

    if-nez v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->getPropertySetStrategy()Lnet/sf/json/util/PropertySetStrategy;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lnet/sf/json/JsonConfig;->isIgnorePublicFields()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_11

    .line 431
    :cond_2a
    sget-object v0, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_12

    .line 429
    :cond_2b
    :goto_11
    invoke-static {v11, v1, v12, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_12

    .line 447
    :cond_2c
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 449
    sget-object v0, Lnet/sf/json/JSONObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 450
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v2}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v1, v0, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    goto :goto_12

    .line 453
    :cond_2d
    const/4 v0, 0x0

    invoke-static {v11, v1, v0, v8}, Lnet/sf/json/JSONObject;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_6
    .catch Lnet/sf/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 462
    .end local v16    # "pd":Ljava/beans/PropertyDescriptor;
    :goto_12
    nop

    .line 463
    .end local v1    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v13    # "type":Ljava/lang/Class;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    move-object/from16 v1, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 460
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/Object;
    .restart local v13    # "type":Ljava/lang/Class;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    :catch_2
    move-exception v0

    goto :goto_13

    .line 458
    :catch_3
    move-exception v0

    goto :goto_14

    .line 460
    .end local v1    # "key":Ljava/lang/String;
    .end local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v18    # "props":Ljava/util/Map;
    .end local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v4, "key":Ljava/lang/String;
    .restart local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v6    # "value":Ljava/lang/Object;
    .local v7, "type":Ljava/lang/Class;
    .local v12, "props":Ljava/util/Map;
    .local v13, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_4
    move-exception v0

    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    .line 461
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/Class;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "key":Ljava/lang/String;
    .local v12, "value":Ljava/lang/Object;
    .local v13, "type":Ljava/lang/Class;
    .restart local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_13
    new-instance v2, Lnet/sf/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while setting property="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v18    # "props":Ljava/util/Map;
    .end local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v6    # "value":Ljava/lang/Object;
    .restart local v7    # "type":Ljava/lang/Class;
    .local v12, "props":Ljava/util/Map;
    .local v13, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :catch_5
    move-exception v0

    move-object v1, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v12, v6

    move-object v13, v7

    .line 459
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/Class;
    .local v0, "jsone":Lnet/sf/json/JSONException;
    .restart local v1    # "key":Ljava/lang/String;
    .local v12, "value":Ljava/lang/Object;
    .local v13, "type":Ljava/lang/Class;
    .restart local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .restart local v18    # "props":Ljava/util/Map;
    .restart local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :goto_14
    throw v0

    .line 465
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v14    # "entries":Ljava/util/Iterator;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "propertyNameProcessor":Lnet/sf/json/processors/PropertyNameProcessor;
    .end local v18    # "props":Ljava/util/Map;
    .end local v19    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v12, "props":Ljava/util/Map;
    .local v13, "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    :cond_2e
    return-object v11

    .line 287
    .end local v11    # "bean":Ljava/lang/Object;
    .end local v12    # "props":Ljava/util/Map;
    .end local v13    # "javaPropertyFilter":Lnet/sf/json/util/PropertyFilter;
    .local v2, "bean":Ljava/lang/Object;
    :catch_6
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 286
    .local v0, "jsone":Lnet/sf/json/JSONException;
    throw v0

    .line 260
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    .end local v2    # "bean":Ljava/lang/Object;
    .end local v9    # "beanClass":Ljava/lang/Class;
    .end local v10    # "classMap":Ljava/util/Map;
    :cond_2f
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private verifyIsNull()V
    .locals 2

    .line 2743
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2746
    return-void

    .line 2744
    :cond_0
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "null object"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2650
    instance-of v0, p1, Lnet/sf/json/util/JSONTokener;

    if-eqz v0, :cond_0

    .line 2651
    move-object v0, p1

    check-cast v0, Lnet/sf/json/util/JSONTokener;

    invoke-static {v0, p2}, Lnet/sf/json/JSONObject;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 2652
    :cond_0
    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2653
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2655
    :cond_1
    invoke-super {p0, p1, p2}, Lnet/sf/json/AbstractJSON;->_processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accumulate(Ljava/lang/String;D)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 1492
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lnet/sf/json/JsonConfig;

    invoke-direct {v1}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/json/JSONObject;->_accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public accumulate(Ljava/lang/String;I)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1509
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lnet/sf/json/JsonConfig;

    invoke-direct {v1}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/json/JSONObject;->_accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public accumulate(Ljava/lang/String;J)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 1526
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lnet/sf/json/JsonConfig;

    invoke-direct {v1}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/json/JSONObject;->_accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1543
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/json/JSONObject;->_accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1560
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->_accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public accumulate(Ljava/lang/String;Z)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1475
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    new-instance v1, Lnet/sf/json/JsonConfig;

    invoke-direct {v1}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lnet/sf/json/JSONObject;->_accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public accumulateAll(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 1564
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->accumulateAll(Ljava/util/Map;Lnet/sf/json/JsonConfig;)V

    .line 1565
    return-void
.end method

.method public accumulateAll(Ljava/util/Map;Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1568
    instance-of v0, p1, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_1

    .line 1569
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1570
    .local v0, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1571
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1572
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1573
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1574
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3, p2}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1575
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_0
    goto :goto_2

    .line 1577
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1578
    .restart local v0    # "entries":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1580
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1581
    .restart local v2    # "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1582
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3, p2}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1583
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 1585
    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1588
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1589
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1592
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    instance-of v1, p1, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_2

    .line 1593
    move-object v1, p1

    check-cast v1, Lnet/sf/json/JSONObject;

    .line 1594
    .local v1, "other":Lnet/sf/json/JSONObject;
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->size()I

    move-result v2

    .line 1595
    .local v2, "size1":I
    invoke-virtual {v1}, Lnet/sf/json/JSONObject;->size()I

    move-result v3

    .line 1596
    .local v3, "size2":I
    if-ge v2, v3, :cond_0

    .line 1597
    return v0

    .line 1598
    :cond_0
    if-le v2, v3, :cond_1

    .line 1599
    const/4 v0, 0x1

    return v0

    .line 1600
    :cond_1
    invoke-virtual {p0, v1}, Lnet/sf/json/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1601
    const/4 v0, 0x0

    return v0

    .line 1604
    .end local v1    # "other":Lnet/sf/json/JSONObject;
    .end local v2    # "size1":I
    .end local v3    # "size2":I
    :cond_2
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1608
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1612
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->containsValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1617
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/sf/json/JSONObject;->processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 1620
    nop

    .line 1621
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Lnet/sf/json/JSONException;
    const/4 v1, 0x0

    return v1
.end method

.method public discard(Ljava/lang/String;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1631
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1632
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    return-object p0
.end method

.method public element(Ljava/lang/String;D)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 1687
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1688
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    .line 1689
    .local v0, "d":Ljava/lang/Double;
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 1690
    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1702
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1703
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;J)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 1715
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1716
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1764
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1781
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1782
    if-eqz p1, :cond_1

    .line 1785
    if-eqz p2, :cond_0

    .line 1786
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->processValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object p2

    .line 1787
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->_setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    goto :goto_0

    .line 1789
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1791
    :goto_0
    return-object p0

    .line 1783
    :cond_1
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public element(Ljava/lang/String;Ljava/util/Collection;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Collection;

    .line 1659
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Collection;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1672
    instance-of v0, p2, Lnet/sf/json/JSONArray;

    if-nez v0, :cond_0

    .line 1673
    invoke-static {p2, p3}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object p2

    .line 1675
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/util/Map;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;

    .line 1729
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Map;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1742
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1743
    instance-of v0, p2, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1744
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->setInternal(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 1746
    :cond_0
    invoke-static {p2, p3}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Z)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1645
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1646
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public elementOpt(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1806
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONObject;->elementOpt(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public elementOpt(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1821
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1822
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1823
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 1825
    :cond_0
    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 1829
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1833
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1834
    return v0

    .line 1836
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1837
    return v1

    .line 1840
    :cond_1
    instance-of v2, p1, Lnet/sf/json/JSONObject;

    if-nez v2, :cond_2

    .line 1841
    return v1

    .line 1844
    :cond_2
    move-object v2, p1

    check-cast v2, Lnet/sf/json/JSONObject;

    .line 1846
    .local v2, "other":Lnet/sf/json/JSONObject;
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1847
    invoke-virtual {v2}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1848
    return v0

    .line 1850
    :cond_3
    return v1

    .line 1853
    :cond_4
    invoke-virtual {v2}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1854
    return v1

    .line 1858
    :cond_5
    invoke-virtual {v2}, Lnet/sf/json/JSONObject;->size()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 1859
    return v1

    .line 1862
    :cond_6
    iget-object v3, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1863
    .local v3, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1864
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1865
    .local v4, "key":Ljava/lang/String;
    iget-object v5, v2, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1866
    return v1

    .line 1868
    :cond_7
    iget-object v5, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1869
    .local v5, "o1":Ljava/lang/Object;
    iget-object v6, v2, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1871
    .local v6, "o2":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v7

    invoke-virtual {v7, v5}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1873
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1875
    goto :goto_0

    .line 1877
    :cond_8
    return v1

    .line 1880
    :cond_9
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1882
    return v1

    .line 1886
    :cond_a
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_b

    instance-of v7, v6, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_b

    .line 1887
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1888
    return v1

    .line 1890
    :cond_b
    instance-of v7, v5, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_c

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 1891
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1892
    return v1

    .line 1894
    :cond_c
    instance-of v7, v5, Lnet/sf/json/JSONObject;

    if-eqz v7, :cond_d

    instance-of v7, v6, Lnet/sf/json/JSONObject;

    if-eqz v7, :cond_d

    .line 1895
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1896
    return v1

    .line 1898
    :cond_d
    instance-of v7, v5, Lnet/sf/json/JSONArray;

    if-eqz v7, :cond_e

    instance-of v7, v6, Lnet/sf/json/JSONArray;

    if-eqz v7, :cond_e

    .line 1899
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1900
    return v1

    .line 1902
    :cond_e
    instance-of v7, v5, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_f

    instance-of v7, v6, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_f

    .line 1903
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1904
    return v1

    .line 1907
    :cond_f
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_10

    .line 1908
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1909
    return v1

    .line 1911
    :cond_10
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 1912
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1913
    return v1

    .line 1916
    :cond_11
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v7

    .line 1918
    .local v7, "m1":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v8

    .line 1920
    .local v8, "m2":Lnet/sf/ezmorph/Morpher;
    if-eqz v7, :cond_12

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v7, v9, :cond_12

    .line 1921
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1923
    return v1

    .line 1925
    :cond_12
    if-eqz v8, :cond_13

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v8, v9, :cond_13

    .line 1926
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1929
    return v1

    .line 1932
    :cond_13
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1933
    return v1

    .line 1938
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    .end local v7    # "m1":Lnet/sf/ezmorph/Morpher;
    .end local v8    # "m2":Lnet/sf/ezmorph/Morpher;
    :cond_14
    goto/16 :goto_0

    .line 1939
    .end local v3    # "keys":Ljava/util/Iterator;
    :cond_15
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1943
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1944
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1946
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1957
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1958
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1970
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1971
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1972
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 1973
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1976
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1978
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1975
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1981
    :cond_3
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1993
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 1994
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1995
    .local v0, "o":Ljava/lang/Object;
    const-string v1, "] is not a number."

    const-string v2, "JSONObject["

    if-eqz v0, :cond_1

    .line 1997
    :try_start_0
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v1

    .line 1999
    :catch_0
    move-exception v3

    .line 2000
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/sf/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2003
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lnet/sf/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2016
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2017
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2018
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 2019
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    :goto_0
    return v1

    .line 2021
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONArray(Ljava/lang/String;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2033
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2034
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2035
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_0

    .line 2036
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONArray;

    return-object v1

    .line 2038
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lnet/sf/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2050
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2051
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2052
    .local v0, "o":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    new-instance v1, Lnet/sf/json/JSONObject;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v1

    .line 2055
    :cond_0
    instance-of v1, v0, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_1

    .line 2056
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONObject;

    return-object v1

    .line 2058
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2071
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2072
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2073
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 2074
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    :goto_0
    return-wide v1

    .line 2076
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2087
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2088
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2089
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2090
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2092
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2102
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2103
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 2107
    const/16 v0, 0x13

    .line 2108
    .local v0, "hashcode":I
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2109
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/json/JSONNull;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 2112
    :cond_0
    iget-object v1, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2113
    .local v1, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2115
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2116
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 2117
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v4}, Lnet/sf/json/util/JSONUtils;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 2118
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 2119
    .end local v1    # "entries":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 2123
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2128
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNullObject()Z
    .locals 1

    .line 2135
    iget-boolean v0, p0, Lnet/sf/json/JSONObject;->nullObject:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 2149
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .line 2144
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2145
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public names()Lnet/sf/json/JSONArray;
    .locals 3

    .line 2160
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2161
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 2162
    .local v0, "ja":Lnet/sf/json/JSONArray;
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2163
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 2166
    :cond_0
    return-object v0
.end method

.method public names(Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2177
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2178
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 2179
    .local v0, "ja":Lnet/sf/json/JSONArray;
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2180
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 2183
    :cond_0
    return-object v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2193
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2194
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2205
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 2219
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2221
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2236
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2237
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 2250
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2252
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2253
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Double;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v1

    .line 2255
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2256
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2269
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 2283
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2285
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2286
    :catch_0
    move-exception v0

    .line 2287
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public optJSONArray(Ljava/lang/String;)Lnet/sf/json/JSONArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2299
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2300
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2301
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public optJSONObject(Ljava/lang/String;)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2312
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2313
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2314
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2326
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2327
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 2340
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2342
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2343
    :catch_0
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2357
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2358
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 2370
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2371
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2372
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2376
    if-eqz p1, :cond_0

    .line 2379
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2380
    .local v0, "previous":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 2381
    return-object v0

    .line 2377
    .end local v0    # "previous":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 2385
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->putAll(Ljava/util/Map;Lnet/sf/json/JsonConfig;)V

    .line 2386
    return-void
.end method

.method public putAll(Ljava/util/Map;Lnet/sf/json/JsonConfig;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2389
    instance-of v0, p1, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_1

    .line 2390
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2391
    .local v0, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2393
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2394
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2395
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_0
    goto :goto_2

    .line 2398
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2399
    .restart local v0    # "entries":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2401
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2402
    .restart local v2    # "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 2403
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3, p2}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    .line 2404
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 2406
    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2409
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2420
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2421
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 2431
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toJSONArray(Lnet/sf/json/JSONArray;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p1, "names"    # Lnet/sf/json/JSONArray;

    .line 2444
    invoke-direct {p0}, Lnet/sf/json/JSONObject;->verifyIsNull()V

    .line 2445
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2448
    :cond_0
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 2449
    .local v0, "ja":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2450
    invoke-virtual {p1, v1}, Lnet/sf/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 2449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2452
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 2446
    .end local v0    # "ja":Lnet/sf/json/JSONArray;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2468
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2473
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2474
    .local v0, "keys":Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2476
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2477
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 2478
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2480
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2481
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2482
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2483
    iget-object v3, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2484
    nop

    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 2485
    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2486
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2487
    .end local v0    # "keys":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 2488
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "indentFactor"    # I

    .line 2506
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2510
    :cond_0
    if-nez p1, :cond_1

    .line 2511
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2513
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 10
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I

    .line 2530
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2531
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2535
    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->size()I

    move-result v0

    .line 2536
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 2537
    const-string v1, "{}"

    return-object v1

    .line 2539
    :cond_1
    if-nez p1, :cond_2

    .line 2540
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2542
    :cond_2
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2543
    .local v1, "keys":Ljava/util/Iterator;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2544
    .local v2, "sb":Ljava/lang/StringBuffer;
    add-int v3, p2, p1

    .line 2546
    .local v3, "newindent":I
    const-string v4, ": "

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 2547
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2548
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2549
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2550
    iget-object v4, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2552
    .end local v5    # "o":Ljava/lang/Object;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xa

    const/16 v8, 0x20

    if-eqz v6, :cond_6

    .line 2553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2554
    .local v6, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-le v9, v5, :cond_4

    .line 2555
    const-string v7, ",\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2557
    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2559
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 2560
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2559
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2562
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2563
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2564
    iget-object v8, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1, v3}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2566
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le v4, v5, :cond_7

    .line 2567
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2568
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, p2, :cond_7

    .line 2569
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2568
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2572
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, p2, :cond_8

    .line 2573
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2572
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2576
    .end local v4    # "i":I
    :cond_8
    :goto_5
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2577
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 2581
    iget-object v0, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .line 2595
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2596
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2598
    return-object p1

    .line 2601
    :cond_0
    const/4 v0, 0x0

    .line 2602
    .local v0, "b":Z
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2603
    .local v1, "keys":Ljava/util/Iterator;
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 2605
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2606
    if-eqz v0, :cond_1

    .line 2607
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 2609
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2610
    .local v2, "k":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2611
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 2612
    iget-object v3, p0, Lnet/sf/json/JSONObject;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2613
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Lnet/sf/json/JSONObject;

    if-eqz v4, :cond_2

    .line 2614
    move-object v4, v3

    check-cast v4, Lnet/sf/json/JSONObject;

    invoke-virtual {v4, p1}, Lnet/sf/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    goto :goto_1

    .line 2615
    :cond_2
    instance-of v4, v3, Lnet/sf/json/JSONArray;

    if-eqz v4, :cond_3

    .line 2616
    move-object v4, v3

    check-cast v4, Lnet/sf/json/JSONArray;

    invoke-virtual {v4, p1}, Lnet/sf/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;

    goto :goto_1

    .line 2618
    :cond_3
    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2620
    :goto_1
    const/4 v0, 0x1

    .line 2621
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 2622
    :cond_4
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2623
    return-object p1

    .line 2624
    .end local v0    # "b":Z
    .end local v1    # "keys":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 2625
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
