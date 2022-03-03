.class final Lnet/sf/json/util/JavaIdentifierTransformer$StrictJavaIdentifierTransformer;
.super Lnet/sf/json/util/JavaIdentifierTransformer;
.source "JavaIdentifierTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/JavaIdentifierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrictJavaIdentifierTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/JavaIdentifierTransformer$1;

    .line 110
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer$StrictJavaIdentifierTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 112
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\' is not a valid Java identifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
