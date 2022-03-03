.class Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;
.super Lgroovy/lang/Closure;
.source "GJson.groovy"

# interfaces
.implements Lorg/codehaus/groovy/runtime/GeneratedClosure;


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static synthetic $class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure12:Ljava/lang/Class;

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$get$$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure12()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "opt"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "delegate"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v2, "element"

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v2, "get"

    aput-object v2, p0, v0

    const/4 v0, 0x5

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v1, "doCall"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $get$$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure12()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure12:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.groovy.GJson$_enhanceJSONObject_closure12"

    invoke-static {v0}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure12:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

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

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$get$$class$net$sf$json$groovy$GJson$_enhanceJSONObject_closure12()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lgroovy/lang/Reference;

    invoke-direct {v2, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v2

    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p2}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p2, v1

    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public doCall(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    .local v0, "defaultValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "key":Ljava/lang/String;
    new-instance v2, Lgroovy/lang/Reference;

    invoke-direct {v2, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p1, v2

    .end local v1    # "key":Ljava/lang/String;
    .local p1, "key":Ljava/lang/String;
    new-instance v1, Lgroovy/lang/Reference;

    invoke-direct {v1, p2}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object p2, v1

    .end local v0    # "defaultValue":Ljava/lang/Object;
    .local p2, "defaultValue":Ljava/lang/Object;
    invoke-static {}, Lnet/sf/json/groovy/GJson$_enhanceJSONObject_closure12;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lgroovy/lang/Reference;

    invoke-direct {v3, v1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    .line 116
    .local v1, "previousValue":Ljava/lang/Object;
    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-interface {v3, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGroovyObjectGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgroovy/lang/Reference;->set(Ljava/lang/Object;)V

    .line 120
    :cond_0
    invoke-virtual {v1}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
