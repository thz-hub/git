.class public LUI/setUid;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "setUid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isExit:Ljava/lang/Boolean;


# instance fields
.field private btn_copy:Landroid/widget/Button;

.field private btn_return:Landroid/widget/Button;

.field private btn_setLaunch:Landroid/widget/Button;

.field private btn_web:Landroid/widget/Button;

.field private cb_yuanShen:Landroid/widget/CheckBox;

.field private cb_yunyuanShen:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field cookie:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private tv_uid:Landroid/widget/TextView;

.field uid:Ljava/lang/String;

.field yuanShen:Z

.field yuanShenYun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LUI/setUid;->isExit:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 37
    const-string v0, "\u6ca1\u6709"

    iput-object v0, p0, LUI/setUid;->cookie:Ljava/lang/String;

    .line 38
    iput-object v0, p0, LUI/setUid;->uid:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, LUI/setUid;->yuanShen:Z

    .line 42
    iput-boolean v0, p0, LUI/setUid;->yuanShenYun:Z

    .line 45
    new-instance v0, LUI/setUid$1;

    invoke-direct {v0, p0}, LUI/setUid$1;-><init>(LUI/setUid;)V

    iput-object v0, p0, LUI/setUid;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .line 34
    sput-object p0, LUI/setUid;->isExit:Ljava/lang/Boolean;

    return-object p0
.end method

.method private exitBy2Click()V
    .locals 4

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "tExit":Ljava/util/Timer;
    sget-object v1, LUI/setUid;->isExit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, LUI/setUid;->isExit:Ljava/lang/Boolean;

    .line 201
    const/4 v1, 0x0

    const-string v2, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u4e3b\u9875\u9762"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    move-object v0, v1

    .line 203
    new-instance v1, LUI/setUid$2;

    invoke-direct {v1, p0}, LUI/setUid$2;-><init>(LUI/setUid;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, LUI/setUid;->returnMain()V

    .line 213
    :goto_0
    return-void
.end method

.method private intView()V
    .locals 2

    .line 72
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/setUid;->btn_copy:Landroid/widget/Button;

    .line 73
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/setUid;->btn_web:Landroid/widget/Button;

    .line 74
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/setUid;->btn_return:Landroid/widget/Button;

    .line 75
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LUI/setUid;->btn_setLaunch:Landroid/widget/Button;

    .line 76
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, LUI/setUid;->cb_yuanShen:Landroid/widget/CheckBox;

    .line 77
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, LUI/setUid;->cb_yunyuanShen:Landroid/widget/CheckBox;

    .line 78
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, LUI/setUid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LUI/setUid;->tv_uid:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, LUI/setUid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LUI/setUid;->context:Landroid/content/Context;

    .line 82
    iget-object v0, p0, LUI/setUid;->btn_copy:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, LUI/setUid;->btn_return:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, LUI/setUid;->btn_setLaunch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, LUI/setUid;->btn_web:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, LUI/setUid;->loadUser()V

    .line 88
    iget-object v0, p0, LUI/setUid;->cb_yunyuanShen:Landroid/widget/CheckBox;

    iget-boolean v1, p0, LUI/setUid;->yuanShenYun:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    iget-object v0, p0, LUI/setUid;->cb_yuanShen:Landroid/widget/CheckBox;

    iget-boolean v1, p0, LUI/setUid;->yuanShen:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LUI/setUid;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "a":Ljava/lang/String;
    iget-object v1, p0, LUI/setUid;->tv_uid:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private loadUser()V
    .locals 4

    .line 98
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/setUid;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "UID"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LUI/setUid;->uid:Ljava/lang/String;

    .line 100
    const-string v2, "yuanShen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, LUI/setUid;->yuanShen:Z

    .line 101
    const-string v2, "yuanShenYun"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, LUI/setUid;->yuanShenYun:Z

    .line 103
    return-void
.end method

.method private login()V
    .locals 2

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcore/getCookie/webActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, LUI/setUid;->finish()V

    .line 157
    invoke-virtual {p0, v0}, LUI/setUid;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method private returnMain()V
    .locals 2

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, LUI/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, LUI/setUid;->finish()V

    .line 148
    invoke-virtual {p0, v0}, LUI/setUid;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method private saveLauncher()V
    .locals 4

    .line 119
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/setUid;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 120
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, LUI/setUid;->yuanShen:Z

    const-string v3, "yuanShen"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-boolean v2, p0, LUI/setUid;->yuanShenYun:Z

    const-string v3, "yuanShenYun"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method private saveUser()V
    .locals 4

    .line 109
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LUI/setUid;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 110
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, LUI/setUid;->uid:Ljava/lang/String;

    const-string v3, "UID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    iget-object v2, p0, LUI/setUid;->cookie:Ljava/lang/String;

    const-string v3, "COOKIE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method private setLauncher()V
    .locals 2

    .line 164
    iget-object v0, p0, LUI/setUid;->cb_yuanShen:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, LUI/setUid;->yuanShen:Z

    .line 165
    iget-object v0, p0, LUI/setUid;->cb_yunyuanShen:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, LUI/setUid;->yuanShenYun:Z

    .line 166
    iget-boolean v1, p0, LUI/setUid;->yuanShen:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "\u4e0d\u80fd\u540c\u65f6\u9009\u62e9\u4e24\u79cd\u542f\u52a8\u65b9\u5f0f\u3002"

    invoke-static {p0, v0}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showDldMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 169
    invoke-direct {p0}, LUI/setUid;->saveLauncher()V

    .line 170
    const-string v0, "\u5df2\u53d6\u6d88\u542f\u52a8\u9009\u9879\u3002"

    invoke-static {p0, v0}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showDldMsg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0}, LUI/setUid;->saveLauncher()V

    .line 173
    const-string v0, "\u5df2\u6210\u529f\u4fdd\u5b58\u542f\u52a8\u9009\u9879\u3002"

    invoke-static {p0, v0}, Lcom/example/cherisheveryminutemobile/CommonUtils;->showDldMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 137
    :sswitch_0
    invoke-direct {p0}, LUI/setUid;->login()V

    goto :goto_0

    .line 131
    :sswitch_1
    invoke-direct {p0}, LUI/setUid;->setLauncher()V

    .line 132
    goto :goto_0

    .line 134
    :sswitch_2
    invoke-direct {p0}, LUI/setUid;->returnMain()V

    .line 135
    goto :goto_0

    .line 128
    :sswitch_3
    iget-object v0, p0, LUI/setUid;->context:Landroid/content/Context;

    invoke-static {v0}, Lcore/ClipBoard;->sendToClipBoard(Landroid/content/Context;)V

    .line 129
    nop

    .line 140
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08005a -> :sswitch_3
        0x7f08005e -> :sswitch_2
        0x7f080060 -> :sswitch_1
        0x7f080061 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, LUI/setUid;->setContentView(I)V

    .line 65
    invoke-direct {p0}, LUI/setUid;->intView()V

    .line 66
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 183
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 185
    invoke-direct {p0}, LUI/setUid;->exitBy2Click()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
