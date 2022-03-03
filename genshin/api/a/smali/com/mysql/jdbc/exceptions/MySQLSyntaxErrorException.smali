.class public Lcom/mysql/jdbc/exceptions/MySQLSyntaxErrorException;
.super Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;
.source "MySQLSyntaxErrorException.java"


# static fields
.field static final serialVersionUID:J = 0x60056ff7fde88264L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
