.class Lcom/just/agentweb/DefaultDownloadImpl$2;
.super Ljava/lang/Object;
.source "DefaultDownloadImpl.java"

# interfaces
.implements Lcom/just/agentweb/ActionActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultDownloadImpl;->getPermissionListener(Ljava/lang/String;)Lcom/just/agentweb/ActionActivity$PermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultDownloadImpl;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/just/agentweb/DefaultDownloadImpl;

    .line 135
    iput-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iput-object p2, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 138
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-virtual {v0}, Lcom/just/agentweb/DefaultDownloadImpl;->checkNeedPermission()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iget-object v1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/just/agentweb/DefaultDownloadImpl;->preDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iget-object v0, v0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iget-object v0, v0, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    .line 143
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object v1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    .line 145
    invoke-virtual {v1}, Lcom/just/agentweb/DefaultDownloadImpl;->checkNeedPermission()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 144
    const-string v2, "Storage"

    const-string v3, "Download"

    invoke-virtual {v0, v1, v2, v3}, Lcom/just/agentweb/AbsAgentWebUIController;->onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    invoke-static {}, Lcom/just/agentweb/DefaultDownloadImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u50a8\u5b58\u6743\u9650\u83b7\u53d6\u5931\u8d25~"

    invoke-static {v0, v1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void
.end method
