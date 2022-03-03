.class Lcom/mysql/jdbc/EscapeProcessorResult;
.super Ljava/lang/Object;
.source "EscapeProcessorResult.java"


# instance fields
.field callingStoredFunction:Z

.field escapedSql:Ljava/lang/String;

.field usesVariables:B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeProcessorResult;->callingStoredFunction:Z

    .line 35
    iput-byte v0, p0, Lcom/mysql/jdbc/EscapeProcessorResult;->usesVariables:B

    return-void
.end method
