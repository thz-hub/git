.class public Lcom/mysql/jdbc/util/ServerController;
.super Ljava/lang/Object;
.source "ServerController.java"


# static fields
.field public static final BASEDIR_KEY:Ljava/lang/String; = "basedir"

.field public static final DATADIR_KEY:Ljava/lang/String; = "datadir"

.field public static final DEFAULTS_FILE_KEY:Ljava/lang/String; = "defaults-file"

.field public static final EXECUTABLE_NAME_KEY:Ljava/lang/String; = "executable"

.field public static final EXECUTABLE_PATH_KEY:Ljava/lang/String; = "executablePath"


# instance fields
.field private serverProcess:Ljava/lang/Process;

.field private serverProps:Ljava/util/Properties;

.field private systemProps:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseDir"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    .line 78
    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;

    .line 83
    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->systemProps:Ljava/util/Properties;

    .line 94
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/util/ServerController;->setBaseDir(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "basedir"    # Ljava/lang/String;
    .param p2, "datadir"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    .line 78
    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;

    .line 83
    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->systemProps:Ljava/util/Properties;

    .line 107
    return-void
.end method

.method private buildOptionalCommandLine()Ljava/lang/String;
    .locals 5

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, "commandLineBuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/util/ServerController;->isNonCommandLineArgument(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 289
    const-string v4, " \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v4, "--"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :cond_0
    const-string v4, " --"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 303
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCommandLine()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/util/ServerController;->getFullExecutablePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "commandLine":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ServerController;->buildOptionalCommandLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFullExecutablePath()Ljava/lang/String;
    .locals 5

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "pathBuf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->getServerProps()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "executablePath"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "optionalExecutablePath":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->getServerProps()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "basedir"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "basedir":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ServerController;->runningOnWindows()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    const-string v3, "bin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_1
    const-string v3, "libexec"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :goto_0
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    .end local v2    # "basedir":Ljava/lang/String;
    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->getServerProps()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "executable"

    const-string v4, "mysqld"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "executableName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getSystemProperties()Ljava/util/Properties;
    .locals 1

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->systemProps:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->systemProps:Ljava/util/Properties;

    .line 325
    .end local p0    # "this":Lcom/mysql/jdbc/util/ServerController;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->systemProps:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isNonCommandLineArgument(Ljava/lang/String;)Z
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;

    .line 312
    const-string v0, "executable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "executablePath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private runningOnWindows()Z
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ServerController;->getSystemProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "os.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WINDOWS"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public forceStop()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    .line 202
    :cond_0
    return-void
.end method

.method public declared-synchronized getServerProps()Ljava/util/Properties;
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;

    .line 215
    .end local p0    # "this":Lcom/mysql/jdbc/util/ServerController;
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProps:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBaseDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "baseDir"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->getServerProps()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "basedir"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public setDataDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->getServerProps()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "datadir"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public start()Ljava/lang/Process;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0}, Lcom/mysql/jdbc/util/ServerController;->getCommandLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    .line 144
    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop(Z)V
    .locals 5
    .param p1, "forceIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/mysql/jdbc/util/ServerController;->serverProcess:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->getServerProps()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "basedir"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "basedir":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "pathBuf":Ljava/lang/StringBuilder;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    const-string v2, "bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v2, "mysqladmin shutdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 177
    .local v2, "mysqladmin":Ljava/lang/Process;
    const/4 v3, -0x1

    .line 180
    .local v3, "exitStatus":I
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v4

    .line 188
    :goto_0
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/mysql/jdbc/util/ServerController;->forceStop()V

    .line 192
    .end local v0    # "basedir":Ljava/lang/String;
    .end local v1    # "pathBuf":Ljava/lang/StringBuilder;
    .end local v2    # "mysqladmin":Ljava/lang/Process;
    .end local v3    # "exitStatus":I
    :cond_1
    return-void
.end method
