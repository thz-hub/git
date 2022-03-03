.class public Ltool/gongJu;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "gongJu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isExit:Ljava/lang/Boolean;


# instance fields
.field private btn_Sign:Landroid/widget/Button;

.field private btn_getcookie:Landroid/widget/Button;

.field private btn_return:Landroid/widget/Button;

.field private btn_yuanShenLaunch:Landroid/widget/Button;

.field private btn_yunyuanShenLaunch:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field cookie:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltool/gongJu;->isExit:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 39
    new-instance v0, Ltool/gongJu$1;

    invoke-direct {v0, p0}, Ltool/gongJu$1;-><init>(Ltool/gongJu;)V

    iput-object v0, p0, Ltool/gongJu;->handler:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ltool/gongJu;->uid:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Ltool/gongJu;->cookie:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ltool/gongJu;)V
    .locals 0
    .param p0, "x0"    # Ltool/gongJu;

    .line 36
    invoke-direct {p0}, Ltool/gongJu;->loadUser()V

    return-void
.end method

.method static synthetic access$100(Ltool/gongJu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ltool/gongJu;

    .line 36
    iget-object v0, p0, Ltool/gongJu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .line 36
    sput-object p0, Ltool/gongJu;->isExit:Ljava/lang/Boolean;

    return-object p0
.end method

.method private exitBy2Click()V
    .locals 4

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "tExit":Ljava/util/Timer;
    sget-object v1, Ltool/gongJu;->isExit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Ltool/gongJu;->isExit:Ljava/lang/Boolean;

    .line 211
    const/4 v1, 0x0

    const-string v2, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u4e3b\u9875\u9762"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 212
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    move-object v0, v1

    .line 213
    new-instance v1, Ltool/gongJu$3;

    invoke-direct {v1, p0}, Ltool/gongJu$3;-><init>(Ltool/gongJu;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0}, Ltool/gongJu;->returnMain()V

    .line 223
    :goto_0
    return-void
.end method

.method private getcookie()V
    .locals 2

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcore/getCookie/copyCookiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Ltool/gongJu;->finish()V

    .line 175
    invoke-virtual {p0, v0}, Ltool/gongJu;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method private loadUser()V
    .locals 3

    .line 136
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ltool/gongJu;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "UID"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltool/gongJu;->uid:Ljava/lang/String;

    .line 138
    const-string v1, "COOKIE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltool/gongJu;->cookie:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private returnMain()V
    .locals 2

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, LUI/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Ltool/gongJu;->finish()V

    .line 184
    invoke-virtual {p0, v0}, Ltool/gongJu;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method private sign()V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltool/gongJu$2;

    invoke-direct {v1, p0}, Ltool/gongJu$2;-><init>(Ltool/gongJu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method private start()V
    .locals 1

    .line 67
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Ltool/gongJu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltool/gongJu;->btn_yuanShenLaunch:Landroid/widget/Button;

    .line 68
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Ltool/gongJu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltool/gongJu;->btn_yunyuanShenLaunch:Landroid/widget/Button;

    .line 69
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Ltool/gongJu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltool/gongJu;->btn_getcookie:Landroid/widget/Button;

    .line 70
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Ltool/gongJu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltool/gongJu;->btn_return:Landroid/widget/Button;

    .line 71
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Ltool/gongJu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltool/gongJu;->btn_Sign:Landroid/widget/Button;

    .line 73
    invoke-virtual {p0}, Ltool/gongJu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltool/gongJu;->context:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Ltool/gongJu;->btn_yuanShenLaunch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Ltool/gongJu;->btn_yunyuanShenLaunch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Ltool/gongJu;->btn_getcookie:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Ltool/gongJu;->btn_return:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Ltool/gongJu;->btn_Sign:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 92
    :sswitch_0
    invoke-virtual {p0}, Ltool/gongJu;->openYSCloud()V

    .line 93
    goto :goto_0

    .line 89
    :sswitch_1
    invoke-virtual {p0}, Ltool/gongJu;->openYS()V

    .line 90
    goto :goto_0

    .line 98
    :sswitch_2
    invoke-direct {p0}, Ltool/gongJu;->returnMain()V

    .line 99
    goto :goto_0

    .line 95
    :sswitch_3
    invoke-direct {p0}, Ltool/gongJu;->getcookie()V

    .line 96
    goto :goto_0

    .line 101
    :sswitch_4
    const-string v0, "\u6b63\u5728\u7b7e\u5230\u3002\u3002\u3002"

    invoke-static {p0, v0}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ltool/gongJu;->sign()V

    .line 105
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080059 -> :sswitch_4
        0x7f08005b -> :sswitch_3
        0x7f08005e -> :sswitch_2
        0x7f080062 -> :sswitch_1
        0x7f080063 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Ltool/gongJu;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Ltool/gongJu;->start()V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 193
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 195
    invoke-direct {p0}, Ltool/gongJu;->exitBy2Click()V

    .line 197
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openYS()V
    .locals 3

    .line 159
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miHoYo.Yuanshen"

    const-string v2, "com.miHoYo.GetMobileInfo.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v0, "apk2Component1":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v1}, Ltool/gongJu;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public openYSCloud()V
    .locals 3

    .line 146
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miHoYo.cloudgames.ys"

    const-string v2, "com.mihoyo.cloudgame.ui.SplashActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, "apk2Component1":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1}, Ltool/gongJu;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
