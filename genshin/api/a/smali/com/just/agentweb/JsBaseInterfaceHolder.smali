.class public abstract Lcom/just/agentweb/JsBaseInterfaceHolder;
.super Ljava/lang/Object;
.source "JsBaseInterfaceHolder.java"

# interfaces
.implements Lcom/just/agentweb/JsInterfaceHolder;


# instance fields
.field private mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

.field private mWebCreator:Lcom/just/agentweb/WebCreator;


# direct methods
.method protected constructor <init>(Lcom/just/agentweb/WebCreator;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 0
    .param p1, "webCreator"    # Lcom/just/agentweb/WebCreator;
    .param p2, "securityType"    # Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    .line 37
    iput-object p1, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    .line 38
    return-void
.end method


# virtual methods
.method public checkObject(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "v"    # Ljava/lang/Object;

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    .line 43
    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebViewType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 46
    return v1

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    .local v0, "tag":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 50
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    .local v2, "mMethods":[Ljava/lang/reflect/Method;
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 52
    .local v6, "mMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 53
    .local v7, "mAnnotations":[Ljava/lang/annotation/Annotation;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 54
    .local v10, "mAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v11, v10, Landroid/webkit/JavascriptInterface;

    if-eqz v11, :cond_2

    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_2

    .line 53
    .end local v10    # "mAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 59
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 60
    goto :goto_3

    .line 51
    .end local v6    # "mMethod":Ljava/lang/reflect/Method;
    .end local v7    # "mAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_5
    :goto_3
    return v0
.end method

.method protected checkSecurity()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mSecurityType:Lcom/just/agentweb/AgentWeb$SecurityType;

    sget-object v1, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/JsBaseInterfaceHolder;->mWebCreator:Lcom/just/agentweb/WebCreator;

    .line 68
    invoke-interface {v0}, Lcom/just/agentweb/WebCreator;->getWebViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 67
    :goto_1
    return v2
.end method
