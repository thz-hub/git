.class public Lcore/OpenApp;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OpenApp.java"


# instance fields
.field yuanShen:Z

.field yuanShenYun:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcore/OpenApp;->yuanShen:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcore/OpenApp;->yuanShenYun:Z

    return-void
.end method

.method private loadLancher()V
    .locals 3

    .line 55
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcore/OpenApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "yuanShen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcore/OpenApp;->yuanShen:Z

    .line 57
    const-string v2, "yuanShenYun"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcore/OpenApp;->yuanShenYun:Z

    .line 59
    return-void
.end method

.method private returnMain()V
    .locals 2

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, LUI/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcore/OpenApp;->finish()V

    .line 44
    invoke-virtual {p0, v0}, Lcore/OpenApp;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcore/OpenApp;->loadLancher()V

    .line 27
    iget-boolean v0, p0, Lcore/OpenApp;->yuanShen:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcore/OpenApp;->yuanShenYun:Z

    if-eqz v1, :cond_0

    .line 28
    const-string v0, "\u540c\u65f6\u9009\u62e9\u4e86\u4e24\u79cd\u542f\u52a8\u65b9\u5f0f\u3002"

    invoke-static {p0, v0}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showDldMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcore/OpenApp;->openYS()V

    goto :goto_0

    .line 31
    :cond_1
    iget-boolean v1, p0, Lcore/OpenApp;->yuanShenYun:Z

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0}, Lcore/OpenApp;->openYSCloud()V

    goto :goto_0

    .line 33
    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 34
    invoke-direct {p0}, Lcore/OpenApp;->returnMain()V

    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public openYS()V
    .locals 3

    .line 78
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miHoYo.Yuanshen"

    const-string v2, "com.miHoYo.GetMobileInfo.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "apk2Component1":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Lcore/OpenApp;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public openYSCloud()V
    .locals 3

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miHoYo.cloudgames.ys"

    const-string v2, "com.mihoyo.cloudgame.ui.SplashActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "apk2Component1":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v1}, Lcore/OpenApp;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
