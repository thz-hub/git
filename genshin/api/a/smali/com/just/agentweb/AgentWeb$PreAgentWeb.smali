.class public Lcom/just/agentweb/AgentWeb$PreAgentWeb;
.super Ljava/lang/Object;
.source "AgentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/AgentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreAgentWeb"
.end annotation


# instance fields
.field private isReady:Z

.field private mAgentWeb:Lcom/just/agentweb/AgentWeb;


# direct methods
.method constructor <init>(Lcom/just/agentweb/AgentWeb;)V
    .locals 1
    .param p1, "agentWeb"    # Lcom/just/agentweb/AgentWeb;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    .line 312
    iput-object p1, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 313
    return-void
.end method


# virtual methods
.method public get()Lcom/just/agentweb/AgentWeb;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    .line 325
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    return-object v0
.end method

.method public go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 329
    iget-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWeb;->access$3200(Lcom/just/agentweb/AgentWeb;Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object v0

    return-object v0
.end method

.method public ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    invoke-static {v0}, Lcom/just/agentweb/AgentWeb;->access$3100(Lcom/just/agentweb/AgentWeb;)Lcom/just/agentweb/AgentWeb;

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->isReady:Z

    .line 320
    :cond_0
    return-object p0
.end method
