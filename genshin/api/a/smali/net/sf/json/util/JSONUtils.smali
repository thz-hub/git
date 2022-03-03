.class public final Lnet/sf/json/util/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field public static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final FUNCTION_BODY_PATTERN:Ljava/lang/String; = "^function[ ]?\\(.*?\\)[ \n\t]*\\{(.*?)\\}$"

.field private static final FUNCTION_HEADER_PATTERN:Ljava/lang/String; = "^function[ ]?\\(.*?\\)$"

.field private static final FUNCTION_PARAMS_PATTERN:Ljava/lang/String; = "^function[ ]?\\((.*?)\\).*"

.field private static final FUNCTION_PATTERN:Ljava/lang/String; = "^function[ ]?\\(.*?\\)[ \n\t]*\\{.*?\\}$"

.field private static final FUNCTION_PREFIX:Ljava/lang/String; = "function"

.field public static final SINGLE_QUOTE:Ljava/lang/String; = "\'"

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Number:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$math$BigDecimal:Ljava/lang/Class;

.field static synthetic class$java$math$BigInteger:Ljava/lang/Class;

.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$List:Ljava/lang/Class;

.field static synthetic class$net$sf$json$JSONArray:Ljava/lang/Class;

.field static synthetic class$net$sf$json$JSONFunction:Ljava/lang/Class;

