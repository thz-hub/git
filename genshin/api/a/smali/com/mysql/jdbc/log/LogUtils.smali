.class public Lcom/mysql/jdbc/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final CALLER_INFORMATION_NOT_AVAILABLE:Ljava/lang/String; = "Caller information not available"

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final LINE_SEPARATOR_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 37
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "stackTraceAsString":Ljava/lang/String;
    const-string v1, "Caller information not available"

    .line 41
    .local v1, "callingClassAndMethod":Ljava/lang/String;
    const-string v2, "com.mysql.jdbc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 43
    .local v2, "endInternalMethods":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 44
    const/4 v4, -0x1

    .line 45
    .local v4, "endOfLine":I
    const-string v5, "com.mysql.jdbc.compliance"

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 47
    .local v5, "compliancePackage":I
    if-eq v5, v3, :cond_0

    .line 48
    sget v6, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    sub-int v4, v5, v6

    goto :goto_0

    .line 50
    :cond_0
    sget-object v6, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 53
    :goto_0
    if-eq v4, v3, :cond_2

    .line 54
    sget-object v6, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    sget v7, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int v8, v4, v7

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 56
    .local v6, "nextEndOfLine":I
    if-eq v6, v3, :cond_1

    .line 57
    add-int/2addr v7, v4

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 59
    :cond_1
    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .end local v4    # "endOfLine":I
    .end local v5    # "compliancePackage":I
    .end local v6    # "nextEndOfLine":I
    :cond_2
    :goto_1
    const-string v3, "\tat "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "at "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 68
    :cond_3
    return-object v1
.end method
