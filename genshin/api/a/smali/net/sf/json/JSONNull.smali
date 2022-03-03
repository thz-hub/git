.class public final Lnet/sf/json/JSONNull;
.super Ljava/lang/Object;
.source "JSONNull.java"

# interfaces
.implements Lnet/sf/json/JSON;


# static fields
.field private static instance:Lnet/sf/json/JSONNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lnet/sf/json/JSONNull;

    invoke-direct {v0}, Lnet/sf/json/JSONNull;-><init>()V

    sput-object v0, Lnet/sf/json/JSONNull;->instance:Lnet/sf/json/JSONNull;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lnet/sf/json/JSONNull;
    .locals 1

    .line 40
    sget-object v0, Lnet/sf/json/JSONNull;->instance:Lnet/sf/json/JSONNull;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 55
    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    sget-object v0, Lnet/sf/json/JSONNull;->instance:Lnet/sf/json/JSONNull;

    if-eq p1, v0, :cond_2

    instance-of v0, p1, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONObject;

    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 69
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Object is null"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 73
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Object is null"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "null"

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "indentFactor"    # I

    .line 86
    invoke-virtual {p0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 3
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 92
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object p1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
