.class public Lcom/example/cherisheveryminutemobile/Userinfo;
.super Ljava/lang/Object;
.source "Userinfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cookie:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private lastuse:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "lastuse"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->uid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->cookie:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->user:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->ip:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->version:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->lastuse:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLastuse()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->lastuse:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->cookie:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->ip:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLastuse(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastuse"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->lastuse:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->uid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->user:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/example/cherisheveryminutemobile/Userinfo;->version:Ljava/lang/String;

    .line 67
    return-void
.end method
