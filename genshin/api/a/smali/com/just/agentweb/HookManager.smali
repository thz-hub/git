.class public Lcom/just/agentweb/HookManager;
.super Ljava/lang/Object;
.source "HookManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookAgentWeb(Lcom/just/agentweb/AgentWeb;Lcom/just/agentweb/AgentWeb$AgentBuilder;)Lcom/just/agentweb/AgentWeb;
    .locals 0
    .param p0, "agentWeb"    # Lcom/just/agentweb/AgentWeb;
    .param p1, "agentBuilder"    # Lcom/just/agentweb/AgentWeb$AgentBuilder;

    .line 27
    return-object p0
.end method

.method public static permissionHook(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    return v0
.end method
