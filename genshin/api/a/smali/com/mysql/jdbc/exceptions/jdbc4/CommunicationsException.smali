.class public Lcom/mysql/jdbc/exceptions/jdbc4/CommunicationsException;
.super Ljava/sql/SQLRecoverableException;
.source "CommunicationsException.java"

# interfaces
.implements Lcom/mysql/jdbc/StreamingNotifiable;


# static fields
.field static final serialVersionUID:J = 0x3bec470e5f739945L


# instance fields
.field private exceptionMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)V
    .locals 1
    .param p1, "conn"    # Lcom/mysql/jdbc/MySQLConnection;
    .param p2, "lastPacketSentTimeMs"    # J
    .param p4, "lastPacketReceivedTimeMs"    # J
    .param p6, "underlyingException"    # Ljava/lang/Exception;

    .line 46
    invoke-direct {p0}, Ljava/sql/SQLRecoverableException;-><init>()V

    .line 47
    invoke-static/range {p1 .. p6}, Lcom/mysql/jdbc/SQLError;->createLinkFailureMessageBasedOnHeuristics(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/exceptions/jdbc4/CommunicationsException;->exceptionMessage:Ljava/lang/String;

    .line 49
    if-eqz p6, :cond_0

    .line 50
    invoke-virtual {p0, p6}, Lcom/mysql/jdbc/exceptions/jdbc4/CommunicationsException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mysql/jdbc/exceptions/jdbc4/CommunicationsException;->exceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "08S01"

    return-object v0
.end method

.method public setWasStreamingResults()V
    .locals 1

    .line 73
    const-string v0, "CommunicationsException.ClientWasStreaming"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/exceptions/jdbc4/CommunicationsException;->exceptionMessage:Ljava/lang/String;

    .line 74
    return-void
.end method
