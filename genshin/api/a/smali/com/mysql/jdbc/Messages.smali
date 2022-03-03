.class public Lcom/mysql/jdbc/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "com.mysql.jdbc.LocalizedErrorMessages"

.field private static final RESOURCE_BUNDLE:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    const-string v0, "com.mysql.jdbc.LocalizedErrorMessages"

    const/4 v1, 0x0

    .line 49
    .local v1, "temp":Ljava/util/ResourceBundle;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-class v3, Lcom/mysql/jdbc/Messages;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v1    # "temp":Ljava/util/ResourceBundle;
    .local v0, "temp":Ljava/util/ResourceBundle;
    nop

    .line 62
    :goto_0
    sput-object v0, Lcom/mysql/jdbc/Messages;->RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    .line 61
    goto :goto_1

    .line 50
    .end local v0    # "temp":Ljava/util/ResourceBundle;
    .restart local v1    # "temp":Ljava/util/ResourceBundle;
    :catchall_0
    move-exception v2

    .line 52
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .end local v1    # "temp":Ljava/util/ResourceBundle;
    .restart local v0    # "temp":Ljava/util/ResourceBundle;
    nop

    .line 59
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 62
    .end local v0    # "temp":Ljava/util/ResourceBundle;
    :goto_1
    return-void

    .line 53
    .restart local v1    # "temp":Ljava/util/ResourceBundle;
    .restart local v2    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 54
    .local v0, "t2":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load resource bundle due to underlying exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, "rt":Ljava/lang/RuntimeException;
    invoke-virtual {v3, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    nop

    .end local v1    # "temp":Ljava/util/ResourceBundle;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    .end local v0    # "t2":Ljava/lang/Throwable;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "rt":Ljava/lang/RuntimeException;
    .restart local v1    # "temp":Ljava/util/ResourceBundle;
    :catchall_2
    move-exception v0

    .line 62
    sput-object v1, Lcom/mysql/jdbc/Messages;->RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    .line 60
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/mysql/jdbc/Messages;->RESOURCE_BUNDLE:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_2

    .line 77
    if-eqz p0, :cond_1

    .line 81
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing error message for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 87
    :cond_0
    return-object v0

    .line 78
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message key can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "key":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .restart local p0    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Localized messages from resource bundle \'com.mysql.jdbc.LocalizedErrorMessages\' not loaded during initialization of driver."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 94
    invoke-static {p0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
