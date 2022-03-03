.class public Lcom/just/agentweb/AgentWebConfig;
.super Ljava/lang/Object;
.source "AgentWebConfig.java"


# static fields
.field static final AGENTWEB_CACHE_PATCH:Ljava/lang/String;

.field static AGENTWEB_FILE_PATH:Ljava/lang/String; = null

.field public static final AGENTWEB_NAME:Ljava/lang/String; = "AgentWeb"

.field public static final AGENTWEB_VERSION:Ljava/lang/String; = "AgentWeb/4.1.9"

.field public static DEBUG:Z = false

.field static final FILE_CACHE_PATH:Ljava/lang/String; = "agentweb-cache"

.field private static volatile IS_INITIALIZED:Z = false

.field static final IS_KITKAT_OR_BELOW_KITKAT:Z

.field public static MAX_FILE_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final WEBVIEW_AGENTWEB_SAFE_TYPE:I = 0x2

.field public static final WEBVIEW_CUSTOM_TYPE:I = 0x3

.field public static final WEBVIEW_DEFAULT_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "agentweb-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebConfig;->AGENTWEB_CACHE_PATCH:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->DEBUG:Z

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/just/agentweb/AgentWebConfig;->IS_KITKAT_OR_BELOW_KITKAT:Z

    .line 65
    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->IS_INITIALIZED:Z

    .line 66
    const-class v0, Lcom/just/agentweb/AgentWebConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/AgentWebConfig;->TAG:Ljava/lang/String;

    .line 75
    const/high16 v0, 0x500000

    sput v0, Lcom/just/agentweb/AgentWebConfig;->MAX_FILE_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/just/agentweb/AgentWebConfig;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized clearDiskCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/just/agentweb/AgentWebConfig;

    monitor-enter v0

    .line 183
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/just/agentweb/AgentWebUtils;->clearCacheFolder(Ljava/io/File;I)I

    .line 184
    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->getExternalCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "mFile":Ljava/io/File;
    invoke-static {v3, v2}, Lcom/just/agentweb/AgentWebUtils;->clearCacheFolder(Ljava/io/File;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "mFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    .line 190
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 182
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createCookiesSyncInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 206
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 208
    :cond_0
    return-void
.end method

.method public static debug()V
    .locals 3

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/just/agentweb/AgentWebConfig;->DEBUG:Z

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 85
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/just/agentweb/AgentWebConfig;->AGENTWEB_CACHE_PATCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookiesByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getDatabasesCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "database"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultIgnoreCallback()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/just/agentweb/AgentWebConfig$2;

    invoke-direct {v0}, Lcom/just/agentweb/AgentWebConfig$2;-><init>()V

    return-object v0
.end method

.method public static getExternalCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->getAgentWebFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized initCookiesManager(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/just/agentweb/AgentWebConfig;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-boolean v1, Lcom/just/agentweb/AgentWebConfig;->IS_INITIALIZED:Z

    if-nez v1, :cond_0

    .line 199
    invoke-static {p0}, Lcom/just/agentweb/AgentWebConfig;->createCookiesSyncInstance(Landroid/content/Context;)V

    .line 200
    const/4 v1, 0x1

    sput-boolean v1, Lcom/just/agentweb/AgentWebConfig;->IS_INITIALIZED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit v0

    return-void

    .line 197
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static removeAllCookies()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 105
    return-void
.end method

.method public static removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 164
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->getDefaultIgnoreCallback()Landroid/webkit/ValueCallback;

    move-result-object p0

    .line 166
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 167
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 168
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    .line 169
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 170
    return-void

    .line 172
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 173
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    .line 174
    return-void
.end method

.method public static removeExpiredCookies()V
    .locals 2

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "mCookieManager":Landroid/webkit/CookieManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 96
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    .line 98
    :cond_0
    return-void
.end method

.method public static removeSessionCookies()V
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/just/agentweb/AgentWebConfig;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 110
    return-void
.end method

.method public static removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    .line 128
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->getDefaultIgnoreCallback()Landroid/webkit/ValueCallback;

    move-result-object p0

    .line 130
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 132
    return-void

    .line 134
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 135
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 136
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    .line 137
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 138
    return-void

    .line 140
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 141
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    .line 142
    return-void
.end method

.method public static syncCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "cookies"    # Ljava/lang/String;

    .line 119
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 120
    .local v0, "mCookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/just/agentweb/AgentWebConfig;->toSyncCookies()V

    .line 124
    :cond_0
    return-void
.end method

.method private static toSyncCookies()V
    .locals 2

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 212
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 213
    return-void

    .line 215
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/just/agentweb/AgentWebConfig$1;

    invoke-direct {v1}, Lcom/just/agentweb/AgentWebConfig$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
