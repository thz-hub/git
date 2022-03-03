.class Lnet/sf/json/AbstractJSON$CycleSet;
.super Ljava/lang/ThreadLocal;
.source "AbstractJSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/AbstractJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CycleSet"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/AbstractJSON$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/AbstractJSON$1;

    .line 36
    invoke-direct {p0}, Lnet/sf/json/AbstractJSON$CycleSet;-><init>()V

    return-void
.end method


# virtual methods
.method public getSet()Ljava/util/Set;
    .locals 2

    .line 42
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 43
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 45
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
