.class public Lnet/sf/json/groovy/JsonGroovyBuilder;
.super Lgroovy/lang/GroovyObjectSupport;
.source "JsonGroovyBuilder.java"


# static fields
.field private static final JSON:Ljava/lang/String; = "json"


# instance fields
.field private current:Lnet/sf/json/JSON;

.field private properties:Ljava/util/Map;

.field private stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lgroovy/lang/GroovyObjectSupport;-><init>()V

    .line 116
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->properties:Ljava/util/Map;

    .line 118
    return-void
.end method

.method private _append(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JSON;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "target"    # Lnet/sf/json/JSON;

    .line 227
    instance-of v0, p3, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_0

    .line 228
    move-object v0, p3

    check-cast v0, Lnet/sf/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    goto :goto_0

    .line 229
    :cond_0
    instance-of v0, p3, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_1

    .line 230
    move-object v0, p3

    check-cast v0, Lnet/sf/json/JSONArray;

    invoke-virtual {v0, p2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 232
    :cond_1
    :goto_0
    return-void
.end method

.method private _getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lgroovy/lang/GroovyObjectSupport;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private append(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "target":Ljava/lang/Object;
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 219
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSON;

    iput-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->current:Lnet/sf/json/JSON;

    .line 220
    invoke-direct {p0, p1, p2, v1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->_append(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JSON;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_0
    return-void
.end method

.method private createArray(Ljava/util/List;)Lnet/sf/json/JSON;
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .line 235
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 236
    .local v0, "array":Lnet/sf/json/JSONArray;
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "elements":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 239
    .local v2, "element":Ljava/lang/Object;
    instance-of v3, v2, Lgroovy/lang/Closure;

    if-eqz v3, :cond_0

    .line 240
    move-object v3, v2

    check-cast v3, Lgroovy/lang/Closure;

    invoke-direct {p0, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object v2

    goto :goto_1

    .line 241
    :cond_0
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 242
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object v2

    goto :goto_1

    .line 243
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 244
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object v2

    .line 246
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 247
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 248
    .end local v1    # "elements":Ljava/util/Iterator;
    :cond_3
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 249
    return-object v0
.end method

.method private createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;
    .locals 2
    .param p1, "closure"    # Lgroovy/lang/Closure;

    .line 253
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    .line 254
    .local v0, "object":Lnet/sf/json/JSONObject;
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p1, p0}, Lgroovy/lang/Closure;->setDelegate(Ljava/lang/Object;)V

    .line 256
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lgroovy/lang/Closure;->setResolveStrategy(I)V

    .line 257
    invoke-virtual {p1}, Lgroovy/lang/Closure;->call()Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 259
    return-object v0
.end method

.method private createObject(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSON;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 284
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 285
    .local v0, "args":[Ljava/lang/Object;
    array-length v1, v0

    if-eqz v1, :cond_8

    .line 289
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 290
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Lgroovy/lang/Closure;

    if-eqz v2, :cond_0

    .line 291
    aget-object v1, v0, v1

    check-cast v1, Lgroovy/lang/Closure;

    invoke-direct {p0, v1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object v1

    return-object v1

    .line 292
    :cond_0
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 293
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object v1

    return-object v1

    .line 294
    :cond_1
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 295
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object v1

    return-object v1

    .line 297
    :cond_2
    new-instance v1, Lnet/sf/json/JSONException;

    const-string v2, "Unsupported type"

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_3
    new-instance v1, Lnet/sf/json/JSONArray;

    invoke-direct {v1}, Lnet/sf/json/JSONArray;-><init>()V

    .line 301
    .local v1, "array":Lnet/sf/json/JSONArray;
    iget-object v2, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 303
    aget-object v3, v0, v2

    instance-of v3, v3, Lgroovy/lang/Closure;

    if-eqz v3, :cond_4

    .line 304
    aget-object v3, v0, v2

    check-cast v3, Lgroovy/lang/Closure;

    invoke-direct {p0, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 305
    :cond_4
    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 306
    aget-object v3, v0, v2

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 307
    :cond_5
    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_6

    .line 308
    aget-object v3, v0, v2

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 310
    :cond_6
    aget-object v3, v0, v2

    iget-object v4, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/json/JSON;

    invoke-direct {p0, p1, v3, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->_append(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JSON;)V

    .line 302
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 314
    return-object v1

    .line 286
    .end local v1    # "array":Lnet/sf/json/JSONArray;
    :cond_8
    new-instance v1, Lgroovy/lang/MissingMethodException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lgroovy/lang/MissingMethodException;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)V

    throw v1
.end method

.method private createObject(Ljava/util/Map;)Lnet/sf/json/JSON;
    .locals 6
    .param p1, "map"    # Ljava/util/Map;

    .line 263
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    .line 264
    .local v0, "object":Lnet/sf/json/JSONObject;
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, "properties":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    .local v2, "property":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 270
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lgroovy/lang/Closure;

    if-eqz v5, :cond_0

    .line 271
    move-object v5, v4

    check-cast v5, Lgroovy/lang/Closure;

    invoke-direct {p0, v5}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object v4

    goto :goto_1

    .line 272
    :cond_0
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 273
    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    invoke-direct {p0, v5}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object v4

    goto :goto_1

    .line 274
    :cond_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 275
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object v4

    .line 277
    :cond_2
    :goto_1
    invoke-virtual {v0, v3, v4}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 278
    .end local v2    # "property":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 279
    .end local v1    # "properties":Ljava/util/Iterator;
    :cond_3
    iget-object v1, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 280
    return-object v0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "top":Ljava/lang/Object;
    instance-of v1, v0, Lnet/sf/json/JSONObject;

    if-eqz v1, :cond_1

    .line 124
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONObject;

    .line 125
    .local v1, "json":Lnet/sf/json/JSONObject;
    invoke-virtual {v1, p1}, Lnet/sf/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v1, p1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->_getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 131
    .end local v1    # "json":Lnet/sf/json/JSONObject;
    :cond_1
    invoke-direct {p0, p1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->_getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 134
    .end local v0    # "top":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, p1}, Lnet/sf/json/groovy/JsonGroovyBuilder;->_getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 139
    const-string v0, "json"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p1, p2}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 144
    .local v0, "args":[Ljava/lang/Object;
    array-length v1, v0

    if-eqz v1, :cond_c

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "value":Ljava/lang/Object;
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 150
    new-instance v2, Lnet/sf/json/JSONArray;

    invoke-direct {v2}, Lnet/sf/json/JSONArray;-><init>()V

    .line 151
    .local v2, "array":Lnet/sf/json/JSONArray;
    iget-object v3, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 153
    aget-object v4, v0, v3

    instance-of v4, v4, Lgroovy/lang/Closure;

    if-eqz v4, :cond_1

    .line 154
    aget-object v4, v0, v3

    check-cast v4, Lgroovy/lang/Closure;

    invoke-direct {p0, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_1
    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 156
    aget-object v4, v0, v3

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 157
    :cond_2
    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 158
    aget-object v4, v0, v3

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_3
    aget-object v4, v0, v3

    iget-object v5, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/json/JSON;

    invoke-direct {p0, p1, v4, v5}, Lnet/sf/json/groovy/JsonGroovyBuilder;->_append(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JSON;)V

    .line 152
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 164
    .end local v2    # "array":Lnet/sf/json/JSONArray;
    goto :goto_2

    .line 165
    :cond_5
    const/4 v2, 0x0

    aget-object v3, v0, v2

    instance-of v3, v3, Lgroovy/lang/Closure;

    if-eqz v3, :cond_6

    .line 166
    aget-object v2, v0, v2

    check-cast v2, Lgroovy/lang/Closure;

    invoke-direct {p0, v2}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object v1

    goto :goto_2

    .line 167
    :cond_6
    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 168
    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object v1

    goto :goto_2

    .line 169
    :cond_7
    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_8

    .line 170
    aget-object v2, v0, v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object v1

    .line 174
    :cond_8
    :goto_2
    iget-object v2, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 175
    new-instance v2, Lnet/sf/json/JSONObject;

    invoke-direct {v2}, Lnet/sf/json/JSONObject;-><init>()V

    .line 176
    .local v2, "object":Lnet/sf/json/JSONObject;
    iget-object v3, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->current:Lnet/sf/json/JSON;

    invoke-virtual {v2, p1, v3}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 177
    iput-object v2, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->current:Lnet/sf/json/JSON;

    .line 178
    .end local v2    # "object":Lnet/sf/json/JSONObject;
    goto :goto_3

    .line 179
    :cond_9
    iget-object v2, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/json/JSON;

    .line 180
    .local v2, "top":Lnet/sf/json/JSON;
    instance-of v3, v2, Lnet/sf/json/JSONObject;

    if-eqz v3, :cond_b

    .line 181
    iget-object v3, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->current:Lnet/sf/json/JSON;

    if-nez v3, :cond_a

    move-object v3, v1

    :cond_a
    invoke-direct {p0, p1, v3}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .end local v2    # "top":Lnet/sf/json/JSON;
    :cond_b
    :goto_3
    iget-object v2, p0, Lnet/sf/json/groovy/JsonGroovyBuilder;->current:Lnet/sf/json/JSON;

    return-object v2

    .line 145
    .end local v1    # "value":Ljava/lang/Object;
    :cond_c
    new-instance v1, Lgroovy/lang/MissingMethodException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lgroovy/lang/MissingMethodException;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)V

    throw v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 189
    instance-of v0, p2, Lgroovy/lang/GString;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    :try_start_0
    invoke-static {p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;)Lnet/sf/json/JSON;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 195
    :goto_0
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0

    .line 196
    :cond_0
    instance-of v0, p2, Lgroovy/lang/Closure;

    if-eqz v0, :cond_1

    .line 197
    move-object v0, p2

    check-cast v0, Lgroovy/lang/Closure;

    invoke-direct {p0, v0}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Lgroovy/lang/Closure;)Lnet/sf/json/JSON;

    move-result-object p2

    goto :goto_1

    .line 198
    :cond_1
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 199
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createObject(Ljava/util/Map;)Lnet/sf/json/JSON;

    move-result-object p2

    goto :goto_1

    .line 200
    :cond_2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 201
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lnet/sf/json/groovy/JsonGroovyBuilder;->createArray(Ljava/util/List;)Lnet/sf/json/JSON;

    move-result-object p2

    .line 204
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lnet/sf/json/groovy/JsonGroovyBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    return-void
.end method
