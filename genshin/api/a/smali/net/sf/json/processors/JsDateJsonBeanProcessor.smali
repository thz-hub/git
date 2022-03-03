.class public Lnet/sf/json/processors/JsDateJsonBeanProcessor;
.super Ljava/lang/Object;
.source "JsDateJsonBeanProcessor.java"

# interfaces
.implements Lnet/sf/json/processors/JsonBeanProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processBean(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;
    .locals 5
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "jsonObject":Lnet/sf/json/JSONObject;
    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/Date;

    move-object v2, p1

    check-cast v2, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object p1, v1

    .line 53
    :cond_0
    nop

    instance-of v1, p1, Ljava/util/Date;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 55
    .local v1, "c":Ljava/util/Calendar;
    move-object v3, p1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 56
    new-instance v3, Lnet/sf/json/JSONObject;

    invoke-direct {v3}, Lnet/sf/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v4, "year"

    invoke-virtual {v3, v4, v2}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "month"

    invoke-virtual {v2, v4, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "day"

    invoke-virtual {v2, v4, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "hours"

    invoke-virtual {v2, v4, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "minutes"

    invoke-virtual {v2, v4, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "seconds"

    invoke-virtual {v2, v4, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "milliseconds"

    invoke-virtual {v2, v4, v3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;I)Lnet/sf/json/JSONObject;

    move-result-object v0

    .line 63
    .end local v1    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lnet/sf/json/JSONObject;

    invoke-direct {v1, v2}, Lnet/sf/json/JSONObject;-><init>(Z)V

    move-object v0, v1

    .line 66
    :goto_0
    return-object v0
.end method
