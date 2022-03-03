.class public Lcore/CalendarService;
.super Landroid/app/Service;
.source "CalendarService.java"


# instance fields
.field private context:Landroid/content/Context;

.field cookie:Ljava/lang/String;

.field private d:Ljava/text/SimpleDateFormat;

.field day:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field jueseurl1:Ljava/lang/String;

.field jueseurl10:Ljava/lang/String;

.field jueseurl11:Ljava/lang/String;

.field jueseurl12:Ljava/lang/String;

.field jueseurl13:Ljava/lang/String;

.field jueseurl14:Ljava/lang/String;

.field jueseurl15:Ljava/lang/String;

.field jueseurl16:Ljava/lang/String;

.field jueseurl17:Ljava/lang/String;

.field jueseurl18:Ljava/lang/String;

.field jueseurl19:Ljava/lang/String;

.field jueseurl2:Ljava/lang/String;

.field jueseurl20:Ljava/lang/String;

.field jueseurl21:Ljava/lang/String;

.field jueseurl22:Ljava/lang/String;

.field jueseurl23:Ljava/lang/String;

.field jueseurl3:Ljava/lang/String;

.field jueseurl4:Ljava/lang/String;

.field jueseurl5:Ljava/lang/String;

.field jueseurl6:Ljava/lang/String;

.field jueseurl7:Ljava/lang/String;

.field jueseurl8:Ljava/lang/String;

.field jueseurl9:Ljava/lang/String;

.field serviceIntent:Landroid/content/Intent;

.field private t:Ljava/text/SimpleDateFormat;

.field time:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field uid:Ljava/lang/String;

.field private w:Ljava/text/SimpleDateFormat;

.field week:Ljava/lang/String;

.field wuqiurl1:Ljava/lang/String;

.field wuqiurl10:Ljava/lang/String;

.field wuqiurl11:Ljava/lang/String;

.field wuqiurl12:Ljava/lang/String;

.field wuqiurl13:Ljava/lang/String;

.field wuqiurl14:Ljava/lang/String;

.field wuqiurl15:Ljava/lang/String;

.field wuqiurl16:Ljava/lang/String;

.field wuqiurl17:Ljava/lang/String;

.field wuqiurl18:Ljava/lang/String;

.field wuqiurl19:Ljava/lang/String;

.field wuqiurl2:Ljava/lang/String;

.field wuqiurl20:Ljava/lang/String;

.field wuqiurl21:Ljava/lang/String;

.field wuqiurl22:Ljava/lang/String;

.field wuqiurl23:Ljava/lang/String;

.field wuqiurl24:Ljava/lang/String;

.field wuqiurl25:Ljava/lang/String;

.field wuqiurl26:Ljava/lang/String;

.field wuqiurl27:Ljava/lang/String;

.field wuqiurl28:Ljava/lang/String;

.field wuqiurl29:Ljava/lang/String;

.field wuqiurl3:Ljava/lang/String;

.field wuqiurl30:Ljava/lang/String;

.field wuqiurl31:Ljava/lang/String;

.field wuqiurl32:Ljava/lang/String;

.field wuqiurl33:Ljava/lang/String;

.field wuqiurl34:Ljava/lang/String;

.field wuqiurl35:Ljava/lang/String;

.field wuqiurl36:Ljava/lang/String;

.field wuqiurl4:Ljava/lang/String;

.field wuqiurl5:Ljava/lang/String;

.field wuqiurl6:Ljava/lang/String;

.field wuqiurl7:Ljava/lang/String;

.field wuqiurl8:Ljava/lang/String;

