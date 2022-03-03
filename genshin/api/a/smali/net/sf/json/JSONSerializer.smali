.class public Lnet/sf/json/JSONSerializer;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Lnet/sf/json/JSON;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 84
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "json":Lnet/sf/json/JSON;
    if-nez p0, :cond_0

    .line 99
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_0
    instance-of v1, p0, Lnet/sf/json/JSONString;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, p0

    check-cast v1, Lnet/sf/json/JSONString;

    invoke-static {v1, p1}, Lnet/sf/json/JSONSerializer;->toJSON(Lnet/sf/json/JSONString;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 103
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-static {p0, p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    :try_start_0
    invoke-static {p0, p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 114
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Lnet/sf/json/JSONException;
    instance-of v2, p0, Lnet/sf/json/util/JSONTokener;

    if-eqz v2, :cond_4

    .line 111
    move-object v2, p0

    check-cast v2, Lnet/sf/json/util/JSONTokener;

    invoke-virtual {v2}, Lnet/sf/json/util/JSONTokener;->reset()V

    .line 113
    :cond_4
    invoke-static {p0, p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    .line 117
    .end local v1    # "e":Lnet/sf/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private static toJSON(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "json":Lnet/sf/json/JSON;
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p0, p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_0
    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-static {p0, p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_2
    new-instance v1, Lnet/sf/json/JSONException;

    const-string v2, "Invalid JSON String"

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toJSON(Lnet/sf/json/JSONString;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;
    .locals 1
    .param p0, "string"    # Lnet/sf/json/JSONString;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 126
    invoke-interface {p0}, Lnet/sf/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public static toJava(Lnet/sf/json/JSON;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lnet/sf/json/JSON;

    .line 42
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/JSONSerializer;->toJava(Lnet/sf/json/JSON;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJava(Lnet/sf/json/JSON;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Lnet/sf/json/JSON;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 56
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, p0, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getArrayMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 64
    move-object v1, p0

    check-cast v1, Lnet/sf/json/JSONArray;

    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->toArray(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    move-object v1, p0

    check-cast v1, Lnet/sf/json/JSONArray;

    invoke-static {v1, p1}, Lnet/sf/json/JSONArray;->toCollection(Lnet/sf/json/JSONArray;Lnet/sf/json/JsonConfig;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    move-object v1, p0

    check-cast v1, Lnet/sf/json/JSONObject;

    invoke-static {v1, p1}, Lnet/sf/json/JSONObject;->toBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0
.end method
