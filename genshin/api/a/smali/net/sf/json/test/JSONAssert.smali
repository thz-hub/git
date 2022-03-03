.class public Lnet/sf/json/test/JSONAssert;
.super Ljunit/framework/Assert;
.source "JSONAssert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONArray;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Lnet/sf/json/JSONArray;

    .line 398
    :try_start_0
    invoke-static {p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    goto :goto_1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lnet/sf/json/JSONException;
    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "header":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "expected is not a JSONArray"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 403
    .end local v0    # "e":Lnet/sf/json/JSONException;
    .end local v1    # "header":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONFunction;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Lnet/sf/json/JSONFunction;

    .line 409
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 411
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected string was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 413
    :cond_1
    if-nez p2, :cond_2

    .line 414
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual function was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 418
    :cond_2
    :try_start_0
    invoke-static {p1}, Lnet/sf/json/JSONFunction;->parse(Ljava/lang/String;)Lnet/sf/json/JSONFunction;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_1

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "jsone":Lnet/sf/json/JSONException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' is not a function"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 422
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONNull;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Lnet/sf/json/JSONNull;

    .line 428
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 430
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_1
    if-nez p2, :cond_2

    .line 432
    const-string v1, "null"

    invoke-static {v0, p1, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {p2}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONObject;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Lnet/sf/json/JSONObject;

    .line 443
    :try_start_0
    invoke-static {p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Lnet/sf/json/JSONException;
    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "header":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "expected is not a JSONObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 448
    .end local v0    # "e":Lnet/sf/json/JSONException;
    .end local v1    # "header":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSON;Lnet/sf/json/JSON;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSON;
    .param p2, "actual"    # Lnet/sf/json/JSON;

    .line 92
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 96
    :cond_1
    if-nez p2, :cond_2

    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 99
    :cond_2
    if-eq p1, p2, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 103
    :cond_3
    instance-of v1, p1, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_5

    .line 104
    instance-of v1, p2, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_4

    .line 105
    move-object v1, p1

    check-cast v1, Lnet/sf/json/JSONArray;

    move-object v2, p2

    check-cast v2, Lnet/sf/json/JSONArray;

    invoke-static {v0, v1, v2}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V

    goto :goto_1

    .line 107
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual is not a JSONArray"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_5
    instance-of v1, p1, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_7

    .line 110
    instance-of v1, p2, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_6

    .line 111
    move-object v1, p1

    check-cast v1, Lnet/sf/json/JSONObject;

    move-object v2, p2

    check-cast v2, Lnet/sf/json/JSONObject;

    invoke-static {v0, v1, v2}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V

    goto :goto_1

    .line 113
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual is not a JSONObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_7
    instance-of v1, p1, Lnet/sf/json/JSONNull;

    if-eqz v1, :cond_9

    .line 116
    instance-of v1, p2, Lnet/sf/json/JSONNull;

    if-eqz v1, :cond_8

    .line 117
    return-void

    .line 119
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual is not a JSONNull"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 122
    :cond_9
    :goto_1
    return-void

    .line 100
    :cond_a
    :goto_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Lnet/sf/json/JSONArray;

    .line 128
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONArray;)V

    .line 129
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSONArray;
    .param p2, "actual"    # Ljava/lang/String;

    .line 225
    :try_start_0
    invoke-static {p2}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lnet/sf/json/JSONException;
    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "header":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "actual is not a JSONArray"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 230
    .end local v0    # "e":Lnet/sf/json/JSONException;
    .end local v1    # "header":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V
    .locals 10
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSONArray;
    .param p2, "actual"    # Lnet/sf/json/JSONArray;

    .line 135
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected array was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 139
    :cond_1
    if-nez p2, :cond_2

    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual array was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 142
    :cond_2
    if-eq p1, p2, :cond_13

    invoke-virtual {p1, p2}, Lnet/sf/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 145
    :cond_3
    invoke-virtual {p2}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 146
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "arrays sizes differed, expected.length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " actual.length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 150
    :cond_4
    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    .line 151
    .local v1, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_12

    .line 152
    invoke-virtual {p1, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "o1":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 156
    .local v4, "o2":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "];"

    const-string v7, "arrays first differed at element ["

    if-eqz v5, :cond_6

    .line 158
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 160
    goto/16 :goto_3

    .line 162
    :cond_5
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_2

    .line 165
    :cond_6
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 167
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 171
    :cond_7
    :goto_2
    instance-of v5, v3, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_8

    instance-of v5, v4, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_8

    .line 172
    move-object v5, v3

    check-cast v5, Lnet/sf/json/JSONArray;

    .line 173
    .local v5, "e":Lnet/sf/json/JSONArray;
    move-object v6, v4

    check-cast v6, Lnet/sf/json/JSONArray;

    .line 174
    .local v6, "a":Lnet/sf/json/JSONArray;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "arrays first differed at element "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V

    .line 175
    .end local v5    # "e":Lnet/sf/json/JSONArray;
    .end local v6    # "a":Lnet/sf/json/JSONArray;
    goto/16 :goto_3

    .line 176
    :cond_8
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_9

    instance-of v5, v4, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_9

    .line 177
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONFunction;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONFunction;)V

    goto/16 :goto_3

    .line 179
    :cond_9
    instance-of v5, v3, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_a

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 180
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONFunction;

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONFunction;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    :cond_a
    instance-of v5, v3, Lnet/sf/json/JSONObject;

    if-eqz v5, :cond_b

    instance-of v5, v4, Lnet/sf/json/JSONObject;

    if-eqz v5, :cond_b

    .line 183
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONObject;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONObject;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V

    goto/16 :goto_3

    .line 185
    :cond_b
    instance-of v5, v3, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_c

    instance-of v5, v4, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_c

    .line 186
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONArray;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONArray;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V

    goto/16 :goto_3

    .line 188
    :cond_c
    instance-of v5, v3, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_d

    instance-of v5, v4, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_d

    .line 189
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONFunction;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONFunction;

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 192
    :cond_d
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 193
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 195
    :cond_e
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 196
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 199
    :cond_f
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v5

    .line 201
    .local v5, "m1":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v8

    .line 203
    .local v8, "m2":Lnet/sf/ezmorph/Morpher;
    if-eqz v5, :cond_10

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v5, v9, :cond_10

    .line 204
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v3, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 207
    :cond_10
    if-eqz v8, :cond_11

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v8, v9, :cond_11

    .line 208
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9, v3}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7, v4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 212
    :cond_11
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .end local v3    # "o1":Ljava/lang/Object;
    .end local v4    # "o2":Ljava/lang/Object;
    .end local v5    # "m1":Lnet/sf/ezmorph/Morpher;
    .end local v8    # "m2":Lnet/sf/ezmorph/Morpher;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 218
    .end local v2    # "i":I
    :cond_12
    return-void

    .line 143
    .end local v1    # "max":I
    :cond_13
    :goto_4
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONFunction;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Lnet/sf/json/JSONFunction;

    .line 236
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONFunction;)V

    .line 237
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONFunction;Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSONFunction;
    .param p2, "actual"    # Ljava/lang/String;

    .line 243
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 245
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected function was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 247
    :cond_1
    if-nez p2, :cond_2

    .line 248
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual string was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 252
    :cond_2
    :try_start_0
    invoke-static {p2}, Lnet/sf/json/JSONFunction;->parse(Ljava/lang/String;)Lnet/sf/json/JSONFunction;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_1

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "jsone":Lnet/sf/json/JSONException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' is not a function"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 256
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONNull;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Lnet/sf/json/JSONNull;

    .line 262
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONNull;)V

    .line 263
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONNull;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSONNull;
    .param p2, "actual"    # Ljava/lang/String;

    .line 269
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    .line 271
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual string was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_1
    if-nez p1, :cond_2

    .line 273
    const-string v1, "null"

    invoke-static {v0, v1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p1}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Lnet/sf/json/JSONObject;

    .line 283
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONObject;)V

    .line 284
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSONObject;
    .param p2, "actual"    # Ljava/lang/String;

    .line 386
    :try_start_0
    invoke-static {p2}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lnet/sf/json/JSONException;
    if-nez p0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "header":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "actual is not a JSONObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 391
    .end local v0    # "e":Lnet/sf/json/JSONException;
    .end local v1    # "header":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V
    .locals 10
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Lnet/sf/json/JSONObject;
    .param p2, "actual"    # Lnet/sf/json/JSONObject;

    .line 290
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 292
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected object was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 294
    :cond_1
    if-nez p2, :cond_2

    .line 295
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual object was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 297
    :cond_2
    if-ne p1, p2, :cond_3

    .line 298
    return-void

    .line 301
    :cond_3
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 302
    invoke-virtual {p2}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    return-void

    .line 305
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual is not a null JSONObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_5
    invoke-virtual {p2}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 309
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual is a null JSONObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 313
    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "names sizes differed, expected.names().length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->names()Lnet/sf/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " actual.names().length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lnet/sf/json/JSONObject;->names()Lnet/sf/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->names()Lnet/sf/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/json/JSONArray;->size()I

    move-result v2

    invoke-virtual {p2}, Lnet/sf/json/JSONObject;->names()Lnet/sf/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/json/JSONArray;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 318
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "keys":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 319
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 321
    .local v3, "o1":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 323
    .local v4, "o2":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "];"

    const-string v7, "objects differed at key ["

    if-eqz v5, :cond_8

    .line 325
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 327
    goto :goto_2

    .line 329
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_3

    .line 332
    :cond_8
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 334
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 338
    :cond_9
    :goto_3
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_a

    instance-of v5, v4, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_a

    .line 339
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONFunction;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Lnet/sf/json/JSONFunction;)V

    goto/16 :goto_4

    .line 341
    :cond_a
    instance-of v5, v3, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_b

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 342
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONFunction;

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONFunction;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 344
    :cond_b
    instance-of v5, v3, Lnet/sf/json/JSONObject;

    if-eqz v5, :cond_c

    instance-of v5, v4, Lnet/sf/json/JSONObject;

    if-eqz v5, :cond_c

    .line 345
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONObject;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONObject;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V

    goto/16 :goto_4

    .line 347
    :cond_c
    instance-of v5, v3, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_d

    instance-of v5, v4, Lnet/sf/json/JSONArray;

    if-eqz v5, :cond_d

    .line 348
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONArray;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONArray;

    invoke-static {v5, v6, v7}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V

    goto/16 :goto_4

    .line 350
    :cond_d
    instance-of v5, v3, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_e

    instance-of v5, v4, Lnet/sf/json/JSONFunction;

    if-eqz v5, :cond_e

    .line 351
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lnet/sf/json/JSONFunction;

    move-object v7, v4

    check-cast v7, Lnet/sf/json/JSONFunction;

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 354
    :cond_e
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 355
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 357
    :cond_f
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 358
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 361
    :cond_10
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v5

    .line 363
    .local v5, "m1":Lnet/sf/ezmorph/Morpher;
    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/sf/ezmorph/MorpherRegistry;->getMorpherFor(Ljava/lang/Class;)Lnet/sf/ezmorph/Morpher;

    move-result-object v8

    .line 365
    .local v8, "m2":Lnet/sf/ezmorph/Morpher;
    if-eqz v5, :cond_11

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v5, v9, :cond_11

    .line 366
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v3, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 369
    :cond_11
    if-eqz v8, :cond_12

    invoke-static {}, Lnet/sf/ezmorph/object/IdentityObjectMorpher;->getInstance()Lnet/sf/ezmorph/object/IdentityObjectMorpher;

    move-result-object v9

    if-eq v8, v9, :cond_12

    .line 370
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnet/sf/json/util/JSONUtils;->getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9, v3}, Lnet/sf/ezmorph/MorpherRegistry;->morph(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7, v4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 374
    :cond_12
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "o1":Ljava/lang/Object;
    .end local v4    # "o2":Ljava/lang/Object;
    .end local v5    # "m1":Lnet/sf/ezmorph/Morpher;
    .end local v8    # "m2":Lnet/sf/ezmorph/Morpher;
    :goto_4
    goto/16 :goto_2

    .line 379
    .end local v1    # "keys":Ljava/util/Iterator;
    :cond_13
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSON;Lnet/sf/json/JSON;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSON;
    .param p1, "actual"    # Lnet/sf/json/JSON;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSON;Lnet/sf/json/JSON;)V

    .line 44
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSONArray;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSONArray;
    .param p1, "actual"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSONArray;
    .param p1, "actual"    # Lnet/sf/json/JSONArray;

    .line 50
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONArray;Lnet/sf/json/JSONArray;)V

    .line 51
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSONFunction;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSONFunction;
    .param p1, "actual"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONFunction;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSONNull;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSONNull;
    .param p1, "actual"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONNull;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSONObject;
    .param p1, "actual"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static assertEquals(Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V
    .locals 1
    .param p0, "expected"    # Lnet/sf/json/JSONObject;
    .param p1, "actual"    # Lnet/sf/json/JSONObject;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSONObject;Lnet/sf/json/JSONObject;)V

    .line 79
    return-void
.end method

.method public static assertJsonEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lnet/sf/json/test/JSONAssert;->assertJsonEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public static assertJsonEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 461
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "header":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 463
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "expected was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 465
    :cond_1
    if-nez p2, :cond_2

    .line 466
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "actual was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 469
    :cond_2
    const/4 v1, 0x0

    .line 470
    .local v1, "json1":Lnet/sf/json/JSON;
    const/4 v2, 0x0

    .line 472
    .local v2, "json2":Lnet/sf/json/JSON;
    :try_start_0
    invoke-static {p1}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;)Lnet/sf/json/JSON;

    move-result-object v3
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 475
    goto :goto_1

    .line 473
    :catch_0
    move-exception v3

    .line 474
    .local v3, "jsone":Lnet/sf/json/JSONException;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "expected is not a valid JSON string"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 477
    .end local v3    # "jsone":Lnet/sf/json/JSONException;
    :goto_1
    :try_start_1
    invoke-static {p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;)Lnet/sf/json/JSON;

    move-result-object v3
    :try_end_1
    .catch Lnet/sf/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 480
    goto :goto_2

    .line 478
    :catch_1
    move-exception v3

    .line 479
    .restart local v3    # "jsone":Lnet/sf/json/JSONException;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "actual is not a valid JSON string"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 481
    .end local v3    # "jsone":Lnet/sf/json/JSONException;
    :goto_2
    invoke-static {v0, v1, v2}, Lnet/sf/json/test/JSONAssert;->assertEquals(Ljava/lang/String;Lnet/sf/json/JSON;Lnet/sf/json/JSON;)V

    .line 482
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Lnet/sf/json/JSON;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "json"    # Lnet/sf/json/JSON;

    .line 505
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "header":Ljava/lang/String;
    :goto_0
    instance-of v1, p1, Lnet/sf/json/JSONObject;

    const-string v2, "Object is null"

    if-eqz v1, :cond_1

    .line 507
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lnet/sf/json/JSONObject;

    invoke-virtual {v2}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v2

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    goto :goto_1

    .line 508
    :cond_1
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 512
    :cond_2
    :goto_1
    return-void
.end method

.method public static assertNotNull(Lnet/sf/json/JSON;)V
    .locals 1
    .param p0, "json"    # Lnet/sf/json/JSON;

    .line 493
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/sf/json/test/JSONAssert;->assertNotNull(Ljava/lang/String;Lnet/sf/json/JSON;)V

    .line 494
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Lnet/sf/json/JSON;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "json"    # Lnet/sf/json/JSON;

    .line 535
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "header":Ljava/lang/String;
    :goto_0
    instance-of v1, p1, Lnet/sf/json/JSONObject;

    const-string v2, "Object is not null"

    if-eqz v1, :cond_1

    .line 537
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lnet/sf/json/JSONObject;

    invoke-virtual {v2}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v2

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 538
    :cond_1
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 540
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 542
    :cond_2
    :goto_1
    return-void
.end method

.method public static assertNull(Lnet/sf/json/JSON;)V
    .locals 1
    .param p0, "json"    # Lnet/sf/json/JSON;

    .line 523
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/sf/json/test/JSONAssert;->assertNull(Ljava/lang/String;Lnet/sf/json/JSON;)V

    .line 524
    return-void
.end method
