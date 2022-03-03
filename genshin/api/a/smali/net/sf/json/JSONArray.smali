.class public final Lnet/sf/json/JSONArray;
.super Lnet/sf/json/AbstractJSON;
.source "JSONArray.java"

# interfaces
.implements Lnet/sf/json/JSON;
.implements Ljava/util/List;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/JSONArray$JSONArrayListIterator;
    }
.end annotation


# instance fields
.field private elements:Ljava/util/List;

.field private expandElements:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1232
    invoke-direct {p0}, Lnet/sf/json/AbstractJSON;-><init>()V

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    .line 1234
    return-void
.end method

.method private _addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2500
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    return-object p0
.end method

.method private static _fromArray(Ljava/lang/Enum;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p0, "e"    # Ljava/lang/Enum;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 817
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 827
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 828
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 829
    throw v1

    .line 821
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 822
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 823
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 824
    throw v0

    .line 832
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 833
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 834
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    if-eqz p0, :cond_1

    .line 835
    invoke-direct {v0, p0, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 836
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 844
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 845
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 846
    return-object v0

    .line 838
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    const-string v2, "enum value is null"

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 839
    .restart local v1    # "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 840
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 841
    throw v1
.end method

.method private static _fromArray([BLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p0, "array"    # [B
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 707
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 717
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 718
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 719
    throw v1

    .line 711
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 712
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 713
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 714
    throw v0

    .line 722
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 723
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 724
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 725
    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {v2}, Lnet/sf/json/util/JSONUtils;->transformNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 726
    .local v2, "n":Ljava/lang/Number;
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 727
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 724
    .end local v2    # "n":Ljava/lang/Number;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 731
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 732
    return-object v0
.end method

.method private static _fromArray([CLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p0, "array"    # [C
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 741
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 751
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 752
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 753
    throw v1

    .line 745
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 746
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 747
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 748
    throw v0

    .line 756
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 757
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 758
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 759
    new-instance v2, Ljava/lang/Character;

    aget-char v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    .line 760
    .local v2, "c":Ljava/lang/Character;
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 761
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 758
    .end local v2    # "c":Ljava/lang/Character;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 765
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 766
    return-object v0
.end method

.method private static _fromArray([DLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 5
    .param p0, "array"    # [D
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 775
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 785
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 786
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 787
    throw v1

    .line 779
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 780
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 781
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 782
    throw v0

    .line 790
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 791
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 793
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 794
    new-instance v2, Ljava/lang/Double;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 795
    .local v2, "d":Ljava/lang/Double;
    invoke-static {v2}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 796
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 797
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 793
    .end local v2    # "d":Ljava/lang/Double;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 803
    .end local v1    # "i":I
    :cond_1
    nop

    .line 805
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 806
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 807
    return-object v0

    .line 799
    :catch_2
    move-exception v1

    .line 800
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 801
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 802
    throw v1
.end method

.method private static _fromArray([FLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p0, "array"    # [F
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 855
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 865
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 866
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 867
    throw v1

    .line 859
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 860
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 861
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 862
    throw v0

    .line 870
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 871
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 873
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 874
    new-instance v2, Ljava/lang/Float;

    aget v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 875
    .local v2, "f":Ljava/lang/Float;
    invoke-static {v2}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 876
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 877
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 873
    .end local v2    # "f":Ljava/lang/Float;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "i":I
    :cond_1
    nop

    .line 885
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 886
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 887
    return-object v0

    .line 879
    :catch_2
    move-exception v1

    .line 880
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 881
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 882
    throw v1
.end method

.method private static _fromArray([ILnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p0, "array"    # [I
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 896
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 906
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 907
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 908
    throw v1

    .line 900
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 901
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 902
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 903
    throw v0

    .line 911
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 912
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 913
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 914
    new-instance v2, Ljava/lang/Integer;

    aget v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 915
    .local v2, "n":Ljava/lang/Number;
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 916
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 913
    .end local v2    # "n":Ljava/lang/Number;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 920
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 921
    return-object v0
.end method

.method private static _fromArray([JLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 5
    .param p0, "array"    # [J
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 930
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 940
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 941
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 942
    throw v1

    .line 934
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 935
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 936
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 937
    throw v0

    .line 945
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 946
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 947
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 948
    new-instance v2, Ljava/lang/Long;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2}, Lnet/sf/json/util/JSONUtils;->transformNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 949
    .local v2, "n":Ljava/lang/Number;
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 950
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 947
    .end local v2    # "n":Ljava/lang/Number;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 954
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 955
    return-object v0
.end method

.method private static _fromArray([Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 961
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 971
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 972
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 973
    throw v1

    .line 965
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 966
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 967
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 968
    throw v0

    .line 976
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 977
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 979
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 980
    aget-object v2, p0, v1

    .line 981
    .local v2, "element":Ljava/lang/Object;
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 982
    invoke-virtual {v0, v1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 979
    .end local v2    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v1    # "i":I
    :cond_1
    nop

    .line 995
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 996
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 997
    return-object v0

    .line 988
    :catch_2
    move-exception v1

    .line 989
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 990
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 991
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v2, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 992
    throw v2

    .line 984
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :catch_3
    move-exception v1

    .line 985
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 986
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 987
    throw v1
.end method

.method private static _fromArray([SLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 4
    .param p0, "array"    # [S
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1006
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1016
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 1017
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1018
    throw v1

    .line 1010
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 1011
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1012
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1013
    throw v0

    .line 1021
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1022
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 1023
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1024
    new-instance v2, Ljava/lang/Short;

    aget-short v3, p0, v1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    invoke-static {v2}, Lnet/sf/json/util/JSONUtils;->transformNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 1025
    .local v2, "n":Ljava/lang/Number;
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1026
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 1023
    .end local v2    # "n":Ljava/lang/Number;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1030
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1031
    return-object v0
.end method

.method private static _fromArray([ZLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 673
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 683
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 684
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 685
    throw v1

    .line 677
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 678
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 679
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 680
    throw v0

    .line 688
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 689
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 690
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 691
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 692
    .local v2, "b":Ljava/lang/Boolean;
    :goto_1
    invoke-direct {v0, v2, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 693
    invoke-static {v1, v2, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 690
    .end local v2    # "b":Ljava/lang/Boolean;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v1    # "i":I
    :cond_2
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 697
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 698
    return-object v0
.end method

.method private static _fromCollection(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 6
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1035
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1045
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 1046
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1047
    throw v1

    .line 1039
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 1040
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1041
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1042
    throw v0

    .line 1050
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1051
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 1053
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .line 1054
    .local v1, "i":I
    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "elements":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1055
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1056
    .local v3, "element":Ljava/lang/Object;
    invoke-direct {v0, v3, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1057
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1058
    .end local v3    # "element":Ljava/lang/Object;
    move v1, v4

    goto :goto_0

    .line 1068
    .end local v2    # "elements":Ljava/util/Iterator;
    .end local v4    # "i":I
    :cond_1
    nop

    .line 1070
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1071
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1072
    return-object v0

    .line 1063
    :catch_2
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1065
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 1066
    .local v2, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v2, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1067
    throw v2

    .line 1059
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "jsone":Lnet/sf/json/JSONException;
    :catch_3
    move-exception v1

    .line 1060
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1061
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1062
    throw v1
.end method

.method private static _fromJSONArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 5
    .param p0, "array"    # Lnet/sf/json/JSONArray;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1076
    invoke-static {p0}, Lnet/sf/json/JSONArray;->addInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/CycleDetectionStrategy;->handleRepeatedReferenceAsArray(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1086
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    .line 1087
    .local v1, "jsone":Lnet/sf/json/JSONException;
    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1088
    throw v1

    .line 1080
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :catch_1
    move-exception v0

    .line 1081
    .local v0, "jsone":Lnet/sf/json/JSONException;
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1082
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1083
    throw v0

    .line 1091
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :cond_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1092
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 1093
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v1, 0x0

    .line 1094
    .local v1, "index":I
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "elements":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1095
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1096
    .local v3, "element":Ljava/lang/Object;
    invoke-direct {v0, v3, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1097
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v1, v3, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 1098
    .end local v3    # "element":Ljava/lang/Object;
    move v1, v4

    goto :goto_0

    .line 1100
    .end local v2    # "elements":Ljava/util/Iterator;
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->removeInstance(Ljava/lang/Object;)V

    .line 1101
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1102
    return-object v0
.end method

.method private static _fromJSONString(Lnet/sf/json/JSONString;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 2
    .param p0, "string"    # Lnet/sf/json/JSONString;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1106
    new-instance v0, Lnet/sf/json/util/JSONTokener;

    invoke-interface {p0}, Lnet/sf/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/util/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static _fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 11
    .param p0, "tokener"    # Lnet/sf/json/util/JSONTokener;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1111
    const-string v0, "\""

    new-instance v1, Lnet/sf/json/JSONArray;

    invoke-direct {v1}, Lnet/sf/json/JSONArray;-><init>()V

    .line 1112
    .local v1, "jsonArray":Lnet/sf/json/JSONArray;
    const/4 v2, 0x0

    .line 1115
    .local v2, "index":I
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_b

    .line 1118
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 1119
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    .line 1120
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1121
    return-object v1

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 1125
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_1

    .line 1126
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 1127
    iget-object v3, v1, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1128
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    :try_start_1
    invoke-virtual {v1, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    goto/16 :goto_5

    .line 1190
    :catch_0
    move-exception v0

    move v2, v3

    goto/16 :goto_7

    .line 1130
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 1131
    invoke-virtual {p0, p1}, Lnet/sf/json/util/JSONTokener;->nextValue(Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 1132
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->isFunctionHeader(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1133
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lnet/sf/json/util/JSONUtils;->mayBeJSON(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    goto :goto_1

    .line 1137
    :cond_2
    invoke-direct {v1, v3, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    :try_end_2
    .catch Lnet/sf/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1139
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    :try_start_3
    invoke-virtual {v1, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_3
    .catch Lnet/sf/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move v2, v5

    goto :goto_5

    .line 1190
    .end local v3    # "v":Ljava/lang/Object;
    :catch_1
    move-exception v0

    move v2, v5

    goto/16 :goto_7

    .line 1142
    .end local v5    # "index":I
    .restart local v2    # "index":I
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_3
    :try_start_4
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lnet/sf/json/util/JSONUtils;->getFunctionParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1144
    .local v5, "params":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1145
    .local v6, "i":I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1147
    .local v7, "sb":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v8

    .line 1148
    .local v8, "ch":C
    if-nez v8, :cond_4

    .line 1149
    goto :goto_3

    .line 1151
    :cond_4
    const/16 v9, 0x7b

    if-ne v8, v9, :cond_5

    .line 1152
    add-int/lit8 v6, v6, 0x1

    .line 1154
    :cond_5
    const/16 v9, 0x7d

    if-ne v8, v9, :cond_6

    .line 1155
    add-int/lit8 v6, v6, -0x1

    .line 1157
    :cond_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1158
    if-nez v6, :cond_a

    .line 1159
    nop

    .line 1162
    .end local v8    # "ch":C
    :goto_3
    if-nez v6, :cond_9

    .line 1166
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1167
    .local v8, "text":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1169
    new-instance v9, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_7

    const-string v10, ","

    invoke-static {v5, v10}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    invoke-direct {v9, v10, v8}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v9, p1}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    :try_end_4
    .catch Lnet/sf/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1171
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "index":I
    .local v9, "index":I
    :try_start_5
    invoke-virtual {v1, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    :try_end_5
    .catch Lnet/sf/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move v2, v9

    .line 1174
    .end local v3    # "v":Ljava/lang/Object;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "index":I
    .restart local v2    # "index":I
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1187
    const-string v0, "Expected a \',\' or \']\'"

    goto :goto_6

    .line 1184
    :sswitch_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1185
    return-object v1

    .line 1177
    :sswitch_1
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v3

    if-ne v3, v4, :cond_8

    .line 1178
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V

    .line 1179
    return-object v1

    .line 1181
    :cond_8
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 1182
    goto/16 :goto_0

    .line 1187
    :goto_6
    invoke-virtual {p0, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local v1    # "jsonArray":Lnet/sf/json/JSONArray;
    .end local v2    # "index":I
    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1190
    .restart local v1    # "jsonArray":Lnet/sf/json/JSONArray;
    .restart local v9    # "index":I
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :catch_2
    move-exception v0

    move v2, v9

    goto :goto_7

    .line 1163
    .end local v9    # "index":I
    .restart local v2    # "index":I
    .restart local v3    # "v":Ljava/lang/Object;
    .restart local v5    # "params":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbalanced \'{\' or \'}\' on prop: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local v1    # "jsonArray":Lnet/sf/json/JSONArray;
    .end local v2    # "index":I
    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0

    .line 1161
    .restart local v1    # "jsonArray":Lnet/sf/json/JSONArray;
    .restart local v2    # "index":I
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :cond_a
    goto/16 :goto_2

    .line 1116
    .end local v3    # "v":Ljava/lang/Object;
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_b
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p0, v0}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v0

    .end local v1    # "jsonArray":Lnet/sf/json/JSONArray;
    .end local v2    # "index":I
    .end local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .end local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    throw v0
    :try_end_6
    .catch Lnet/sf/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1190
    .restart local v1    # "jsonArray":Lnet/sf/json/JSONArray;
    .restart local v2    # "index":I
    .restart local p0    # "tokener":Lnet/sf/json/util/JSONTokener;
    .restart local p1    # "jsonConfig":Lnet/sf/json/JsonConfig;
    :catch_3
    move-exception v0

    .line 1191
    .local v0, "jsone":Lnet/sf/json/JSONException;
    :goto_7
    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V

    .line 1192
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private static _fromString(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1197
    new-instance v0, Lnet/sf/json/util/JSONTokener;

    invoke-direct {v0, p0}, Lnet/sf/json/util/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2525
    invoke-direct {p0, p1, p2}, Lnet/sf/json/JSONArray;->processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/sf/json/JSONArray;->_addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 105
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 118
    instance-of v0, p0, Lnet/sf/json/JSONString;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONString;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromJSONString(Lnet/sf/json/JSONString;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    instance-of v0, p0, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_1

    .line 121
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONArray;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromJSONArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 123
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromCollection(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 124
    :cond_2
    instance-of v0, p0, Lnet/sf/json/util/JSONTokener;

    if-eqz v0, :cond_3

    .line 125
    move-object v0, p0

    check-cast v0, Lnet/sf/json/util/JSONTokener;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 126
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 127
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromString(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 128
    :cond_4
    const-string v0, "Unsupported type"

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 132
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 133
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 135
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    .line 136
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([ZLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 137
    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 138
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([BLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 139
    :cond_7
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_8

    .line 140
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([SLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 141
    :cond_8
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_9

    .line 142
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([ILnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 143
    :cond_9
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_a

    .line 144
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([JLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 145
    :cond_a
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    .line 146
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([FLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 147
    :cond_b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_c

    .line 148
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([DLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 149
    :cond_c
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_d

    .line 150
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray([CLnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 152
    :cond_d
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v1    # "type":Ljava/lang/Class;
    :cond_e
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    instance-of v1, p0, Lnet/sf/json/JSON;

    if-eqz v1, :cond_f

    goto :goto_0

    .line 163
    :cond_f
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_10

    .line 164
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0, p1}, Lnet/sf/json/JSONArray;->_fromArray(Ljava/lang/Enum;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 165
    :cond_10
    instance-of v1, p0, Ljava/lang/annotation/Annotation;

    if-nez v1, :cond_13

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-nez v1, :cond_13

    .line 168
    :cond_11
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isObject(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 169
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 170
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    invoke-static {p0, p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/json/JSONArray;->element(Lnet/sf/json/JSONObject;)Lnet/sf/json/JSONArray;

    move-result-object v0

    .line 171
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    invoke-virtual {v0, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 172
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 173
    return-object v0

    .line 175
    .end local v0    # "jsonArray":Lnet/sf/json/JSONArray;
    :cond_12
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_13
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_14
    :goto_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 159
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0, p1}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    .line 160
    .restart local v0    # "jsonArray":Lnet/sf/json/JSONArray;
    invoke-virtual {v0, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lnet/sf/json/JSONArray;->fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 161
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V

    .line 162
    return-object v0
.end method

.method public static getCollectionType(Ljava/beans/PropertyDescriptor;Z)[Ljava/lang/Class;
    .locals 6
    .param p0, "pd"    # Ljava/beans/PropertyDescriptor;
    .param p1, "useGetter"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/json/JSONException;
        }
    .end annotation

    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 191
    .local v0, "type":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 192
    .end local v0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {p0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 195
    .local v1, "gpts":[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v3, v2, :cond_3

    .line 198
    const/4 v2, 0x0

    aget-object v2, v1, v2

    move-object v0, v2

    .line 201
    .end local v1    # "gpts":[Ljava/lang/reflect/Type;
    .local v0, "type":Ljava/lang/reflect/Type;
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    .line 202
    const/4 v1, 0x0

    return-object v1

    .line 207
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 208
    .local v1, "pType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 210
    .local v2, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Class;

    .line 211
    .local v3, "ret":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 212
    aget-object v5, v2, v4

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    .end local v4    # "i":I
    :cond_2
    return-object v3

    .line 196
    .end local v2    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v3    # "ret":[Ljava/lang/Class;
    .local v0, "m":Ljava/lang/reflect/Method;
    .local v1, "gpts":[Ljava/lang/reflect/Type;
    :cond_3
    new-instance v2, Lnet/sf/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not a standard setter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDimensions(Lnet/sf/json/JSONArray;)[I
    .locals 6
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;

    .line 223
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "dims":Ljava/util/List;
    invoke-static {p0, v1, v0}, Lnet/sf/json/JSONArray;->processArrayDimensions(Lnet/sf/json/JSONArray;Ljava/util/List;I)V

    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 230
    .local v0, "dimensions":[I
    const/4 v2, 0x0

    .line 231
    .local v2, "j":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v2

    move v2, v4

    goto :goto_0

    .line 234
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v4    # "j":I
    .restart local v2    # "j":I
    :cond_1
    return-object v0

    .line 224
    .end local v0    # "dimensions":[I
    .end local v1    # "dims":Ljava/util/List;
    .end local v2    # "j":I
    :cond_2
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    return-object v1
.end method

.method private static processArrayDimensions(Lnet/sf/json/JSONArray;Ljava/util/List;I)V
    .locals 4
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "dims"    # Ljava/util/List;
    .param p2, "index"    # I

    .line 1201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1204
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1205
    .local v0, "i":I
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1206
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1209
    .end local v0    # "i":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1211
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Lnet/sf/json/JSONArray;

    if-eqz v2, :cond_2

    .line 1212
    move-object v2, v1

    check-cast v2, Lnet/sf/json/JSONArray;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Lnet/sf/json/JSONArray;->processArrayDimensions(Lnet/sf/json/JSONArray;Ljava/util/List;I)V

    .line 1214
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 1215
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2529
    if-eqz p1, :cond_1

    .line 2530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/json/JsonConfig;->findJsonValueProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/JsonValueProcessor;

    move-result-object v0

    .line 2531
    .local v0, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    if-eqz v0, :cond_1

    .line 2532
    invoke-interface {v0, p1, p2}, Lnet/sf/json/processors/JsonValueProcessor;->processArrayValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object p1

    .line 2533
    invoke-static {p1}, Lnet/sf/json/processors/JsonVerifier;->isValidJsonValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2534
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

    .line 2538
    .end local v0    # "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/json/JSONArray;->_processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Lnet/sf/json/JSONArray;)Ljava/lang/Object;
    .locals 1
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;

    .line 241
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Lnet/sf/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "objectClass"    # Ljava/lang/Class;

    .line 248
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 249
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 250
    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toArray(Lnet/sf/json/JSONArray;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "objectClass"    # Ljava/lang/Class;
    .param p2, "classMap"    # Ljava/util/Map;

    .line 265
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 266
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 267
    invoke-virtual {v0, p2}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 268
    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toArray(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 10
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 333
    .local v0, "objectClass":Ljava/lang/Class;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 337
    :cond_0
    invoke-static {p0}, Lnet/sf/json/JSONArray;->getDimensions(Lnet/sf/json/JSONArray;)[I

    move-result-object v1

    .line 338
    .local v1, "dimensions":[I
    if-nez v0, :cond_1

    const-class v2, Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    .line 340
    .local v2, "array":Ljava/lang/Object;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v3

    .line 341
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 342
    invoke-virtual {p0, v4}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 343
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v5}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 344
    invoke-static {v2, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 346
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 347
    .local v6, "type":Ljava/lang/Class;
    const-class v8, Lnet/sf/json/JSONArray;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 348
    move-object v7, v5

    check-cast v7, Lnet/sf/json/JSONArray;

    invoke-static {v7, p1, p2}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 349
    :cond_3
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v6}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    const-class v8, Ljava/lang/Character;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    const-class v8, Lnet/sf/json/JSONFunction;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 360
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v7

    .line 362
    .local v7, "newRoot":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Lnet/sf/json/JSONObject;

    invoke-static {v8, v7, p2}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v4, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v7    # "newRoot":Ljava/lang/Object;
    goto :goto_3

    .line 365
    :catch_0
    move-exception v7

    .line 366
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lnet/sf/json/JSONException;

    invoke-direct {v8, v7}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 363
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 364
    .local v7, "jsone":Lnet/sf/json/JSONException;
    throw v7

    .line 353
    .end local v7    # "jsone":Lnet/sf/json/JSONException;
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 354
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 357
    :cond_6
    invoke-static {v2, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 341
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "type":Ljava/lang/Class;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 371
    .end local v4    # "i":I
    :cond_7
    return-object v2
.end method

.method public static toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 10
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 275
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getRootClass()Ljava/lang/Class;

    move-result-object v0

    .line 276
    .local v0, "objectClass":Ljava/lang/Class;
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getClassMap()Ljava/util/Map;

    move-result-object v1

    .line 278
    .local v1, "classMap":Ljava/util/Map;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 279
    if-nez v0, :cond_0

    const-class v2, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 282
    :cond_1
    invoke-static {p0}, Lnet/sf/json/JSONArray;->getDimensions(Lnet/sf/json/JSONArray;)[I

    move-result-object v2

    .line 283
    .local v2, "dimensions":[I
    if-nez v0, :cond_2

    const-class v3, Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    .line 285
    .local v3, "array":Ljava/lang/Object;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v4

    .line 286
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_e

    .line 287
    invoke-virtual {p0, v5}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 288
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v6}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 289
    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 291
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 292
    .local v7, "type":Ljava/lang/Class;
    const-class v8, Lnet/sf/json/JSONArray;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 293
    move-object v8, v6

    check-cast v8, Lnet/sf/json/JSONArray;

    invoke-static {v8, v0, v1}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v5, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 294
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    const-class v8, Ljava/lang/Character;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    const-class v8, Lnet/sf/json/JSONFunction;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 303
    :cond_5
    invoke-static {v7}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 304
    if-eqz v0, :cond_7

    const-class v8, Ljava/lang/Byte;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 306
    :cond_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v8

    invoke-static {v3, v5, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    .line 307
    :cond_7
    if-eqz v0, :cond_9

    const-class v8, Ljava/lang/Short;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_8

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 309
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v8

    invoke-static {v3, v5, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    .line 311
    :cond_9
    invoke-static {v3, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    .line 314
    :cond_a
    if-eqz v0, :cond_b

    .line 315
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v8

    .line 316
    .local v8, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v8, v0}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 317
    invoke-virtual {v8, v1}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 318
    move-object v9, v6

    check-cast v9, Lnet/sf/json/JSONObject;

    invoke-static {v9, v8}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 319
    .end local v8    # "jsc":Lnet/sf/json/JsonConfig;
    goto :goto_4

    .line 320
    :cond_b
    move-object v8, v6

    check-cast v8, Lnet/sf/json/JSONObject;

    invoke-static {v8}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v5, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    .line 298
    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 299
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-virtual {v8, v0, v6}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 302
    :cond_d
    invoke-static {v3, v5, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 286
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/Class;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 325
    .end local v5    # "i":I
    :cond_e
    return-object v3
.end method

.method public static toCollection(Lnet/sf/json/JSONArray;)Ljava/util/Collection;
    .locals 1
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;

    .line 378
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static toCollection(Lnet/sf/json/JSONArray;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "objectClass"    # Ljava/lang/Class;

    .line 385
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 386
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 387
    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;
    .locals 10
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "collection":Ljava/util/Collection;
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getCollectionType()Ljava/lang/Class;

    move-result-object v1

    .line 398
    .local v1, "collectionType":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    const-class v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 401
    :cond_0
    const-class v2, Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    goto :goto_0

    .line 404
    :cond_1
    new-instance v2, Lnet/sf/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 413
    nop

    .line 416
    :goto_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getRootClass()Ljava/lang/Class;

    move-result-object v2

    .line 417
    .local v2, "objectClass":Ljava/lang/Class;
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getClassMap()Ljava/util/Map;

    move-result-object v3

    .line 419
    .local v3, "classMap":Ljava/util/Map;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v4

    .line 420
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_9

    .line 421
    invoke-virtual {p0, v5}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 423
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v6}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 424
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 426
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 427
    .local v7, "type":Ljava/lang/Class;
    const-class v8, Lnet/sf/json/JSONArray;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 428
    move-object v8, v6

    check-cast v8, Lnet/sf/json/JSONArray;

    invoke-static {v8, p1}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 429
    :cond_4
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v7}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    const-class v8, Ljava/lang/Character;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    const-class v8, Lnet/sf/json/JSONFunction;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 440
    :cond_5
    if-eqz v2, :cond_6

    .line 441
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v8

    .line 442
    .local v8, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v8, v2}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 443
    invoke-virtual {v8, v3}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 444
    move-object v9, v6

    check-cast v9, Lnet/sf/json/JSONObject;

    invoke-static {v9, v8}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v8    # "jsc":Lnet/sf/json/JsonConfig;
    goto :goto_3

    .line 446
    :cond_6
    move-object v8, v6

    check-cast v8, Lnet/sf/json/JSONObject;

    invoke-static {v8}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 434
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 435
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-virtual {v8, v2, v6}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 438
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/Class;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 452
    .end local v5    # "i":I
    :cond_9
    return-object v0

    .line 411
    .end local v2    # "objectClass":Ljava/lang/Class;
    .end local v3    # "classMap":Ljava/util/Map;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lnet/sf/json/JSONException;

    invoke-direct {v3, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 409
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lnet/sf/json/JSONException;

    invoke-direct {v3, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toList(Lnet/sf/json/JSONArray;)Ljava/util/List;
    .locals 1
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;

    .line 544
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toList(Lnet/sf/json/JSONArray;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "objectClass"    # Ljava/lang/Class;

    .line 554
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 555
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 556
    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static toList(Lnet/sf/json/JSONArray;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "objectClass"    # Ljava/lang/Class;
    .param p2, "classMap"    # Ljava/util/Map;

    .line 574
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 575
    .local v0, "jsonConfig":Lnet/sf/json/JsonConfig;
    invoke-virtual {v0, p1}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 576
    invoke-virtual {v0, p2}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 577
    invoke-static {p0, v0}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static toList(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/util/List;
    .locals 8
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 632
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 636
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v0, "list":Ljava/util/List;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    .line 638
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 639
    invoke-virtual {p0, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 640
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 641
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 643
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 644
    .local v4, "type":Ljava/lang/Class;
    const-class v6, Lnet/sf/json/JSONArray;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 645
    move-object v5, v3

    check-cast v5, Lnet/sf/json/JSONArray;

    invoke-static {v5, p1, p2}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 646
    :cond_2
    const-class v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4

    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4

    const-class v6, Ljava/lang/Character;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4

    const-class v6, Lnet/sf/json/JSONFunction;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 653
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lnet/sf/json/util/NewBeanInstanceStrategy;->newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v5

    .line 655
    .local v5, "newRoot":Ljava/lang/Object;
    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONObject;

    invoke-static {v6, v5, p2}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    nop

    .end local v5    # "newRoot":Ljava/lang/Object;
    goto :goto_2

    .line 658
    :catch_0
    move-exception v5

    .line 659
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/sf/json/JSONException;

    invoke-direct {v6, v5}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 656
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 657
    .local v5, "jsone":Lnet/sf/json/JSONException;
    throw v5

    .line 650
    .end local v5    # "jsone":Lnet/sf/json/JSONException;
    :cond_4
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "type":Ljava/lang/Class;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    .end local v2    # "i":I
    :cond_5
    return-object v0

    .line 633
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "size":I
    :cond_6
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static toList(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/List;
    .locals 9
    .param p0, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 587
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 591
    :cond_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getRootClass()Ljava/lang/Class;

    move-result-object v0

    .line 592
    .local v0, "objectClass":Ljava/lang/Class;
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getClassMap()Ljava/util/Map;

    move-result-object v1

    .line 594
    .local v1, "classMap":Ljava/util/Map;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v2, "list":Ljava/util/List;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v3

    .line 596
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_7

    .line 597
    invoke-virtual {p0, v4}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 598
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v5}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 599
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 601
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 602
    .local v6, "type":Ljava/lang/Class;
    const-class v7, Lnet/sf/json/JSONArray;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 603
    move-object v7, v5

    check-cast v7, Lnet/sf/json/JSONArray;

    invoke-static {v7, v0, v1}, Lnet/sf/json/JSONArray;->toList(Lnet/sf/json/JSONArray;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 604
    :cond_2
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v6}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    const-class v7, Ljava/lang/Character;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    const-class v7, Lnet/sf/json/JSONFunction;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 614
    :cond_3
    if-eqz v0, :cond_4

    .line 615
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->copy()Lnet/sf/json/JsonConfig;

    move-result-object v7

    .line 616
    .local v7, "jsc":Lnet/sf/json/JsonConfig;
    invoke-virtual {v7, v0}, Lnet/sf/json/JsonConfig;->setRootClass(Ljava/lang/Class;)V

    .line 617
    invoke-virtual {v7, v1}, Lnet/sf/json/JsonConfig;->setClassMap(Ljava/util/Map;)V

    .line 618
    move-object v8, v5

    check-cast v8, Lnet/sf/json/JSONObject;

    invoke-static {v8, v7}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v7    # "jsc":Lnet/sf/json/JsonConfig;
    goto :goto_2

    .line 620
    :cond_4
    move-object v7, v5

    check-cast v7, Lnet/sf/json/JSONObject;

    invoke-static {v7}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 608
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 609
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 612
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "type":Ljava/lang/Class;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 625
    .end local v4    # "i":I
    :cond_7
    return-object v2
.end method


# virtual methods
.method protected _processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2505
    instance-of v0, p1, Lnet/sf/json/util/JSONTokener;

    if-eqz v0, :cond_0

    .line 2506
    move-object v0, p1

    check-cast v0, Lnet/sf/json/util/JSONTokener;

    invoke-static {v0, p2}, Lnet/sf/json/JSONArray;->_fromJSONTokener(Lnet/sf/json/util/JSONTokener;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 2507
    :cond_0
    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2508
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2509
    :cond_1
    instance-of v0, p1, Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2513
    :cond_2
    invoke-super {p0, p1, p2}, Lnet/sf/json/AbstractJSON;->_processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2511
    :cond_3
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Unsupported type"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1237
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->add(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 1238
    return-void
.end method

.method public add(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1241
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lnet/sf/json/JSONArray;->processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1242
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1245
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->add(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1249
    invoke-virtual {p0, p1, p2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1250
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .line 1268
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->addAll(ILjava/util/Collection;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;Lnet/sf/json/JsonConfig;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1272
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1275
    :cond_0
    const/4 v0, 0x0

    .line 1276
    .local v0, "offset":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    iget-object v2, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "offset":I
    .local v3, "offset":I
    add-int/2addr v0, p1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lnet/sf/json/JSONArray;->processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v3

    goto :goto_0

    .line 1279
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v3    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1273
    .end local v0    # "offset":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .line 1254
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->addAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1258
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1261
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 1264
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1259
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method protected addString(Ljava/lang/String;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2485
    if-eqz p1, :cond_0

    .line 2486
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2488
    :cond_0
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 1283
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1284
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1287
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    instance-of v1, p1, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_2

    .line 1288
    move-object v1, p1

    check-cast v1, Lnet/sf/json/JSONArray;

    .line 1289
    .local v1, "other":Lnet/sf/json/JSONArray;
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    .line 1290
    .local v2, "size1":I
    invoke-virtual {v1}, Lnet/sf/json/JSONArray;->size()I

    move-result v3

    .line 1291
    .local v3, "size2":I
    if-ge v2, v3, :cond_0

    .line 1292
    return v0

    .line 1293
    :cond_0
    if-le v2, v3, :cond_1

    .line 1294
    const/4 v0, 0x1

    return v0

    .line 1295
    :cond_1
    invoke-virtual {p0, v1}, Lnet/sf/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1296
    const/4 v0, 0x0

    return v0

    .line 1299
    .end local v1    # "other":Lnet/sf/json/JSONArray;
    .end local v2    # "size1":I
    .end local v3    # "size2":I
    :cond_2
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1303
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->contains(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1307
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lnet/sf/json/JSONArray;->processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .line 1311
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->containsAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1315
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p1, p2}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public discard(I)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I

    .line 1325
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1326
    return-object p0
.end method

.method public discard(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1336
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1337
    return-object p0
.end method

.method public element(D)Lnet/sf/json/JSONArray;
    .locals 2
    .param p1, "value"    # D

    .line 1385
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 1386
    .local v0, "d":Ljava/lang/Double;
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 1387
    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v1

    return-object v1
.end method

.method public element(I)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # I

    .line 1397
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ID)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1469
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(ILjava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(II)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1483
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(ILjava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(IJ)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1497
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(ILjava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1557
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->element(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1574
    invoke-static {p2}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 1575
    if-ltz p1, :cond_2

    .line 1578
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1579
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lnet/sf/json/JSONArray;->processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1581
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1582
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Lnet/sf/json/JSONNull;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 1584
    :cond_1
    invoke-virtual {p0, p2, p3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1586
    :goto_1
    return-object p0

    .line 1576
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public element(ILjava/lang/String;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1603
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->element(ILjava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1620
    if-ltz p1, :cond_4

    .line 1623
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1624
    if-nez p2, :cond_0

    .line 1625
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1626
    :cond_0
    invoke-static {p2}, Lnet/sf/json/util/JSONUtils;->mayBeJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p2, p3}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "jsone":Lnet/sf/json/JSONException;
    iget-object v1, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p2}, Lnet/sf/json/util/JSONUtils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1631
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :goto_0
    goto :goto_2

    .line 1633
    :cond_1
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p2}, Lnet/sf/json/util/JSONUtils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1636
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 1637
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Lnet/sf/json/JSONNull;)Lnet/sf/json/JSONArray;

    goto :goto_1

    .line 1639
    :cond_3
    invoke-virtual {p0, p2, p3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1641
    :goto_2
    return-object p0

    .line 1621
    :cond_4
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public element(ILjava/util/Collection;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Collection;

    .line 1425
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->element(ILjava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Collection;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1439
    instance-of v0, p2, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_3

    .line 1440
    if-ltz p1, :cond_2

    .line 1443
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1444
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1446
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1447
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Lnet/sf/json/JSONNull;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 1449
    :cond_1
    invoke-virtual {p0, p2, p3}, Lnet/sf/json/JSONArray;->element(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1451
    :goto_1
    return-object p0

    .line 1441
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_3
    invoke-static {p2, p3}, Lnet/sf/json/JSONArray;->_fromCollection(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(ILjava/util/Collection;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/util/Map;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Map;

    .line 1511
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->element(ILjava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Map;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1525
    instance-of v0, p2, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_3

    .line 1526
    if-ltz p1, :cond_2

    .line 1529
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1530
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1532
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1533
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Lnet/sf/json/JSONNull;)Lnet/sf/json/JSONArray;

    goto :goto_0

    .line 1535
    :cond_1
    invoke-virtual {p0, p2, p3}, Lnet/sf/json/JSONArray;->element(Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 1537
    :goto_1
    return-object p0

    .line 1527
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1539
    :cond_3
    invoke-static {p2, p3}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(ILjava/util/Map;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(IZ)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1411
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(ILjava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(J)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # J

    .line 1673
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->transformNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1712
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1724
    invoke-direct {p0, p1, p2}, Lnet/sf/json/JSONArray;->addValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1736
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1748
    if-nez p1, :cond_0

    .line 1749
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1750
    :cond_0
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->hasQuotes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1752
    :cond_1
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1754
    :cond_2
    invoke-static {p1, p2}, Lnet/sf/json/util/JSONUtils;->isJsonKeyword(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1755
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->isJavascriptCompliant()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "undefined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1756
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1758
    :cond_3
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1760
    :cond_4
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->mayBeJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1762
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p1, p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "jsone":Lnet/sf/json/JSONException;
    iget-object v1, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1765
    .end local v0    # "jsone":Lnet/sf/json/JSONException;
    :goto_0
    goto :goto_1

    .line 1767
    :cond_5
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1769
    :goto_1
    return-object p0
.end method

.method public element(Ljava/util/Collection;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Collection;

    .line 1358
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Collection;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1369
    instance-of v0, p1, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    return-object p0

    .line 1373
    :cond_0
    invoke-static {p1, p2}, Lnet/sf/json/JSONArray;->_fromCollection(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Ljava/util/Collection;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/util/Map;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Map;

    .line 1684
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->element(Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Ljava/util/Map;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Map;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 1695
    instance-of v0, p1, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    return-object p0

    .line 1699
    :cond_0
    invoke-static {p1, p2}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Lnet/sf/json/JSONObject;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public element(Lnet/sf/json/JSONNull;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Lnet/sf/json/JSONNull;

    .line 1651
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1652
    return-object p0
.end method

.method public element(Lnet/sf/json/JSONObject;)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Lnet/sf/json/JSONObject;

    .line 1662
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    return-object p0
.end method

.method public element(Z)Lnet/sf/json/JSONArray;
    .locals 1
    .param p1, "value"    # Z

    .line 1347
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1773
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1774
    return v0

    .line 1776
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1777
    return v1

    .line 1780
    :cond_1
    instance-of v2, p1, Lnet/sf/json/JSONArray;

    if-nez v2, :cond_2

    .line 1781
    return v1

    .line 1784
    :cond_2
    move-object v2, p1

    check-cast v2, Lnet/sf/json/JSONArray;

    .line 1786
    .local v2, "other":Lnet/sf/json/JSONArray;
    invoke-virtual {v2}, Lnet/sf/json/JSONArray;->size()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1787
    return v1

    .line 1790
    :cond_3
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v3

    .line 1791
    .local v3, "max":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_13

    .line 1792
    invoke-virtual {p0, v4}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1793
    .local v5, "o1":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1796
    .local v6, "o2":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v7

    invoke-virtual {v7, v5}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1798
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1800
    goto/16 :goto_1

    .line 1802
    :cond_4
    return v1

    .line 1805
    :cond_5
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1807
    return v1

    .line 1811
    :cond_6
    instance-of v7, v5, Lnet/sf/json/JSONArray;

    if-eqz v7, :cond_8

    instance-of v7, v6, Lnet/sf/json/JSONArray;

    if-eqz v7, :cond_8

    .line 1812
    move-object v7, v5

    check-cast v7, Lnet/sf/json/JSONArray;

    .line 1813
    .local v7, "e":Lnet/sf/json/JSONArray;
    move-object v8, v6

    check-cast v8, Lnet/sf/json/JSONArray;

    .line 1814
    .local v8, "a":Lnet/sf/json/JSONArray;
    invoke-virtual {v8, v7}, Lnet/sf/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1815
    return v1

    .line 1817
    .end local v7    # "e":Lnet/sf/json/JSONArray;
    .end local v8    # "a":Lnet/sf/json/JSONArray;
    :cond_7
    goto/16 :goto_1

    .line 1818
    :cond_8
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_9

    instance-of v7, v6, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_9

    .line 1819
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1820
    return v1

    .line 1822
    :cond_9
    instance-of v7, v5, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_a

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 1823
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1824
    return v1

    .line 1826
    :cond_a
    instance-of v7, v5, Lnet/sf/json/JSONObject;

    if-eqz v7, :cond_b

    instance-of v7, v6, Lnet/sf/json/JSONObject;

    if-eqz v7, :cond_b

    .line 1827
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1828
    return v1

    .line 1830
    :cond_b
    instance-of v7, v5, Lnet/sf/json/JSONArray;

    if-eqz v7, :cond_c

    instance-of v7, v6, Lnet/sf/json/JSONArray;

    if-eqz v7, :cond_c

    .line 1831
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1832
    return v1

    .line 1834
    :cond_c
    instance-of v7, v5, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_d

    instance-of v7, v6, Lnet/sf/json/JSONFunction;

    if-eqz v7, :cond_d

    .line 1835
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1836
    return v1

    .line 1839
    :cond_d
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 1840
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1841
    return v1

    .line 1843
    :cond_e
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 1844
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 1845
    return v1

    .line 1848
    :cond_f
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v7

    .line 1850
    .local v7, "m1":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v8

    .line 1852
    .local v8, "m2":Lnet/sf/ezmorph/Morpher;
    if-eqz v7, :cond_10

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v7, v9, :cond_10

    .line 1853
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1855
    return v1

    .line 1857
    :cond_10
    if-eqz v8, :cond_11

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v8, v9, :cond_11

    .line 1858
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1861
    return v1

    .line 1864
    :cond_11
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1865
    return v1

    .line 1791
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    .end local v7    # "m1":Lnet/sf/ezmorph/Morpher;
    .end local v8    # "m2":Lnet/sf/ezmorph/Morpher;
    :cond_12
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1872
    .end local v4    # "i":I
    :cond_13
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 1886
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 1899
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1900
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 1901
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

    .line 1904
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

    .line 1906
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1903
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1909
    :cond_3
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is not a Boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(I)D
    .locals 6
    .param p1, "index"    # I

    .line 1921
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1922
    .local v0, "o":Ljava/lang/Object;
    const-string v1, "] is not a number."

    const-string v2, "JSONArray["

    if-eqz v0, :cond_1

    .line 1924
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

    .line 1926
    :catch_0
    move-exception v3

    .line 1927
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/sf/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1930
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lnet/sf/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1943
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1944
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1945
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    :goto_0
    return v1

    .line 1947
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONArray(I)Lnet/sf/json/JSONArray;
    .locals 4
    .param p1, "index"    # I

    .line 1959
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1960
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_0

    .line 1961
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONArray;

    return-object v1

    .line 1963
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Lnet/sf/json/JSONObject;
    .locals 4
    .param p1, "index"    # I

    .line 1975
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1976
    .local v0, "o":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1978
    new-instance v1, Lnet/sf/json/JSONObject;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/sf/json/JSONObject;-><init>(Z)V

    return-object v1

    .line 1979
    :cond_0
    instance-of v1, v0, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_1

    .line 1980
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONObject;

    return-object v1

    .line 1982
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "index"    # I

    .line 1994
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1995
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1996
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-long v1, v1

    :goto_0
    return-wide v1

    .line 1998
    :cond_1
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is not a number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 2009
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2010
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2011
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2013
    :cond_0
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 4

    .line 2017
    const/16 v0, 0x1d

    .line 2019
    .local v0, "hashcode":I
    iget-object v1, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2020
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2021
    .local v2, "element":Ljava/lang/Object;
    invoke-static {v2}, Lnet/sf/json/util/JSONUtils;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2022
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 2023
    .end local v1    # "e":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2027
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 2031
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2035
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExpandElements()Z
    .locals 1

    .line 2039
    iget-boolean v0, p0, Lnet/sf/json/JSONArray;->expandElements:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 2046
    new-instance v0, Lnet/sf/json/JSONArray$JSONArrayListIterator;

    invoke-direct {v0, p0}, Lnet/sf/json/JSONArray$JSONArrayListIterator;-><init>(Lnet/sf/json/JSONArray;)V

    return-object v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 2059
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->join(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "stripQuotes"    # Z

    .line 2072
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    .line 2073
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2075
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2076
    if-lez v2, :cond_0

    .line 2077
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2079
    :cond_0
    iget-object v3, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2080
    .local v3, "value":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2075
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2082
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2086
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 2090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/json/JSONArray;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I

    .line 2094
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2097
    new-instance v0, Lnet/sf/json/JSONArray$JSONArrayListIterator;

    invoke-direct {v0, p0, p1}, Lnet/sf/json/JSONArray$JSONArrayListIterator;-><init>(Lnet/sf/json/JSONArray;I)V

    return-object v0

    .line 2095
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 2107
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public optBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 2119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .line 2133
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2134
    :catch_0
    move-exception v0

    .line 2135
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public optDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 2148
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # D

    .line 2162
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->getDouble(I)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2163
    :catch_0
    move-exception v0

    .line 2164
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public optInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 2191
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public optJSONArray(I)Lnet/sf/json/JSONArray;
    .locals 2
    .param p1, "index"    # I

    .line 2205
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 2206
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

.method public optJSONObject(I)Lnet/sf/json/JSONObject;
    .locals 2
    .param p1, "index"    # I

    .line 2218
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 2219
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

.method public optLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 2231
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # J

    .line 2245
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 2260
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 2272
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 2273
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

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 2277
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2281
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .line 2285
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->removeAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2289
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p1, p2}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .line 2293
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->retainAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2297
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-static {p1, p2}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 2301
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/JSONArray;->set(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 2305
    invoke-virtual {p0, p1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2306
    .local v0, "previous":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/json/JSONArray;->element(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    .line 2307
    return-object v0
.end method

.method public setExpandElements(Z)V
    .locals 0
    .param p1, "expandElements"    # Z

    .line 2311
    iput-boolean p1, p0, Lnet/sf/json/JSONArray;->expandElements:Z

    .line 2312
    return-void
.end method

.method public size()I
    .locals 1

    .line 2320
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 2324
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2331
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;

    .line 2335
    iget-object v0, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject(Lnet/sf/json/JSONArray;)Lnet/sf/json/JSONObject;
    .locals 4
    .param p1, "names"    # Lnet/sf/json/JSONArray;

    .line 2349
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2352
    :cond_0
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    .line 2353
    .local v0, "jo":Lnet/sf/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2354
    invoke-virtual {p1, v1}, Lnet/sf/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lnet/sf/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 2353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2356
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 2350
    .end local v0    # "jo":Lnet/sf/json/JSONObject;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2372
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Lnet/sf/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2373
    :catch_0
    move-exception v0

    .line 2374
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "indentFactor"    # I

    .line 2391
    if-nez p1, :cond_0

    .line 2392
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2394
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 8
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I

    .line 2409
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    .line 2410
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 2411
    const-string v1, "[]"

    return-object v1

    .line 2413
    :cond_0
    if-nez p1, :cond_1

    .line 2414
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2417
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2418
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 2419
    iget-object v3, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 2421
    :cond_2
    add-int v3, p2, p1

    .line 2422
    .local v3, "newindent":I
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2423
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x20

    if-ge v5, v0, :cond_5

    .line 2424
    if-lez v5, :cond_3

    .line 2425
    const-string v7, ",\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2427
    :cond_3
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2428
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2427
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2430
    .end local v7    # "j":I
    :cond_4
    iget-object v6, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1, v3}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2423
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2432
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2433
    const/4 v4, 0x0

    .end local v5    # "i":I
    .local v4, "i":I
    :goto_2
    if-ge v4, p2, :cond_6

    .line 2434
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2433
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2436
    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-ge v4, p2, :cond_7

    .line 2437
    invoke-virtual {v1, v2, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2436
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2440
    .end local v3    # "newindent":I
    .end local v4    # "i":I
    :cond_7
    :goto_4
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2441
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .line 2455
    const/4 v0, 0x0

    .line 2456
    .local v0, "b":Z
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    .line 2458
    .local v1, "len":I
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 2460
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2461
    if-eqz v0, :cond_0

    .line 2462
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 2464
    :cond_0
    iget-object v3, p0, Lnet/sf/json/JSONArray;->elements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2465
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Lnet/sf/json/JSONObject;

    if-eqz v4, :cond_1

    .line 2466
    move-object v4, v3

    check-cast v4, Lnet/sf/json/JSONObject;

    invoke-virtual {v4, p1}, Lnet/sf/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    goto :goto_1

    .line 2467
    :cond_1
    instance-of v4, v3, Lnet/sf/json/JSONArray;

    if-eqz v4, :cond_2

    .line 2468
    move-object v4, v3

    check-cast v4, Lnet/sf/json/JSONArray;

    invoke-virtual {v4, p1}, Lnet/sf/json/JSONArray;->write(Ljava/io/Writer;)Ljava/io/Writer;

    goto :goto_1

    .line 2470
    :cond_2
    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2472
    :goto_1
    const/4 v0, 0x1

    .line 2460
    .end local v3    # "v":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2474
    .end local v2    # "i":I
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2475
    return-object p1

    .line 2476
    .end local v0    # "b":Z
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 2477
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
