.class public Lnet/sf/json/regexp/Perl5RegexpMatcher;
.super Ljava/lang/Object;
.source "Perl5RegexpMatcher.java"

# interfaces
.implements Lnet/sf/json/regexp/RegexpMatcher;


# static fields
.field private static final compiler:Lorg/apache/oro/text/regex/Perl5Compiler;


# instance fields
.field private pattern:Lorg/apache/oro/text/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/oro/text/regex/Perl5Compiler;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Compiler;-><init>()V

    sput-object v0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->compiler:Lorg/apache/oro/text/regex/Perl5Compiler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/json/regexp/Perl5RegexpMatcher;-><init>(Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "multiline"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p2, :cond_0

    .line 43
    :try_start_0
    sget-object v0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->compiler:Lorg/apache/oro/text/regex/Perl5Compiler;

    const v1, 0x8008

    invoke-virtual {v0, p1, v1}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->pattern:Lorg/apache/oro/text/regex/Pattern;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->compiler:Lorg/apache/oro/text/regex/Perl5Compiler;

    const v1, 0x8000

    invoke-virtual {v0, p1, v1}, Lorg/apache/oro/text/regex/Perl5Compiler;->compile(Ljava/lang/String;I)Lorg/apache/oro/text/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->pattern:Lorg/apache/oro/text/regex/Pattern;
    :try_end_0
    .catch Lorg/apache/oro/text/regex/MalformedPatternException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    nop

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "mpe":Lorg/apache/oro/text/regex/MalformedPatternException;
    new-instance v1, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getGroupIfMatches(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "group"    # I

    .line 53
    new-instance v0, Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;-><init>()V

    .line 54
    .local v0, "matcher":Lorg/apache/oro/text/regex/PatternMatcher;
    iget-object v1, p0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->pattern:Lorg/apache/oro/text/regex/Pattern;

    invoke-interface {v0, p1, v1}, Lorg/apache/oro/text/regex/PatternMatcher;->matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v0}, Lorg/apache/oro/text/regex/PatternMatcher;->getMatch()Lorg/apache/oro/text/regex/MatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/apache/oro/text/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 57
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 61
    new-instance v0, Lorg/apache/oro/text/regex/Perl5Matcher;

    invoke-direct {v0}, Lorg/apache/oro/text/regex/Perl5Matcher;-><init>()V

    iget-object v1, p0, Lnet/sf/json/regexp/Perl5RegexpMatcher;->pattern:Lorg/apache/oro/text/regex/Pattern;

    invoke-virtual {v0, p1, v1}, Lorg/apache/oro/text/regex/Perl5Matcher;->matches(Ljava/lang/String;Lorg/apache/oro/text/regex/Pattern;)Z

    move-result v0

    return v0
.end method
