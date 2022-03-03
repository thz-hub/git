.class Lnet/sf/json/groovy/GJson$_enhanceString_closure2;
.super Lgroovy/lang/Closure;
.source "GJson.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $class$net$sf$json$JSON:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$JSONArray:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$JSONFunction:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$JSONObject:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$JSONSerializer:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$groovy$GJson$_enhanceString_closure2:Ljava/lang/Class;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;


# instance fields
.field private asType:Lgroovy/lang/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgroovy/lang/Reference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$groovy$GJson$_enhanceString_closure2()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "toJSON"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "delegate"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v2, "fromObject"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    aput-object v2, p0, v0

    const/4 v0, 0x5

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v2, "parse"

    aput-object v2, p0, v0

    const/4 v0, 0x7

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v1, "call"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    const-string v1, "doCall"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $get$$class$net$sf$json$JSON()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSON:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.JSON"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSON:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$JSONArray()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONArray:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.JSONArray"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONArray:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$JSONFunction()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONFunction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.JSONFunction"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONFunction:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$JSONObject()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONObject:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.JSONObject"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONObject:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$JSONSerializer()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONSerializer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.JSONSerializer"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$JSONSerializer:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$groovy$GJson$_enhanceString_closure2()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$groovy$GJson$_enhanceString_closure2:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.groovy.GJson$_enhanceString_closure2"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$class$net$sf$json$groovy$GJson$_enhanceString_closure2:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lgroovy/lang/Reference<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p3

    check-cast v0, Lgroovy/lang/Reference;

    iput-object v0, p0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->asType:Lgroovy/lang/Reference;

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


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$groovy$GJson$_enhanceString_closure2()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .local v0, "clazz":Ljava/lang/Class;
    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    .end local v0    # "clazz":Ljava/lang/Class;
    .local p1, "clazz":Ljava/lang/Class;
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 44
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSON()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONSerializer()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONArray()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONArray()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONObject()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONObject()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 50
    :cond_2
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONFunction()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->isCase(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$get$$class$net$sf$json$JSONFunction()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 53
    :cond_3
    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->asType:Lgroovy/lang/Reference;

    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAsType()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    iget-object v0, p0, Lnet/sf/json/groovy/GJson$_enhanceString_closure2;->asType:Lgroovy/lang/Reference;

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
