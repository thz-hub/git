.class final Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;
.super Lnet/sf/json/util/NewBeanInstanceStrategy;
.source "NewBeanInstanceStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/NewBeanInstanceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNewBeanInstanceStrategy"
.end annotation


# static fields
.field private static final EMPTY_ARGS:[Ljava/lang/Object;

.field private static final EMPTY_PARAM_TYPES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;->EMPTY_ARGS:[Ljava/lang/Object;

    .line 49
    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;->EMPTY_PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lnet/sf/json/util/NewBeanInstanceStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/NewBeanInstanceStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/NewBeanInstanceStrategy$1;

    .line 47
    invoke-direct {p0}, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "source"    # Lnet/sf/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_1

    .line 55
    sget-object v0, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;->EMPTY_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 56
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    :try_start_0
    sget-object v1, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v2, ""

    .line 62
    .local v2, "cause":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v2, v3

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v3

    :goto_1
    nop

    .line 64
    new-instance v3, Ljava/lang/InstantiationException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Instantiation of \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "\" failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "It\'s probably because class is an interface, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "abstract class, array class, primitive type or void."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v1    # "e":Ljava/lang/InstantiationException;
    .end local v2    # "cause":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
