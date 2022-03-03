.class public Lcom/mysql/jdbc/exceptions/jdbc4/MySQLTransactionRollbackException;
.super Ljava/sql/SQLTransactionRollbackException;
.source "MySQLTransactionRollbackException.java"

# interfaces
.implements Lcom/mysql/jdbc/exceptions/DeadlockTimeoutRollbackMarker;


# static fields
.field static final serialVersionUID:J = 0x53c0a00ac1c9ae02L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/sql/SQLTransactionRollbackException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Ljava/sql/SQLTransactionRollbackException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
