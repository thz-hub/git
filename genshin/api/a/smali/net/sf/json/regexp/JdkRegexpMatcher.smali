.class public Lnet/sf/json/regexp/JdkRegexpMatcher;
.super Ljava/lang/Object;
.source "JdkRegexpMatcher.java"

# interfaces
.implements Lnet/sf/json/regexp/RegexpMatcher;


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/json/regexp/JdkRegexpMatcher;-><init>(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "multiline"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p2, :cond_0

    .line 36
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/json/regexp/JdkRegexpMatcher;->pattern:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/json/regexp/JdkRegexpMatcher;->pattern:Ljava/util/regex/Pattern;

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public getGroupIfMatches(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "group"    # I

    .line 43
    iget-object v0, p0, Lnet/sf/json/regexp/JdkRegexpMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 44
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lnet/sf/json/regexp/JdkRegexpMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
