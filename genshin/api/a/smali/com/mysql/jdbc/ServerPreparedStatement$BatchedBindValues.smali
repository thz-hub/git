.class public Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;
.super Ljava/lang/Object;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ServerPreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedBindValues"
.end annotation


# instance fields
.field public batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;


# direct methods
.method constructor <init>([Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 5
    .param p1, "paramVals"    # [Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    array-length v0, p1

    .line 86
    .local v0, "numParams":I
    new-array v1, v0, [Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    aput-object v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
