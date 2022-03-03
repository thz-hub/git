.class public Lhttp/DailyInfo;
.super Ljava/lang/Object;
.source "DailyInfo.java"


# static fields
.field public static avatarname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaily(Ljava/lang/String;)[Ljava/lang/String;
    .locals 21
    .param p0, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "strResin":Ljava/lang/String;
    const/4 v1, 0x0

    .line 17
    .local v1, "strtask":Ljava/lang/String;
    const/4 v2, 0x0

    .line 18
    .local v2, "recTime":Ljava/lang/String;
    const/4 v3, 0x0

    .line 19
    .local v3, "qianTime":Ljava/lang/String;
    const/4 v4, 0x0

    .line 20
    .local v4, "needTime":Ljava/lang/String;
    const/4 v5, 0x0

    .line 21
    .local v5, "strbaoqian":Ljava/lang/String;
    const/4 v6, 0x0

    .line 22
    .local v6, "qianrecTime":Ljava/lang/String;
    const/4 v7, 0x0

    .line 23
    .local v7, "qianneedTime":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p0

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .local v8, "jsonObj":Lorg/json/JSONObject;
    const-string v10, "retcode"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 25
    .local v10, "retcode":I
    if-eqz v10, :cond_0

    .line 26
    const-string v0, "\u8bfb\u53d6\u5931\u8d25"

    .line 27
    const-string v1, "\u8bfb\u53d6\u5931\u8d25"

    .line 28
    const-string v2, "\u8bfb\u53d6\u5931\u8d25"

    .line 29
    const-string v4, "\u8bfb\u53d6\u5931\u8d25"

    .line 30
    const-string v5, "\u8bfb\u53d6\u5931\u8d25"

    .line 31
    const-string v6, "\u8bfb\u53d6\u5931\u8d25"

    .line 32
    const-string v7, "\u8bfb\u53d6\u5931\u8d25"

    goto/16 :goto_0

    .line 35
    :cond_0
    const-string v11, "data"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "current_resin"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 36
    .local v12, "str1":Ljava/lang/String;
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "max_resin"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 37
    .local v13, "str2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u5f53\u524d\u6811\u8102\u6570\u4e3a\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v16, v0

    .end local v0    # "strResin":Ljava/lang/String;
    .local v16, "strResin":Ljava/lang/String;
    const-string v0, "current_home_coin"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "str3":Ljava/lang/String;
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v17, v1

    .end local v1    # "strtask":Ljava/lang/String;
    .local v17, "strtask":Ljava/lang/String;
    const-string v1, "max_home_coin"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "str4":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    .end local v2    # "recTime":Ljava/lang/String;
    .local v18, "recTime":Ljava/lang/String;
    const-string v2, "\u5f53\u524d\u6d1e\u5929\u5b9d\u94b1\u6570\u4e3a\uff1a"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v14, "resin_recovery_time"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "rt":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6811\u8102\u5c06\u4e8e"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\u5b8c\u5168\u6062\u590d"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 47
    .end local v18    # "recTime":Ljava/lang/String;
    .local v14, "recTime":Ljava/lang/String;
    move-object/from16 v18, v0

    .end local v0    # "str3":Ljava/lang/String;
    .local v18, "str3":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v1

    .end local v1    # "str4":Ljava/lang/String;
    .local v19, "str4":Ljava/lang/String;
    const-string v1, "\u6811\u8102\u8fd8\u9700"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "home_coin_recovery_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "qiant":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2    # "rt":I
    .local v20, "rt":I
    const-string v2, "\u5b9d\u94b1\u5c06\u4e8e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9d\u94b1\u8fd8\u9700"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_extra_task_reward_received"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 56
    .local v1, "task":Z
    if-eqz v1, :cond_1

    .line 57
    const-string v2, "\u4eca\u65e5\u6bcf\u65e5\u4efb\u52a1\u5df2\u63d0\u4ea4~"

    move-object v1, v2

    move-object v2, v14

    move-object/from16 v0, v16

    .end local v17    # "strtask":Ljava/lang/String;
    .local v2, "strtask":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v2    # "strtask":Ljava/lang/String;
    .restart local v17    # "strtask":Ljava/lang/String;
    :cond_1
    const-string v2, "\u4eca\u65e5\u6bcf\u65e5\u4efb\u52a1\u672a\u63d0\u4ea4\uff01\uff01\uff01\uff01"

    move-object v1, v2

    move-object v2, v14

    move-object/from16 v0, v16

    .line 63
    .end local v12    # "str1":Ljava/lang/String;
    .end local v13    # "str2":Ljava/lang/String;
    .end local v14    # "recTime":Ljava/lang/String;
    .end local v16    # "strResin":Ljava/lang/String;
    .end local v17    # "strtask":Ljava/lang/String;
    .end local v18    # "str3":Ljava/lang/String;
    .end local v19    # "str4":Ljava/lang/String;
    .end local v20    # "rt":I
    .local v0, "strResin":Ljava/lang/String;
    .local v1, "strtask":Ljava/lang/String;
    .local v2, "recTime":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v12, 0x3

    aput-object v1, v11, v12

    const/4 v12, 0x4

    aput-object v5, v11, v12

    const/4 v12, 0x5

    aput-object v6, v11, v12

    const/4 v12, 0x6

    aput-object v7, v11, v12

    .line 64
    .local v11, "a":[Ljava/lang/String;
    return-object v11
.end method

.method public static getExp(Ljava/lang/String;)[Ljava/lang/String;
    .locals 45
    .param p0, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    const-string v0, ""

    .line 119
    .local v0, "strExp":Ljava/lang/String;
    const-string v1, ""

    .line 120
    .local v1, "strExpUnit1":Ljava/lang/String;
    const-string v2, ""

    .line 121
    .local v2, "strExpUnit2":Ljava/lang/String;
    const-string v3, ""

    .line 122
    .local v3, "strExpUnit3":Ljava/lang/String;
    const-string v4, ""

    .line 123
    .local v4, "strExpUnit4":Ljava/lang/String;
    const-string v5, ""

    .line 124
    .local v5, "strExpUnit5":Ljava/lang/String;
    const-string v6, ""

    .line 125
    .local v6, "strExpUnit6":Ljava/lang/String;
    const-string v7, ""

    .line 126
    .local v7, "strExpUnit7":Ljava/lang/String;
    const-string v8, ""

    .line 127
    .local v8, "strExpUnit8":Ljava/lang/String;
    const-string v9, ""

    .line 128
    .local v9, "strExpUnit9":Ljava/lang/String;
    const-string v10, ""

    .line 129
    .local v10, "strExpUnit10":Ljava/lang/String;
    const-string v11, "\u7a7a\u767d"

    .line 130
    .local v11, "Role1":Ljava/lang/String;
    const-string v12, "\u7a7a\u767d"

    .line 131
    .local v12, "Role2":Ljava/lang/String;
    const-string v13, "\u7a7a\u767d"

    .line 132
    .local v13, "Role3":Ljava/lang/String;
    const-string v14, "\u7a7a\u767d"

    .line 133
    .local v14, "Role4":Ljava/lang/String;
    const-string v15, "\u7a7a\u767d"

    .line 140
    .local v15, "Role5":Ljava/lang/String;
    const-string v16, ""

    .line 141
    .local v16, "strEx1":Ljava/lang/String;
    const-string v17, ""

    .line 142
    .local v17, "strEx2":Ljava/lang/String;
    const-string v18, ""

    .line 143
    .local v18, "strEx3":Ljava/lang/String;
    const-string v19, ""

    .line 144
    .local v19, "strEx4":Ljava/lang/String;
    const-string v20, ""

    .line 145
    .local v20, "strEx5":Ljava/lang/String;
    invoke-static {}, Lcore/Avatar_Name;->GetAvatarName()Ljava/util/Map;

    move-result-object v21

    sput-object v21, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    .line 146
    move-object/from16 v21, v0

    .end local v0    # "strExp":Ljava/lang/String;
    .local v21, "strExp":Ljava/lang/String;
    const-string v0, "https://upload-bbs.mihoyo.com/game_record/genshin/character_side_icon/UI_AvatarIcon_Side_"

    .line 147
    .local v0, "reurl":Ljava/lang/String;
    move-object/from16 v22, v1

    .end local v1    # "strExpUnit1":Ljava/lang/String;
    .local v22, "strExpUnit1":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v23, v2

    move-object/from16 v2, p0

    .end local v2    # "strExpUnit2":Ljava/lang/String;
    .local v23, "strExpUnit2":Ljava/lang/String;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "retcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 149
    .local v2, "retcode":I
    move-object/from16 v24, v3

    .end local v3    # "strExpUnit3":Ljava/lang/String;
    .local v24, "strExpUnit3":Ljava/lang/String;
    if-eqz v2, :cond_0

    move/from16 v25, v2

    move-object/from16 v30, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_4

    .line 152
    :cond_0
    const-string v3, "data"

    move/from16 v25, v2

    .end local v2    # "retcode":I
    .local v25, "retcode":I
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v26, v4

    .end local v4    # "strExpUnit4":Ljava/lang/String;
    .local v26, "strExpUnit4":Ljava/lang/String;
    const-string v4, "current_expedition_num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "str1":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v27, v5

    .end local v5    # "strExpUnit5":Ljava/lang/String;
    .local v27, "strExpUnit5":Ljava/lang/String;
    const-string v5, "max_expedition_num"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "str2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v6

    .end local v6    # "strExpUnit6":Ljava/lang/String;
    .local v28, "strExpUnit6":Ljava/lang/String;
    const-string v6, "\u6d3e\u9063\u63a2\u7d22\uff1a("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .end local v21    # "strExp":Ljava/lang/String;
    .local v5, "strExp":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 156
    .local v6, "num":I
    move-object/from16 v21, v2

    .end local v2    # "str1":Ljava/lang/String;
    .local v21, "str1":Ljava/lang/String;
    const-string v2, "\u63a2\u7d22\u5b8c\u6210"

    move-object/from16 v29, v4

    .end local v4    # "str2":Ljava/lang/String;
    .local v29, "str2":Ljava/lang/String;
    const-string v4, "\u8fd8\u9700"

    move-object/from16 v30, v5

    .end local v5    # "strExp":Ljava/lang/String;
    .local v30, "strExp":Ljava/lang/String;
    const-string v5, "\u5b8c\u6210"

    move-object/from16 v31, v7

    .end local v7    # "strExpUnit7":Ljava/lang/String;
    .local v31, "strExpUnit7":Ljava/lang/String;
    const-string v7, "\u63a2\u7d22\u5c06\u4e8e"

    move-object/from16 v32, v8

    .end local v8    # "strExpUnit8":Ljava/lang/String;
    .local v32, "strExpUnit8":Ljava/lang/String;
    const-string v8, "remained_time"

    move-object/from16 v33, v9

    .end local v9    # "strExpUnit9":Ljava/lang/String;
    .local v33, "strExpUnit9":Ljava/lang/String;
    const-string v9, "\u63a2\u7d22\u5b8c\u6210~"

    move-object/from16 v34, v10

    .end local v10    # "strExpUnit10":Ljava/lang/String;
    .local v34, "strExpUnit10":Ljava/lang/String;
    const-string v10, "Ongoing"

    move-object/from16 v35, v11

    .end local v11    # "Role1":Ljava/lang/String;
    .local v35, "Role1":Ljava/lang/String;
    const-string v11, ".png"

    move-object/from16 v36, v12

    .end local v12    # "Role2":Ljava/lang/String;
    .local v36, "Role2":Ljava/lang/String;
    const-string v12, "avatar_side_icon"

    move-object/from16 v37, v13

    .end local v13    # "Role3":Ljava/lang/String;
    .local v37, "Role3":Ljava/lang/String;
    const-string v13, "status"

    move-object/from16 v38, v14

    .end local v14    # "Role4":Ljava/lang/String;
    .local v38, "Role4":Ljava/lang/String;
    const-string v14, ""

    move-object/from16 v39, v15

    .end local v15    # "Role5":Ljava/lang/String;
    .local v39, "Role5":Ljava/lang/String;
    const-string v15, "expeditions"

    if-lez v6, :cond_2

    .line 157
    move/from16 v40, v6

    .end local v6    # "num":I
    .local v40, "num":I
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object/from16 v41, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .end local v16    # "strEx1":Ljava/lang/String;
    .local v6, "strEx1":Ljava/lang/String;
    move-object/from16 v42, v13

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "imageUrl1":Ljava/lang/String;
    invoke-virtual {v9, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 160
    .end local v35    # "Role1":Ljava/lang/String;
    .local v13, "Role1":Ljava/lang/String;
    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 161
    move-object/from16 v16, v9

    .end local v9    # "imageUrl1":Ljava/lang/String;
    .local v16, "imageUrl1":Ljava/lang/String;
    sget-object v9, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 162
    .end local v13    # "Role1":Ljava/lang/String;
    .local v9, "Role1":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 163
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v43, v6

    const/4 v6, 0x0

    .end local v6    # "strEx1":Ljava/lang/String;
    .local v43, "strEx1":Ljava/lang/String;
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 165
    .local v6, "time1":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v44, v7

    invoke-static {v6}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .end local v22    # "strExpUnit1":Ljava/lang/String;
    .local v7, "strExpUnit1":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v7

    .end local v7    # "strExpUnit1":Ljava/lang/String;
    .restart local v22    # "strExpUnit1":Ljava/lang/String;
    invoke-static {v6}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    .end local v23    # "strExpUnit2":Ljava/lang/String;
    .local v6, "strExpUnit2":Ljava/lang/String;
    move-object/from16 v23, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v41

    move-object/from16 v16, v43

    goto :goto_0

    .line 168
    .end local v43    # "strEx1":Ljava/lang/String;
    .local v6, "strEx1":Ljava/lang/String;
    .restart local v23    # "strExpUnit2":Ljava/lang/String;
    :cond_1
    move-object/from16 v43, v6

    move-object/from16 v44, v7

    .end local v6    # "strEx1":Ljava/lang/String;
    .restart local v43    # "strEx1":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v41

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v43

    .end local v22    # "strExpUnit1":Ljava/lang/String;
    .local v6, "strExpUnit1":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v9    # "Role1":Ljava/lang/String;
    .end local v40    # "num":I
    .end local v43    # "strEx1":Ljava/lang/String;
    .local v6, "num":I
    .local v16, "strEx1":Ljava/lang/String;
    .restart local v22    # "strExpUnit1":Ljava/lang/String;
    .restart local v35    # "Role1":Ljava/lang/String;
    :cond_2
    move/from16 v40, v6

    move-object/from16 v44, v7

    move-object v7, v9

    move-object/from16 v42, v13

    .end local v6    # "num":I
    .restart local v40    # "num":I
    const-string v6, "\u63a2\u7d22\u4f4d1\u672a\u5728\u63a2\u7d22"

    move-object/from16 v9, v35

    .line 174
    .end local v22    # "strExpUnit1":Ljava/lang/String;
    .end local v35    # "Role1":Ljava/lang/String;
    .local v6, "strExpUnit1":Ljava/lang/String;
    .restart local v9    # "Role1":Ljava/lang/String;
    :goto_0
    move-object/from16 v22, v6

    move/from16 v13, v40

    const/4 v6, 0x1

    .end local v6    # "strExpUnit1":Ljava/lang/String;
    .end local v40    # "num":I
    .local v13, "num":I
    .restart local v22    # "strExpUnit1":Ljava/lang/String;
    if-le v13, v6, :cond_4

    .line 175
    move-object/from16 v35, v9

    .end local v9    # "Role1":Ljava/lang/String;
    .restart local v35    # "Role1":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v6, v42

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .end local v17    # "strEx2":Ljava/lang/String;
    .local v9, "strEx2":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move/from16 v40, v13

    const/4 v13, 0x1

    .end local v13    # "num":I
    .restart local v40    # "num":I
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "imageUrl2":Ljava/lang/String;
    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 178
    .end local v36    # "Role2":Ljava/lang/String;
    .local v13, "Role2":Ljava/lang/String;
    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 179
    move-object/from16 v17, v6

    .end local v6    # "imageUrl2":Ljava/lang/String;
    .local v17, "imageUrl2":Ljava/lang/String;
    sget-object v6, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    .end local v13    # "Role2":Ljava/lang/String;
    .local v6, "Role2":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 181
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    move-object/from16 v41, v9

    const/4 v9, 0x1

    .end local v9    # "strEx2":Ljava/lang/String;
    .local v41, "strEx2":Ljava/lang/String;
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 183
    .local v9, "time2":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v43, v8

    move-object/from16 v8, v44

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 184
    .end local v24    # "strExpUnit3":Ljava/lang/String;
    .local v8, "strExpUnit3":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v8

    .end local v8    # "strExpUnit3":Ljava/lang/String;
    .restart local v24    # "strExpUnit3":Ljava/lang/String;
    invoke-static {v9}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 185
    .end local v9    # "time2":I
    .end local v26    # "strExpUnit4":Ljava/lang/String;
    .local v8, "strExpUnit4":Ljava/lang/String;
    move-object/from16 v36, v6

    move-object/from16 v26, v8

    move-object/from16 v6, v24

    move-object/from16 v17, v41

    goto :goto_1

    .line 186
    .end local v8    # "strExpUnit4":Ljava/lang/String;
    .end local v41    # "strEx2":Ljava/lang/String;
    .local v9, "strEx2":Ljava/lang/String;
    .restart local v26    # "strExpUnit4":Ljava/lang/String;
    :cond_3
    move-object/from16 v43, v8

    move-object/from16 v41, v9

    .end local v9    # "strEx2":Ljava/lang/String;
    .restart local v41    # "strEx2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v36, v6

    move-object v6, v8

    move-object/from16 v17, v41

    .end local v24    # "strExpUnit3":Ljava/lang/String;
    .local v8, "strExpUnit3":Ljava/lang/String;
    goto :goto_1

    .line 190
    .end local v6    # "Role2":Ljava/lang/String;
    .end local v8    # "strExpUnit3":Ljava/lang/String;
    .end local v35    # "Role1":Ljava/lang/String;
    .end local v40    # "num":I
    .end local v41    # "strEx2":Ljava/lang/String;
    .local v9, "Role1":Ljava/lang/String;
    .local v13, "num":I
    .local v17, "strEx2":Ljava/lang/String;
    .restart local v24    # "strExpUnit3":Ljava/lang/String;
    .restart local v36    # "Role2":Ljava/lang/String;
    :cond_4
    move-object/from16 v43, v8

    move-object/from16 v35, v9

    move/from16 v40, v13

    .end local v9    # "Role1":Ljava/lang/String;
    .end local v13    # "num":I
    .restart local v35    # "Role1":Ljava/lang/String;
    .restart local v40    # "num":I
    const-string v6, "\u63a2\u7d22\u4f4d2\u672a\u5728\u63a2\u7d22"

    .line 192
    .end local v24    # "strExpUnit3":Ljava/lang/String;
    .local v6, "strExpUnit3":Ljava/lang/String;
    :goto_1
    move/from16 v8, v40

    const/4 v9, 0x2

    .end local v40    # "num":I
    .local v8, "num":I
    if-le v8, v9, :cond_6

    .line 193
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 v9, v42

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 194
    .end local v18    # "strEx3":Ljava/lang/String;
    .local v13, "strEx3":Ljava/lang/String;
    move-object/from16 v24, v6

    .end local v6    # "strExpUnit3":Ljava/lang/String;
    .restart local v24    # "strExpUnit3":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "imageUrl3":Ljava/lang/String;
    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .end local v37    # "Role3":Ljava/lang/String;
    .local v9, "Role3":Ljava/lang/String;
    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 197
    move-object/from16 v18, v6

    .end local v6    # "imageUrl3":Ljava/lang/String;
    .local v18, "imageUrl3":Ljava/lang/String;
    sget-object v6, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 198
    .end local v9    # "Role3":Ljava/lang/String;
    .local v6, "Role3":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 199
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    move-object/from16 v40, v13

    const/4 v13, 0x2

    .end local v13    # "strEx3":Ljava/lang/String;
    .local v40, "strEx3":Ljava/lang/String;
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v13, v43

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 201
    .local v9, "time3":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v41, v10

    move-object/from16 v10, v44

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 202
    .end local v27    # "strExpUnit5":Ljava/lang/String;
    .local v10, "strExpUnit5":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v10

    .end local v10    # "strExpUnit5":Ljava/lang/String;
    .restart local v27    # "strExpUnit5":Ljava/lang/String;
    invoke-static {v9}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    .end local v28    # "strExpUnit6":Ljava/lang/String;
    .local v9, "strExpUnit6":Ljava/lang/String;
    move-object v13, v6

    move-object v6, v9

    move-object/from16 v18, v40

    goto :goto_2

    .line 204
    .end local v9    # "strExpUnit6":Ljava/lang/String;
    .end local v40    # "strEx3":Ljava/lang/String;
    .restart local v13    # "strEx3":Ljava/lang/String;
    .restart local v28    # "strExpUnit6":Ljava/lang/String;
    :cond_5
    move-object/from16 v41, v10

    move-object/from16 v40, v13

    .end local v13    # "strEx3":Ljava/lang/String;
    .restart local v40    # "strEx3":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v13, v6

    move-object/from16 v27, v9

    move-object/from16 v6, v28

    move-object/from16 v18, v40

    .end local v27    # "strExpUnit5":Ljava/lang/String;
    .local v9, "strExpUnit5":Ljava/lang/String;
    goto :goto_2

    .line 208
    .end local v9    # "strExpUnit5":Ljava/lang/String;
    .end local v24    # "strExpUnit3":Ljava/lang/String;
    .end local v40    # "strEx3":Ljava/lang/String;
    .local v6, "strExpUnit3":Ljava/lang/String;
    .local v18, "strEx3":Ljava/lang/String;
    .restart local v27    # "strExpUnit5":Ljava/lang/String;
    .restart local v37    # "Role3":Ljava/lang/String;
    :cond_6
    move-object/from16 v24, v6

    move-object/from16 v41, v10

    .end local v6    # "strExpUnit3":Ljava/lang/String;
    .restart local v24    # "strExpUnit3":Ljava/lang/String;
    const-string v6, "\u63a2\u7d22\u4f4d3\u672a\u5728\u63a2\u7d22"

    move-object/from16 v27, v6

    move-object/from16 v6, v28

    move-object/from16 v13, v37

    .line 210
    .end local v28    # "strExpUnit6":Ljava/lang/String;
    .end local v37    # "Role3":Ljava/lang/String;
    .local v6, "strExpUnit6":Ljava/lang/String;
    .local v13, "Role3":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x3

    if-le v8, v9, :cond_8

    .line 211
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v9, v42

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 212
    .end local v19    # "strEx4":Ljava/lang/String;
    .local v10, "strEx4":Ljava/lang/String;
    move-object/from16 v28, v6

    .end local v6    # "strExpUnit6":Ljava/lang/String;
    .restart local v28    # "strExpUnit6":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object/from16 v37, v13

    const/4 v13, 0x3

    .end local v13    # "Role3":Ljava/lang/String;
    .restart local v37    # "Role3":Ljava/lang/String;
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "imageUrl4":Ljava/lang/String;
    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 214
    .end local v38    # "Role4":Ljava/lang/String;
    .local v13, "Role4":Ljava/lang/String;
    invoke-virtual {v13, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 215
    move-object/from16 v19, v6

    .end local v6    # "imageUrl4":Ljava/lang/String;
    .local v19, "imageUrl4":Ljava/lang/String;
    sget-object v6, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    .end local v13    # "Role4":Ljava/lang/String;
    .local v6, "Role4":Ljava/lang/String;
    move-object/from16 v13, v41

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 217
    move-object/from16 v40, v10

    .end local v10    # "strEx4":Ljava/lang/String;
    .local v40, "strEx4":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move-object/from16 v41, v13

    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v13, v43

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 219
    .local v10, "time4":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v42, v11

    move-object/from16 v11, v44

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 220
    .end local v31    # "strExpUnit7":Ljava/lang/String;
    .local v11, "strExpUnit7":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v11

    .end local v11    # "strExpUnit7":Ljava/lang/String;
    .restart local v31    # "strExpUnit7":Ljava/lang/String;
    invoke-static {v10}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    .end local v32    # "strExpUnit8":Ljava/lang/String;
    .local v10, "strExpUnit8":Ljava/lang/String;
    move-object/from16 v32, v10

    move-object/from16 v19, v40

    goto :goto_3

    .line 222
    .end local v40    # "strEx4":Ljava/lang/String;
    .local v10, "strEx4":Ljava/lang/String;
    .restart local v32    # "strExpUnit8":Ljava/lang/String;
    :cond_7
    move-object/from16 v40, v10

    move-object/from16 v42, v11

    move-object/from16 v41, v13

    .end local v10    # "strEx4":Ljava/lang/String;
    .restart local v40    # "strEx4":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v31, v10

    move-object/from16 v19, v40

    .end local v31    # "strExpUnit7":Ljava/lang/String;
    .local v10, "strExpUnit7":Ljava/lang/String;
    goto :goto_3

    .line 226
    .end local v10    # "strExpUnit7":Ljava/lang/String;
    .end local v28    # "strExpUnit6":Ljava/lang/String;
    .end local v37    # "Role3":Ljava/lang/String;
    .end local v40    # "strEx4":Ljava/lang/String;
    .local v6, "strExpUnit6":Ljava/lang/String;
    .local v13, "Role3":Ljava/lang/String;
    .local v19, "strEx4":Ljava/lang/String;
    .restart local v31    # "strExpUnit7":Ljava/lang/String;
    .restart local v38    # "Role4":Ljava/lang/String;
    :cond_8
    move-object/from16 v28, v6

    move-object/from16 v37, v13

    move-object/from16 v9, v42

    move-object/from16 v42, v11

    .end local v6    # "strExpUnit6":Ljava/lang/String;
    .end local v13    # "Role3":Ljava/lang/String;
    .restart local v28    # "strExpUnit6":Ljava/lang/String;
    .restart local v37    # "Role3":Ljava/lang/String;
    const-string v6, "\u63a2\u7d22\u4f4d4\u672a\u5728\u63a2\u7d22"

    move-object/from16 v31, v6

    move-object/from16 v6, v38

    .line 228
    .end local v38    # "Role4":Ljava/lang/String;
    .local v6, "Role4":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x4

    if-le v8, v10, :cond_a

    .line 229
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .end local v20    # "strEx5":Ljava/lang/String;
    .local v9, "strEx5":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "imageUrl5":Ljava/lang/String;
    invoke-virtual {v10, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 232
    .end local v39    # "Role5":Ljava/lang/String;
    .local v11, "Role5":Ljava/lang/String;
    move-object/from16 v12, v42

    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 233
    sget-object v12, Lhttp/DailyInfo;->avatarname:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/String;

    .line 234
    move-object/from16 v12, v41

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 235
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v7, v43

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "time5":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v44

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcore/TimeCounter;->AimTime(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .end local v33    # "strExpUnit9":Ljava/lang/String;
    .local v5, "strExpUnit9":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcore/TimeCounter;->NeededTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .end local v3    # "time5":I
    .end local v34    # "strExpUnit10":Ljava/lang/String;
    .local v2, "strExpUnit10":Ljava/lang/String;
    move-object v10, v2

    move-object v14, v6

    move-object/from16 v20, v9

    move-object v15, v11

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    move-object/from16 v6, v28

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move-object/from16 v13, v37

    move-object v9, v5

    move-object/from16 v5, v27

    goto :goto_4

    .line 240
    .end local v2    # "strExpUnit10":Ljava/lang/String;
    .end local v5    # "strExpUnit9":Ljava/lang/String;
    .restart local v33    # "strExpUnit9":Ljava/lang/String;
    .restart local v34    # "strExpUnit10":Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v6

    move-object/from16 v20, v9

    move-object v15, v11

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v10, v34

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move-object/from16 v13, v37

    move-object v9, v2

    move-object/from16 v2, v23

    .end local v33    # "strExpUnit9":Ljava/lang/String;
    .local v2, "strExpUnit9":Ljava/lang/String;
    goto :goto_4

    .line 244
    .end local v2    # "strExpUnit9":Ljava/lang/String;
    .end local v9    # "strEx5":Ljava/lang/String;
    .end local v10    # "imageUrl5":Ljava/lang/String;
    .end local v11    # "Role5":Ljava/lang/String;
    .restart local v20    # "strEx5":Ljava/lang/String;
    .restart local v33    # "strExpUnit9":Ljava/lang/String;
    .restart local v39    # "Role5":Ljava/lang/String;
    :cond_a
    const-string v9, "\u63a2\u7d22\u4f4d5\u672a\u5728\u63a2\u7d22"

    move-object v14, v6

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v10, v34

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move-object/from16 v13, v37

    move-object/from16 v15, v39

    .line 247
    .end local v21    # "str1":Ljava/lang/String;
    .end local v23    # "strExpUnit2":Ljava/lang/String;
    .end local v24    # "strExpUnit3":Ljava/lang/String;
    .end local v26    # "strExpUnit4":Ljava/lang/String;
    .end local v27    # "strExpUnit5":Ljava/lang/String;
    .end local v28    # "strExpUnit6":Ljava/lang/String;
    .end local v29    # "str2":Ljava/lang/String;
    .end local v31    # "strExpUnit7":Ljava/lang/String;
    .end local v32    # "strExpUnit8":Ljava/lang/String;
    .end local v33    # "strExpUnit9":Ljava/lang/String;
    .end local v34    # "strExpUnit10":Ljava/lang/String;
    .end local v35    # "Role1":Ljava/lang/String;
    .end local v36    # "Role2":Ljava/lang/String;
    .end local v37    # "Role3":Ljava/lang/String;
    .end local v39    # "Role5":Ljava/lang/String;
    .local v2, "strExpUnit2":Ljava/lang/String;
    .local v3, "strExpUnit3":Ljava/lang/String;
    .local v4, "strExpUnit4":Ljava/lang/String;
    .local v5, "strExpUnit5":Ljava/lang/String;
    .local v6, "strExpUnit6":Ljava/lang/String;
    .local v7, "strExpUnit7":Ljava/lang/String;
    .local v8, "strExpUnit8":Ljava/lang/String;
    .local v9, "strExpUnit9":Ljava/lang/String;
    .local v10, "strExpUnit10":Ljava/lang/String;
    .local v11, "Role1":Ljava/lang/String;
    .restart local v12    # "Role2":Ljava/lang/String;
    .restart local v13    # "Role3":Ljava/lang/String;
    .restart local v14    # "Role4":Ljava/lang/String;
    .restart local v15    # "Role5":Ljava/lang/String;
    :goto_4
    move-object/from16 v21, v0

    .end local v0    # "reurl":Ljava/lang/String;
    .local v21, "reurl":Ljava/lang/String;
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    aput-object v30, v0, v23

    const/16 v23, 0x1

    aput-object v22, v0, v23

    const/16 v23, 0x2

    aput-object v2, v0, v23

    const/16 v23, 0x3

    aput-object v3, v0, v23

    const/16 v23, 0x4

    aput-object v4, v0, v23

    const/16 v23, 0x5

    aput-object v5, v0, v23

    const/16 v23, 0x6

    aput-object v6, v0, v23

    const/16 v23, 0x7

    aput-object v7, v0, v23

    const/16 v23, 0x8

    aput-object v8, v0, v23

    const/16 v23, 0x9

    aput-object v9, v0, v23

    const/16 v23, 0xa

    aput-object v10, v0, v23

    const/16 v23, 0xb

    aput-object v11, v0, v23

    const/16 v23, 0xc

    aput-object v12, v0, v23

    const/16 v23, 0xd

    aput-object v13, v0, v23

    const/16 v23, 0xe

    aput-object v14, v0, v23

    const/16 v23, 0xf

    aput-object v15, v0, v23

    const/16 v23, 0x10

    aput-object v16, v0, v23

    const/16 v23, 0x11

    aput-object v17, v0, v23

    const/16 v23, 0x12

    aput-object v18, v0, v23

    const/16 v23, 0x13

    aput-object v19, v0, v23

    const/16 v23, 0x14

    aput-object v20, v0, v23

    .line 257
    .local v0, "a":[Ljava/lang/String;
    return-object v0
.end method

.method public static qianRecoveryTime(Ljava/lang/String;)I
    .locals 5
    .param p0, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    .local v1, "retcode":I
    const/4 v2, 0x0

    .line 93
    .local v2, "recoveryTime":I
    if-nez v1, :cond_0

    .line 94
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "home_coin_recovery_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    :cond_0
    return v2
.end method

.method public static resinRecoveryTime(Ljava/lang/String;)I
    .locals 5
    .param p0, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    .local v1, "retcode":I
    const/4 v2, 0x0

    .line 78
    .local v2, "recoveryTime":I
    if-nez v1, :cond_0

    .line 79
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "resin_recovery_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 81
    :cond_0
    return v2
.end method

.method public static rewardReceived(Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "retcode":I
    const/4 v2, 0x0

    .line 103
    .local v2, "taskReceived":Z
    if-nez v1, :cond_0

    .line 104
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "is_extra_task_reward_received"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 106
    :cond_0
    return v2
.end method