.field private static final morpherRegistry:Lnet/sf/ezmorph/MorpherRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lnet/sf/ezmorph/MorpherRegistry;

    invoke-direct {v0}, Lnet/sf/ezmorph/MorpherRegistry;-><init>()V

    sput-object v0, Lnet/sf/json/util/JSONUtils;->morpherRegistry:Lnet/sf/ezmorph/MorpherRegistry;

    .line 65
    invoke-static {v0}, Lnet/sf/ezmorph/MorphUtils;->registerStandardMorphers(Lnet/sf/ezmorph/MorpherRegistry;)V

    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 174
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/util/JSONUtils;->convertToJavaIdentifier(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToJavaIdentifier(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->getJavaIdentifierTransformer()Lnet/sf/json/util/JavaIdentifierTransformer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/util/JavaIdentifierTransformer;->transformToJavaIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "jsone":Lnet/sf/json/JSONException;
    throw v0
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # D

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 111
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_2
    return-object v0

    .line 104
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v0, "null"

    return-object v0
.end method

.method public static getFunctionBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;

    .line 125
    const-string v0, "^function[ ]?\\(.*?\\)[ \n\t]*\\{(.*?)\\}$"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/json/regexp/RegexpUtils;->getMatcher(Ljava/lang/String;Z)Lnet/sf/json/regexp/RegexpMatcher;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lnet/sf/json/regexp/RegexpMatcher;->getGroupIfMatches(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;

    .line 132
    const-string v0, "^function[ ]?\\((.*?)\\).*"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/sf/json/regexp/RegexpUtils;->getMatcher(Ljava/lang/String;Z)Lnet/sf/json/regexp/RegexpMatcher;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lnet/sf/json/regexp/RegexpMatcher;->getGroupIfMatches(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInnerComponentType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return-object p0

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->getInnerComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getMorpherRegistry()Lnet/sf/ezmorph/MorpherRegistry;
    .locals 1

    .line 149
    sget-object v0, Lnet/sf/json/util/JSONUtils;->morpherRegistry:Lnet/sf/ezmorph/MorpherRegistry;

    return-object v0
.end method

.method public static getProperties(Lnet/sf/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "properties":Ljava/util/Map;
    invoke-virtual {p0}, Lnet/sf/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->getTypeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v1    # "keys":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public static getTypeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 173
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "java.lang.Object"

    if-eqz v0, :cond_1

    .line 174
    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    return-object v0

    .line 175
    :cond_1
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$util$List:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.util.List"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$util$List:Ljava/lang/Class;

    :cond_2
    return-object v0

    .line 177
    :cond_3
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$net$sf$json$JSONFunction:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "net.sf.json.JSONFunction"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$net$sf$json$JSONFunction:Ljava/lang/Class;

    :cond_4
    return-object v0

    .line 179
    :cond_5
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_6
    return-object v0

    .line 181
    :cond_7
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Unsupported type"

    if-eqz v0, :cond_14

    .line 182
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    .line 183
    .local v0, "n":Ljava/lang/Number;
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isInteger(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 184
    sget-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.lang.Integer"

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_8
    return-object v1

    .line 185
    :cond_9
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isLong(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 186
    sget-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "java.lang.Long"

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Long:Ljava/lang/Class;

    :cond_a
    return-object v1

    .line 187
    :cond_b
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isFloat(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 188
    sget-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "java.lang.Float"

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Float:Ljava/lang/Class;

    :cond_c
    return-object v1

    .line 189
    :cond_d
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isBigInteger(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 190
    sget-object v1, Lnet/sf/json/util/JSONUtils;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "java.math.BigInteger"

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/sf/json/util/JSONUtils;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_e
    return-object v1

    .line 191
    :cond_f
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isBigDecimal(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 192
    sget-object v1, Lnet/sf/json/util/JSONUtils;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v1, :cond_10

    const-string v1, "java.math.BigDecimal"

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/sf/json/util/JSONUtils;->class$java$math$BigDecimal:Ljava/lang/Class;

    :cond_10
    return-object v1

    .line 193
    :cond_11
    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->isDouble(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 194
    sget-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "java.lang.Double"

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lnet/sf/json/util/JSONUtils;->class$java$lang$Double:Ljava/lang/Class;

    :cond_12
    return-object v1

    .line 196
    :cond_13
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v0    # "n":Ljava/lang/Number;
    :cond_14
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 199
    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$String:Ljava/lang/Class;

    :cond_15
    return-object v0

    .line 200
    :cond_16
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 201
    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_17

    invoke-static {v1}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Object:Ljava/lang/Class;

    :cond_17
    return-object v0

    .line 203
    :cond_18
    new-instance v0, Lnet/sf/json/JSONException;

    invoke-direct {v0, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasQuotes(Ljava/lang/String;)Z
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 571
    :cond_4
    :goto_0
    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 215
    if-nez p0, :cond_0

    .line 216
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/json/JSONNull;->hashCode()I

    move-result v0

    return v0

    .line 218
    :cond_0
    instance-of v0, p0, Lnet/sf/json/JSON;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Lnet/sf/json/JSONFunction;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 219
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static isArray(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 230
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$util$Collection:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$net$sf$json$JSONArray:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "net.sf.json.JSONArray"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$net$sf$json$JSONArray:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_2

    instance-of v0, p0, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isBigDecimal(Ljava/lang/Number;)Z
    .locals 3
    .param p0, "n"    # Ljava/lang/Number;

    .line 722
    instance-of v0, p0, Ljava/math/BigDecimal;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 723
    return v1

    .line 726
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    return v1

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isBigInteger(Ljava/lang/Number;)Z
    .locals 3
    .param p0, "n"    # Ljava/lang/Number;

    .line 740
    instance-of v0, p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 741
    return v1

    .line 744
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    return v1

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isBoolean(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 249
    if-eqz p0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBoolean(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 257
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 258
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 267
    if-eqz p0, :cond_2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Double:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDouble(Ljava/lang/Number;)Z
    .locals 4
    .param p0, "n"    # Ljava/lang/Number;

    .line 758
    instance-of v0, p0, Ljava/lang/Double;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 759
    return v1

    .line 762
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 763
    .local v2, "d":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    .line 764
    .end local v2    # "d":D
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isFloat(Ljava/lang/Number;)Z
    .locals 3
    .param p0, "n"    # Ljava/lang/Number;

    .line 776
    instance-of v0, p0, Ljava/lang/Float;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 777
    return v1

    .line 780
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 781
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v2

    return v1

    .line 782
    .end local v0    # "f":F
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isFunction(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 277
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 278
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "str":Ljava/lang/String;
    const-string v3, "function"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "^function[ ]?\\(.*?\\)[ \n\t]*\\{.*?\\}$"

    invoke-static {v3, v2}, Lnet/sf/json/regexp/RegexpUtils;->getMatcher(Ljava/lang/String;Z)Lnet/sf/json/regexp/RegexpMatcher;

    move-result-object v3

    invoke-interface {v3, v0}, Lnet/sf/json/regexp/RegexpMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 281
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    instance-of v0, p0, Lnet/sf/json/JSONFunction;

    if-eqz v0, :cond_2

    .line 282
    return v2

    .line 284
    :cond_2
    return v1
.end method

.method public static isFunctionHeader(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 292
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 293
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 294
    .local v0, "str":Ljava/lang/String;
    const-string v2, "function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "^function[ ]?\\(.*?\\)$"

    invoke-static {v2, v3}, Lnet/sf/json/regexp/RegexpUtils;->getMatcher(Ljava/lang/String;Z)Lnet/sf/json/regexp/RegexpMatcher;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/sf/json/regexp/RegexpMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 296
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private static isInteger(Ljava/lang/Number;)Z
    .locals 2
    .param p0, "n"    # Ljava/lang/Number;

    .line 794
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 795
    return v1

    .line 798
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    return v1

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isJavaIdentifier(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    return v1

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_3
    :goto_1
    return v1
.end method

.method public static isJsonKeyword(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Z
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 578
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 579
    return v0

    .line 581
    :cond_0
    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->isJavascriptCompliant()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "undefined"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isLong(Ljava/lang/Number;)Z
    .locals 2
    .param p0, "n"    # Ljava/lang/Number;

    .line 812
    instance-of v0, p0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 813
    return v1

    .line 816
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    return v1

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 318
    instance-of v0, p0, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_0

    .line 319
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONObject;

    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    return v0

    .line 321
    :cond_0
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 329
    if-eqz p0, :cond_2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Number:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNumber(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 339
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    :cond_4
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 345
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    return v0
.end method

.method public static isObject(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 355
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isString(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 363
    if-eqz p0, :cond_3

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$Character:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isString(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 371
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    sget-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/util/JSONUtils;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static mayBeJSON(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 389
    if-eqz p0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newDynaBean(Lnet/sf/json/JSONObject;)Lorg/apache/commons/beanutils/DynaBean;
    .locals 1
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;

    .line 400
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/json/util/JSONUtils;->newDynaBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public static newDynaBean(Lnet/sf/json/JSONObject;Lnet/sf/json/JsonConfig;)Lorg/apache/commons/beanutils/DynaBean;
    .locals 6
    .param p0, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 409
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->getProperties(Lnet/sf/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 410
    .local v0, "props":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    .local v1, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 414
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 415
    invoke-static {v3, p1}, Lnet/sf/json/util/JSONUtils;->convertToJavaIdentifier(Ljava/lang/String;Lnet/sf/json/JsonConfig;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "parsedKey":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "parsedKey":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 421
    .end local v1    # "entries":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Lnet/sf/ezmorph/bean/MorphDynaClass;

    invoke-direct {v1, v0}, Lnet/sf/ezmorph/bean/MorphDynaClass;-><init>(Ljava/util/Map;)V

    .line 422
    .local v1, "dynaClass":Lnet/sf/ezmorph/bean/MorphDynaClass;
    const/4 v2, 0x0

    .line 424
    .local v2, "dynaBean":Lnet/sf/ezmorph/bean/MorphDynaBean;
    :try_start_0
    invoke-virtual {v1}, Lnet/sf/ezmorph/bean/MorphDynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v3

    check-cast v3, Lnet/sf/ezmorph/bean/MorphDynaBean;

    move-object v2, v3

    .line 425
    invoke-virtual {v2, v1}, Lnet/sf/ezmorph/bean/MorphDynaBean;->setDynaBeanClass(Lnet/sf/ezmorph/bean/MorphDynaClass;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    nop

    .line 429
    return-object v2

    .line 426
    :catch_0
    move-exception v3

    .line 427
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lnet/sf/json/JSONException;

    invoke-direct {v4, v3}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Ljava/lang/Number;

    .line 440
    if-eqz p0, :cond_2

    .line 443
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->testValidity(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 449
    :goto_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_1
    return-object v0

    .line 441
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;

    .line 472
    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    return-object p0

    .line 475
    :cond_0
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 480
    :cond_1
    const/4 v0, 0x0

    .line 482
    .local v0, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 483
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 485
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 486
    .local v3, "chars":[C
    const/16 v4, 0x406

    new-array v4, v4, [C

    .line 487
    .local v4, "buffer":[C
    const/4 v5, 0x0

    .line 488
    .local v5, "bufferIndex":I
    const/16 v6, 0x22

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x0

    if-ge v7, v1, :cond_5

    .line 490
    const/16 v9, 0x400

    if-le v5, v9, :cond_2

    .line 491
    invoke-virtual {v2, v4, v8, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 492
    const/4 v5, 0x0

    .line 494
    :cond_2
    move v8, v0

    .line 495
    .local v8, "b":C
    aget-char v0, v3, v7

    .line 496
    const/16 v9, 0x5c

    sparse-switch v0, :sswitch_data_0

    .line 509
    const/16 v10, 0x20

    if-ge v0, v10, :cond_4

    .line 510
    packed-switch v0, :pswitch_data_0

    .line 532
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 533
    .local v10, "t":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 534
    .local v11, "tLength":I
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "bufferIndex":I
    .local v12, "bufferIndex":I
    aput-char v9, v4, v5

    .line 535
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    const/16 v9, 0x75

    aput-char v9, v4, v12

    .line 536
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "bufferIndex":I
    .local v9, "bufferIndex":I
    add-int/lit8 v12, v11, -0x4

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v4, v5

    .line 537
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    add-int/lit8 v12, v11, -0x3

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v4, v9

    .line 538
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v9    # "bufferIndex":I
    add-int/lit8 v12, v11, -0x2

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v4, v5

    .line 539
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v4, v9

    goto :goto_1

    .line 503
    .end local v10    # "t":Ljava/lang/String;
    .end local v11    # "tLength":I
    :sswitch_0
    const/16 v10, 0x3c

    if-ne v8, v10, :cond_3

    .line 504
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .local v10, "bufferIndex":I
    aput-char v9, v4, v5

    move v5, v10

    .line 506
    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    :cond_3
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v9    # "bufferIndex":I
    aput-char v0, v4, v5

    .line 507
    move v5, v9

    goto :goto_2

    .line 499
    .end local v9    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    :sswitch_1
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v10    # "bufferIndex":I
    aput-char v9, v4, v5

    .line 500
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    aput-char v0, v4, v10

    .line 501
    goto :goto_2

    .line 528
    :pswitch_1
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v10    # "bufferIndex":I
    aput-char v9, v4, v5

    .line 529
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    const/16 v9, 0x72

    aput-char v9, v4, v10

    .line 530
    goto :goto_1

    .line 524
    :pswitch_2
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v10    # "bufferIndex":I
    aput-char v9, v4, v5

    .line 525
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    const/16 v9, 0x66

    aput-char v9, v4, v10

    .line 526
    goto :goto_1

    .line 520
    :pswitch_3
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v10    # "bufferIndex":I
    aput-char v9, v4, v5

    .line 521
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    const/16 v9, 0x6e

    aput-char v9, v4, v10

    .line 522
    goto :goto_1

    .line 516
    :pswitch_4
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v10    # "bufferIndex":I
    aput-char v9, v4, v5

    .line 517
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    const/16 v9, 0x74

    aput-char v9, v4, v10

    .line 518
    goto :goto_1

    .line 512
    :pswitch_5
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v10    # "bufferIndex":I
    aput-char v9, v4, v5

    .line 513
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    const/16 v9, 0x62

    aput-char v9, v4, v10

    .line 514
    nop

    .line 539
    :goto_1
    goto :goto_2

    .line 542
    :cond_4
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "bufferIndex":I
    .restart local v9    # "bufferIndex":I
    aput-char v0, v4, v5

    move v5, v9

    .line 489
    .end local v9    # "bufferIndex":I
    .restart local v5    # "bufferIndex":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 546
    .end local v8    # "b":C
    :cond_5
    invoke-virtual {v2, v4, v8, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 476
    .end local v0    # "c":C
    .end local v1    # "len":I
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "chars":[C
    .end local v4    # "buffer":[C
    .end local v5    # "bufferIndex":I
    .end local v7    # "i":I
    :cond_6
    :goto_3
    const-string v0, "\"\""

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 556
    return-object p0

    .line 557
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_2
    return-object p0
.end method

.method public static testValidity(Ljava/lang/Object;)V
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 594
    if-eqz p0, :cond_5

    .line 595
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 596
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 600
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 601
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "JSON does not allow non-finite numbers."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_3
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/math/BigInteger;

    .line 605
    :cond_4
    return-void

    .line 608
    :cond_5
    :goto_0
    return-void
.end method

.method public static transformNumber(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 6
    .param p0, "input"    # Ljava/lang/Number;

    .line 617
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 619
    :cond_0
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 620
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 621
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 622
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 623
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 624
    new-instance v0, Ljava/lang/Long;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 625
    .local v0, "max":Ljava/lang/Long;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 626
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 630
    .end local v0    # "max":Ljava/lang/Long;
    :cond_3
    return-object p0
.end method

.method public static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 649
    if-eqz p0, :cond_7

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 652
    :cond_0
    instance-of v0, p0, Lnet/sf/json/JSONFunction;

    if-eqz v0, :cond_1

    .line 653
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONFunction;

    invoke-virtual {v0}, Lnet/sf/json/JSONFunction;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 655
    :cond_1
    instance-of v0, p0, Lnet/sf/json/JSONString;

    if-eqz v0, :cond_3

    .line 658
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p0

    check-cast v1, Lnet/sf/json/JSONString;

    invoke-interface {v1}, Lnet/sf/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .local v0, "o":Ljava/lang/Object;
    nop

    .line 662
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 663
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 665
    :cond_2
    new-instance v1, Lnet/sf/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Bad value from toJSONString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    .end local v0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 660
    .restart local v0    # "o":Ljava/lang/Object;
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 667
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 668
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 670
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    instance-of v0, p0, Lnet/sf/json/JSONObject;

    if-nez v0, :cond_6

    instance-of v0, p0, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :cond_6
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 650
    :cond_7
    :goto_1
    const-string v0, "null"

    return-object v0
.end method

.method public static valueToString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "indentFactor"    # I
    .param p2, "indent"    # I

    .line 691
    if-eqz p0, :cond_7

    invoke-static {p0}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    instance-of v0, p0, Lnet/sf/json/JSONFunction;

    if-eqz v0, :cond_1

    .line 695
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONFunction;

    invoke-virtual {v0}, Lnet/sf/json/JSONFunction;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 697
    :cond_1
    instance-of v0, p0, Lnet/sf/json/JSONString;

    if-eqz v0, :cond_2

    .line 698
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONString;

    invoke-interface {v0}, Lnet/sf/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 700
    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 701
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 703
    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 704
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 706
    :cond_4
    instance-of v0, p0, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_5

    .line 707
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lnet/sf/json/JSONObject;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 709
    :cond_5
    instance-of v0, p0, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_6

    .line 710
    move-object v0, p0

    check-cast v0, Lnet/sf/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lnet/sf/json/JSONArray;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 712
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 692
    :cond_7
    :goto_0
    const-string v0, "null"

    return-object v0
.end method
