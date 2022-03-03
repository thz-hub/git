.class final Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;
.super Lnet/sf/json/util/PropertySetStrategy;
.source "PropertySetStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/util/PropertySetStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultPropertySetStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lnet/sf/json/util/PropertySetStrategy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/sf/json/util/PropertySetStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/sf/json/util/PropertySetStrategy$1;

    .line 43
    invoke-direct {p0}, Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;-><init>()V

    return-void
.end method

.method private _setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 67
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtils;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/json/JSONException;
        }
    .end annotation

    .line 45
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V

    .line 46
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "jsonConfig"    # Lnet/sf/json/JsonConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/json/JSONException;
        }
    .end annotation

    .line 49
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p4}, Lnet/sf/json/JsonConfig;->isIgnorePublicFields()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;->_setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/json/util/PropertySetStrategy$DefaultPropertySetStrategy;->_setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :goto_1
    return-void
.end method
