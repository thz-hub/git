.class public interface abstract Lcom/mysql/jdbc/ResultSetInternalMethods;
.super Ljava/lang/Object;
.source "ResultSetInternalMethods.java"

# interfaces
.implements Ljava/sql/ResultSet;


# virtual methods
.method public abstract buildIndexMapping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clearNextResult()V
.end method

.method public abstract copy()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getBytesSize()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getFirstCharOfQuery()C
.end method

.method public abstract getId()I
.end method

.method public abstract getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
.end method

.method public abstract getObjectStoredProc(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getObjectStoredProc(Ljava/lang/String;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getObjectStoredProc(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getServerInfo()Ljava/lang/String;
.end method

.method public abstract getUpdateCount()J
.end method

.method public abstract getUpdateID()J
.end method

.method public abstract initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
.end method

.method public abstract initializeWithMetadata()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract realClose(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract reallyResult()Z
.end method

.method public abstract redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
.end method

.method public abstract setFirstCharOfQuery(C)V
.end method

.method public abstract setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V
.end method

.method public abstract setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V
.end method

.method public abstract setWrapperStatement(Ljava/sql/Statement;)V
.end method
