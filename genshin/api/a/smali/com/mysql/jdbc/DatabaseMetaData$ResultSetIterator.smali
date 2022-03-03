.class public Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;
.super Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResultSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field colIndex:I

.field resultSet:Ljava/sql/ResultSet;

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/sql/ResultSet;I)V
    .locals 0
    .param p2, "rs"    # Ljava/sql/ResultSet;
    .param p3, "index"    # I

    .line 99
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;)V

    .line 100
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->resultSet:Ljava/sql/ResultSet;

    .line 101
    iput p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->colIndex:I

    .line 102
    return-void
.end method


# virtual methods
.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->resultSet:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 107
    return-void
.end method

.method hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->resultSet:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    return v0
.end method

.method bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method next()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->resultSet:Ljava/sql/ResultSet;

    iget v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;->colIndex:I

    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
