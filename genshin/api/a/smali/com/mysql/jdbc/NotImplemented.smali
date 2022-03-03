.class public Lcom/mysql/jdbc/NotImplemented;
.super Ljava/sql/SQLException;
.source "NotImplemented.java"


# static fields
.field static final serialVersionUID:J = 0x6bcf0568047f8a76L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    const-string v0, "NotImplemented.0"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1C00"

    invoke-direct {p0, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
