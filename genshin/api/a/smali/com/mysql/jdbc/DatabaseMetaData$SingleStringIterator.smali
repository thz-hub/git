.class public Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;
.super Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SingleStringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field onFirst:Z

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;)V

    .line 121
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->onFirst:Z

    .line 126
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->value:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->onFirst:Z

    return v0
.end method

.method bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method next()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->onFirst:Z

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;->value:Ljava/lang/String;

    return-object v0
.end method
