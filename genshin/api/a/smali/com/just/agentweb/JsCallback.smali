.class public Lcom/just/agentweb/JsCallback;
.super Ljava/lang/Object;
.source "JsCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/JsCallback$JsCallbackException;
    }
.end annotation


# static fields
.field private static final CALLBACK_JS_FORMAT:Ljava/lang/String; = "javascript:%s.callback(%d, %d %s);"


# instance fields
.field private mCouldGoOn:Z

.field private mIndex:I

.field private mInjectedName:Ljava/lang/String;

.field private mIsPermanent:I

.field private mWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "injectedName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/JsCallback;->mCouldGoOn:Z

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/just/agentweb/JsCallback;->mWebViewRef:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p2, p0, Lcom/just/agentweb/JsCallback;->mInjectedName:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/just/agentweb/JsCallback;->mIndex:I

    .line 42
    return-void
.end method

.method private isJavaScriptObject(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    nop

    .line 97
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return v1

    .line 93
    .restart local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e1":Lorg/json/JSONException;
    const/4 v3, 0x0

    return v3

    .line 85
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "e1":Lorg/json/JSONException;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public varargs apply([Ljava/lang/Object;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/just/agentweb/JsCallback$JsCallbackException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/just/agentweb/JsCallback;->mWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 53
    iget-boolean v0, p0, Lcom/just/agentweb/JsCallback;->mCouldGoOn:Z

    if-eqz v0, :cond_5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 58
    .local v4, "arg":Ljava/lang/Object;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    instance-of v5, v4, Ljava/lang/String;

    .line 61
    .local v5, "isStrArg":Z
    invoke-direct {p0, v4}, Lcom/just/agentweb/JsCallback;->isJavaScriptObject(Ljava/lang/Object;)Z

    move-result v6

    .line 62
    .local v6, "isObjArg":Z
    const-string v7, "\""

    if-eqz v5, :cond_0

    if-nez v6, :cond_0

    .line 63
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 67
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "isStrArg":Z
    .end local v6    # "isObjArg":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/just/agentweb/JsCallback;->mInjectedName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget v3, p0, Lcom/just/agentweb/JsCallback;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    iget v5, p0, Lcom/just/agentweb/JsCallback;->mIsPermanent:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v3, "javascript:%s.callback(%d, %d %s);"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "execJs":Ljava/lang/String;
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    const-string v3, "JsCallBack"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    iget-object v3, p0, Lcom/just/agentweb/JsCallback;->mWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    iget v3, p0, Lcom/just/agentweb/JsCallback;->mIsPermanent:I

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/just/agentweb/JsCallback;->mCouldGoOn:Z

    .line 76
    return-void

    .line 54
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "execJs":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/just/agentweb/JsCallback$JsCallbackException;

    const-string v1, "the JsCallback isn\'t permanent,cannot be called more than once"

    invoke-direct {v0, v1}, Lcom/just/agentweb/JsCallback$JsCallbackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_6
    new-instance v0, Lcom/just/agentweb/JsCallback$JsCallbackException;

    const-string v1, "the WebView related to the JsCallback has been recycled"

    invoke-direct {v0, v1}, Lcom/just/agentweb/JsCallback$JsCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPermanent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 107
    iput p1, p0, Lcom/just/agentweb/JsCallback;->mIsPermanent:I

    .line 108
    return-void
.end method
