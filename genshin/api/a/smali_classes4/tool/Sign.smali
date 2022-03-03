.class public Ltool/Sign;
.super Ljava/lang/Object;
.source "Sign.java"


# static fields
.field public static act_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "e202009291139501"

    sput-object v0, Ltool/Sign;->act_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    const-string v0, "https://api-takumi.mihoyo.com/binding/api/getUserGameRolesByCookie?game_biz=hk4e_cn"

    .line 73
    .local v0, "url_role":Ljava/lang/String;
    invoke-static {v0, p1}, Lhttp/SignHttp;->doWithCookiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "jsonText":Ljava/lang/String;
    invoke-static {v1}, Ltool/signInfo;->getName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "a":[Ljava/lang/String;
    return-object v2
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    const-string v0, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/sign"

    .line 87
    .local v0, "url_sign":Ljava/lang/String;
    invoke-static {p0}, Lhttp/getServer;->get_server(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "server":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"act_id\" : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ltool/Sign;->act_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"region\" : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"uid\" : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "request":Ljava/lang/String;
    invoke-static {v0, p1, v2}, Lhttp/SignHttp;->doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "jsonText":Ljava/lang/String;
    invoke-static {v3}, Ltool/signInfo;->getSignstates(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "a":Ljava/lang/String;
    return-object v4
.end method

.method public static signAward(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/home?act_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltool/Sign;->act_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "url_award":Ljava/lang/String;
    invoke-static {v0, p1}, Lhttp/SignHttp;->doWithCookiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "jsonText":Ljava/lang/String;
    invoke-static {v1, p2}, Ltool/signInfo;->getAward(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "a":Ljava/lang/String;
    return-object v2
.end method

.method public static signInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/info?act_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltool/Sign;->act_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&region=cn_gf01&uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "url_info":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0, p1}, Lhttp/SignHttp;->doWithCookiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "jsonText":Ljava/lang/String;
    invoke-static {v1}, Ltool/signInfo;->get_total_sign_day(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, "a":I
    return v2
.end method

.method public static sign_all(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;

    .line 25
    const-string v0, "\r\n"

    const-string v1, "\u7b7e\u5230\u5931\u8d25"

    .line 26
    .local v1, "signMessage":Ljava/lang/String;
    const-string v2, "\u7b7e\u5230\u5929\u6570"

    .line 27
    .local v2, "b":Ljava/lang/String;
    const-string v3, "\u7b7e\u5230\u5956\u52b1"

    .line 28
    .local v3, "c":Ljava/lang/String;
    const-string v4, "text"

    .line 29
    .local v4, "date":Ljava/lang/String;
    const/4 v5, 0x1

    .line 30
    .local v5, "total":I
    const-string v6, "\u7b7e\u5230"

    .line 31
    .local v6, "message":Ljava/lang/String;
    const-string v7, "2021"

    .line 32
    .local v7, "nickname":Ljava/lang/String;
    const-string v8, "2021"

    .line 33
    .local v8, "level":Ljava/lang/String;
    const-string v9, "2021"

    .line 34
    .local v9, "region_name":Ljava/lang/String;
    const-string v10, "100"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 37
    :try_start_0
    invoke-static {p0, p1}, Ltool/Sign;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 38
    invoke-static {p0, p1}, Ltool/Sign;->getUserName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, "NameInfo":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    move-object v7, v11

    .line 40
    const/4 v11, 0x1

    aget-object v11, v10, v11

    move-object v8, v11

    .line 41
    const/4 v11, 0x2

    aget-object v11, v10, v11

    move-object v9, v11

    .line 42
    invoke-static {p0, p1}, Ltool/Sign;->signInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move v5, v11

    .line 43
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u672c\u6708\u7b7e\u5230\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\u5929"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 44
    invoke-static {p0, p1, v5}, Ltool/Sign;->signAward(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 45
    invoke-static {p0, p1}, Ltool/Sign;->signothers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\t\t\u7b49\u7ea7\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\r\nUID:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\t\t\u670d\u52a1\u5668\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\r\n\u7b7e\u5230\u60c5\u51b5\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "message":Ljava/lang/String;
    .end local v10    # "NameInfo":[Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "message":Ljava/lang/String;
    .restart local v6    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    const-string v0, "\u7b7e\u5230\u5931\u8d25\u3002"

    .line 56
    .end local v6    # "message":Ljava/lang/String;
    .local v0, "message":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 59
    .end local v0    # "message":Ljava/lang/String;
    .restart local v6    # "message":Ljava/lang/String;
    :cond_0
    const-string v0, "\u8bf7\u5148\u767b\u5f55\u518d\u4f7f\u7528\u7b7e\u5230\u529f\u80fd\u3002"

    .line 61
    .end local v6    # "message":Ljava/lang/String;
    .restart local v0    # "message":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method public static signothers(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-takumi.mihoyo.com/event/bbs_sign_reward/info?act_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ltool/Sign;->act_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&region=cn_gf01&uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "url_info":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0, p1}, Lhttp/SignHttp;->doWithCookiesGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "jsonText":Ljava/lang/String;
    invoke-static {v1}, Ltool/signInfo;->get_today(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "today":Ljava/lang/String;
    return-object v2
.end method
