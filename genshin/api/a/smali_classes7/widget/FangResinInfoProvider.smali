.class public Lwidget/FangResinInfoProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "FangResinInfoProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .line 69
    const-string v0, "AppWidget"

    const-string v1, "\u4ece\u5c4f\u5e55\u79fb\u9664\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 72
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const-string v0, "AppWidget"

    const-string v1, "\u6700\u540e\u4e00\u4e2awidget\u4ece\u5c4f\u5e55\u79fb\u9664\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lwidget/FangResinService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 63
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "AppWidget"

    const-string v1, "\u7b2c\u4e00\u4e2a\u52a0\u5165\u5230\u5c4f\u5e55\u4e0a\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 50
    const-string v0, "widget.FangResinService"

    invoke-static {p1, v0}, Lcore/ServiceRunning;->startFangResinService(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 37
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    const-string v0, "widget.FangResinService"

    invoke-static {p1, v0}, Lcore/ServiceRunning;->startFangResinService(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .line 23
    const-string v0, "AppWidget"

    const-string v1, "\u5237\u65b0\u7684\u65f6\u5019\u8fd0\u884c\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 26
    const-string v0, "widget.FangResinService"

    invoke-static {p1, v0}, Lcore/ServiceRunning;->startFangResinService(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 31
    return-void
.end method
