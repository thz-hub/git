.class public final Lcom/mysql/jdbc/integration/jboss/MysqlValidConnectionChecker;
.super Ljava/lang/Object;
.source "MysqlValidConnectionChecker.java"

# interfaces
.implements Lorg/jboss/resource/adapter/jdbc/ValidConnectionChecker;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ba49f511d3f0049L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public isValidConnection(Ljava/sql/Connection;)Ljava/sql/SQLException;
    .locals 3
    .param p1, "conn"    # Ljava/sql/Connection;

    .line 52
    const/4 v0, 0x0

    .line 55
    .local v0, "pingStatement":Ljava/sql/Statement;
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    move-object v0, v1

    .line 57
    const-string v1, "/* ping */ SELECT 1"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_0

    .line 65
    :try_start_1
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 68
    :cond_0
    :goto_0
    nop

    .line 59
    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    .line 68
    if-eqz v0, :cond_1

    .line 65
    :try_start_2
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 66
    :catch_1
    move-exception v2

    goto :goto_2

    .line 68
    :cond_1
    :goto_1
    nop

    :goto_2
    nop

    .line 63
    throw v1

    .line 60
    :catch_2
    move-exception v1

    .line 61
    .local v1, "sqlEx":Ljava/sql/SQLException;
    nop

    .line 68
    .end local v1    # "sqlEx":Ljava/sql/SQLException;
    if-eqz v0, :cond_2

    .line 65
    :try_start_3
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 66
    :catch_3
    move-exception v2

    goto :goto_4

    .line 68
    :cond_2
    :goto_3
    nop

    :goto_4
    move-object v2, v1

    .line 61
    .local v2, "sqlEx":Ljava/sql/SQLException;
    return-object v1
.end method
