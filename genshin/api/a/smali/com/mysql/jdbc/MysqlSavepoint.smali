.class public Lcom/mysql/jdbc/MysqlSavepoint;
.super Ljava/lang/Object;
.source "MysqlSavepoint.java"

# interfaces
.implements Ljava/sql/Savepoint;


# instance fields
.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private savepointName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .param p1, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/mysql/jdbc/MysqlSavepoint;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlSavepoint;->savepointName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/mysql/jdbc/MysqlSavepoint;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 89
    return-void

    .line 83
    :cond_0
    const-string v0, "Savepoint name can not be NULL or empty"

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private static getUniqueId()Ljava/lang/String;
    .locals 7

    .line 36
    new-instance v0, Ljava/rmi/server/UID;

    invoke-direct {v0}, Ljava/rmi/server/UID;-><init>()V

    invoke-virtual {v0}, Ljava/rmi/server/UID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "uidStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 40
    .local v1, "uidLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .local v2, "safeString":Ljava/lang/StringBuilder;
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 46
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .end local v5    # "c":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getSavepointId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlSavepoint;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, "Only named savepoints are supported."

    const-string v2, "S1C00"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlSavepoint;->savepointName:Ljava/lang/String;

    return-object v0
.end method
