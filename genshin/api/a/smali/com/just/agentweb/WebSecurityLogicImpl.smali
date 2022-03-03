.class public Lcom/just/agentweb/WebSecurityLogicImpl;
.super Ljava/lang/Object;
.source "WebSecurityLogicImpl.java"

# interfaces
.implements Lcom/just/agentweb/WebSecurityCheckLogic;


# instance fields
.field private TAG:Ljava/lang/String;

.field private webviewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "webViewType"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->TAG:Ljava/lang/String;

    .line 37
    iput p1, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->webviewType:I

    .line 38
    return-void
.end method

.method public static getInstance(I)Lcom/just/agentweb/WebSecurityLogicImpl;
    .locals 1
    .param p0, "webViewType"    # I

    .line 33
    new-instance v0, Lcom/just/agentweb/WebSecurityLogicImpl;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebSecurityLogicImpl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public dealHoneyComb(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 47
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 48
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 49
    return-void

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public dealJsInterface(Landroidx/collection/ArrayMap;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 2
    .param p2, "securityType"    # Lcom/just/agentweb/AgentWeb$SecurityType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/just/agentweb/AgentWeb$SecurityType;",
            ")V"
        }
    .end annotation

    .line 53
    .local p1, "objects":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->webviewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->TAG:Ljava/lang/String;

    const-string v1, "Give up all inject objects"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 61
    :cond_0
    return-void
.end method
