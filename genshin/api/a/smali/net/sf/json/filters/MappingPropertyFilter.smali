.class public abstract Lnet/sf/json/filters/MappingPropertyFilter;
.super Ljava/lang/Object;
.source "MappingPropertyFilter.java"

# interfaces
.implements Lnet/sf/json/util/PropertyFilter;


# instance fields
.field private filters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/sf/json/filters/MappingPropertyFilter;-><init>(Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .param p1, "filters"    # Ljava/util/Map;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/filters/MappingPropertyFilter;->filters:Ljava/util/Map;

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 42
    .local v3, "filter":Ljava/lang/Object;
    instance-of v4, v3, Lnet/sf/json/util/PropertyFilter;

    if-eqz v4, :cond_0

    .line 43
    iget-object v4, p0, Lnet/sf/json/filters/MappingPropertyFilter;->filters:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "filter":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 47
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPropertyFilter(Ljava/lang/Object;Lnet/sf/json/util/PropertyFilter;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "filter"    # Lnet/sf/json/util/PropertyFilter;

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lnet/sf/json/filters/MappingPropertyFilter;->filters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lnet/sf/json/filters/MappingPropertyFilter;->filters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2, p1, p2, p3}, Lnet/sf/json/filters/MappingPropertyFilter;->keyMatches(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/json/util/PropertyFilter;

    .line 62
    .local v3, "filter":Lnet/sf/json/util/PropertyFilter;
    invoke-interface {v3, p1, p2, p3}, Lnet/sf/json/util/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 64
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "filter":Lnet/sf/json/util/PropertyFilter;
    :cond_0
    goto :goto_0

    .line 65
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract keyMatches(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public removePropertyFilter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lnet/sf/json/filters/MappingPropertyFilter;->filters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method
