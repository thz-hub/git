.class Lcom/mysql/jdbc/StatementImpl$CancelTask;
.super Ljava/util/TimerTask;
.source "StatementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/StatementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CancelTask"
.end annotation


# instance fields
.field caughtWhileCancelling:Ljava/sql/SQLException;

.field origConnId:J

.field origConnProps:Ljava/util/Properties;

.field origConnURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/mysql/jdbc/StatementImpl;

.field toCancel:Lcom/mysql/jdbc/StatementImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 5
    .param p2, "cancellee"    # Lcom/mysql/jdbc/StatementImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .line 72
    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    .line 77
    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 78
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 80
    iget-object v0, p1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 82
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 84
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 90
    iget-object p1, p1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 96
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;-><init>(Lcom/mysql/jdbc/StatementImpl$CancelTask;)V

    .line 163
    .local v0, "cancelThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method
