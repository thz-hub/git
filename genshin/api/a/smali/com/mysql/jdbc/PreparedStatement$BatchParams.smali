.class public Lcom/mysql/jdbc/PreparedStatement$BatchParams;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchParams"
.end annotation


# instance fields
.field public isNull:[Z

.field public isStream:[Z

.field public parameterStreams:[Ljava/io/InputStream;

.field public parameterStrings:[[B

.field public streamLengths:[I

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;[[B[Ljava/io/InputStream;[Z[I[Z)V
    .locals 2
    .param p2, "strings"    # [[B
    .param p3, "streams"    # [Ljava/io/InputStream;
    .param p4, "isStreamFlags"    # [Z
    .param p5, "lengths"    # [I
    .param p6, "isNullFlags"    # [Z

    .line 114
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 106
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 108
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    .line 110
    move-object v0, p1

    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    .line 112
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    .line 118
    array-length p1, p2

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    .line 119
    array-length v0, p3

    new-array v0, v0, [Ljava/io/InputStream;

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    .line 120
    array-length v0, p4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 121
    array-length v0, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    .line 122
    array-length v0, p6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 123
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    array-length v0, p3

    invoke-static {p3, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    array-length v0, p4

    invoke-static {p4, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    array-length v0, p5

    invoke-static {p5, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    array-length v0, p6

    invoke-static {p6, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return-void
.end method
