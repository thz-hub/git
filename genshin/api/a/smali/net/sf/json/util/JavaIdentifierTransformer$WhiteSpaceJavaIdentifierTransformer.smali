.class final Lnet/sf/json/util/JavaIdentifierTransformer$WhiteSpaceJavaIdentifierTransformer;
.super Lnet/sf/json/util/JavaIdentifierTransformer;
.source "JavaIdentifierTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/JavaIdentifierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WhiteSpaceJavaIdentifierTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/JavaIdentifierTransformer$1;

    .line 145
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer$WhiteSpaceJavaIdentifierTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/util/JavaIdentifierTransformer;->shaveOffNonJavaIdentifierStartChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "str2":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 153
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 154
    .local v2, "pos":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v3, "buf":Ljava/lang/StringBuffer;
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 156
    aget-char v4, v1, v2

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    aget-char v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
