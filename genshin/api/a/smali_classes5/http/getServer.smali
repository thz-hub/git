.class public Lhttp/getServer;
.super Ljava/lang/Object;
.source "getServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_server(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # Ljava/lang/String;

    .line 7
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    const-string v0, "cn_qd01"

    return-object v0

    .line 17
    :cond_1
    const-string v0, ""

    return-object v0

    .line 9
    :cond_2
    :goto_0
    const-string v0, "cn_gf01"

    return-object v0
.end method
