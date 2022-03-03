.class public Lcom/example/cherisheveryminutemobile/MySqlHelper;
.super Ljava/lang/Object;
.source "MySqlHelper.java"


# instance fields
.field final CLS:Ljava/lang/String;

.field PWD:Ljava/lang/String;

.field final URL:Ljava/lang/String;

.field final USER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "com.mysql.jdbc.Driver"

    iput-object v0, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->CLS:Ljava/lang/String;

    .line 14
    const-string v0, "jdbc:mysql://150.158.171.225:3306/resinandroid"

    iput-object v0, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->URL:Ljava/lang/String;

    .line 15
    const-string v0, "androidresin"

    iput-object v0, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->USER:Ljava/lang/String;

    .line 16
    const-string v0, "456321"

    iput-object v0, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->PWD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;

    .line 19
    const-string v0, ""

    .line 21
    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    const-string v1, "com.mysql.jdbc.Driver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    const-string v1, "bd77f47b20bc1a360ff5e362cb9ad4e9"

    iput-object v1, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->PWD:Ljava/lang/String;

    .line 23
    const-string v2, "jdbc:mysql://150.158.171.225:3306/resinandroid"

    const-string v3, "androidresin"

    invoke-static {v2, v3, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    .line 24
    .local v1, "conn":Ljava/sql/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select cookie from user where uid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "sql":Ljava/lang/String;
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 26
    .local v3, "stmt":Ljava/sql/Statement;
    invoke-interface {v3, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4

    .line 27
    .local v4, "rs":Ljava/sql/ResultSet;
    :goto_0
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    const-string v5, "cookie"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 32
    .end local v1    # "conn":Ljava/sql/Connection;
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "stmt":Ljava/sql/Statement;
    .end local v4    # "rs":Ljava/sql/ResultSet;
    :cond_0
    goto :goto_1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public saveCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .line 39
    const-string v0, "\'"

    const-string v1, "androidresin"

    const-string v2, "jdbc:mysql://150.158.171.225:3306/resinandroid"

    const-string v3, "com.mysql.jdbc.Driver"

    const-string v4, ""

    .line 41
    .local v4, "cunzai":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 42
    const-string v5, "bd77f47b20bc1a360ff5e362cb9ad4e9"

    iput-object v5, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->PWD:Ljava/lang/String;

    .line 43
    invoke-static {v2, v1, v5}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v5

    .line 44
    .local v5, "conn":Ljava/sql/Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from user where uid = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "sql":Ljava/lang/String;
    invoke-interface {v5}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v7

    .line 46
    .local v7, "stmt":Ljava/sql/Statement;
    invoke-interface {v7, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8

    .line 47
    .local v8, "rs":Ljava/sql/ResultSet;
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v9, :cond_0

    .line 49
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    iget-object v3, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->PWD:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    .line 51
    .local v1, "conn_up":Ljava/sql/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update user set cookie = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' where uid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "sql_up":Ljava/lang/String;
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 53
    .local v2, "stmt_up":Ljava/sql/Statement;
    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 54
    .local v3, "rs1":Ljava/sql/ResultSet;
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    .line 55
    const-string v9, "\u66f4\u65b0\u6210\u529f"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v9

    .line 59
    .end local v0    # "sql_up":Ljava/lang/String;
    .end local v1    # "conn_up":Ljava/sql/Connection;
    .end local v2    # "stmt_up":Ljava/sql/Statement;
    .end local v3    # "rs1":Ljava/sql/ResultSet;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const-string v1, "\u66f4\u65b0\u5931\u8d25"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 59
    .end local v4    # "cunzai":Ljava/lang/String;
    .local v0, "cunzai":Ljava/lang/String;
    move-object v4, v0

    goto :goto_0

    .line 63
    .end local v0    # "cunzai":Ljava/lang/String;
    .restart local v4    # "cunzai":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    iget-object v3, p0, Lcom/example/cherisheveryminutemobile/MySqlHelper;->PWD:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v1

    .line 65
    .local v1, "conn_insert":Ljava/sql/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert into user (uid, cookie) values(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "sql_insert":Ljava/lang/String;
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 67
    .local v2, "stmt_insert":Ljava/sql/Statement;
    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 68
    const-string v3, "\u4fdd\u5b58\u6210\u529f"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    .end local v0    # "sql_insert":Ljava/lang/String;
    .end local v1    # "conn_insert":Ljava/sql/Connection;
    .end local v2    # "stmt_insert":Ljava/sql/Statement;
    .end local v4    # "cunzai":Ljava/lang/String;
    .local v3, "cunzai":Ljava/lang/String;
    move-object v4, v3

    goto :goto_0

    .line 69
    .end local v3    # "cunzai":Ljava/lang/String;
    .restart local v4    # "cunzai":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    const-string v1, "\u4fdd\u5b58\u5931\u8d25"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v1

    .line 77
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v5    # "conn":Ljava/sql/Connection;
    .end local v6    # "sql":Ljava/lang/String;
    .end local v7    # "stmt":Ljava/sql/Statement;
    .end local v8    # "rs":Ljava/sql/ResultSet;
    :goto_0
    goto :goto_1

    .line 75
    :catch_2
    move-exception v0

    .line 76
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v4
.end method
