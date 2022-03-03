.class final Lnet/sf/json/util/JavaIdentifierTransformer$NoopJavaIdentifierTransformer;
.super Lnet/sf/json/util/JavaIdentifierTransformer;
.source "JavaIdentifierTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/JavaIdentifierTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopJavaIdentifierTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/JavaIdentifierTransformer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/JavaIdentifierTransformer$1;

    .line 104
    invoke-direct {p0}, Lnet/sf/json/util/JavaIdentifierTransformer$NoopJavaIdentifierTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 106
    return-object p1
.end method
