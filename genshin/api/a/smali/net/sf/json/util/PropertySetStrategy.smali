.class public abstract Lnet/sf/json/util/PropertySetStrategy;
.super Ljava/lang/Object;
.source "PropertySetStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/sf/json/util/PropertySetStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;-><init>(Lnet/sf/json/util/PropertySetStrategy$1;)V

    sput-object v0, Lnet/sf/json/util/PropertySetStrategy;->DEFAULT:Lnet/sf/json/util/PropertySetStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/json/JSONException;
        }
    .end annotation
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/json/util/PropertySetStrategy;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method
