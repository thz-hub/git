.class public Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
.super Ljava/lang/Object;
.source "CallableStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/CallableStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CallableStatementParam"
.end annotation


# instance fields
.field desiredJdbcType:I

.field inOutModifier:I

.field index:I

.field isIn:Z

.field isOut:Z

.field jdbcType:I

.field nullability:S

.field paramName:Ljava/lang/String;

.field precision:I

.field scale:I

.field typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IZZILjava/lang/String;IISI)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idx"    # I
    .param p3, "in"    # Z
    .param p4, "out"    # Z
    .param p5, "jdbcType"    # I
    .param p6, "typeName"    # Ljava/lang/String;
    .param p7, "precision"    # I
    .param p8, "scale"    # I
    .param p9, "nullability"    # S
    .param p10, "inOutModifier"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 105
    iput-boolean p3, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isIn:Z

    .line 106
    iput-boolean p4, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    .line 107
    iput p2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    .line 109
    iput p5, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->jdbcType:I

    .line 110
    iput-object p6, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->typeName:Ljava/lang/String;

    .line 111
    iput p7, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->precision:I

    .line 112
    iput p8, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->scale:I

    .line 113
    iput-short p9, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->nullability:S

    .line 114
    iput p10, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->inOutModifier:I

    .line 115
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
