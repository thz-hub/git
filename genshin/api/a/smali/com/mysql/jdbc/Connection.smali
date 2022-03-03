.class public interface abstract Lcom/mysql/jdbc/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/sql/Connection;
.implements Lcom/mysql/jdbc/ConnectionProperties;


# virtual methods
.method public abstract abort(Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract abortInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract checkClosed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clearHasTriedMaster()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getActiveStatementCount()I
.end method

.method public abstract getAutoIncrementIncrement()I
.end method

.method public abstract getConnectionMutex()Ljava/lang/Object;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getIdleFor()J
.end method

.method public abstract getLog()Lcom/mysql/jdbc/log/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getNetworkTimeout()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getProperties()Ljava/util/Properties;
.end method

.method public abstract getSchema()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getServerCharacterEncoding()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getServerCharset()Ljava/lang/String;
.end method

.method public abstract getServerTimezoneTZ()Ljava/util/TimeZone;
.end method

.method public abstract getSessionMaxRows()I
.end method

.method public abstract getStatementComment()Ljava/lang/String;
.end method

.method public abstract hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
.end method

.method public abstract hasTriedMaster()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract initializeExtension(Lcom/mysql/jdbc/Extension;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isAbonormallyLongQuery(J)Z
.end method

.method public abstract isInGlobalTx()Z
.end method

.method public abstract isMasterConnection()Z
.end method

.method public abstract isNoBackslashEscapesSet()Z
.end method

.method public abstract isSameResource(Lcom/mysql/jdbc/Connection;)Z
.end method

.method public abstract isServerLocal()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract lowerCaseTableNames()Z
.end method

.method public abstract parserKnowsUnicode()Z
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract reportQueryTime(J)V
.end method

.method public abstract resetServerState()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setFailedOver(Z)V
.end method

.method public abstract setInGlobalTx(Z)V
.end method

.method public abstract setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setPreferSlaveDuringFailover(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
.end method

.method public abstract setSchema(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setSessionMaxRows(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setStatementComment(Ljava/lang/String;)V
.end method

.method public abstract shutdownServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract supportsIsolationLevel()Z
.end method

.method public abstract supportsQuotedIdentifiers()Z
.end method

.method public abstract supportsTransactions()Z
.end method

.method public abstract versionMeetsMinimum(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
