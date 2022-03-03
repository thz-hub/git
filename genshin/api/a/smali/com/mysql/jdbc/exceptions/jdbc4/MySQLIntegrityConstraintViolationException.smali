.class public Lcom/mysql/jdbc/exceptions/jdbc4/MySQLIntegrityConstraintViolationException;
.super Ljava/sql/SQLIntegrityConstraintViolationException;
.source "MySQLIntegrityConstraintViolationException.java"


# static fields
.field static final serialVersionUID:J = -0x4cb8b11aa7906888L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/sql/SQLIntegrityConstraintViolationException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Ljava/sql/SQLIntegrityConstraintViolationException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLIntegrityConstraintViolationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLIntegrityConstraintViolationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void
.end method
