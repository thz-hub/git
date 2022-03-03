.class public Lcom/mysql/jdbc/util/TimezoneDump;
.super Ljava/lang/Object;
.source "TimezoneDump.java"


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "jdbc:mysql:///test"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    const-string v0, "jdbc:mysql:///test"

    .line 55
    .local v0, "jdbcUrl":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 56
    aget-object v0, p0, v1

    .line 59
    :cond_0
    const-string v1, "com.mysql.jdbc.Driver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 61
    const/4 v1, 0x0

    .line 64
    .local v1, "rs":Ljava/sql/ResultSet;
    :try_start_0
    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    const-string v3, "SHOW VARIABLES LIKE \'timezone\'"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2

    move-object v1, v2

    .line 66
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "timezoneFromServer":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MySQL timezone name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mysql/jdbc/TimeUtil;->getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "canonicalTimezone":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Java timezone name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v2    # "timezoneFromServer":Ljava/lang/String;
    .end local v3    # "canonicalTimezone":Ljava/lang/String;
    goto :goto_0

    .line 73
    :cond_1
    nop

    .line 78
    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    nop

    .line 77
    nop

    .line 78
    return-void

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 74
    :cond_3
    throw v2
.end method
