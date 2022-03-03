.class public interface abstract Lcom/mysql/jdbc/Statement;
.super Ljava/lang/Object;
.source "Statement.java"

# interfaces
.implements Ljava/sql/Statement;
.implements Lcom/mysql/jdbc/Wrapper;


# virtual methods
.method public abstract disableStreamingResults()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract enableStreamingResults()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
.end method

.method public abstract getId()I
.end method

.method public abstract getLocalInfileInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOpenResultSetCount()I
.end method

.method public abstract removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
.end method

.method public abstract setHoldResultsOpenOverClose(Z)V
.end method

.method public abstract setLocalInfileInputStream(Ljava/io/InputStream;)V
.end method

.method public abstract setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
.end method
