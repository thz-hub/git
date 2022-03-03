.class public Lnet/sf/json/regexp/RegexpUtils;
.super Ljava/lang/Object;
.source "RegexpUtils.java"


# static fields
.field private static javaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "1.3.1"

    sput-object v0, Lnet/sf/json/regexp/RegexpUtils;->javaVersion:Ljava/lang/String;

    .line 27
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/json/regexp/RegexpUtils;->javaVersion:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getMatcher(Ljava/lang/String;)Lnet/sf/json/regexp/RegexpMatcher;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Lnet/sf/json/regexp/RegexpUtils;->isJDK13()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lnet/sf/json/regexp/Perl5RegexpMatcher;

    invoke-direct {v0, p0}, Lnet/sf/json/regexp/Perl5RegexpMatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lnet/sf/json/regexp/JdkRegexpMatcher;

    invoke-direct {v0, p0}, Lnet/sf/json/regexp/JdkRegexpMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMatcher(Ljava/lang/String;Z)Lnet/sf/json/regexp/RegexpMatcher;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "multiline"    # Z

    .line 49
    invoke-static {}, Lnet/sf/json/regexp/RegexpUtils;->isJDK13()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lnet/sf/json/regexp/Perl5RegexpMatcher;

    invoke-direct {v0, p0, v1}, Lnet/sf/json/regexp/Perl5RegexpMatcher;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lnet/sf/json/regexp/JdkRegexpMatcher;

    invoke-direct {v0, p0, v1}, Lnet/sf/json/regexp/JdkRegexpMatcher;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static isJDK13()Z
    .locals 2

    .line 60
    sget-object v0, Lnet/sf/json/regexp/RegexpUtils;->javaVersion:Ljava/lang/String;

    const-string v1, "1.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
