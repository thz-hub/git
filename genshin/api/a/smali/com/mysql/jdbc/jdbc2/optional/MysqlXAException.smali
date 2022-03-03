.class Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;
.super Ljavax/transaction/xa/XAException;
.source "MysqlXAException.java"


# static fields
.field private static final serialVersionUID:J = -0x7df3c7f68dcca63cL


# instance fields
.field private message:Ljava/lang/String;

.field protected xidAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "xidAsString"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .line 39
    iput-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->message:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->xidAsString:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "xidAsString"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljavax/transaction/xa/XAException;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->message:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->xidAsString:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 52
    invoke-super {p0}, Ljavax/transaction/xa/XAException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "superMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v1, "returnedMessage":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
