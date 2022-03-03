.class Lcom/mysql/jdbc/StatementImpl$CancelTask$1;
.super Ljava/lang/Thread;
.source "StatementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/StatementImpl$CancelTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/StatementImpl$CancelTask;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "cancelConn":Lcom/mysql/jdbc/Connection;
    const/4 v1, 0x0

    .line 105
    .local v1, "cancelStmt":Ljava/sql/Statement;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v3, v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    iget-object v3, v3, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/MySQLConnection;

    .line 106
    .local v3, "physicalConn":Lcom/mysql/jdbc/MySQLConnection;
    if-eqz v3, :cond_2

    .line 107
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getQueryTimeoutKillsConnection()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v5, v4, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 109
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v5, v4, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 110
    new-instance v4, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    const-string v6, "Statement.ConnectionKilledDueToTimeout"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v3, v6, v6, v5, v4}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V

    goto/16 :goto_1

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    iget-object v6, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v6, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;

    move-result-object v6

    move-object v0, v6

    .line 117
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v6

    move-object v1, v6

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KILL QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v6, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v7, v7, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    invoke-static {v6, v7}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Connection;

    move-object v0, v6

    .line 122
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v6

    move-object v1, v6

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KILL QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-wide v7, v7, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v6

    .line 128
    :goto_0
    :try_start_3
    iget-object v6, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v6, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v5, v6, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 129
    iget-object v6, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v6, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v5, v6, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 130
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "cancelConn":Lcom/mysql/jdbc/Connection;
    .end local v1    # "cancelStmt":Ljava/sql/Statement;
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .end local v3    # "physicalConn":Lcom/mysql/jdbc/MySQLConnection;
    .restart local v0    # "cancelConn":Lcom/mysql/jdbc/Connection;
    .restart local v1    # "cancelStmt":Ljava/sql/Statement;
    :cond_2
    :goto_1
    nop

    .line 160
    if-eqz v1, :cond_3

    .line 142
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 145
    goto :goto_2

    .line 143
    :catch_1
    move-exception v2

    .line 144
    .local v2, "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 150
    :try_start_6
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 153
    goto :goto_4

    .line 151
    :catch_2
    move-exception v2

    .line 152
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :catchall_1
    move-exception v3

    goto :goto_7

    .line 135
    :catch_3
    move-exception v3

    .line 139
    nop

    .line 158
    if-eqz v1, :cond_4

    .line 142
    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_4

    .line 145
    goto :goto_3

    .line 143
    :catch_4
    move-exception v2

    .line 144
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 150
    :try_start_8
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_5

    .line 153
    goto :goto_4

    .line 151
    :catch_5
    move-exception v2

    .line 152
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 157
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 158
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v3, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 159
    goto :goto_6

    .line 133
    :catch_6
    move-exception v3

    .line 134
    .local v3, "sqlEx":Ljava/sql/SQLException;
    :try_start_9
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v3, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 135
    .end local v3    # "sqlEx":Ljava/sql/SQLException;
    nop

    .line 158
    if-eqz v1, :cond_6

    .line 142
    :try_start_a
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_7

    .line 145
    goto :goto_5

    .line 143
    :catch_7
    move-exception v2

    .line 144
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_6
    :goto_5
    if-eqz v0, :cond_5

    .line 150
    :try_start_b
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_8

    .line 153
    goto :goto_4

    .line 151
    :catch_8
    move-exception v2

    .line 152
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :goto_6
    return-void

    .line 158
    :goto_7
    if-eqz v1, :cond_7

    .line 142
    :try_start_c
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_9

    .line 145
    goto :goto_8

    .line 143
    :catch_9
    move-exception v2

    .line 144
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_7
    :goto_8
    if-eqz v0, :cond_8

    .line 150
    :try_start_d
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_a

    .line 153
    goto :goto_9

    .line 151
    :catch_a
    move-exception v2

    .line 152
    .restart local v2    # "sqlEx":Ljava/sql/SQLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    .end local v2    # "sqlEx":Ljava/sql/SQLException;
    :cond_8
    :goto_9
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 157
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 158
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v2, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 140
    throw v3
.end method
