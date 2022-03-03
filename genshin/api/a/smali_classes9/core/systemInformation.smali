.class public Lcore/systemInformation;
.super Ljava/lang/Object;
.source "systemInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatDouble(DI)D
    .locals 3
    .param p1, "d"    # D
    .param p3, "newScale"    # I

    .line 152
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 153
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDISPLAY()Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 86
    .local v0, "DISPLAY":Ljava/lang/String;
    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .local v0, "SDKVersion":I
    return v0
.end method

.method public static getSerialNum()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 95
    .local v0, "serialNum":Ljava/lang/String;
    return-object v0
.end method

.method public static getSystemLanguage()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLanguageList()[Ljava/util/Locale;
    .locals 1

    .line 232
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "uuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "androidId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    return-object v0

    .line 110
    :cond_0
    return-object v1
.end method

.method public getIMSI(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .line 171
    const-string v0, "android.permission.READ_PHONE_STATE"

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 173
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f0

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 178
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x0

    .line 182
    :cond_1
    return-object v0

    .line 183
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNowTime()Ljava/lang/String;
    .locals 6

    .line 206
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 207
    .local v0, "nowTime":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 209
    .local v1, "ts":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 211
    .local v4, "date":Ljava/util/Date;
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "res":Ljava/lang/String;
    return-object v5
.end method

.method public getScreenInch(Landroid/app/Activity;)D
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;

    .line 121
    const-wide/16 v0, 0x0

    .line 123
    .local v0, "mInch":D
    const/4 v2, 0x0

    .local v2, "realWidth":I
    const/4 v3, 0x0

    .line 124
    .local v3, "realHeight":I
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 125
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 127
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    .line 128
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 129
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 130
    iget v7, v6, Landroid/graphics/Point;->x:I

    move v2, v7

    .line 131
    iget v7, v6, Landroid/graphics/Point;->y:I

    move v3, v7

    .line 132
    .end local v6    # "size":Landroid/graphics/Point;
    goto :goto_0

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_1

    .line 133
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 134
    .local v6, "mGetRawH":Ljava/lang/reflect/Method;
    const-class v7, Landroid/view/Display;

    const-string v9, "getRawWidth"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 135
    .local v7, "mGetRawW":Ljava/lang/reflect/Method;
    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v2, v9

    .line 136
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v3, v8

    .line 137
    .end local v6    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v7    # "mGetRawW":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 138
    :cond_1
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move v2, v6

    .line 139
    iget v6, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move v3, v6

    .line 141
    :goto_0
    int-to-float v6, v2

    iget v7, v5, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v6, v7

    int-to-float v7, v2

    iget v8, v5, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v7, v8

    mul-float v6, v6, v7

    int-to-float v7, v3

    iget v8, v5, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v7, v8

    int-to-float v8, v3

    iget v9, v5, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v8, v9

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcore/systemInformation;->formatDouble(DI)D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v6

    .line 144
    .end local v2    # "realWidth":I
    .end local v3    # "realHeight":I
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-wide v0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    .local v0, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 197
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .local v2, "version":Ljava/lang/String;
    return-object v2

    .line 199
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    const/4 v1, 0x0

    return-object v1
.end method

.method public screenOrientation(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method
