.class public Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/util/Base64Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntWrapper"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    .line 47
    return-void
.end method
