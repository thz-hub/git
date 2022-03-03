.class final Lnet/sf/json/util/JavaIdentifierTransformer$CamelCaseJavaIdentifierTransformer;
.super Lnet/sf/json/util/JavaIdentifierTransformer;
.source "JavaIdentifierTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/JavaIdentifierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CamelCaseJavaIdentifierTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/JavaIdentifierTransformer$1;

    .line 74
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer$CamelCaseJavaIdentifierTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/json/util/JavaIdentifierTransformer;->shaveOffNonJavaIdentifierStartChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "str2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 83
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 84
    .local v2, "pos":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 86
    .local v4, "toUpperCaseNextChar":Z
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 87
    aget-char v5, v1, v2

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-char v5, v1, v2

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    if-eqz v4, :cond_2

    .line 92
    aget-char v5, v1, v2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    const/4 v4, 0x0

    goto :goto_2

    .line 95
    :cond_2
    aget-char v5, v1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 98
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
