.class public Lcom/mysql/jdbc/NdbLoadBalanceExceptionChecker;
.super Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;
.source "NdbLoadBalanceExceptionChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;-><init>()V

    return-void
.end method

.method private checkNdbException(Ljava/sql/SQLException;)Z
    .locals 2
    .param p1, "ex"    # Ljava/sql/SQLException;

    .line 37
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lock wait timeout exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got temporary error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from NDB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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


# virtual methods
.method public shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z
    .locals 1
    .param p1, "ex"    # Ljava/sql/SQLException;

    .line 32
    invoke-super {p0, p1}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/NdbLoadBalanceExceptionChecker;->checkNdbException(Ljava/sql/SQLException;)Z

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
