.class public Lnet/sf/json/JSONFunction;
.super Ljava/lang/Object;
.source "JSONFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_PARAM_ARRAY:[Ljava/lang/String;


# instance fields
.field private params:[Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/sf/json/JSONFunction;->EMPTY_PARAM_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    .line 73
    if-eqz p1, :cond_3

    .line 74
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lnet/sf/json/JSONFunction;->EMPTY_PARAM_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    goto :goto_2

    .line 78
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    .line 79
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 82
    iget-object v1, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 86
    :cond_3
    sget-object v0, Lnet/sf/json/JSONFunction;->EMPTY_PARAM_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    .line 88
    :goto_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lnet/sf/json/JSONFunction;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 41
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->getFunctionParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "params":Ljava/lang/String;
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->getFunctionBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Lnet/sf/json/JSONFunction;

    if-eqz v0, :cond_0

    const-string v3, ","

    invoke-static {v0, v3}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-direct {v2, v3, v4}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 42
    .end local v0    # "params":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "String is not a function. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    if-ne p0, p1, :cond_0

    .line 92
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 95
    return v0

    .line 98
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 100
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lnet/sf/json/JSONFunction;->parse(Ljava/lang/String;)Lnet/sf/json/JSONFunction;

    move-result-object v1

    .line 101
    .local v1, "other":Lnet/sf/json/JSONFunction;
    invoke-virtual {p0, v1}, Lnet/sf/json/JSONFunction;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 102
    .end local v1    # "other":Lnet/sf/json/JSONFunction;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lnet/sf/json/JSONException;
    return v0

    .line 107
    .end local v1    # "e":Lnet/sf/json/JSONException;
    :cond_2
    instance-of v1, p1, Lnet/sf/json/JSONFunction;

    if-nez v1, :cond_3

    .line 108
    return v0

    .line 111
    :cond_3
    move-object v1, p1

    check-cast v1, Lnet/sf/json/JSONFunction;

    .line 112
    .local v1, "other":Lnet/sf/json/JSONFunction;
    iget-object v2, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, v1, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_4

    .line 113
    return v0

    .line 115
    :cond_4
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    .line 116
    .local v0, "builder":Lorg/apache/commons/lang/builder/EqualsBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 117
    aget-object v3, v3, v2

    iget-object v4, v1, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_5
    iget-object v2, p0, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    iget-object v3, v1, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 120
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v2

    return v2
.end method

.method public getParams()[Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 138
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    .line 139
    .local v0, "builder":Lorg/apache/commons/lang/builder/HashCodeBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 140
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 143
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "function("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "b":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnet/sf/json/JSONFunction;->params:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 153
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_1
    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v1, p0, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 160
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lnet/sf/json/JSONFunction;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
