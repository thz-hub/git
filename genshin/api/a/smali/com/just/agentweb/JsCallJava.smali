.class public Lcom/just/agentweb/JsCallJava;
.super Ljava/lang/Object;
.source "JsCallJava.java"


# static fields
.field private static final IGNORE_UNSAFE_METHODS:[Ljava/lang/String;

.field private static final KEY_ARGS:Ljava/lang/String; = "args"

.field private static final KEY_METHOD:Ljava/lang/String; = "method"

.field private static final KEY_OBJ:Ljava/lang/String; = "obj"

.field private static final KEY_TYPES:Ljava/lang/String; = "types"

.field private static final MSG_PROMPT_HEADER:Ljava/lang/String; = "AgentWeb:"

.field private static final RETURN_RESULT_FORMAT:Ljava/lang/String; = "{\"CODE\": %d, \"result\": %s}"

.field private static final TAG:Ljava/lang/String; = "JsCallJava"


# instance fields
.field private mInterfaceObj:Ljava/lang/Object;

.field private mInterfacedName:Ljava/lang/String;

.field private mMethodsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadInterfaceJs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    const-string v0, "getClass"

    const-string v1, "hashCode"

    const-string v2, "notify"

    const-string v3, "notifyAll"

    const-string v4, "equals"

    const-string v5, "toString"

    const-string v6, "wait"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/JsCallJava;->IGNORE_UNSAFE_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11
    .param p1, "interfaceObj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .line 44
    const-string v0, "\'"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    iput-object p1, p0, Lcom/just/agentweb/JsCallJava;->mInterfaceObj:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/just/agentweb/JsCallJava;->mMethodsMap:Ljava/util/HashMap;

    .line 53
    iget-object v1, p0, Lcom/just/agentweb/JsCallJava;->mInterfaceObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "methods":[Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:(function(b){console.log(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, " init begin\");var a={queue:[],callback:function(){var d=Array.prototype.slice.call(arguments,0);var c=d.shift();var e=d.shift();this.queue[c].apply(this,d);if(!e){delete this.queue[c]}}};"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 59
    .local v6, "method":Ljava/lang/reflect/Method;
    const-string v7, "Info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0, v6}, Lcom/just/agentweb/JsCallJava;->genJavaMethodSign(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "sign":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 62
    goto :goto_1

    .line 64
    :cond_0
    iget-object v7, p0, Lcom/just/agentweb/JsCallJava;->mMethodsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v7, "a.%s="

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "sign":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const-string v3, "function(){var f=Array.prototype.slice.call(arguments,0);if(f.length<1){throw\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v3, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, " call result, message:miss method name\"}var e=[];for(var h=1;h<f.length;h++){var c=f[h];var j=typeof c;e[e.length]=j;if(j==\"function\"){var d=a.queue.length;a.queue[d]=c;f[h]=d}}var k = new Date().getTime();var l = f.shift();var m=prompt(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, "AgentWeb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, "\'+JSON.stringify("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "l"

    const-string v5, "e"

    const-string v6, "f"

    invoke-static {v0, v3, v5, v6}, Lcom/just/agentweb/JsCallJava;->promptMsgFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "));console.log(\"invoke \"+l+\", time: \"+(new Date().getTime()-k));var g=JSON.parse(m);if(g.CODE!=200){throw\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, " call result, CODE:\"+g.CODE+\", message:\"+g.result}return g.result};Object.getOwnPropertyNames(a).forEach(function(d){var c=a[d];if(typeof c===\"function\"&&d!==\"callback\"){a[d]=function(){return c.apply(a,[d].concat(Array.prototype.slice.call(arguments,0)))}}});b."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v0, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, "=a;console.log(\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v0, p0, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v0, " init end\")})(window)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/JsCallJava;->mPreloadInterfaceJs:Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "injected name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p1    # "interfaceObj":Ljava/lang/Object;
    .end local p2    # "interfaceName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .restart local p1    # "interfaceObj":Ljava/lang/Object;
    .restart local p2    # "interfaceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init js result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JsCallJava"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method private genJavaMethodSign(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "sign":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "argsTypes":[Ljava/lang/Class;
    sget-object v2, Lcom/just/agentweb/JsCallJava;->IGNORE_UNSAFE_METHODS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 93
    .local v5, "ignoreMethod":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is unsafe, will be pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JsCallJava"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 92
    .end local v5    # "ignoreMethod":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :cond_2
    array-length v2, v1

    .line 101
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v2, :cond_9

    .line 102
    aget-object v4, v1, v3

    .line 103
    .local v4, "cls":Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_3

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 105
    :cond_3
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_8

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_8

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_8

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 110
    :cond_4
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 112
    :cond_5
    const-class v5, Lorg/json/JSONObject;

    if-ne v4, v5, :cond_6

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_O"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 114
    :cond_6
    const-class v5, Lcom/just/agentweb/JsCallback;

    if-ne v4, v5, :cond_7

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 117
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_P"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 109
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_N"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .end local v4    # "cls":Ljava/lang/Class;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 120
    .end local v3    # "k":I
    :cond_9
    return-object v0
.end method

.method static getInterfacedName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 260
    const-string v0, "obj"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMsgJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 248
    const-string v0, "AgentWeb:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v0, "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 252
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 254
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 256
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0
.end method

.method private getReturn(Lorg/json/JSONObject;ILjava/lang/Object;J)Ljava/lang/String;
    .locals 5
    .param p1, "reqJson"    # Lorg/json/JSONObject;
    .param p2, "stateCode"    # I
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "time"    # J

    .line 207
    if-nez p3, :cond_0

    .line 208
    const-string v0, "null"

    .local v0, "insertRes":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v0    # "insertRes":Ljava/lang/String;
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 210
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 211
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "insertRes":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "insertRes":Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0    # "insertRes":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "{\"CODE\": %d, \"result\": %s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "resStr":Ljava/lang/String;
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JsCallJava"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    return-object v1
.end method

.method static isSafeWebViewCallMsg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 244
    const-string v0, "AgentWeb:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static promptMsgFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "types"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, "obj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v3, "method"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v3, "types"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, "args"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public call(Landroid/webkit/WebView;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 18
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .line 128
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-wide/16 v0, 0x0

    .line 129
    .local v0, "time":J
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_0

    .line 129
    :cond_0
    move-wide v9, v0

    .line 132
    .end local v0    # "time":J
    .local v9, "time":J
    :goto_0
    if-eqz v8, :cond_e

    .line 134
    :try_start_0
    const-string v0, "method"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "types"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v11, v1

    .line 136
    .local v11, "argsTypes":Lorg/json/JSONArray;
    const-string v1, "args"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v12, v1

    .line 137
    .local v12, "argsVals":Lorg/json/JSONArray;
    move-object v1, v0

    .line 138
    .local v1, "sign":Ljava/lang/String;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v13, v2

    .line 139
    .local v13, "len":I
    new-array v2, v13, [Ljava/lang/Object;

    move-object v14, v2

    .line 140
    .local v14, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 143
    .local v2, "numIndex":I
    const/4 v3, 0x0

    move-object v15, v1

    move/from16 v16, v2

    .end local v1    # "sign":Ljava/lang/String;
    .end local v2    # "numIndex":I
    .local v3, "k":I
    .local v15, "sign":Ljava/lang/String;
    .local v16, "numIndex":I
    :goto_1
    if-ge v3, v13, :cond_8

    .line 144
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "currType":Ljava/lang/String;
    const-string v2, "string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_S"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .end local v15    # "sign":Ljava/lang/String;
    .local v2, "sign":Ljava/lang/String;
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v14, v3

    move-object v15, v2

    goto/16 :goto_4

    .line 148
    .end local v2    # "sign":Ljava/lang/String;
    .restart local v15    # "sign":Ljava/lang/String;
    :cond_2
    const-string v2, "number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_N"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .end local v15    # "sign":Ljava/lang/String;
    .restart local v2    # "sign":Ljava/lang/String;
    mul-int/lit8 v4, v16, 0xa

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    move-object v15, v2

    move/from16 v16, v4

    .end local v16    # "numIndex":I
    .local v4, "numIndex":I
    goto/16 :goto_4

    .line 151
    .end local v2    # "sign":Ljava/lang/String;
    .end local v4    # "numIndex":I
    .restart local v15    # "sign":Ljava/lang/String;
    .restart local v16    # "numIndex":I
    :cond_3
    const-string v2, "boolean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_B"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .end local v15    # "sign":Ljava/lang/String;
    .restart local v2    # "sign":Ljava/lang/String;
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v14, v3

    move-object v15, v2

    goto :goto_4

    .line 154
    .end local v2    # "sign":Ljava/lang/String;
    .restart local v15    # "sign":Ljava/lang/String;
    :cond_4
    const-string v2, "object"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_O"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .end local v15    # "sign":Ljava/lang/String;
    .restart local v2    # "sign":Ljava/lang/String;
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    :goto_3
    aput-object v4, v14, v3

    move-object v15, v2

    goto :goto_4

    .line 157
    .end local v2    # "sign":Ljava/lang/String;
    .restart local v15    # "sign":Ljava/lang/String;
    :cond_6
    const-string v2, "function"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_7

    .line 158
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_F"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .end local v15    # "sign":Ljava/lang/String;
    .restart local v2    # "sign":Ljava/lang/String;
    new-instance v4, Lcom/just/agentweb/JsCallback;

    iget-object v5, v7, Lcom/just/agentweb/JsCallJava;->mInterfacedName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v15, p1

    :try_start_2
    invoke-direct {v4, v15, v5, v6}, Lcom/just/agentweb/JsCallback;-><init>(Landroid/webkit/WebView;Ljava/lang/String;I)V

    aput-object v4, v14, v3

    move-object v15, v2

    goto :goto_4

    .line 192
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v1    # "currType":Ljava/lang/String;
    .end local v2    # "sign":Ljava/lang/String;
    .end local v3    # "k":I
    .end local v11    # "argsTypes":Lorg/json/JSONArray;
    .end local v12    # "argsVals":Lorg/json/JSONArray;
    .end local v13    # "len":I
    .end local v14    # "values":[Ljava/lang/Object;
    .end local v16    # "numIndex":I
    :catch_0
    move-exception v0

    move-object/from16 v15, p1

    goto/16 :goto_7

    .line 161
    .restart local v0    # "methodName":Ljava/lang/String;
    .restart local v1    # "currType":Ljava/lang/String;
    .restart local v3    # "k":I
    .restart local v11    # "argsTypes":Lorg/json/JSONArray;
    .restart local v12    # "argsVals":Lorg/json/JSONArray;
    .restart local v13    # "len":I
    .restart local v14    # "values":[Ljava/lang/Object;
    .restart local v15    # "sign":Ljava/lang/String;
    .restart local v16    # "numIndex":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_P"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 143
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 165
    .end local v1    # "currType":Ljava/lang/String;
    .end local v3    # "k":I
    :cond_8
    iget-object v1, v7, Lcom/just/agentweb/JsCallJava;->mMethodsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    move-object v5, v1

    .line 168
    .local v5, "currMethod":Ljava/lang/reflect/Method;
    if-nez v5, :cond_9

    .line 169
    const/16 v3, 0x1f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found method("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") with valid parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v5

    .end local v5    # "currMethod":Ljava/lang/reflect/Method;
    .local v17, "currMethod":Ljava/lang/reflect/Method;
    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/just/agentweb/JsCallJava;->getReturn(Lorg/json/JSONObject;ILjava/lang/Object;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    .end local v17    # "currMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "currMethod":Ljava/lang/reflect/Method;
    :cond_9
    move-object/from16 v17, v5

    .end local v5    # "currMethod":Ljava/lang/reflect/Method;
    .restart local v17    # "currMethod":Ljava/lang/reflect/Method;
    if-lez v16, :cond_c

    .line 173
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 176
    .local v1, "methodTypes":[Ljava/lang/Class;
    :goto_5
    if-lez v16, :cond_c

    .line 177
    div-int/lit8 v2, v16, 0xa

    mul-int/lit8 v2, v2, 0xa

    sub-int v2, v16, v2

    add-int/lit8 v2, v2, -0x1

    .line 178
    .local v2, "currIndex":I
    aget-object v3, v1, v2

    .line 179
    .local v3, "currCls":Ljava/lang/Class;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_a

    .line 180
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v2

    goto :goto_6

    .line 181
    :cond_a
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_b

    .line 183
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v14, v2

    goto :goto_6

    .line 185
    :cond_b
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v14, v2

    .line 187
    :goto_6
    div-int/lit8 v4, v16, 0xa

    move/from16 v16, v4

    goto :goto_5

    .line 191
    .end local v1    # "methodTypes":[Ljava/lang/Class;
    .end local v2    # "currIndex":I
    .end local v3    # "currCls":Ljava/lang/Class;
    :cond_c
    const/16 v3, 0xc8

    iget-object v1, v7, Lcom/just/agentweb/JsCallJava;->mInterfaceObj:Ljava/lang/Object;

    move-object/from16 v5, v17

    .end local v17    # "currMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "currMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v17, v5

    .end local v5    # "currMethod":Ljava/lang/reflect/Method;
    .restart local v17    # "currMethod":Ljava/lang/reflect/Method;
    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/just/agentweb/JsCallJava;->getReturn(Lorg/json/JSONObject;ILjava/lang/Object;J)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 192
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v11    # "argsTypes":Lorg/json/JSONArray;
    .end local v12    # "argsVals":Lorg/json/JSONArray;
    .end local v13    # "len":I
    .end local v14    # "values":[Ljava/lang/Object;
    .end local v15    # "sign":Ljava/lang/String;
    .end local v16    # "numIndex":I
    .end local v17    # "currMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    const-string v1, "JsCallJava"

    const-string v2, "call"

    invoke-static {v1, v2, v0}, Lcom/just/agentweb/LogUtils;->safeCheckCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "method execute result:"

    if-eqz v1, :cond_d

    .line 196
    const/16 v3, 0x1f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/just/agentweb/JsCallJava;->getReturn(Lorg/json/JSONObject;ILjava/lang/Object;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    :cond_d
    const/16 v3, 0x1f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/just/agentweb/JsCallJava;->getReturn(Lorg/json/JSONObject;ILjava/lang/Object;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    const/16 v3, 0x1f4

    const-string v4, "call data empty"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/just/agentweb/JsCallJava;->getReturn(Lorg/json/JSONObject;ILjava/lang/Object;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadInterfaceJs()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/just/agentweb/JsCallJava;->mPreloadInterfaceJs:Ljava/lang/String;

    return-object v0
.end method
