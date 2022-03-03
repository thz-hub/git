.class public Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;
.super Lcom/mysql/jdbc/exceptions/MySQLTransientException;
.source "MySQLTimeoutException.java"


# static fields
.field static final serialVersionUID:J = -0xaf54c55ac7d8c83L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    const-string v0, "Statement cancelled due to timeout or client request"

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/exceptions/MySQLTransientException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/exceptions/MySQLTransientException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/exceptions/MySQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    return-void
.end method
