.class Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;
.super Lgroovy/lang/Closure;
.source "GJson.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $class$java$lang$Object:Ljava/lang/Class;

.field private static synthetic $class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure10:Ljava/lang/Class;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$get$$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure10()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "doCall"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $get$$class$java$lang$Object()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $get$$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure10()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure10:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.groovy.GJson$_enhanceJSONObject_closure10"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure10:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-direct {p0, p1, p2}, Lgroovy/lang/Closure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$get$$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure10()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public doCall()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$get$$class$java$lang$Object()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->createPojoWrapper(Ljava/lang/Object;Ljava/lang/Class;)Lorg/codehaus/groovy/runtime/wrappers/Wrapper;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .local v0, "it":Ljava/lang/Object;
    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    .end local v0    # "it":Ljava/lang/Object;
    .local p1, "it":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure10;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "isJsonEnhanced"

    invoke-static {v0, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method
