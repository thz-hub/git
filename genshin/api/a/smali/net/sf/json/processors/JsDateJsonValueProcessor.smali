.class public Lnet/sf/json/processors/JsDateJsonValueProcessor;
.super Ljava/lang/Object;
.source "JsDateJsonValueProcessor.java"

# interfaces
.implements Lnet/sf/json/processors/JsonValueProcessor;


# instance fields
.field private processor:Lnet/sf/json/processors/JsonBeanProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lnet/sf/json/processors/JsDateJsonBeanProcessor;

    invoke-direct {v0}, Lnet/sf/json/processors/JsDateJsonBeanProcessor;-><init>()V

    iput-object v0, p0, Lnet/sf/json/processors/JsDateJsonValueProcessor;->processor:Lnet/sf/json/processors/JsonBeanProcessor;

    .line 33
    return-void
.end method

.method private process(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 44
    iget-object v0, p0, Lnet/sf/json/processors/JsDateJsonValueProcessor;->processor:Lnet/sf/json/processors/JsonBeanProcessor;

    invoke-interface {v0, p1, p2}, Lnet/sf/json/processors/JsonBeanProcessor;->processBean(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public processArrayValue(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 36
    invoke-direct {p0, p1, p2}, Lnet/sf/json/processors/JsDateJsonValueProcessor;->process(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public processObjectValue(Ljava/lang/String;Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 40
    invoke-direct {p0, p2, p3}, Lnet/sf/json/processors/JsDateJsonValueProcessor;->process(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
