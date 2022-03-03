.class public abstract Lnet/sf/json/util/NewBeanInstanceStrategy;
.super Ljava/lang/Object;
.source "NewBeanInstanceStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/sf/json/util/NewBeanInstanceStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/util/NewBeanInstanceStrategy$DefaultNewBeanInstanceStrategy;-><init>(Lnet/sf/json/util/NewBeanInstanceStrategy$1;)V

    sput-object v0, Lnet/sf/json/util/NewBeanInstanceStrategy;->DEFAULT:Lnet/sf/json/util/NewBeanInstanceStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;Lnet/sf/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method
