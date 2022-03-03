.class public abstract Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "IteratorWithCleanup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;)V
    .locals 0

    .line 66
    .local p0, "this":Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;, "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<TT;>;"
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract hasNext()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