.field wuqiurl9:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcore/CalendarService$1;

    invoke-direct {v0, p0}, Lcore/CalendarService$1;-><init>(Lcore/CalendarService;)V

    iput-object v0, p0, Lcore/CalendarService;->handler:Landroid/os/Handler;

    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcore/CalendarService;->t:Ljava/text/SimpleDateFormat;

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcore/CalendarService;->d:Ljava/text/SimpleDateFormat;

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcore/CalendarService;->w:Ljava/text/SimpleDateFormat;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcore/CalendarService;->jueseurl1:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcore/CalendarService;->jueseurl2:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcore/CalendarService;->jueseurl3:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcore/CalendarService;->jueseurl4:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcore/CalendarService;->jueseurl5:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcore/CalendarService;->jueseurl6:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcore/CalendarService;->jueseurl7:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcore/CalendarService;->jueseurl8:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcore/CalendarService;->jueseurl9:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcore/CalendarService;->jueseurl10:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcore/CalendarService;->jueseurl11:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lcore/CalendarService;->jueseurl12:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcore/CalendarService;->jueseurl13:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcore/CalendarService;->jueseurl14:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcore/CalendarService;->jueseurl15:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcore/CalendarService;->jueseurl16:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcore/CalendarService;->jueseurl17:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcore/CalendarService;->jueseurl18:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcore/CalendarService;->jueseurl19:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcore/CalendarService;->jueseurl20:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcore/CalendarService;->jueseurl21:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcore/CalendarService;->jueseurl22:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcore/CalendarService;->jueseurl23:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl1:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl2:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl3:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl4:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl5:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl6:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl7:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl8:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl9:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl10:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl11:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl12:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl13:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl14:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl15:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl16:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl17:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl18:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl19:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl20:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl21:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl22:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl23:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl24:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl25:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl26:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl27:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl28:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl29:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl30:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl31:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl32:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl33:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl34:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl35:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcore/CalendarService;->wuqiurl36:Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcore/CalendarService;->uid:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcore/CalendarService;->cookie:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcore/CalendarService;)V
    .locals 0
    .param p0, "x0"    # Lcore/CalendarService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcore/CalendarService;->gettimeinform()V

    return-void
.end method

