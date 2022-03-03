.class Lcom/just/agentweb/DefaultChromeClient$1;
.super Ljava/lang/Object;
.source "DefaultChromeClient.java"

# interfaces
.implements Lcom/just/agentweb/ActionActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/DefaultChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultChromeClient;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultChromeClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultChromeClient;

    .line 195
    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 198
    const-string v0, "KEY_FROM_INTENTION"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v0}, Lcom/just/agentweb/DefaultChromeClient;->access$000(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/just/agentweb/AgentWebUtils;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 200
    .local v0, "hasPermission":Z
    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v1}, Lcom/just/agentweb/DefaultChromeClient;->access$100(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v2}, Lcom/just/agentweb/DefaultChromeClient;->access$100(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v3}, Lcom/just/agentweb/DefaultChromeClient;->access$200(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v2}, Lcom/just/agentweb/DefaultChromeClient;->access$100(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v3}, Lcom/just/agentweb/DefaultChromeClient;->access$200(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/just/agentweb/DefaultChromeClient;->access$102(Lcom/just/agentweb/DefaultChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)Landroid/webkit/GeolocationPermissions$Callback;

    .line 207
    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v1, v2}, Lcom/just/agentweb/DefaultChromeClient;->access$202(Lcom/just/agentweb/DefaultChromeClient;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v1}, Lcom/just/agentweb/DefaultChromeClient;->access$300(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {v1}, Lcom/just/agentweb/DefaultChromeClient;->access$300(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/just/agentweb/AbsAgentWebUIController;

    sget-object v2, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    .line 212
    const-string v3, "Location"

    invoke-virtual {v1, v2, v3, v3}, Lcom/just/agentweb/AbsAgentWebUIController;->onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v0    # "hasPermission":Z
    :cond_2
    return-void
.end method
