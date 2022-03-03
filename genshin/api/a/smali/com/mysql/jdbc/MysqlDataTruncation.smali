.class public Lcom/mysql/jdbc/MysqlDataTruncation;
.super Ljava/sql/DataTruncation;
.source "MysqlDataTruncation.java"


# static fields
.field static final serialVersionUID:J = 0x2d4bcd668aacaa72L


# instance fields
.field private message:Ljava/lang/String;

.field private vendorErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZIII)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "parameter"    # Z
    .param p4, "read"    # Z
    .param p5, "dataSize"    # I
    .param p6, "transferSize"    # I
    .param p7, "vendorErrorCode"    # I

    .line 56
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Ljava/sql/DataTruncation;-><init>(IZZII)V

    .line 58
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlDataTruncation;->message:Ljava/lang/String;

    .line 59
    iput p7, p0, Lcom/mysql/jdbc/MysqlDataTruncation;->vendorErrorCode:I

    .line 60
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/mysql/jdbc/MysqlDataTruncation;->vendorErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/sql/DataTruncation;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlDataTruncation;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
