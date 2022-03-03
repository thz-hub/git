.class public Lnet/sf/json/groovy/GJson;
.super Ljava/lang/Object;
.source "GJson.groovy"

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $class$groovy$lang$ExpandoMetaClass:Ljava/lang/Class;

.field private static synthetic $class$groovy$lang$MetaClass:Ljava/lang/Class;

.field private static synthetic $class$java$lang$Boolean:Ljava/lang/Class;

.field private static synthetic $class$java$lang$String:Ljava/lang/Class;

.field private static synthetic $class$java$util$ArrayList:Ljava/lang/Class;

.field private static synthetic $class$java$util$Collection:Ljava/lang/Class;

.field private static synthetic $class$java$util$HashSet:Ljava/lang/Class;

.field private static synthetic $class$java$util$Map:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$JSONObject:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$groovy$GJson:Ljava/lang/Class;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static synthetic __timeStamp:Ljava/lang/Long;

.field public static synthetic __timeStamp__239_neverHappen1292322693142:Ljava/lang/Long;


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "enhanceString"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "enhanceCollection"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "enhanceMap"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "enhanceJSONObject"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "enableGlobally"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v1, "find"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v2, "methods"

    aput-object v2, p0, v0

    const/4 v0, 0x7

    const-string v3, "metaClass"

    aput-object v3, p0, v0

    const/16 v0, 0x8

    aput-object v3, p0, v0

    const/16 v0, 0x9

    aput-object v3, p0, v0

    const/16 v0, 0xa

    aput-object v3, p0, v0

    const/16 v0, 0xb

    aput-object v1, p0, v0

    const/16 v0, 0xc

    aput-object v2, p0, v0

    const/16 v0, 0xd

    aput-object v3, p0, v0

    const/16 v0, 0xe

    aput-object v3, p0, v0

    const/16 v0, 0xf

    aput-object v3, p0, v0

    const/16 v0, 0x10

    aput-object v3, p0, v0

    const/16 v0, 0x11

    aput-object v3, p0, v0

    const/16 v0, 0x12

    aput-object v1, p0, v0

    const/16 v0, 0x13

    aput-object v2, p0, v0

    const/16 v0, 0x14

    aput-object v3, p0, v0

    const/16 v0, 0x15

    aput-object v3, p0, v0

    const/16 v0, 0x16

    aput-object v3, p0, v0

    const/16 v0, 0x17

    aput-object v3, p0, v0

    const/16 v0, 0x18

    aput-object v1, p0, v0

    const/16 v0, 0x19

    aput-object v2, p0, v0

    const/16 v0, 0x1a

    aput-object v3, p0, v0

    const/16 v0, 0x1b

    aput-object v3, p0, v0

    const/16 v0, 0x1c

    aput-object v3, p0, v0

    const/16 v0, 0x1d

    aput-object v3, p0, v0

    return-void
.end method

