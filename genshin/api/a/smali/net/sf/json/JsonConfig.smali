.class public Lnet/sf/json/JsonConfig;
.super Ljava/lang/Object;
.source "JsonConfig.java"


# static fields
.field private static final DEFAULT_COLLECTION_TYPE:Ljava/lang/Class;

.field private static final DEFAULT_CYCLE_DETECTION_STRATEGY:Lnet/sf/json/util/CycleDetectionStrategy;

.field public static final DEFAULT_DEFAULT_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

.field private static final DEFAULT_EXCLUDES:[Ljava/lang/String;

.field private static final DEFAULT_JAVA_IDENTIFIER_TRANSFORMER:Lnet/sf/json/util/JavaIdentifierTransformer;

.field public static final DEFAULT_JSON_BEAN_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

.field public static final DEFAULT_JSON_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonValueProcessorMatcher;

.field public static final DEFAULT_NEW_BEAN_INSTANCE_STRATEGY:Lnet/sf/json/util/NewBeanInstanceStrategy;

.field public static final DEFAULT_PROPERTY_EXCLUSION_CLASS_MATCHER:Lnet/sf/json/util/PropertyExclusionClassMatcher;

.field public static final DEFAULT_PROPERTY_NAME_PROCESSOR_MATCHER:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

.field private static final DEFAULT_VALUE_PROCESSOR:Lnet/sf/json/processors/DefaultValueProcessor;

.field private static final EMPTY_EXCLUDES:[Ljava/lang/String;

.field public static final MODE_LIST:I = 0x1

.field public static final MODE_OBJECT_ARRAY:I = 0x2

.field public static final MODE_SET:I = 0x2

.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$List:Ljava/lang/Class;

.field static synthetic class$java$util$Set:Ljava/lang/Class;


# instance fields
.field private allowNonStringKeys:Z

.field private arrayMode:I

.field private beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

.field private beanProcessorMap:Ljava/util/Map;

.field private beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

.field private classMap:Ljava/util/Map;

.field private collectionType:Ljava/lang/Class;

.field private cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

.field private defaultValueMap:Ljava/util/Map;

.field private defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

.field private enclosedType:Ljava/lang/Class;

.field private eventListeners:Ljava/util/List;

.field private excludes:[Ljava/lang/String;

.field private exclusionMap:Ljava/util/Map;

.field private handleJettisonEmptyElement:Z

.field private handleJettisonSingleElementArray:Z

.field private ignoreDefaultExcludes:Z

.field private ignoreFieldAnnotations:Ljava/util/List;

.field private ignorePublicFields:Z

.field private ignoreTransientFields:Z

.field private javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

.field private javaPropertyFilter:Lnet/sf/json/util/PropertyFilter;

.field private javaPropertyNameProcessorMap:Ljava/util/Map;

.field private javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

.field private javascriptCompliant:Z

.field private jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

.field private jsonPropertyFilter:Lnet/sf/json/util/PropertyFilter;

.field private jsonPropertyNameProcessorMap:Ljava/util/Map;

.field private jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

.field private jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

.field private keyMap:Ljava/util/Map;

.field private newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

.field private propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

.field private propertySetStrategy:Lnet/sf/json/util/PropertySetStrategy;

.field private rootClass:Ljava/lang/Class;

.field private skipJavaIdentifierTransformationInMapKeys:Z

.field private triggerEvents:Z

.field private typeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    sget-object v0, Lnet/sf/json/processors/DefaultValueProcessorMatcher;->DEFAULT:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_DEFAULT_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    .line 56
    sget-object v0, Lnet/sf/json/processors/JsonBeanProcessorMatcher;->DEFAULT:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_BEAN_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    .line 57
    sget-object v0, Lnet/sf/json/processors/JsonValueProcessorMatcher;->DEFAULT:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    .line 58
    sget-object v0, Lnet/sf/json/util/NewBeanInstanceStrategy;->DEFAULT:Lnet/sf/json/util/NewBeanInstanceStrategy;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_NEW_BEAN_INSTANCE_STRATEGY:Lnet/sf/json/util/NewBeanInstanceStrategy;

    .line 59
    sget-object v0, Lnet/sf/json/util/PropertyExclusionClassMatcher;->DEFAULT:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_EXCLUSION_CLASS_MATCHER:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    .line 60
    sget-object v0, Lnet/sf/json/processors/PropertyNameProcessorMatcher;->DEFAULT:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_NAME_PROCESSOR_MATCHER:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 64
    sget-object v0, Lnet/sf/json/JsonConfig;->class$java$util$List:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.List"

    invoke-static {v0}, Lnet/sf/json/JsonConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/JsonConfig;->class$java$util$List:Ljava/lang/Class;

    :cond_0
    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_COLLECTION_TYPE:Ljava/lang/Class;

    .line 65
    sget-object v0, Lnet/sf/json/util/CycleDetectionStrategy;->STRICT:Lnet/sf/json/util/CycleDetectionStrategy;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_CYCLE_DETECTION_STRATEGY:Lnet/sf/json/util/CycleDetectionStrategy;

    .line 66
    const-string v0, "class"

    const-string v1, "declaringClass"

    const-string v2, "metaClass"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_EXCLUDES:[Ljava/lang/String;

    .line 67
    sget-object v0, Lnet/sf/json/util/JavaIdentifierTransformer;->NOOP:Lnet/sf/json/util/JavaIdentifierTransformer;

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JAVA_IDENTIFIER_TRANSFORMER:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 68
    new-instance v0, Lnet/sf/json/processors/DefaultDefaultValueProcessor;

    invoke-direct {v0}, Lnet/sf/json/processors/DefaultDefaultValueProcessor;-><init>()V

    sput-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_VALUE_PROCESSOR:Lnet/sf/json/processors/DefaultValueProcessor;

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/sf/json/JsonConfig;->EMPTY_EXCLUDES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/json/JsonConfig;->arrayMode:I

    .line 73
    new-instance v1, Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-direct {v1}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    .line 75
    new-instance v1, Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-direct {v1}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    .line 78
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_COLLECTION_TYPE:Ljava/lang/Class;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    .line 79
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_CYCLE_DETECTION_STRATEGY:Lnet/sf/json/util/CycleDetectionStrategy;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    .line 81
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_DEFAULT_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    .line 84
    sget-object v1, Lnet/sf/json/JsonConfig;->EMPTY_EXCLUDES:[Ljava/lang/String;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    .line 91
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->ignorePublicFields:Z

    .line 93
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JAVA_IDENTIFIER_TRANSFORMER:Lnet/sf/json/util/JavaIdentifierTransformer;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    .line 96
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_NAME_PROCESSOR_MATCHER:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 97
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_BEAN_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    .line 100
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 101
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    .line 103
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_NEW_BEAN_INSTANCE_STRATEGY:Lnet/sf/json/util/NewBeanInstanceStrategy;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

    .line 104
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_EXCLUSION_CLASS_MATCHER:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->allowNonStringKeys:Z

    .line 115
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 64
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


# virtual methods
.method public addIgnoreFieldAnnotation(Ljava/lang/Class;)V
    .locals 2
    .param p1, "annotationClass"    # Ljava/lang/Class;

    .line 1125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_0
    return-void
.end method

.method public addIgnoreFieldAnnotation(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationClassName"    # Ljava/lang/String;

    .line 1107
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    :cond_0
    return-void
.end method

.method public declared-synchronized addJsonEventListener(Lnet/sf/json/util/JsonEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/sf/json/util/JsonEventListener;

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local p0    # "this":Lnet/sf/json/JsonConfig;
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    .end local p1    # "listener":Lnet/sf/json/util/JsonEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearJavaPropertyNameProcessors()V
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    return-void
.end method

.method public clearJsonBeanProcessors()V
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    return-void
.end method

.method public declared-synchronized clearJsonEventListeners()V
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Lnet/sf/json/JsonConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearJsonPropertyNameProcessors()V
    .locals 1

    .line 163
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    return-void
.end method

.method public clearJsonValueProcessors()V
    .locals 1

    .line 171
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/MultiKeyMap;->clear()V

    .line 172
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/MultiKeyMap;->clear()V

    .line 173
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    return-void
.end method

.method public clearPropertyExclusions()V
    .locals 1

    .line 182
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    return-void
.end method

.method public clearPropertyNameProcessors()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->clearJavaPropertyNameProcessors()V

    .line 193
    return-void
.end method

.method public copy()Lnet/sf/json/JsonConfig;
    .locals 5

    .line 196
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    .line 197
    .local v0, "jsc":Lnet/sf/json/JsonConfig;
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/map/MultiKeyMap;->putAll(Ljava/util/Map;)V

    .line 198
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/map/MultiKeyMap;->putAll(Ljava/util/Map;)V

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->classMap:Ljava/util/Map;

    .line 200
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->classMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

    .line 204
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 205
    iget-object v2, v0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_1
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 208
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_2
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->handleJettisonEmptyElement:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->handleJettisonEmptyElement:Z

    .line 212
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->handleJettisonSingleElementArray:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->handleJettisonSingleElementArray:Z

    .line 213
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->ignoreDefaultExcludes:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->ignoreDefaultExcludes:Z

    .line 214
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->ignoreTransientFields:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->ignoreTransientFields:Z

    .line 215
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->ignorePublicFields:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->ignorePublicFields:Z

    .line 216
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 217
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->javascriptCompliant:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->javascriptCompliant:Z

    .line 218
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 219
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 220
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->rootClass:Ljava/lang/Class;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->rootClass:Ljava/lang/Class;

    .line 221
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->skipJavaIdentifierTransformationInMapKeys:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->skipJavaIdentifierTransformationInMapKeys:Z

    .line 222
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->triggerEvents:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->triggerEvents:Z

    .line 223
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->jsonPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    .line 225
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->javaPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    .line 226
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    .line 227
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

    .line 228
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    .line 229
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 230
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->propertySetStrategy:Lnet/sf/json/util/PropertySetStrategy;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->propertySetStrategy:Lnet/sf/json/util/PropertySetStrategy;

    .line 232
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    .line 233
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->enclosedType:Ljava/lang/Class;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->enclosedType:Ljava/lang/Class;

    .line 234
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    .line 235
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 236
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 237
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 238
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 239
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    iput-object v1, v0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    .line 240
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 241
    iget-object v1, v0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->allowNonStringKeys:Z

    iput-boolean v1, v0, Lnet/sf/json/JsonConfig;->allowNonStringKeys:Z

    .line 243
    return-object v0
.end method

.method public disableEventTriggering()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->triggerEvents:Z

    .line 252
    return-void
.end method

.method public enableEventTriggering()V
    .locals 1

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->triggerEvents:Z

    .line 260
    return-void
.end method

.method public findDefaultValueProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/DefaultValueProcessor;
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;

    .line 270
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    iget-object v1, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/json/processors/DefaultValueProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/processors/DefaultValueProcessor;

    .line 273
    .local v1, "processor":Lnet/sf/json/processors/DefaultValueProcessor;
    if-eqz v1, :cond_0

    .line 274
    return-object v1

    .line 277
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "processor":Lnet/sf/json/processors/DefaultValueProcessor;
    :cond_0
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_VALUE_PROCESSOR:Lnet/sf/json/processors/DefaultValueProcessor;

    return-object v0
.end method

.method public findJavaPropertyNameProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/PropertyNameProcessor;
    .locals 2
    .param p1, "beanClass"    # Ljava/lang/Class;

    .line 288
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    iget-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/json/processors/PropertyNameProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/processors/PropertyNameProcessor;

    return-object v1

    .line 293
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findJsonBeanProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/JsonBeanProcessor;
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;

    .line 304
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    iget-object v1, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/json/processors/JsonBeanProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/processors/JsonBeanProcessor;

    return-object v1

    .line 308
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findJsonPropertyNameProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/PropertyNameProcessor;
    .locals 2
    .param p1, "beanClass"    # Ljava/lang/Class;

    .line 319
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/json/processors/PropertyNameProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/processors/PropertyNameProcessor;

    return-object v1

    .line 324
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findJsonValueProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/JsonValueProcessor;
    .locals 2
    .param p1, "propertyType"    # Ljava/lang/Class;

    .line 335
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    iget-object v1, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/json/processors/JsonValueProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/json/processors/JsonValueProcessor;

    return-object v1

    .line 340
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;
    .locals 3
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "propertyType"    # Ljava/lang/Class;
    .param p3, "key"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v1, p1, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnet/sf/json/processors/JsonValueProcessor;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    return-object v0

    .line 366
    :cond_0
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnet/sf/json/processors/JsonValueProcessor;

    .line 367
    if-eqz v0, :cond_1

    .line 368
    return-object v0

    .line 371
    :cond_1
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnet/sf/json/processors/JsonValueProcessor;

    .line 372
    if-eqz v0, :cond_2

    .line 373
    return-object v0

    .line 376
    :cond_2
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lnet/sf/json/processors/JsonValueProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    .line 377
    .local v1, "tkey":Ljava/lang/Object;
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sf/json/processors/JsonValueProcessor;

    .line 378
    if-eqz v0, :cond_3

    .line 379
    return-object v0

    .line 382
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public findJsonValueProcessor(Ljava/lang/Class;Ljava/lang/String;)Lnet/sf/json/processors/JsonValueProcessor;
    .locals 3
    .param p1, "propertyType"    # Ljava/lang/Class;
    .param p2, "key"    # Ljava/lang/String;

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "jsonValueProcessor":Lnet/sf/json/processors/JsonValueProcessor;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lnet/sf/json/processors/JsonValueProcessor;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    return-object v0

    .line 405
    :cond_0
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lnet/sf/json/processors/JsonValueProcessorMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    .line 406
    .local v1, "tkey":Ljava/lang/Object;
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sf/json/processors/JsonValueProcessor;

    .line 407
    if-eqz v0, :cond_1

    .line 408
    return-object v0

    .line 411
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findPropertyNameProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/PropertyNameProcessor;
    .locals 1
    .param p1, "beanClass"    # Ljava/lang/Class;

    .line 424
    invoke-virtual {p0, p1}, Lnet/sf/json/JsonConfig;->findJavaPropertyNameProcessor(Ljava/lang/Class;)Lnet/sf/json/processors/PropertyNameProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getArrayMode()I
    .locals 1

    .line 434
    iget v0, p0, Lnet/sf/json/JsonConfig;->arrayMode:I

    return v0
.end method

.method public getClassMap()Ljava/util/Map;
    .locals 1

    .line 444
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->classMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCollectionType()Ljava/lang/Class;
    .locals 1

    .line 454
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    return-object v0
.end method

.method public getCycleDetectionStrategy()Lnet/sf/json/util/CycleDetectionStrategy;
    .locals 1

    .line 463
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

    return-object v0
.end method

.method public getDefaultValueProcessorMatcher()Lnet/sf/json/processors/DefaultValueProcessorMatcher;
    .locals 1

    .line 472
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    return-object v0
.end method

.method public getEnclosedType()Ljava/lang/Class;
    .locals 1

    .line 482
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->enclosedType:Ljava/lang/Class;

    return-object v0
.end method

.method public getExcludes()[Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreFieldAnnotations()Ljava/util/List;
    .locals 1

    .line 1143
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJavaIdentifierTransformer()Lnet/sf/json/util/JavaIdentifierTransformer;
    .locals 1

    .line 499
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

    return-object v0
.end method

.method public getJavaPropertyFilter()Lnet/sf/json/util/PropertyFilter;
    .locals 1

    .line 507
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    return-object v0
.end method

.method public getJavaPropertyNameProcessorMatcher()Lnet/sf/json/processors/PropertyNameProcessorMatcher;
    .locals 1

    .line 516
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    return-object v0
.end method

.method public getJsonBeanProcessorMatcher()Lnet/sf/json/processors/JsonBeanProcessorMatcher;
    .locals 1

    .line 525
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    return-object v0
.end method

.method public declared-synchronized getJsonEventListeners()Ljava/util/List;
    .locals 1

    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 533
    .end local p0    # "this":Lnet/sf/json/JsonConfig;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJsonPropertyFilter()Lnet/sf/json/util/PropertyFilter;
    .locals 1

    .line 541
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    return-object v0
.end method

.method public getJsonPropertyNameProcessorMatcher()Lnet/sf/json/processors/PropertyNameProcessorMatcher;
    .locals 1

    .line 550
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    return-object v0
.end method

.method public getJsonValueProcessorMatcher()Lnet/sf/json/processors/JsonValueProcessorMatcher;
    .locals 1

    .line 559
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    return-object v0
.end method

.method public getMergedExcludes()Ljava/util/Collection;
    .locals 4

    .line 567
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 568
    .local v0, "exclusions":Ljava/util/Collection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 569
    aget-object v3, v2, v1

    .line 570
    .local v3, "exclusion":Ljava/lang/String;
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 568
    .end local v3    # "exclusion":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "i":I
    :cond_1
    iget-boolean v1, p0, Lnet/sf/json/JsonConfig;->ignoreDefaultExcludes:Z

    if-nez v1, :cond_3

    .line 576
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_EXCLUDES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 577
    aget-object v3, v2, v1

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 578
    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public getMergedExcludes(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 6
    .param p1, "target"    # Ljava/lang/Class;

    .line 592
    if-nez p1, :cond_0

    .line 593
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getMergedExcludes()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getMergedExcludes()Ljava/util/Collection;

    move-result-object v0

    .line 597
    .local v0, "exclusionSet":Ljava/util/Collection;
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 598
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    iget-object v2, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lnet/sf/json/util/PropertyExclusionClassMatcher;->getMatch(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    .line 599
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 600
    .local v2, "set":Ljava/util/Set;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 603
    .local v4, "e":Ljava/lang/Object;
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 604
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v4    # "e":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 610
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "set":Ljava/util/Set;
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public getNewBeanInstanceStrategy()Lnet/sf/json/util/NewBeanInstanceStrategy;
    .locals 1

    .line 619
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

    return-object v0
.end method

.method public getPropertyExclusionClassMatcher()Lnet/sf/json/util/PropertyExclusionClassMatcher;
    .locals 1

    .line 628
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    return-object v0
.end method

.method public getPropertyNameProcessorMatcher()Lnet/sf/json/processors/PropertyNameProcessorMatcher;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lnet/sf/json/JsonConfig;->getJavaPropertyNameProcessorMatcher()Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getPropertySetStrategy()Lnet/sf/json/util/PropertySetStrategy;
    .locals 1

    .line 648
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->propertySetStrategy:Lnet/sf/json/util/PropertySetStrategy;

    return-object v0
.end method

.method public getRootClass()Ljava/lang/Class;
    .locals 1

    .line 658
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->rootClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isAllowNonStringKeys()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->allowNonStringKeys:Z

    return v0
.end method

.method public isEventTriggeringEnabled()Z
    .locals 1

    .line 676
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->triggerEvents:Z

    return v0
.end method

.method public isHandleJettisonEmptyElement()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->handleJettisonEmptyElement:Z

    return v0
.end method

.method public isHandleJettisonSingleElementArray()Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->handleJettisonSingleElementArray:Z

    return v0
.end method

.method public isIgnoreDefaultExcludes()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->ignoreDefaultExcludes:Z

    return v0
.end method

.method public isIgnoreJPATransient()Z
    .locals 2

    .line 714
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    const-string v1, "javax.persistence.Transient"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIgnorePublicFields()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->ignorePublicFields:Z

    return v0
.end method

.method public isIgnoreTransientFields()Z
    .locals 1

    .line 723
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->ignoreTransientFields:Z

    return v0
.end method

.method public isJavascriptCompliant()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->javascriptCompliant:Z

    return v0
.end method

.method public isSkipJavaIdentifierTransformationInMapKeys()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lnet/sf/json/JsonConfig;->skipJavaIdentifierTransformationInMapKeys:Z

    return v0
.end method

.method public registerDefaultValueProcessor(Ljava/lang/Class;Lnet/sf/json/processors/DefaultValueProcessor;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "defaultValueProcessor"    # Lnet/sf/json/processors/DefaultValueProcessor;

    .line 761
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 762
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_0
    return-void
.end method

.method public registerJavaPropertyNameProcessor(Ljava/lang/Class;Lnet/sf/json/processors/PropertyNameProcessor;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "propertyNameProcessor"    # Lnet/sf/json/processors/PropertyNameProcessor;

    .line 774
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 775
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_0
    return-void
.end method

.method public registerJsonBeanProcessor(Ljava/lang/Class;Lnet/sf/json/processors/JsonBeanProcessor;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "jsonBeanProcessor"    # Lnet/sf/json/processors/JsonBeanProcessor;

    .line 787
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 788
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_0
    return-void
.end method

.method public registerJsonPropertyNameProcessor(Ljava/lang/Class;Lnet/sf/json/processors/PropertyNameProcessor;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "propertyNameProcessor"    # Lnet/sf/json/processors/PropertyNameProcessor;

    .line 800
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 801
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_0
    return-void
.end method

.method public registerJsonValueProcessor(Ljava/lang/Class;Ljava/lang/Class;Lnet/sf/json/processors/JsonValueProcessor;)V
    .locals 1
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "propertyType"    # Ljava/lang/Class;
    .param p3, "jsonValueProcessor"    # Lnet/sf/json/processors/JsonValueProcessor;

    .line 814
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 815
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :cond_0
    return-void
.end method

.method public registerJsonValueProcessor(Ljava/lang/Class;Ljava/lang/String;Lnet/sf/json/processors/JsonValueProcessor;)V
    .locals 1
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "jsonValueProcessor"    # Lnet/sf/json/processors/JsonValueProcessor;

    .line 841
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 842
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_0
    return-void
.end method

.method public registerJsonValueProcessor(Ljava/lang/Class;Lnet/sf/json/processors/JsonValueProcessor;)V
    .locals 1
    .param p1, "propertyType"    # Ljava/lang/Class;
    .param p2, "jsonValueProcessor"    # Lnet/sf/json/processors/JsonValueProcessor;

    .line 827
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 828
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :cond_0
    return-void
.end method

.method public registerJsonValueProcessor(Ljava/lang/String;Lnet/sf/json/processors/JsonValueProcessor;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "jsonValueProcessor"    # Lnet/sf/json/processors/JsonValueProcessor;

    .line 854
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 855
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_0
    return-void
.end method

.method public registerPropertyExclusion(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 867
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 868
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 869
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 870
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 871
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 874
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 877
    .end local v0    # "set":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method public registerPropertyExclusions(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "properties"    # [Ljava/lang/String;

    .line 887
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 888
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 889
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 890
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 891
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 894
    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 895
    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public registerPropertyNameProcessor(Ljava/lang/Class;Lnet/sf/json/processors/PropertyNameProcessor;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "propertyNameProcessor"    # Lnet/sf/json/processors/PropertyNameProcessor;

    .line 911
    invoke-virtual {p0, p1, p2}, Lnet/sf/json/JsonConfig;->registerJavaPropertyNameProcessor(Ljava/lang/Class;Lnet/sf/json/processors/PropertyNameProcessor;)V

    .line 912
    return-void
.end method

.method public removeIgnoreFieldAnnotation(Ljava/lang/Class;)V
    .locals 2
    .param p1, "annotationClass"    # Ljava/lang/Class;

    .line 1135
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1136
    :cond_0
    return-void
.end method

.method public removeIgnoreFieldAnnotation(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationClassName"    # Ljava/lang/String;

    .line 1117
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1118
    :cond_0
    return-void
.end method

.method public declared-synchronized removeJsonEventListener(Lnet/sf/json/util/JsonEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/sf/json/util/JsonEventListener;

    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    monitor-exit p0

    return-void

    .line 921
    .end local p0    # "this":Lnet/sf/json/JsonConfig;
    .end local p1    # "listener":Lnet/sf/json/util/JsonEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .locals 3

    .line 929
    sget-object v0, Lnet/sf/json/JsonConfig;->EMPTY_EXCLUDES:[Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->ignoreDefaultExcludes:Z

    .line 931
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->ignoreTransientFields:Z

    .line 932
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/json/JsonConfig;->ignorePublicFields:Z

    .line 933
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->javascriptCompliant:Z

    .line 934
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_JAVA_IDENTIFIER_TRANSFORMER:Lnet/sf/json/util/JavaIdentifierTransformer;

    iput-object v2, p0, Lnet/sf/json/JsonConfig;->javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 935
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_CYCLE_DETECTION_STRATEGY:Lnet/sf/json/util/CycleDetectionStrategy;

    iput-object v2, p0, Lnet/sf/json/JsonConfig;->cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

    .line 936
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->skipJavaIdentifierTransformationInMapKeys:Z

    .line 937
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->triggerEvents:Z

    .line 938
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->handleJettisonEmptyElement:Z

    .line 939
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->handleJettisonSingleElementArray:Z

    .line 940
    iput v1, p0, Lnet/sf/json/JsonConfig;->arrayMode:I

    .line 941
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->rootClass:Ljava/lang/Class;

    .line 942
    iput-object v1, p0, Lnet/sf/json/JsonConfig;->classMap:Ljava/util/Map;

    .line 943
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 944
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 945
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/MultiKeyMap;->clear()V

    .line 946
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/MultiKeyMap;->clear()V

    .line 947
    iput-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    .line 948
    iput-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    .line 949
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_BEAN_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    iput-object v2, p0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    .line 950
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_NEW_BEAN_INSTANCE_STRATEGY:Lnet/sf/json/util/NewBeanInstanceStrategy;

    iput-object v2, p0, Lnet/sf/json/JsonConfig;->newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

    .line 951
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_DEFAULT_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    iput-object v2, p0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    .line 952
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 953
    iput-object v1, p0, Lnet/sf/json/JsonConfig;->propertySetStrategy:Lnet/sf/json/util/PropertySetStrategy;

    .line 955
    sget-object v2, Lnet/sf/json/JsonConfig;->DEFAULT_COLLECTION_TYPE:Ljava/lang/Class;

    iput-object v2, p0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    .line 956
    iput-object v1, p0, Lnet/sf/json/JsonConfig;->enclosedType:Ljava/lang/Class;

    .line 957
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    .line 958
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 959
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_NAME_PROCESSOR_MATCHER:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 960
    iget-object v2, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 961
    iput-object v1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 962
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 963
    sget-object v1, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_EXCLUSION_CLASS_MATCHER:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    iput-object v1, p0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    .line 964
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 965
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->ignoreFieldAnnotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 966
    iput-boolean v0, p0, Lnet/sf/json/JsonConfig;->allowNonStringKeys:Z

    .line 967
    return-void
.end method

.method public setAllowNonStringKeys(Z)V
    .locals 0
    .param p1, "allowNonStringKeys"    # Z

    .line 974
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->allowNonStringKeys:Z

    .line 975
    return-void
.end method

.method public setArrayMode(I)V
    .locals 1
    .param p1, "arrayMode"    # I

    .line 985
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 986
    iput p1, p0, Lnet/sf/json/JsonConfig;->arrayMode:I

    goto :goto_0

    .line 987
    :cond_0
    if-ne p1, v0, :cond_2

    .line 988
    iput p1, p0, Lnet/sf/json/JsonConfig;->arrayMode:I

    .line 989
    sget-object v0, Lnet/sf/json/JsonConfig;->class$java$util$Set:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.util.Set"

    invoke-static {v0}, Lnet/sf/json/JsonConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/JsonConfig;->class$java$util$Set:Ljava/lang/Class;

    :cond_1
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    goto :goto_0

    .line 991
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lnet/sf/json/JsonConfig;->arrayMode:I

    .line 992
    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_COLLECTION_TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lnet/sf/json/JsonConfig;->enclosedType:Ljava/lang/Class;

    .line 994
    :goto_0
    return-void
.end method

.method public setClassMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "classMap"    # Ljava/util/Map;

    .line 1003
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->classMap:Ljava/util/Map;

    .line 1004
    return-void
.end method

.method public setCollectionType(Ljava/lang/Class;)V
    .locals 3
    .param p1, "collectionType"    # Ljava/lang/Class;

    .line 1013
    if-eqz p1, :cond_2

    .line 1014
    sget-object v0, Lnet/sf/json/JsonConfig;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lnet/sf/json/JsonConfig;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/JsonConfig;->class$java$util$Collection:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->collectionType:Ljava/lang/Class;

    goto :goto_0

    .line 1015
    :cond_1
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The configured collectionType is not a Collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_2
    sget-object p1, Lnet/sf/json/JsonConfig;->DEFAULT_COLLECTION_TYPE:Ljava/lang/Class;

    .line 1021
    :goto_0
    return-void
.end method

.method public setCycleDetectionStrategy(Lnet/sf/json/util/CycleDetectionStrategy;)V
    .locals 1
    .param p1, "cycleDetectionStrategy"    # Lnet/sf/json/util/CycleDetectionStrategy;

    .line 1029
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_CYCLE_DETECTION_STRATEGY:Lnet/sf/json/util/CycleDetectionStrategy;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->cycleDetectionStrategy:Lnet/sf/json/util/CycleDetectionStrategy;

    .line 1031
    return-void
.end method

.method public setDefaultValueProcessorMatcher(Lnet/sf/json/processors/DefaultValueProcessorMatcher;)V
    .locals 1
    .param p1, "defaultValueProcessorMatcher"    # Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    .line 1039
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_DEFAULT_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->defaultValueProcessorMatcher:Lnet/sf/json/processors/DefaultValueProcessorMatcher;

    .line 1041
    return-void
.end method

.method public setEnclosedType(Ljava/lang/Class;)V
    .locals 0
    .param p1, "enclosedType"    # Ljava/lang/Class;

    .line 1050
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->enclosedType:Ljava/lang/Class;

    .line 1051
    return-void
.end method

.method public setExcludes([Ljava/lang/String;)V
    .locals 1
    .param p1, "excludes"    # [Ljava/lang/String;

    .line 1059
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->EMPTY_EXCLUDES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->excludes:[Ljava/lang/String;

    .line 1060
    return-void
.end method

.method public setHandleJettisonEmptyElement(Z)V
    .locals 0
    .param p1, "handleJettisonEmptyElement"    # Z

    .line 1069
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->handleJettisonEmptyElement:Z

    .line 1070
    return-void
.end method

.method public setHandleJettisonSingleElementArray(Z)V
    .locals 0
    .param p1, "handleJettisonSingleElementArray"    # Z

    .line 1079
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->handleJettisonSingleElementArray:Z

    .line 1080
    return-void
.end method

.method public setIgnoreDefaultExcludes(Z)V
    .locals 0
    .param p1, "ignoreDefaultExcludes"    # Z

    .line 1087
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->ignoreDefaultExcludes:Z

    .line 1088
    return-void
.end method

.method public setIgnoreJPATransient(Z)V
    .locals 1
    .param p1, "ignoreJPATransient"    # Z

    .line 1095
    const-string v0, "javax.persistence.Transient"

    if-eqz p1, :cond_0

    .line 1096
    invoke-virtual {p0, v0}, Lnet/sf/json/JsonConfig;->addIgnoreFieldAnnotation(Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/json/JsonConfig;->removeIgnoreFieldAnnotation(Ljava/lang/String;)V

    .line 1100
    :goto_0
    return-void
.end method

.method public setIgnorePublicFields(Z)V
    .locals 0
    .param p1, "ignorePublicFields"    # Z

    .line 1159
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->ignorePublicFields:Z

    .line 1160
    return-void
.end method

.method public setIgnoreTransientFields(Z)V
    .locals 0
    .param p1, "ignoreTransientFields"    # Z

    .line 1151
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->ignoreTransientFields:Z

    .line 1152
    return-void
.end method

.method public setJavaIdentifierTransformer(Lnet/sf/json/util/JavaIdentifierTransformer;)V
    .locals 1
    .param p1, "javaIdentifierTransformer"    # Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 1176
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JAVA_IDENTIFIER_TRANSFORMER:Lnet/sf/json/util/JavaIdentifierTransformer;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->javaIdentifierTransformer:Lnet/sf/json/util/JavaIdentifierTransformer;

    .line 1178
    return-void
.end method

.method public setJavaPropertyFilter(Lnet/sf/json/util/PropertyFilter;)V
    .locals 0
    .param p1, "javaPropertyFilter"    # Lnet/sf/json/util/PropertyFilter;

    .line 1187
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->javaPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    .line 1188
    return-void
.end method

.method public setJavaPropertyNameProcessorMatcher(Lnet/sf/json/processors/PropertyNameProcessorMatcher;)V
    .locals 1
    .param p1, "propertyNameProcessorMatcher"    # Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 1196
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_NAME_PROCESSOR_MATCHER:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 1198
    return-void
.end method

.method public setJavascriptCompliant(Z)V
    .locals 0
    .param p1, "javascriptCompliant"    # Z

    .line 1167
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->javascriptCompliant:Z

    .line 1168
    return-void
.end method

.method public setJsonBeanProcessorMatcher(Lnet/sf/json/processors/JsonBeanProcessorMatcher;)V
    .locals 1
    .param p1, "jsonBeanProcessorMatcher"    # Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    .line 1206
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_BEAN_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->jsonBeanProcessorMatcher:Lnet/sf/json/processors/JsonBeanProcessorMatcher;

    .line 1208
    return-void
.end method

.method public setJsonPropertyFilter(Lnet/sf/json/util/PropertyFilter;)V
    .locals 0
    .param p1, "jsonPropertyFilter"    # Lnet/sf/json/util/PropertyFilter;

    .line 1217
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->jsonPropertyFilter:Lnet/sf/json/util/PropertyFilter;

    .line 1218
    return-void
.end method

.method public setJsonPropertyNameProcessorMatcher(Lnet/sf/json/processors/PropertyNameProcessorMatcher;)V
    .locals 1
    .param p1, "propertyNameProcessorMatcher"    # Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 1226
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_NAME_PROCESSOR_MATCHER:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMatcher:Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 1228
    return-void
.end method

.method public setJsonValueProcessorMatcher(Lnet/sf/json/processors/JsonValueProcessorMatcher;)V
    .locals 1
    .param p1, "jsonValueProcessorMatcher"    # Lnet/sf/json/processors/JsonValueProcessorMatcher;

    .line 1236
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_JSON_VALUE_PROCESSOR_MATCHER:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->jsonValueProcessorMatcher:Lnet/sf/json/processors/JsonValueProcessorMatcher;

    .line 1238
    return-void
.end method

.method public setNewBeanInstanceStrategy(Lnet/sf/json/util/NewBeanInstanceStrategy;)V
    .locals 1
    .param p1, "newBeanInstanceStrategy"    # Lnet/sf/json/util/NewBeanInstanceStrategy;

    .line 1246
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_NEW_BEAN_INSTANCE_STRATEGY:Lnet/sf/json/util/NewBeanInstanceStrategy;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->newBeanInstanceStrategy:Lnet/sf/json/util/NewBeanInstanceStrategy;

    .line 1248
    return-void
.end method

.method public setPropertyExclusionClassMatcher(Lnet/sf/json/util/PropertyExclusionClassMatcher;)V
    .locals 1
    .param p1, "propertyExclusionClassMatcher"    # Lnet/sf/json/util/PropertyExclusionClassMatcher;

    .line 1256
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/JsonConfig;->DEFAULT_PROPERTY_EXCLUSION_CLASS_MATCHER:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/JsonConfig;->propertyExclusionClassMatcher:Lnet/sf/json/util/PropertyExclusionClassMatcher;

    .line 1258
    return-void
.end method

.method public setPropertyNameProcessorMatcher(Lnet/sf/json/processors/PropertyNameProcessorMatcher;)V
    .locals 0
    .param p1, "propertyNameProcessorMatcher"    # Lnet/sf/json/processors/PropertyNameProcessorMatcher;

    .line 1268
    invoke-virtual {p0, p1}, Lnet/sf/json/JsonConfig;->setJavaPropertyNameProcessorMatcher(Lnet/sf/json/processors/PropertyNameProcessorMatcher;)V

    .line 1269
    return-void
.end method

.method public setPropertySetStrategy(Lnet/sf/json/util/PropertySetStrategy;)V
    .locals 0
    .param p1, "propertySetStrategy"    # Lnet/sf/json/util/PropertySetStrategy;

    .line 1277
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->propertySetStrategy:Lnet/sf/json/util/PropertySetStrategy;

    .line 1278
    return-void
.end method

.method public setRootClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "rootClass"    # Ljava/lang/Class;

    .line 1287
    iput-object p1, p0, Lnet/sf/json/JsonConfig;->rootClass:Ljava/lang/Class;

    .line 1288
    return-void
.end method

.method public setSkipJavaIdentifierTransformationInMapKeys(Z)V
    .locals 0
    .param p1, "skipJavaIdentifierTransformationInMapKeys"    # Z

    .line 1295
    iput-boolean p1, p0, Lnet/sf/json/JsonConfig;->skipJavaIdentifierTransformationInMapKeys:Z

    .line 1296
    return-void
.end method

.method public unregisterDefaultValueProcessor(Ljava/lang/Class;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1305
    if-eqz p1, :cond_0

    .line 1306
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->defaultValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    :cond_0
    return-void
.end method

.method public unregisterJavaPropertyNameProcessor(Ljava/lang/Class;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1317
    if-eqz p1, :cond_0

    .line 1318
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->javaPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    :cond_0
    return-void
.end method

.method public unregisterJsonBeanProcessor(Ljava/lang/Class;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1329
    if-eqz p1, :cond_0

    .line 1330
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_0
    return-void
.end method

.method public unregisterJsonPropertyNameProcessor(Ljava/lang/Class;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1341
    if-eqz p1, :cond_0

    .line 1342
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->jsonPropertyNameProcessorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    :cond_0
    return-void
.end method

.method public unregisterJsonValueProcessor(Ljava/lang/Class;)V
    .locals 1
    .param p1, "propertyType"    # Ljava/lang/Class;

    .line 1353
    if-eqz p1, :cond_0

    .line 1354
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->typeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :cond_0
    return-void
.end method

.method public unregisterJsonValueProcessor(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "propertyType"    # Ljava/lang/Class;

    .line 1366
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1367
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanTypeMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    :cond_0
    return-void
.end method

.method public unregisterJsonValueProcessor(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "beanClass"    # Ljava/lang/Class;
    .param p2, "key"    # Ljava/lang/String;

    .line 1379
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1380
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->beanKeyMap:Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    :cond_0
    return-void
.end method

.method public unregisterJsonValueProcessor(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1391
    if-eqz p1, :cond_0

    .line 1392
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->keyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :cond_0
    return-void
.end method

.method public unregisterPropertyExclusion(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;
    .param p2, "propertyName"    # Ljava/lang/String;

    .line 1404
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1405
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1406
    .local v0, "set":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 1407
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 1408
    iget-object v1, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1412
    .end local v0    # "set":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method public unregisterPropertyExclusions(Ljava/lang/Class;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .line 1421
    if-eqz p1, :cond_0

    .line 1422
    iget-object v0, p0, Lnet/sf/json/JsonConfig;->exclusionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1423
    .local v0, "set":Ljava/util/Set;
    if-eqz v0, :cond_0

    .line 1424
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1427
    .end local v0    # "set":Ljava/util/Set;
    :cond_0
    return-void
.end method

.method public unregisterPropertyNameProcessor(Ljava/lang/Class;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Class;

    .line 1438
    invoke-virtual {p0, p1}, Lnet/sf/json/JsonConfig;->unregisterJavaPropertyNameProcessor(Ljava/lang/Class;)V

    .line 1439
    return-void
.end method
