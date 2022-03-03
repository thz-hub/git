.class public Lcore/getCookie/webActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "webActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isExit:Ljava/lang/Boolean;


# instance fields
.field acountinfo:Ljava/lang/String;

.field private btn_return:Landroid/widget/Button;

.field private button:Landroid/widget/Button;

.field cookies:Ljava/lang/String;

.field private dao:Lcom/example/cherisheveryminutemobile/UserDao;

.field private handler:Landroid/os/Handler;

.field private hc:Lcore/getCookie/CookieHttpClient;

.field protected mAgentWeb:Lcom/just/agentweb/AgentWeb;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;

.field private textView:Landroid/widget/TextView;

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcore/getCookie/webActivity;->isExit:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 39
    const-string v0, "text"

    iput-object v0, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    .line 44
    new-instance v0, Lcore/getCookie/webActivity$1;

    invoke-direct {v0, p0}, Lcore/getCookie/webActivity$1;-><init>(Lcore/getCookie/webActivity;)V

    iput-object v0, p0, Lcore/getCookie/webActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcore/getCookie/webActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcore/getCookie/webActivity;

    .line 32
    iget-object v0, p0, Lcore/getCookie/webActivity;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcore/getCookie/webActivity;)V
    .locals 0
    .param p0, "x0"    # Lcore/getCookie/webActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcore/getCookie/webActivity;->getUid()V

    return-void
.end method

.method static synthetic access$200(Lcore/getCookie/webActivity;)V
    .locals 0
    .param p0, "x0"    # Lcore/getCookie/webActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcore/getCookie/webActivity;->getCookies()V

    return-void
.end method

.method static synthetic access$300(Lcore/getCookie/webActivity;)V
    .locals 0
    .param p0, "x0"    # Lcore/getCookie/webActivity;

    .line 32
    invoke-direct {p0}, Lcore/getCookie/webActivity;->saveCookie()V

    return-void
.end method