.method private static synthetic $get$$class$groovy$lang$ExpandoMetaClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$groovy$lang$ExpandoMetaClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "groovy.lang.ExpandoMetaClass"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$groovy$lang$ExpandoMetaClass:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$groovy$lang$MetaClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$groovy$lang$MetaClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "groovy.lang.MetaClass"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$groovy$lang$MetaClass:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$java$lang$Boolean()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$java$lang$Boolean:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$java$lang$String()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$java$lang$String:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$java$util$ArrayList()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.ArrayList"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$ArrayList:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$java$util$Collection()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$Collection:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$java$util$HashSet()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$HashSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.HashSet"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$HashSet:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$java$util$Map()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$java$util$Map:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$JSONObject()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$net$sf$json$JSONObject:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.JSONObject"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$net$sf$json$JSONObject:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson;->$class$net$sf$json$groovy$GJson:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.groovy.GJson"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$class$net$sf$json$groovy$GJson:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/sf/json/groovy/GJson;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/sf/json/groovy/GJson;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/sf/json/groovy/GJson;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lnet/sf/json/groovy/GJson;->__timeStamp__239_neverHappen1292322693142:Ljava/lang/Long;

    const-wide v0, 0x12ce46f6016L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lnet/sf/json/groovy/GJson;->__timeStamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    .local v0, "this":Lnet/sf/json/groovy/GJson;
    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .line 28
    invoke-virtual {v0}, Lnet/sf/json/groovy/GJson;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v1

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$groovy$lang$MetaClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgroovy/lang/MetaClass;

    iput-object v1, v0, Lnet/sf/json/groovy/GJson;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enhanceClasses()V
    .locals 6

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 30
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "s":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    .local v2, "l":Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    .local v3, "m":Ljava/lang/Object;
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callStatic(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    .local v4, "j":Ljava/lang/Object;
    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-static {v5}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :goto_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-static {v5}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    invoke-static {v4}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :goto_4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    invoke-static {v5}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 35
    const/4 v5, 0x4

    aget-object v0, v0, v5

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$groovy$lang$ExpandoMetaClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private static enhanceCollection()Z
    .locals 7

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 63
    const/16 v1, 0xb

    aget-object v1, v0, v1

    const/16 v2, 0xc

    aget-object v2, v0, v2

    const/16 v3, 0xd

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Collection()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceCollection_closure4;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sf/json/groovy/GJson$_enhanceCollection_closure4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 64
    const/16 v1, 0xe

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Collection()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "asType"

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getMethodPointer(Ljava/lang/Object;Ljava/lang/String;)Lgroovy/lang/Closure;

    move-result-object v1

    new-instance v3, Lgroovy/lang/Reference;

    invoke-direct {v3, v1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    .line 65
    .local v1, "asType":Ljava/lang/Object;
    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceCollection_closure5;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lnet/sf/json/groovy/GJson$_enhanceCollection_closure5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    .line 74
    .local v3, "typeConverter":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xf

    aget-object v5, v0, v5

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$ArrayList()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x10

    aget-object v5, v0, v5

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$HashSet()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v2, Lnet/sf/json/groovy/GJson$_enhanceCollection_closure6;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lnet/sf/json/groovy/GJson$_enhanceCollection_closure6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x11

    aget-object v0, v0, v5

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Collection()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "isJsonEnhanced"

    invoke-static {v2, v4, v0, v5}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 79
    .end local v1    # "asType":Ljava/lang/Object;
    .end local v3    # "typeConverter":Ljava/lang/Object;
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static enhanceJSONObject()Z
    .locals 6

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 100
    const/16 v1, 0x18

    aget-object v1, v0, v1

    const/16 v2, 0x19

    aget-object v2, v0, v2

    const/16 v3, 0x1a

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$JSONObject()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure11;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure11;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x1b

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$JSONObject()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "leftShift"

    invoke-static {v1, v2, v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v1, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x1c

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$JSONObject()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get"

    invoke-static {v1, v2, v3, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure13;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure13;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x1d

    aget-object v0, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$JSONObject()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "isJsonEnhanced"

    invoke-static {v1, v2, v0, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 125
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static enhanceMap()Z
    .locals 7

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 83
    const/16 v1, 0x12

    aget-object v1, v0, v1

    const/16 v2, 0x13

    aget-object v2, v0, v2

    const/16 v3, 0x14

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Map()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceMap_closure7;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sf/json/groovy/GJson$_enhanceMap_closure7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 84
    const/16 v1, 0x15

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Map()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "asType"

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getMethodPointer(Ljava/lang/Object;Ljava/lang/String;)Lgroovy/lang/Closure;

    move-result-object v1

    new-instance v3, Lgroovy/lang/Reference;

    invoke-direct {v3, v1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    .line 85
    .local v1, "asType":Ljava/lang/Object;
    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceMap_closure8;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lnet/sf/json/groovy/GJson$_enhanceMap_closure8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x16

    aget-object v5, v0, v5

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Map()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lnet/sf/json/groovy/GJson$_enhanceMap_closure9;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/sf/json/groovy/GJson$_enhanceMap_closure9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x17

    aget-object v0, v0, v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$util$Map()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "isJsonEnhanced"

    invoke-static {v2, v3, v0, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 96
    .end local v1    # "asType":Ljava/lang/Object;
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static enhanceString()Z
    .locals 7

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 40
    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v3, 0x7

    aget-object v3, v0, v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceString_closure1;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/sf/json/groovy/GJson$_enhanceString_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 41
    const/16 v1, 0x8

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "asType"

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getMethodPointer(Ljava/lang/Object;Ljava/lang/String;)Lgroovy/lang/Closure;

    move-result-object v1

    new-instance v3, Lgroovy/lang/Reference;

    invoke-direct {v3, v1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    .line 42
    .local v1, "asType":Ljava/lang/Object;
    new-instance v3, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v2, Lnet/sf/json/groovy/GJson$_enhanceString_closure3;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/sf/json/groovy/GJson$_enhanceString_closure3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v0, v0, v4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "isJsonEnhanced"

    invoke-static {v2, v3, v0, v4}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 59
    .end local v1    # "asType":Ljava/lang/Object;
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$Boolean()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/json/groovy/GJson;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lnet/sf/json/groovy/GJson;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/groovy/GJson;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/json/groovy/GJson;->metaClass:Lgroovy/lang/MetaClass;

    return-object v0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/json/groovy/GJson;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/json/groovy/GJson;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/json/groovy/GJson;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/json/groovy/GJson;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic super$1$clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$1$equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic super$1$finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public synthetic super$1$getClass()Ljava/lang/Class;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$1$hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic super$1$notify()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method public synthetic super$1$notifyAll()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public synthetic super$1$toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic super$1$wait()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->wait()V

    return-void
.end method

.method public synthetic super$1$wait(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    return-void
.end method

.method public synthetic super$1$wait(JI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljava/lang/Object;->wait(JI)V

    return-void
.end method

.method public synthetic this$dist$get$2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, ""

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->getGroovyObjectField(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic this$dist$invoke$2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, ""

    filled-new-array {v5, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v4

    new-array v2, v2, [I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->intUnbox(Ljava/lang/Object;)I

    move-result v6

    aput v6, v2, v4

    invoke-static {v3, v5, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->despreadList([Ljava/lang/Object;[Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->invokeMethodOnCurrentN(Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic this$dist$set$2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$net$sf$json$groovy$GJson()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, ""

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {}, Lnet/sf/json/groovy/GJson;->$get$$class$java$lang$String()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v0, p0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setGroovyObjectField(Ljava/lang/Object;Ljava/lang/Class;Lgroovy/lang/GroovyObject;Ljava/lang/String;)V

    return-void
.end method
