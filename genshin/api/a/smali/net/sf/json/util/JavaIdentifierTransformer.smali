.class public abstract Lnet/sf/json/util/JavaIdentifierTransformer;
.super Ljava/lang/Object;
.source "JavaIdentifierTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/util/JavaIdentifierTransformer$WhiteSpaceJavaIdentifierTransformer;,
        Lnet/sf/json/util/JavaIdentifierTransformer$UnderscoreJavaIdentifierTransformer;,
        Lnet/sf/json/util/JavaIdentifierTransformer$StrictJavaIdentifierTransformer;,
        Lnet/sf/json/util/JavaIdentifierTransformer$NoopJavaIdentifierTransformer;,
        Lnet/sf/json/util/JavaIdentifierTransformer$CamelCaseJavaIdentifierTransformer;
    }
.end annotation


# static fields
.field public static final CAMEL_CASE:Lnet/sf/json/util/JavaIdentifierTransformer;

.field public static final NOOP:Lnet/sf/json/util/JavaIdentifierTransformer;

.field public static final STRICT:Lnet/sf/json/util/JavaIdentifierTransformer;

.field public static final UNDERSCORE:Lnet/sf/json/util/JavaIdentifierTransformer;

.field public static final WHITESPACE:Lnet/sf/json/util/JavaIdentifierTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lnet/sf/json/util/JavaIdentifierTransformer$CamelCaseJavaIdentifierTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/util/JavaIdentifierTransformer$CamelCaseJavaIdentifierTransformer;-><init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V

    sput-object v0, Lnet/sf/json/util/JavaIdentifierTransformer;->CAMEL_CASE:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 42
    new-instance v0, Lnet/sf/json/util/JavaIdentifierTransformer$NoopJavaIdentifierTransformer;

    invoke-direct {v0, v1}, Lnet/sf/json/util/JavaIdentifierTransformer$NoopJavaIdentifierTransformer;-><init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V

    sput-object v0, Lnet/sf/json/util/JavaIdentifierTransformer;->NOOP:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 44
    new-instance v0, Lnet/sf/json/util/JavaIdentifierTransformer$StrictJavaIdentifierTransformer;

    invoke-direct {v0, v1}, Lnet/sf/json/util/JavaIdentifierTransformer$StrictJavaIdentifierTransformer;-><init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V

    sput-object v0, Lnet/sf/json/util/JavaIdentifierTransformer;->STRICT:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 46
    new-instance v0, Lnet/sf/json/util/JavaIdentifierTransformer$UnderscoreJavaIdentifierTransformer;

    invoke-direct {v0, v1}, Lnet/sf/json/util/JavaIdentifierTransformer$UnderscoreJavaIdentifierTransformer;-><init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V

    sput-object v0, Lnet/sf/json/util/JavaIdentifierTransformer;->UNDERSCORE:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 48
    new-instance v0, Lnet/sf/json/util/JavaIdentifierTransformer$WhiteSpaceJavaIdentifierTransformer;

    invoke-direct {v0, v1}, Lnet/sf/json/util/JavaIdentifierTransformer$WhiteSpaceJavaIdentifierTransformer;-><init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V

    sput-object v0, Lnet/sf/json/util/JavaIdentifierTransformer;->WHITESPACE:Lnet/sf/json/util/JavaIdentifierTransformer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method


# virtual methods
.method protected final shaveOffNonJavaIdentifierStartChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 58
    move-object v0, p1

    .line 60
    .local v0, "str2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 61
    .local v1, "ready":Z
    :goto_0
    if-nez v1, :cond_2

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v2, Lnet/sf/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Can\'t convert \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\' to a valid Java identifier"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    return-object v0
.end method

.method public abstract transformToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;
.end method