.method static synthetic access$400(Lcore/getCookie/webActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcore/getCookie/webActivity;

    .line 32
    iget-object v0, p0, Lcore/getCookie/webActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .line 32
    sput-object p0, Lcore/getCookie/webActivity;->isExit:Ljava/lang/Boolean;

    return-object p0
.end method

.method private exitBy2Click()V
    .locals 4

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "tExit":Ljava/util/Timer;
    sget-object v1, Lcore/getCookie/webActivity;->isExit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcore/getCookie/webActivity;->isExit:Ljava/lang/Boolean;

    .line 223
    const/4 v1, 0x0

    const-string v2, "\u518d\u6309\u4e00\u6b21\u8fd4\u56de\u4e3b\u9875\u9762"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 224
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    move-object v0, v1

    .line 225
    new-instance v1, Lcore/getCookie/webActivity$4;

    invoke-direct {v1, p0}, Lcore/getCookie/webActivity$4;-><init>(Lcore/getCookie/webActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcore/getCookie/webActivity;->returnMain()V

    .line 235
    :goto_0
    return-void
.end method

.method private getCookies()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 134
    const-string v0, "https://webapi.account.mihoyo.com/Api/login_by_cookie"

    .line 136
    .local v0, "url":Ljava/lang/String;
    const-string v1, "https://hk4e-api.mihoyo.com/event/ys_ledger/monthInfo"

    invoke-static {v1}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "ysCookies":Ljava/lang/String;
    invoke-static {v0, v1}, Lcore/getCookie/CookieHttpClient;->doCookieGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "jsonText":Ljava/lang/String;
    const-string v3, "ysCookies"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object v1, p0, Lcore/getCookie/webActivity;->cookies:Ljava/lang/String;

    .line 141
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v2}, Lcore/getCookie/CookieInfo;->getAccountInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcore/getCookie/webActivity;->acountinfo:Ljava/lang/String;

    .line 143
    const-string v4, "acountinfo"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private getUid()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 151
    const-string v0, "https://api-takumi.mihoyo.com/binding/api/getUserGameRolesByCookie"

    .line 152
    .local v0, "url":Ljava/lang/String;
    const-string v1, "https://hk4e-api.mihoyo.com/event/ys_ledger/monthInfo"

    invoke-static {v1}, Lcom/just/agentweb/AgentWebConfig;->getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "ysCookies":Ljava/lang/String;
    invoke-static {v0, v1}, Lcore/getCookie/CookieHttpClient;->doCookieGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "jsonText":Ljava/lang/String;
    const-string v3, "uid"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v2}, Lcore/getCookie/CookieInfo;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    .line 156
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private getUserCookies()V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcore/getCookie/webActivity$2;

    invoke-direct {v1, p0}, Lcore/getCookie/webActivity$2;-><init>(Lcore/getCookie/webActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method private returnMain()V
    .locals 2

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, LUI/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcore/getCookie/webActivity;->finish()V

    .line 107
    invoke-virtual {p0, v0}, Lcore/getCookie/webActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method private saveCookie()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcore/getCookie/webActivity;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    iget-object v1, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/example/cherisheveryminutemobile/UserDao;->getUid(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "item":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcore/getCookie/webActivity;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    iget-object v2, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcore/getCookie/webActivity;->acountinfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/example/cherisheveryminutemobile/UserDao;->edtCookie(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "sdf":I
    goto :goto_0

    .line 172
    .end local v1    # "sdf":I
    :cond_0
    iget-object v1, p0, Lcore/getCookie/webActivity;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    iget-object v2, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcore/getCookie/webActivity;->acountinfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/example/cherisheveryminutemobile/UserDao;->addCookie(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 174
    .restart local v1    # "sdf":I
    :goto_0
    invoke-direct {p0}, Lcore/getCookie/webActivity;->saveUser()V

    .line 176
    iget-object v2, p0, Lcore/getCookie/webActivity;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcore/getCookie/webActivity$3;

    invoke-direct {v3, p0}, Lcore/getCookie/webActivity$3;-><init>(Lcore/getCookie/webActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method private saveUser()V
    .locals 4

    .line 192
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcore/getCookie/webActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 194
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcore/getCookie/webActivity;->uid:Ljava/lang/String;

    const-string v3, "UID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    iget-object v2, p0, Lcore/getCookie/webActivity;->cookies:Ljava/lang/String;

    const-string v3, "COOKIE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method private web()V
    .locals 4

    .line 76
    invoke-static {p0}, Lcom/just/agentweb/AgentWeb;->with(Landroid/app/Activity;)Lcom/just/agentweb/AgentWeb$AgentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcore/getCookie/webActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/just/agentweb/AgentWeb$AgentBuilder;->setAgentWebParent(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Lcom/just/agentweb/AgentWeb$IndicatorBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$IndicatorBuilder;->useDefaultIndicator()Lcom/just/agentweb/AgentWeb$CommonBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$CommonBuilder;->createAgentWeb()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->ready()Lcom/just/agentweb/AgentWeb$PreAgentWeb;

    move-result-object v0

    .line 81
    const-string v1, "https://m.bbs.mihoyo.com/ys/#/login"

    invoke-virtual {v0, v1}, Lcom/just/agentweb/AgentWeb$PreAgentWeb;->go(Ljava/lang/String;)Lcom/just/agentweb/AgentWeb;

    move-result-object v0

    iput-object v0, p0, Lcore/getCookie/webActivity;->mAgentWeb:Lcom/just/agentweb/AgentWeb;

    .line 84
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 93
    :sswitch_0
    invoke-direct {p0}, Lcore/getCookie/webActivity;->getUserCookies()V

    .line 94
    goto :goto_0

    .line 96
    :sswitch_1
    invoke-direct {p0}, Lcore/getCookie/webActivity;->returnMain()V

    .line 100
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08005e -> :sswitch_1
        0x7f080064 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcore/getCookie/webActivity;->setContentView(I)V

    .line 59
    new-instance v0, Lcore/getCookie/CookieHttpClient;

    invoke-direct {v0}, Lcore/getCookie/CookieHttpClient;-><init>()V

    iput-object v0, p0, Lcore/getCookie/webActivity;->hc:Lcore/getCookie/CookieHttpClient;

    .line 60
    new-instance v0, Lcom/example/cherisheveryminutemobile/UserDao;

    invoke-direct {v0}, Lcom/example/cherisheveryminutemobile/UserDao;-><init>()V

    iput-object v0, p0, Lcore/getCookie/webActivity;->dao:Lcom/example/cherisheveryminutemobile/UserDao;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcore/getCookie/webActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcore/getCookie/webActivity;->mainHandler:Landroid/os/Handler;

    .line 62
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcore/getCookie/webActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcore/getCookie/webActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f0801d0

    invoke-virtual {p0, v0}, Lcore/getCookie/webActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcore/getCookie/webActivity;->textView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcore/getCookie/webActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcore/getCookie/webActivity;->button:Landroid/widget/Button;

    .line 65
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcore/getCookie/webActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcore/getCookie/webActivity;->btn_return:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcore/getCookie/webActivity;->button:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcore/getCookie/webActivity;->btn_return:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcore/getCookie/webActivity;->web()V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 205
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcore/getCookie/webActivity;->exitBy2Click()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
