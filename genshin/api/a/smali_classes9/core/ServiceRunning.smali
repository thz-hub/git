.class public Lcore/ServiceRunning;
.super Ljava/lang/Object;
.source "ServiceRunning.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "isRunning":Z
    nop

    .line 104
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 105
    .local v1, "activityManager":Landroid/app/ActivityManager;
    nop

    .line 106
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 108
    const/4 v3, 0x0

    return v3

    .line 110
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 111
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method public static startAllService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviecName"    # Ljava/lang/String;

    .line 63
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 66
    .local v0, "a":Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lwidget/allService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, "intentOne":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    .end local v0    # "a":Z
    .end local v1    # "intentOne":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public static startBaseService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviecName"    # Ljava/lang/String;

    .line 23
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "qidong"

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "baseservicealready"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "startbaseservice"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 28
    .local v0, "a":Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnotification/baseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v1, "intentOne":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    .end local v0    # "a":Z
    .end local v1    # "intentOne":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public static startCalendarService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviecName"    # Ljava/lang/String;

    .line 37
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "qidong"

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "Calendarservicealready"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "startCalendarservice"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 42
    .local v0, "a":Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcore/CalendarService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, "intentOne":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    .end local v0    # "a":Z
    .end local v1    # "intentOne":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public static startDanResinService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviecName"    # Ljava/lang/String;

    .line 87
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, "a":Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lwidget/DanResinService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v1, "intentOne":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    .end local v0    # "a":Z
    .end local v1    # "intentOne":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public static startFangResinService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviecName"    # Ljava/lang/String;

    .line 75
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 78
    .local v0, "a":Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lwidget/FangResinService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "intentOne":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    .end local v0    # "a":Z
    .end local v1    # "intentOne":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public static startResinService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviecName"    # Ljava/lang/String;

    .line 51
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcore/ServiceRunning;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 54
    .local v0, "a":Z
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lwidget/ResinService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v1, "intentOne":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    .end local v0    # "a":Z
    .end local v1    # "intentOne":Landroid/content/Intent;
    :goto_0
    return-void
.end method