.method private getImageId(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 431
    invoke-virtual {p0}, Lcore/CalendarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 432
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcore/CalendarService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getdropinfo()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 212
    move-object/from16 v13, p0

    const-string v14, "https://api-static.mihoyo.com/common/blackboard/ys_obc/v1/get_activity_calendar?app_sn=ys_obc"

    .line 213
    .local v14, "url":Ljava/lang/String;
    invoke-static {v14}, Lhttp/getCalendar;->doCalendarinfoGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 214
    .local v15, "jsonText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 301
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 214
    new-array v11, v0, [Ljava/lang/String;

    .line 215
    .local v11, "a":[Ljava/lang/String;
    new-array v10, v0, [Ljava/lang/String;

    .line 216
    .local v10, "b":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 217
    .local v1, "day":I
    iget-object v2, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/4 v1, 0x1

    move v9, v1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v2, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e8c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const/4 v1, 0x2

    move v9, v1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v2, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e09"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const/4 v1, 0x3

    move v9, v1

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v3, "\u661f\u671f\u56db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    const/4 v1, 0x4

    move v9, v1

    goto :goto_0

    .line 225
    :cond_3
    iget-object v2, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e94"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    const/4 v1, 0x5

    move v9, v1

    goto :goto_0

    .line 227
    :cond_4
    iget-object v2, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v3, "\u661f\u671f\u516d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    const/4 v1, 0x6

    move v9, v1

    goto :goto_0

    .line 230
    :cond_5
    const/4 v1, 0x7

    move v9, v1

    .line 232
    .end local v1    # "day":I
    .local v9, "day":I
    :goto_0
    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v9, v1, :cond_6

    .line 233
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "day"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v15, v9}, Lhttp/DropInfo;->getUrljuese(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 235
    invoke-static {v15, v9}, Lhttp/DropInfo;->getUrlwuqi(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 236
    aget-object v3, v11, v0

    iput-object v3, v13, Lcore/CalendarService;->jueseurl1:Ljava/lang/String;

    .line 237
    aget-object v3, v11, v2

    iput-object v3, v13, Lcore/CalendarService;->jueseurl2:Ljava/lang/String;

    .line 238
    const/4 v3, 0x2

    aget-object v4, v11, v3

    iput-object v4, v13, Lcore/CalendarService;->jueseurl3:Ljava/lang/String;

    .line 239
    const/4 v4, 0x3

    aget-object v5, v11, v4

    iput-object v5, v13, Lcore/CalendarService;->jueseurl4:Ljava/lang/String;

    .line 240
    const/4 v5, 0x4

    aget-object v6, v11, v5

    iput-object v6, v13, Lcore/CalendarService;->jueseurl5:Ljava/lang/String;

    .line 241
    const/4 v6, 0x5

    aget-object v7, v11, v6

    iput-object v7, v13, Lcore/CalendarService;->jueseurl6:Ljava/lang/String;

    .line 242
    const/4 v7, 0x6

    aget-object v8, v11, v7

    iput-object v8, v13, Lcore/CalendarService;->jueseurl7:Ljava/lang/String;

    .line 243
    aget-object v8, v11, v1

    iput-object v8, v13, Lcore/CalendarService;->jueseurl8:Ljava/lang/String;

    .line 244
    const/16 v8, 0x8

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl9:Ljava/lang/String;

    .line 245
    const/16 v12, 0x9

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl10:Ljava/lang/String;

    .line 246
    const/16 v8, 0xa

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl11:Ljava/lang/String;

    .line 247
    const/16 v12, 0xb

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl12:Ljava/lang/String;

    .line 248
    const/16 v8, 0xc

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl13:Ljava/lang/String;

    .line 249
    const/16 v12, 0xd

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl14:Ljava/lang/String;

    .line 250
    const/16 v8, 0xe

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl15:Ljava/lang/String;

    .line 251
    const/16 v12, 0xf

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl16:Ljava/lang/String;

    .line 252
    const/16 v8, 0x10

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl17:Ljava/lang/String;

    .line 253
    const/16 v12, 0x11

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl18:Ljava/lang/String;

    .line 254
    const/16 v8, 0x12

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl19:Ljava/lang/String;

    .line 255
    const/16 v12, 0x13

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl20:Ljava/lang/String;

    .line 256
    const/16 v8, 0x14

    aget-object v12, v11, v8

    iput-object v12, v13, Lcore/CalendarService;->jueseurl21:Ljava/lang/String;

    .line 257
    const/16 v12, 0x15

    aget-object v8, v11, v12

    iput-object v8, v13, Lcore/CalendarService;->jueseurl22:Ljava/lang/String;

    .line 258
    const/16 v8, 0x16

    aget-object v8, v11, v8

    iput-object v8, v13, Lcore/CalendarService;->jueseurl23:Ljava/lang/String;

    .line 260
    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl1:Ljava/lang/String;

    .line 261
    aget-object v0, v10, v2

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl2:Ljava/lang/String;

    .line 262
    aget-object v0, v10, v3

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl3:Ljava/lang/String;

    .line 263
    aget-object v0, v10, v4

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl4:Ljava/lang/String;

    .line 264
    aget-object v0, v10, v5

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl5:Ljava/lang/String;

    .line 265
    aget-object v0, v10, v6

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl6:Ljava/lang/String;

    .line 266
    aget-object v0, v10, v7

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl7:Ljava/lang/String;

    .line 267
    aget-object v0, v10, v1

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl8:Ljava/lang/String;

    .line 268
    const/16 v0, 0x8

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl9:Ljava/lang/String;

    .line 269
    const/16 v0, 0x9

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl10:Ljava/lang/String;

    .line 270
    const/16 v0, 0xa

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl11:Ljava/lang/String;

    .line 271
    const/16 v0, 0xb

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl12:Ljava/lang/String;

    .line 272
    const/16 v0, 0xc

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl13:Ljava/lang/String;

    .line 273
    const/16 v0, 0xd

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl14:Ljava/lang/String;

    .line 274
    const/16 v0, 0xe

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl15:Ljava/lang/String;

    .line 275
    const/16 v0, 0xf

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl16:Ljava/lang/String;

    .line 276
    const/16 v0, 0x10

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl17:Ljava/lang/String;

    .line 277
    const/16 v0, 0x11

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl18:Ljava/lang/String;

    .line 278
    const/16 v0, 0x12

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl19:Ljava/lang/String;

    .line 279
    const/16 v0, 0x13

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl20:Ljava/lang/String;

    .line 280
    const/16 v0, 0x14

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl21:Ljava/lang/String;

    .line 281
    aget-object v0, v10, v12

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl22:Ljava/lang/String;

    .line 282
    const/16 v0, 0x16

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl23:Ljava/lang/String;

    .line 283
    const/16 v0, 0x17

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl24:Ljava/lang/String;

    .line 284
    const/16 v0, 0x18

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl25:Ljava/lang/String;

    .line 285
    const/16 v0, 0x19

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl26:Ljava/lang/String;

    .line 286
    const/16 v0, 0x1a

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl27:Ljava/lang/String;

    .line 287
    const/16 v0, 0x1b

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl28:Ljava/lang/String;

    .line 288
    const/16 v0, 0x1c

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl29:Ljava/lang/String;

    .line 289
    const/16 v0, 0x1d

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl30:Ljava/lang/String;

    .line 290
    const/16 v0, 0x1e

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl31:Ljava/lang/String;

    .line 291
    const/16 v0, 0x1f

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl32:Ljava/lang/String;

    .line 292
    const/16 v0, 0x20

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl33:Ljava/lang/String;

    .line 293
    const/16 v0, 0x21

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl34:Ljava/lang/String;

    .line 294
    const/16 v0, 0x22

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl35:Ljava/lang/String;

    .line 295
    const/16 v0, 0x23

    aget-object v0, v10, v0

    iput-object v0, v13, Lcore/CalendarService;->wuqiurl36:Ljava/lang/String;

    .line 296
    invoke-direct/range {p0 .. p0}, Lcore/CalendarService;->stratCalendarNotification()V

    move/from16 v18, v9

    goto :goto_1

    .line 298
    :cond_6
    const-string v0, "calendar"

    const-string v1, "\u53d1\u9001\u901a\u77e5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lcore/CalendarService;->week:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6389\u843d\u63d0\u9192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    .line 301
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 299
    const-string v2, "\u6bcf\u65e5\u526f\u672c\u6389\u843d\u63d0\u9192"

    const-string v3, "\u5468\u65e5\u63d0\u9192\uff1a\u8bf7\u4e0d\u8981\u5fd8\u4e86\u4f7f\u7528\u8106\u5f31\u6811\u8102"

    const-string v4, "\u6d4b\u8bd5"

    const-string v5, "shuzhi"

    const-string v6, "shuzhi"

    const-string v7, "\u6bcf\u65e5\u63d0\u9192\u63a8\u9001"

    move-object/from16 v0, p0

    move/from16 v18, v9

    .end local v9    # "day":I
    .local v18, "day":I
    move-object/from16 v9, v16

    move-object/from16 v16, v10

    .end local v10    # "b":[Ljava/lang/String;
    .local v16, "b":[Ljava/lang/String;
    move-object/from16 v10, v17

    move-object/from16 v17, v11

    .end local v11    # "a":[Ljava/lang/String;
    .local v17, "a":[Ljava/lang/String;
    move-object v11, v12

    invoke-direct/range {v0 .. v12}, Lcore/CalendarService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    .line 303
    .end local v16    # "b":[Ljava/lang/String;
    .end local v17    # "a":[Ljava/lang/String;
    .restart local v10    # "b":[Ljava/lang/String;
    .restart local v11    # "a":[Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private gettimeinform()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcore/CalendarService;->t:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcore/CalendarService;->time:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcore/CalendarService;->d:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcore/CalendarService;->day:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcore/CalendarService;->w:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcore/CalendarService;->week:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcore/CalendarService;->time:Ljava/lang/String;

    const-string v1, "time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcore/CalendarService;->time:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcore/CalendarService;->qian()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcore/CalendarService;->time:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcore/CalendarService;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcore/CalendarService;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "calendar"

    const-string v1, "\u76f8\u7b49\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcore/CalendarService;->getdropinfo()V

    .line 198
    :cond_1
    return-void
.end method

.method private intView()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcore/CalendarService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcore/CalendarService;->context:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnotification/NotificationServicedrop;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    .line 78
    return-void
.end method

.method private loadUser()V
    .locals 3

    .line 420
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcore/CalendarService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 421
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "UID"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcore/CalendarService;->uid:Ljava/lang/String;

    .line 422
    const-string v1, "COOKIE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcore/CalendarService;->cookie:Ljava/lang/String;

    .line 423
    return-void
.end method

.method private qian()V
    .locals 14

    .line 201
    invoke-direct {p0}, Lcore/CalendarService;->loadUser()V

    .line 202
    const-string v0, "\u7b7e\u5230\u5931\u8d25"

    .line 203
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcore/CalendarService;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcore/CalendarService;->cookie:Ljava/lang/String;

    invoke-static {v1, v2}, Ltool/Sign;->sign_all(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 204
    .end local v0    # "message":Ljava/lang/String;
    .local v13, "message":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcore/CalendarService;->day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7b7e\u5230\u60c5\u51b5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 204
    const-string v2, "\u7b7e\u5230\u60c5\u51b5"

    const-string v5, "shuzhi"

    const-string v6, "shuzhi"

    const-string v7, "\u6bcf\u65e5\u63d0\u9192\u63a8\u9001"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, v13

    move-object v4, v13

    move-object v9, v10

    move-object v11, v12

    invoke-direct/range {v0 .. v12}, Lcore/CalendarService;->startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 207
    return-void
.end method

.method private saveInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 410
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcore/CalendarService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 411
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 412
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    return-void
.end method

.method private start()V
    .locals 7

    .line 81
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcore/CalendarService;->timer:Ljava/util/Timer;

    .line 82
    iget-object v0, p0, Lcore/CalendarService;->w:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcore/CalendarService;->week:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcore/CalendarService;->timer:Ljava/util/Timer;

    new-instance v2, Lcore/CalendarService$2;

    invoke-direct {v2, p0}, Lcore/CalendarService$2;-><init>(Lcore/CalendarService;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 96
    return-void
.end method

.method private startBigTaxtNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 18
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "SubText"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "pic"    # Ljava/lang/String;
    .param p6, "image"    # Ljava/lang/String;
    .param p7, "channel_id"    # Ljava/lang/String;
    .param p8, "isSound"    # Z
    .param p9, "isShowLock"    # Ljava/lang/Boolean;
    .param p10, "isHeads"    # Ljava/lang/Boolean;
    .param p11, "isAutoCancel"    # Ljava/lang/Boolean;
    .param p12, "isOnly"    # Ljava/lang/Boolean;

    .line 323
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcore/CalendarService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcore/CalendarService;->context:Landroid/content/Context;

    .line 324
    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcore/CalendarService;->getImageId(Ljava/lang/String;)I

    move-result v15

    .line 325
    .local v15, "picId":I
    move-object/from16 v14, p6

    invoke-direct {v0, v14}, Lcore/CalendarService;->getImageId(Ljava/lang/String;)I

    move-result v16

    .line 326
    .local v16, "imageId":I
    const-string v2, "calendar"

    const-string v3, "\u6d4b\u8bd54\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v9, v0, Lcore/CalendarService;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object/from16 v2, p4

    move/from16 v3, v16

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v15

    move-object/from16 v8, p7

    move/from16 v14, v17

    invoke-static/range {v2 .. v14}, Lnotification/noticationServiceDome;->bigText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;ZZZZZ)V

    .line 331
    return-void
.end method

.method private stratCalendarNotification()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl1:Ljava/lang/String;

    const-string v2, "jueseurl1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl2:Ljava/lang/String;

    const-string v2, "jueseurl2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl3:Ljava/lang/String;

    const-string v2, "jueseurl3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl4:Ljava/lang/String;

    const-string v2, "jueseurl4"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl5:Ljava/lang/String;

    const-string v2, "jueseurl5"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl6:Ljava/lang/String;

    const-string v2, "jueseurl6"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl7:Ljava/lang/String;

    const-string v2, "jueseurl7"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl8:Ljava/lang/String;

    const-string v2, "jueseurl8"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl9:Ljava/lang/String;

    const-string v2, "jueseurl9"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl10:Ljava/lang/String;

    const-string v2, "jueseurl10"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl11:Ljava/lang/String;

    const-string v2, "jueseurl11"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl12:Ljava/lang/String;

    const-string v2, "jueseurl12"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl13:Ljava/lang/String;

    const-string v2, "jueseurl13"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl14:Ljava/lang/String;

    const-string v2, "jueseurl14"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl15:Ljava/lang/String;

    const-string v2, "jueseurl15"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl16:Ljava/lang/String;

    const-string v2, "jueseurl16"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl17:Ljava/lang/String;

    const-string v2, "jueseurl17"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl18:Ljava/lang/String;

    const-string v2, "jueseurl18"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl19:Ljava/lang/String;

    const-string v2, "jueseurl19"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl20:Ljava/lang/String;

    const-string v2, "jueseurl20"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl21:Ljava/lang/String;

    const-string v2, "jueseurl21"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl22:Ljava/lang/String;

    const-string v2, "jueseurl22"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->jueseurl23:Ljava/lang/String;

    const-string v2, "jueseurl23"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl1:Ljava/lang/String;

    const-string v2, "wuqiurl1"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl2:Ljava/lang/String;

    const-string v2, "wuqiurl2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl3:Ljava/lang/String;

    const-string v2, "wuqiurl3"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl4:Ljava/lang/String;

    const-string v2, "wuqiurl4"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl5:Ljava/lang/String;

    const-string v2, "wuqiurl5"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl6:Ljava/lang/String;

    const-string v2, "wuqiurl6"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl7:Ljava/lang/String;

    const-string v2, "wuqiurl7"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl8:Ljava/lang/String;

    const-string v2, "wuqiurl8"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl9:Ljava/lang/String;

    const-string v2, "wuqiurl9"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl10:Ljava/lang/String;

    const-string v2, "wuqiurl10"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl11:Ljava/lang/String;

    const-string v2, "wuqiurl11"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl12:Ljava/lang/String;

    const-string v2, "wuqiurl12"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl13:Ljava/lang/String;

    const-string v2, "wuqiurl13"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl14:Ljava/lang/String;

    const-string v2, "wuqiurl14"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl15:Ljava/lang/String;

    const-string v2, "wuqiurl15"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl16:Ljava/lang/String;

    const-string v2, "wuqiurl16"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl17:Ljava/lang/String;

    const-string v2, "wuqiurl17"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl18:Ljava/lang/String;

    const-string v2, "wuqiurl18"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl19:Ljava/lang/String;

    const-string v2, "wuqiurl19"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl20:Ljava/lang/String;

    const-string v2, "wuqiurl20"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl21:Ljava/lang/String;

    const-string v2, "wuqiurl21"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl22:Ljava/lang/String;

    const-string v2, "wuqiurl22"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl23:Ljava/lang/String;

    const-string v2, "wuqiurl23"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl24:Ljava/lang/String;

    const-string v2, "wuqiurl24"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl25:Ljava/lang/String;

    const-string v2, "wuqiurl25"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl26:Ljava/lang/String;

    const-string v2, "wuqiurl26"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl27:Ljava/lang/String;

    const-string v2, "wuqiurl27"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl28:Ljava/lang/String;

    const-string v2, "wuqiurl28"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl29:Ljava/lang/String;

    const-string v2, "wuqiurl29"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl30:Ljava/lang/String;

    const-string v2, "wuqiurl30"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl31:Ljava/lang/String;

    const-string v2, "wuqiurl31"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl32:Ljava/lang/String;

    const-string v2, "wuqiurl32"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl33:Ljava/lang/String;

    const-string v2, "wuqiurl33"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl34:Ljava/lang/String;

    const-string v2, "wuqiurl34"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl35:Ljava/lang/String;

    const-string v2, "wuqiurl35"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->wuqiurl36:Ljava/lang/String;

    const-string v2, "wuqiurl36"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcore/CalendarService;->week:Ljava/lang/String;

    const-string v2, "week"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v0, p0, Lcore/CalendarService;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcore/CalendarService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 402
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    const-string v0, "calendar"

    const-string v1, "\u6d4b\u8bd51\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcore/CalendarService;->intView()V

    .line 68
    invoke-direct {p0}, Lcore/CalendarService;->start()V

    .line 69
    return-void
.end method
