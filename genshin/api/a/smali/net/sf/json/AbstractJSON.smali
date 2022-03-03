.class abstract Lnet/sf/json/AbstractJSON;
.super Ljava/lang/Object;
.source "AbstractJSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/AbstractJSON$CycleSet;
    }
.end annotation


# static fields
.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$net$sf$json$AbstractJSON:Ljava/lang/Class;

.field private static cycleSet:Lnet/sf/json/AbstractJSON$CycleSet;

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lnet/sf/json/AbstractJSON$CycleSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/AbstractJSON$CycleSet;-><init>(Lnet/sf/json/AbstractJSON$1;)V

    sput-object v0, Lnet/sf/json/AbstractJSON;->cycleSet:Lnet/sf/json/AbstractJSON$CycleSet;

    .line 53
    sget-object v0, Lnet/sf/json/AbstractJSON;->class$net$sf$json$AbstractJSON:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.AbstractJSON"

    invoke-static {v0}, Lnet/sf/json/AbstractJSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/AbstractJSON;->class$net$sf$json$AbstractJSON:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected static addInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "instance"    # Ljava/lang/Object;

    .line 63
    invoke-static {}, Lnet/sf/json/AbstractJSON;->getCycleSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static fireArrayEndEvent(Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 70
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 75
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1}, Lnet/sf/json/util/JsonEventListener;->onArrayEnd()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 79
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 81
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static fireArrayStartEvent(Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 87
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 92
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1}, Lnet/sf/json/util/JsonEventListener;->onArrayStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 96
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 98
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static fireElementAddedEvent(ILjava/lang/Object;Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "index"    # I
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 107
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 112
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lnet/sf/json/util/JsonEventListener;->onElementAdded(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_1

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 116
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 118
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static fireErrorEvent(Lnet/sf/json/JSONException;Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "jsone"    # Lnet/sf/json/JSONException;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 126
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 131
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1, p0}, Lnet/sf/json/util/JsonEventListener;->onError(Lnet/sf/json/JSONException;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 135
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 137
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static fireObjectEndEvent(Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 143
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 148
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1}, Lnet/sf/json/util/JsonEventListener;->onObjectEnd()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 152
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 154
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static fireObjectStartEvent(Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 160
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 162
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 165
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1}, Lnet/sf/json/util/JsonEventListener;->onObjectStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 169
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 171
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static firePropertySetEvent(Ljava/lang/String;Ljava/lang/Object;ZLnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "accumulated"    # Z
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 182
    invoke-virtual {p3}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p3}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 187
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lnet/sf/json/util/JsonEventListener;->onPropertySet(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_1

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 191
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 193
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static fireWarnEvent(Ljava/lang/String;Lnet/sf/json/JsonConfig;)V
    .locals 4
    .param p0, "warning"    # Ljava/lang/String;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 201
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->isEventTriggeringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getJsonEventListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    .local v0, "listeners":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/util/JsonEventListener;

    .line 206
    .local v1, "listener":Lnet/sf/json/util/JsonEventListener;
    :try_start_0
    invoke-interface {v1, p0}, Lnet/sf/json/util/JsonEventListener;->onWarning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_1

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lnet/sf/json/AbstractJSON;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 210
    .end local v1    # "listener":Lnet/sf/json/util/JsonEventListener;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 212
    .end local v0    # "listeners":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static getCycleSet()Ljava/util/Set;
    .locals 1

    .line 284
    sget-object v0, Lnet/sf/json/AbstractJSON;->cycleSet:Lnet/sf/json/AbstractJSON$CycleSet;

    invoke-virtual {v0}, Lnet/sf/json/AbstractJSON$CycleSet;->getSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected static removeInstance(Ljava/lang/Object;)V
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;

    .line 218
    invoke-static {}, Lnet/sf/json/AbstractJSON;->getCycleSet()Ljava/util/Set;

    move-result-object v0

    .line 219
    .local v0, "set":Ljava/util/Set;
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 221
    sget-object v1, Lnet/sf/json/AbstractJSON;->cycleSet:Lnet/sf/json/AbstractJSON$CycleSet;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method protected _processValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 226
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    sget-object v0, Lnet/sf/json/AbstractJSON;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lnet/sf/json/AbstractJSON;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/AbstractJSON;->class$java$lang$Class:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 230
    :cond_2
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 232
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/json/JSONFunction;->parse(Ljava/lang/String;)Lnet/sf/json/JSONFunction;

    move-result-object p1

    .line 234
    :cond_3
    return-object p1

    .line 235
    :cond_4
    instance-of v0, p1, Lnet/sf/json/JSONString;

    if-eqz v0, :cond_5

    .line 236
    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONString;

    invoke-static {v0, p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0

    .line 237
    :cond_5
    instance-of v0, p1, Lnet/sf/json/JSON;

    if-eqz v0, :cond_6

    .line 238
    invoke-static {p1, p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0

    .line 239
    :cond_6
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    invoke-static {p1, p2}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 241
    :cond_7
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->hasQuotes(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 244
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "stripped":Ljava/lang/String;
    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 246
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 248
    :cond_8
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 249
    return-object v1

    .line 251
    :cond_9
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 252
    return-object v1

    .line 254
    :cond_a
    return-object v0

    .line 255
    .end local v1    # "stripped":Ljava/lang/String;
    :cond_b
    invoke-static {v0, p2}, Lnet/sf/json/util/JSONUtils;->isJsonKeyword(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 256
    invoke-virtual {p2}, Lnet/sf/json/JsonConfig;->isJavascriptCompliant()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 257
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    return-object v1

    .line 259
    :cond_c
    return-object v0

    .line 260
    :cond_d
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->mayBeJSON(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 262
    :try_start_0
    invoke-static {v0, p2}, Lnet/sf/json/JSONSerializer;->toJSON(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSON;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "jsone":Lnet/sf/json/JSONException;
    return-object v0

    .line 267
    .end local v1    # "jsone":Lnet/sf/json/JSONException;
    :cond_e
    return-object v0

    .line 268
    .end local v0    # "str":Ljava/lang/String;
    :cond_f
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 270
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->transformNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 271
    :cond_10
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 272
    return-object p1

    .line 274
    :cond_11
    invoke-static {p1, p2}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    .line 275
    .local v0, "jsonObject":Lnet/sf/json/JSONObject;
    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 276
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v1

    return-object v1

    .line 278
    :cond_12
    return-object v0

    .line 229
    .end local v0    # "jsonObject":Lnet/sf/json/JSONObject;
    :cond_13
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
