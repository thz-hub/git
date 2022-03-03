.class public Lcom/just/agentweb/JsInterfaceHolderImpl;
.super Lcom/just/agentweb/JsBaseInterfaceHolder;
.source "JsInterfaceHolderImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private mWebCreator:Lcom/just/agentweb/WebCreator;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/just/agentweb/JsInterfaceHolderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/JsInterfaceHolderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 1
    .param p1, "webCreator"    # Lcom/just/agentweb/WebCreator;
    .param p2, "securityType"    # Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/JsBaseInterfaceHolder;-><init>(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    .line 42
    iput-object p1, p0, Lcom/just/agentweb/JsInterfaceHolderImpl;->mWebCreator:Lcom/just/agentweb/WebCreator;

    .line 43
    invoke-interface {p1}, Lcom/just/agentweb/WebCreator;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/JsInterfaceHolderImpl;->mWebView:Landroid/webkit/WebView;

    .line 44
    iput-object p2, p0, Lcom/just/agentweb/JsInterfaceHolderImpl;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 45
    return-void
.end method

.method private addJavaObjectDirect(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/JsInterfaceHolder;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/just/agentweb/JsInterfaceHolderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "k:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/just/agentweb/JsInterfaceHolderImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p2, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    return-object p0
.end method

.method static getJsInterfaceHolder(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)Lcom/just/agentweb/JsInterfaceHolderImpl;
    .locals 1
    .param p0, "webCreator"    # Lcom/just/agentweb/WebCreator;
    .param p1, "securityType"    # Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 37
    new-instance v0, Lcom/just/agentweb/JsInterfaceHolderImpl;

    invoke-direct {v0, p0, p1}, Lcom/just/agentweb/JsInterfaceHolderImpl;-><init>(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)V

    return-object v0
.end method


# virtual methods
.method public addJavaObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/JsInterfaceHolder;
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/just/agentweb/JsInterfaceHolderImpl;->checkSecurity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-object p0

    .line 71
    :cond_0
    invoke-virtual {p0, p2}, Lcom/just/agentweb/JsInterfaceHolderImpl;->checkObject(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    .local v0, "t":Z
    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/just/agentweb/JsInterfaceHolderImpl;->addJavaObjectDirect(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/JsInterfaceHolder;

    .line 77
    return-object p0

    .line 73
    :cond_1
    new-instance v1, Lcom/just/agentweb/JsInterfaceObjectException;

    const-string v2, "this object has not offer method javascript to call , please check addJavascriptInterface annotation was be added"

    invoke-direct {v1, v2}, Lcom/just/agentweb/JsInterfaceObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addJavaObjects(Ljava/util/Map;)Lcom/just/agentweb/JsInterfaceHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/just/agentweb/JsInterfaceHolder;"
        }
    .end annotation

    .line 49
    .local p1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/just/agentweb/JsInterfaceHolderImpl;->checkSecurity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/just/agentweb/JsInterfaceHolderImpl;->TAG:Ljava/lang/String;

    const-string v1, "The injected object is not safe, give up injection"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object p0

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 54
    .local v0, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    .local v2, "mEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "v":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/just/agentweb/JsInterfaceHolderImpl;->checkObject(Ljava/lang/Object;)Z

    move-result v4

    .line 57
    .local v4, "t":Z
    if-eqz v4, :cond_1

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/just/agentweb/JsInterfaceHolderImpl;->addJavaObjectDirect(Ljava/lang/String;Ljava/lang/Object;)Lcom/just/agentweb/JsInterfaceHolder;

    .line 62
    .end local v2    # "mEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "t":Z
    goto :goto_0

    .line 58
    .restart local v2    # "mEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "v":Ljava/lang/Object;
    .restart local v4    # "t":Z
    :cond_1
    new-instance v1, Lcom/just/agentweb/JsInterfaceObjectException;

    const-string v5, "This object has not offer method javascript to call ,please check addJavascriptInterface annotation was be added"

    invoke-direct {v1, v5}, Lcom/just/agentweb/JsInterfaceObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    .end local v2    # "mEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "t":Z
    :cond_2
    return-object p0
.end method
