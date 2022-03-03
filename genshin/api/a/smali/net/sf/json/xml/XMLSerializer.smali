.class public Lnet/sf/json/xml/XMLSerializer;
.super Ljava/lang/Object;
.source "XMLSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/json/xml/XMLSerializer$XomSerializer;,
        Lnet/sf/json/xml/XMLSerializer$CustomElement;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/String;

.field private static final JSON_PREFIX:Ljava/lang/String; = "json_"

.field static synthetic class$net$sf$json$xml$XMLSerializer:Ljava/lang/Class;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private arrayName:Ljava/lang/String;

.field private elementName:Ljava/lang/String;

.field private expandableProperties:[Ljava/lang/String;

.field private forceTopLevelObject:Z

.field private namespaceLenient:Z

.field private namespacesPerElement:Ljava/util/Map;

.field private objectName:Ljava/lang/String;

.field private removeNamespacePrefixFromElements:Z

.field private rootName:Ljava/lang/String;

.field private rootNamespace:Ljava/util/Map;

.field private skipNamespaces:Z

.field private skipWhitespace:Z

.field private trimSpaces:Z

.field private typeHintsCompatibility:Z

.field private typeHintsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/sf/json/xml/XMLSerializer;->EMPTY_ARRAY:[Ljava/lang/String;

    .line 84
    sget-object v0, Lnet/sf/json/xml/XMLSerializer;->class$net$sf$json$xml$XMLSerializer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "net.sf.json.xml.XMLSerializer"

    invoke-static {v0}, Lnet/sf/json/xml/XMLSerializer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lnet/sf/json/xml/XMLSerializer;->class$net$sf$json$xml$XMLSerializer:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lnet/sf/json/xml/XMLSerializer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    .line 132
    const-string v0, "o"

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setObjectName(Ljava/lang/String;)V

    .line 133
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setArrayName(Ljava/lang/String;)V

    .line 134
    const-string v0, "e"

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setElementName(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setTypeHintsEnabled(Z)V

    .line 136
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setTypeHintsCompatibility(Z)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setNamespaceLenient(Z)V

    .line 138
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setSkipNamespaces(Z)V

    .line 139
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setRemoveNamespacePrefixFromElements(Z)V

    .line 140
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setTrimSpaces(Z)V

    .line 141
    sget-object v1, Lnet/sf/json/xml/XMLSerializer;->EMPTY_ARRAY:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->setExpandableProperties([Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setSkipNamespaces(Z)V

    .line 143
    return-void
.end method

.method private addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsCompatibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "json_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    return-object p1
.end method

.method private addNameSpaceToElement(Lnu/xom/Element;)V
    .locals 7
    .param p1, "element"    # Lnu/xom/Element;

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "elementName":Ljava/lang/String;
    instance-of v1, p1, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    if-eqz v1, :cond_0

    .line 624
    move-object v1, p1

    check-cast v1, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    invoke-virtual {v1}, Lnet/sf/json/xml/XMLSerializer$CustomElement;->getQName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p1}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    iget-object v1, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 629
    .local v1, "nameSpaces":Ljava/util/Map;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->setNamespaceLenient(Z)V

    .line 631
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 632
    .local v2, "entries":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 633
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 634
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 635
    .local v4, "prefix":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 636
    .local v5, "uri":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 637
    invoke-virtual {p1, v5}, Lnu/xom/Element;->setNamespaceURI(Ljava/lang/String;)V

    goto :goto_2

    .line 639
    :cond_1
    invoke-virtual {p1, v4, v5}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 643
    .end local v2    # "entries":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private checkChildElements(Lnu/xom/Element;Z)Z
    .locals 9
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "isTopLevel"    # Z

    .line 646
    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    .line 647
    .local v0, "childCount":I
    invoke-virtual {p1}, Lnu/xom/Element;->getChildElements()Lnu/xom/Elements;

    move-result-object v1

    .line 648
    .local v1, "elements":Lnu/xom/Elements;
    invoke-virtual {v1}, Lnu/xom/Elements;->size()I

    move-result v2

    .line 650
    .local v2, "elementCount":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {p1, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v5

    instance-of v5, v5, Lnu/xom/Text;

    if-eqz v5, :cond_0

    .line 651
    return p2

    .line 654
    :cond_0
    if-ne v0, v2, :cond_4

    .line 655
    if-nez v2, :cond_1

    .line 656
    return v4

    .line 658
    :cond_1
    if-ne v2, v4, :cond_4

    .line 659
    iget-boolean v5, p0, Lnet/sf/json/xml/XMLSerializer;->skipWhitespace:Z

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v5

    instance-of v5, v5, Lnu/xom/Text;

    if-eqz v5, :cond_2

    goto :goto_0

    .line 662
    :cond_2
    return v3

    .line 660
    :cond_3
    :goto_0
    return v4

    .line 667
    :cond_4
    if-le v0, v2, :cond_6

    .line 668
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_6

    .line 669
    invoke-virtual {p1, v5}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v6

    .line 670
    .local v6, "node":Lnu/xom/Node;
    instance-of v7, v6, Lnu/xom/Text;

    if-eqz v7, :cond_5

    .line 671
    move-object v7, v6

    check-cast v7, Lnu/xom/Text;

    .line 672
    .local v7, "text":Lnu/xom/Text;
    invoke-virtual {v7}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lnet/sf/json/xml/XMLSerializer;->skipWhitespace:Z

    if-nez v8, :cond_5

    .line 674
    return v3

    .line 668
    .end local v6    # "node":Lnu/xom/Node;
    .end local v7    # "text":Lnu/xom/Text;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 680
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v1, v3}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v5

    invoke-virtual {v5}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    .line 682
    .local v5, "childName":Ljava/lang/String;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_8

    .line 683
    invoke-virtual {v1, v6}, Lnu/xom/Elements;->get(I)Lnu/xom/Element;

    move-result-object v7

    invoke-virtual {v7}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 685
    return v3

    .line 682
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 689
    .end local v6    # "i":I
    :cond_8
    return v4
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 84
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

.method private getClass(Lnu/xom/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lnu/xom/Element;

    .line 693
    const-string v0, "class"

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    .line 694
    .local v0, "attribute":Lnu/xom/Attribute;
    const/4 v1, 0x0

    .line 695
    .local v1, "clazz":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 696
    invoke-virtual {v0}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "clazzText":Ljava/lang/String;
    const-string v3, "object"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 699
    const-string v1, "object"

    goto :goto_0

    .line 700
    :cond_0
    const-string v3, "array"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 701
    const-string v1, "array"

    .line 704
    .end local v2    # "clazzText":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getType(Lnu/xom/Element;)Ljava/lang/String;
    .locals 1
    .param p1, "element"    # Lnu/xom/Element;

    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/json/xml/XMLSerializer;->getType(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getType(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "defaultType"    # Ljava/lang/String;

    .line 712
    const-string v0, "type"

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    .line 713
    .local v0, "attribute":Lnu/xom/Attribute;
    const/4 v1, 0x0

    .line 714
    .local v1, "type":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 715
    invoke-virtual {v0}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "typeText":Ljava/lang/String;
    const-string v3, "boolean"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 718
    const-string v1, "boolean"

    goto :goto_0

    .line 719
    :cond_0
    const-string v3, "number"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 720
    const-string v1, "number"

    goto :goto_0

    .line 721
    :cond_1
    const-string v3, "integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 722
    const-string v1, "integer"

    goto :goto_0

    .line 723
    :cond_2
    const-string v3, "float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 724
    const-string v1, "float"

    goto :goto_0

    .line 725
    :cond_3
    const-string v3, "object"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 726
    const-string v1, "object"

    goto :goto_0

    .line 727
    :cond_4
    const-string v3, "array"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 728
    const-string v1, "array"

    goto :goto_0

    .line 729
    :cond_5
    const-string v3, "string"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 730
    const-string v1, "string"

    goto :goto_0

    .line 731
    :cond_6
    const-string v3, "function"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 732
    const-string v1, "function"

    .line 734
    .end local v2    # "typeText":Ljava/lang/String;
    :cond_7
    :goto_0
    goto :goto_1

    .line 735
    :cond_8
    if-eqz p2, :cond_9

    .line 736
    sget-object v2, Lnet/sf/json/xml/XMLSerializer;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Using default type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 737
    move-object v1, p2

    .line 740
    :cond_9
    :goto_1
    return-object v1
.end method

.method private hasNamespaces(Lnu/xom/Element;)Z
    .locals 5
    .param p1, "element"    # Lnu/xom/Element;

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "namespaces":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 746
    invoke-virtual {p1, v1}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 749
    goto :goto_1

    .line 751
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 745
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v1    # "i":I
    :cond_1
    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private isArray(Lnu/xom/Element;Z)Z
    .locals 6
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "isTopLevel"    # Z

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "isArray":Z
    invoke-direct {p0, p1}, Lnet/sf/json/xml/XMLSerializer;->getClass(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "clazz":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 762
    invoke-direct {p0, p1, p2}, Lnet/sf/json/xml/XMLSerializer;->checkChildElements(Lnu/xom/Element;Z)Z

    move-result v0

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v2

    const-string v3, "type"

    const-string v4, "class"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 765
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/sf/json/xml/XMLSerializer;->checkChildElements(Lnu/xom/Element;Z)Z

    move-result v0

    goto :goto_0

    .line 766
    :cond_3
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 768
    invoke-direct {p0, p1, p2}, Lnet/sf/json/xml/XMLSerializer;->checkChildElements(Lnu/xom/Element;Z)Z

    move-result v0

    .line 771
    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    .line 773
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 774
    invoke-virtual {p1, v2}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 776
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 777
    const/4 v5, 0x0

    return v5

    .line 773
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 782
    .end local v2    # "j":I
    :cond_6
    return v0
.end method

.method private isFunction(Lnu/xom/Element;)Z
    .locals 6
    .param p1, "element"    # Lnu/xom/Element;

    .line 786
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    .line 787
    .local v0, "attrCount":I
    if-lez v0, :cond_2

    .line 788
    const-string v1, "type"

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v1

    .line 789
    .local v1, "typeAttr":Lnu/xom/Attribute;
    const-string v2, "params"

    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    .line 790
    .local v2, "paramsAttr":Lnu/xom/Attribute;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eqz v2, :cond_0

    .line 791
    return v3

    .line 793
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "function"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 796
    :cond_1
    return v3

    .line 799
    .end local v1    # "typeAttr":Lnu/xom/Attribute;
    .end local v2    # "paramsAttr":Lnu/xom/Attribute;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isNullObject(Lnu/xom/Element;)Z
    .locals 5
    .param p1, "element"    # Lnu/xom/Element;

    .line 803
    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 804
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 805
    return v1

    .line 806
    :cond_0
    const-string v0, "null"

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 807
    return v1

    .line 808
    :cond_1
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    const-string v2, "type"

    const-string v3, "class"

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 810
    :cond_2
    return v1

    .line 811
    :cond_3
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 813
    return v1

    .line 816
    :cond_4
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->skipWhitespace:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p1, v2}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v0

    instance-of v0, v0, Lnu/xom/Text;

    if-eqz v0, :cond_5

    .line 817
    return v1

    .line 819
    :cond_5
    return v2
.end method

.method private isObject(Lnu/xom/Element;Z)Z
    .locals 6
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "isTopLevel"    # Z

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "isObject":Z
    invoke-direct {p0, p1, p2}, Lnet/sf/json/xml/XMLSerializer;->isArray(Lnu/xom/Element;Z)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lnet/sf/json/xml/XMLSerializer;->isFunction(Lnu/xom/Element;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 825
    invoke-direct {p0, p1}, Lnet/sf/json/xml/XMLSerializer;->hasNamespaces(Lnu/xom/Element;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 826
    return v2

    .line 829
    :cond_0
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    .line 830
    .local v1, "attributeCount":I
    const/4 v3, 0x0

    if-lez v1, :cond_4

    .line 831
    const-string v4, "null"

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 832
    .local v4, "attrs":I
    :goto_0
    const-string v5, "class"

    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    .line 833
    const-string v5, "type"

    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    .line 834
    packed-switch v1, :pswitch_data_0

    .line 851
    return v2

    .line 846
    :pswitch_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 847
    return v2

    .line 841
    :pswitch_1
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 842
    return v2

    .line 836
    :pswitch_2
    if-nez v4, :cond_4

    .line 837
    return v2

    .line 855
    .end local v4    # "attrs":I
    :cond_4
    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v4

    .line 856
    .local v4, "childCount":I
    if-ne v4, v2, :cond_5

    invoke-virtual {p1, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v2

    instance-of v2, v2, Lnu/xom/Text;

    if-eqz v2, :cond_5

    .line 857
    return p2

    .line 860
    :cond_5
    const/4 v0, 0x1

    .line 862
    .end local v1    # "attributeCount":I
    .end local v4    # "childCount":I
    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private newElement(Ljava/lang/String;)Lnu/xom/Element;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 866
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespaceLenient:Z

    .line 869
    :cond_0
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespaceLenient:Z

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    invoke-direct {v0, p1}, Lnet/sf/json/xml/XMLSerializer$CustomElement;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lnu/xom/Element;

    invoke-direct {v0, p1}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;
    .locals 6
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "defaultType"    # Ljava/lang/String;

    .line 873
    new-instance v0, Lnet/sf/json/JSONArray;

    invoke-direct {v0}, Lnet/sf/json/JSONArray;-><init>()V

    .line 875
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v1

    .line 876
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 877
    invoke-virtual {p1, v2}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v3

    .line 878
    .local v3, "child":Lnu/xom/Node;
    instance-of v4, v3, Lnu/xom/Text;

    if-eqz v4, :cond_0

    .line 879
    move-object v4, v3

    check-cast v4, Lnu/xom/Text;

    .line 880
    .local v4, "text":Lnu/xom/Text;
    invoke-virtual {v4}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 881
    invoke-virtual {v4}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/json/JSONArray;->element(Ljava/lang/String;)Lnet/sf/json/JSONArray;

    goto :goto_1

    .line 883
    .end local v4    # "text":Lnu/xom/Text;
    :cond_0
    instance-of v4, v3, Lnu/xom/Element;

    if-eqz v4, :cond_1

    .line 884
    move-object v4, v3

    check-cast v4, Lnu/xom/Element;

    invoke-direct {p0, v0, v4, p2}, Lnet/sf/json/xml/XMLSerializer;->setValue(Lnet/sf/json/JSONArray;Lnu/xom/Element;Ljava/lang/String;)V

    goto :goto_2

    .line 883
    :cond_1
    :goto_1
    nop

    .line 876
    .end local v3    # "child":Lnu/xom/Node;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private processElement(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "type"    # Ljava/lang/String;

    .line 891
    invoke-direct {p0, p1}, Lnet/sf/json/xml/XMLSerializer;->isNullObject(Lnu/xom/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    return-object v0

    .line 893
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/json/xml/XMLSerializer;->isArray(Lnu/xom/Element;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    invoke-direct {p0, p1, p2}, Lnet/sf/json/xml/XMLSerializer;->processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0

    .line 895
    :cond_1
    invoke-direct {p0, p1, v0}, Lnet/sf/json/xml/XMLSerializer;->isObject(Lnu/xom/Element;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    invoke-direct {p0, p1, p2}, Lnet/sf/json/xml/XMLSerializer;->processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0

    .line 898
    :cond_2
    invoke-virtual {p1}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processJSONArray(Lnet/sf/json/JSONArray;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;
    .locals 4
    .param p1, "array"    # Lnet/sf/json/JSONArray;
    .param p2, "root"    # Lnu/xom/Element;
    .param p3, "expandableProperties"    # [Ljava/lang/String;

    .line 903
    invoke-virtual {p1}, Lnet/sf/json/JSONArray;->size()I

    move-result v0

    .line 904
    .local v0, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 905
    invoke-virtual {p1, v1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 906
    .local v2, "value":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3, p3}, Lnet/sf/json/xml/XMLSerializer;->processJSONValue(Ljava/lang/Object;Lnu/xom/Element;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v3

    .line 907
    .local v3, "element":Lnu/xom/Element;
    invoke-virtual {p2, v3}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    .line 904
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "element":Lnu/xom/Element;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    .end local v1    # "i":I
    :cond_0
    return-object p2
.end method

.method private processJSONObject(Lnet/sf/json/JSONObject;Lnu/xom/Element;[Ljava/lang/String;Z)Lnu/xom/Element;
    .locals 11
    .param p1, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p2, "root"    # Lnu/xom/Element;
    .param p3, "expandableProperties"    # [Ljava/lang/String;
    .param p4, "isRoot"    # Z

    .line 914
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    new-instance v0, Lnu/xom/Attribute;

    const-string v1, "null"

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 916
    return-object p2

    .line 917
    :cond_0
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    return-object p2

    .line 921
    :cond_1
    const/4 v0, 0x1

    if-eqz p4, :cond_3

    .line 922
    iget-object v1, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 923
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setNamespaceLenient(Z)V

    .line 924
    iget-object v1, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 925
    .local v1, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 926
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 927
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 928
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 929
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 930
    invoke-virtual {p2, v4}, Lnu/xom/Element;->setNamespaceURI(Ljava/lang/String;)V

    goto :goto_1

    .line 932
    :cond_2
    invoke-virtual {p2, v3, v4}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 938
    .end local v1    # "entries":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->addNameSpaceToElement(Lnu/xom/Element;)V

    .line 940
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->names()Lnet/sf/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/json/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 942
    .local v1, "names":[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 943
    const/4 v2, 0x0

    .line 944
    .local v2, "element":Lnu/xom/Element;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_f

    .line 945
    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/String;

    .line 946
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 947
    .local v5, "value":Ljava/lang/Object;
    const-string v6, "@xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 948
    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->setNamespaceLenient(Z)V

    .line 949
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 950
    .local v6, "colon":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 952
    invoke-virtual {p2}, Lnu/xom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 953
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lnu/xom/Element;->setNamespaceURI(Ljava/lang/String;)V

    goto :goto_3

    .line 956
    :cond_4
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 957
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {p2, v7}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 958
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lnu/xom/Element;->addNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .end local v6    # "colon":I
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_5
    :goto_3
    goto/16 :goto_6

    :cond_6
    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 962
    new-instance v6, Lnu/xom/Attribute;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    goto/16 :goto_6

    .line 963
    :cond_7
    const-string v6, "#text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 964
    instance-of v6, v5, Lnet/sf/json/JSONArray;

    if-eqz v6, :cond_8

    .line 965
    move-object v6, v5

    check-cast v6, Lnet/sf/json/JSONArray;

    const-string v7, ""

    invoke-virtual {v6, v7, v0}, Lnet/sf/json/JSONArray;->join(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    goto :goto_6

    .line 967
    :cond_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    goto :goto_6

    .line 969
    :cond_9
    instance-of v6, v5, Lnet/sf/json/JSONArray;

    if-eqz v6, :cond_e

    move-object v6, v5

    check-cast v6, Lnet/sf/json/JSONArray;

    invoke-virtual {v6}, Lnet/sf/json/JSONArray;->isExpandElements()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {p3, v4}, Lorg/apache/commons/lang/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 972
    :cond_a
    move-object v6, v5

    check-cast v6, Lnet/sf/json/JSONArray;

    .line 973
    .local v6, "array":Lnet/sf/json/JSONArray;
    invoke-virtual {v6}, Lnet/sf/json/JSONArray;->size()I

    move-result v7

    .line 974
    .local v7, "l":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v7, :cond_d

    .line 975
    invoke-virtual {v6, v8}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 976
    .local v9, "item":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    .line 977
    instance-of v10, v9, Lnet/sf/json/JSONObject;

    if-eqz v10, :cond_b

    .line 978
    move-object v10, v9

    check-cast v10, Lnet/sf/json/JSONObject;

    invoke-direct {p0, v10, p2, v2, p3}, Lnet/sf/json/xml/XMLSerializer;->processJSONValue(Ljava/lang/Object;Lnu/xom/Element;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    goto :goto_5

    .line 980
    :cond_b
    instance-of v10, v9, Lnet/sf/json/JSONArray;

    if-eqz v10, :cond_c

    .line 981
    move-object v10, v9

    check-cast v10, Lnet/sf/json/JSONArray;

    invoke-direct {p0, v10, p2, v2, p3}, Lnet/sf/json/xml/XMLSerializer;->processJSONValue(Ljava/lang/Object;Lnu/xom/Element;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    goto :goto_5

    .line 983
    :cond_c
    invoke-direct {p0, v9, p2, v2, p3}, Lnet/sf/json/xml/XMLSerializer;->processJSONValue(Ljava/lang/Object;Lnu/xom/Element;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    .line 985
    :goto_5
    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addNameSpaceToElement(Lnu/xom/Element;)V

    .line 986
    invoke-virtual {p2, v2}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    .line 974
    .end local v9    # "item":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 988
    .end local v6    # "array":Lnet/sf/json/JSONArray;
    .end local v7    # "l":I
    .end local v8    # "j":I
    :cond_d
    goto :goto_6

    .line 989
    :cond_e
    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    .line 990
    invoke-direct {p0, v5, p2, v2, p3}, Lnet/sf/json/xml/XMLSerializer;->processJSONValue(Ljava/lang/Object;Lnu/xom/Element;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v2

    .line 991
    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addNameSpaceToElement(Lnu/xom/Element;)V

    .line 992
    invoke-virtual {p2, v2}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    .line 944
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 995
    .end local v3    # "i":I
    :cond_f
    return-object p2
.end method

.method private processJSONValue(Ljava/lang/Object;Lnu/xom/Element;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "root"    # Lnu/xom/Element;
    .param p3, "target"    # Lnu/xom/Element;
    .param p4, "expandableProperties"    # [Ljava/lang/String;

    .line 1000
    if-nez p3, :cond_0

    .line 1001
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object p3

    .line 1003
    :cond_0
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isBoolean(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "type"

    if-eqz v0, :cond_2

    .line 1004
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "boolean"

    invoke-direct {v0, v1, v2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1007
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1008
    :cond_2
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1009
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1010
    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-direct {v0, v1, v2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1012
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    :cond_4
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1014
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1015
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/json/JSONFunction;->parse(Ljava/lang/String;)Lnet/sf/json/JSONFunction;

    move-result-object p1

    .line 1017
    :cond_5
    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONFunction;

    .line 1018
    .local v0, "func":Lnet/sf/json/JSONFunction;
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1019
    new-instance v3, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "function"

    invoke-direct {v3, v1, v4}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1021
    :cond_6
    invoke-virtual {v0}, Lnet/sf/json/JSONFunction;->getParams()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "params":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1024
    new-instance v2, Lnu/xom/Attribute;

    const-string v3, "params"

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1025
    new-instance v2, Lnu/xom/Text;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<![CDATA["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lnet/sf/json/JSONFunction;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]]>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnu/xom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lnu/xom/ParentNode;->appendChild(Lnu/xom/Node;)V

    .line 1026
    .end local v0    # "func":Lnet/sf/json/JSONFunction;
    .end local v1    # "params":Ljava/lang/String;
    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1027
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1028
    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-direct {v0, v1, v2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1030
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_9
    instance-of v0, p1, Lnet/sf/json/JSONArray;

    const-string v1, "class"

    if-eqz v0, :cond_b

    .line 1032
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1033
    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "array"

    invoke-direct {v0, v1, v2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1035
    :cond_a
    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONArray;

    invoke-direct {p0, v0, p3, p4}, Lnet/sf/json/xml/XMLSerializer;->processJSONArray(Lnet/sf/json/JSONArray;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object p3

    goto :goto_0

    .line 1036
    :cond_b
    instance-of v0, p1, Lnet/sf/json/JSONObject;

    const-string v3, "object"

    if-eqz v0, :cond_d

    .line 1037
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1038
    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1040
    :cond_c
    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONObject;

    invoke-direct {p0, v0, p3, p4, v2}, Lnet/sf/json/xml/XMLSerializer;->processJSONObject(Lnet/sf/json/JSONObject;Lnu/xom/Element;[Ljava/lang/String;Z)Lnu/xom/Element;

    move-result-object p3

    goto :goto_0

    .line 1041
    :cond_d
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1042
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1043
    new-instance v0, Lnu/xom/Attribute;

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1045
    :cond_e
    new-instance v0, Lnu/xom/Attribute;

    const-string v1, "null"

    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 1047
    :cond_f
    :goto_0
    return-object p3
.end method

.method private processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;
    .locals 8
    .param p1, "element"    # Lnu/xom/Element;
    .param p2, "defaultType"    # Ljava/lang/String;

    .line 1051
    invoke-direct {p0, p1}, Lnet/sf/json/xml/XMLSerializer;->isNullObject(Lnu/xom/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_0
    new-instance v0, Lnet/sf/json/JSONObject;

    invoke-direct {v0}, Lnet/sf/json/JSONObject;-><init>()V

    .line 1056
    .local v0, "jsonObject":Lnet/sf/json/JSONObject;
    iget-boolean v1, p0, Lnet/sf/json/xml/XMLSerializer;->skipNamespaces:Z

    if-nez v1, :cond_3

    .line 1057
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Lnu/xom/Element;->getNamespaceDeclarationCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1058
    invoke-virtual {p1, v1}, Lnu/xom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lnu/xom/Element;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1061
    goto :goto_1

    .line 1063
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1064
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "@xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    .end local v1    # "j":I
    :cond_3
    invoke-virtual {p1}, Lnu/xom/Element;->getAttributeCount()I

    move-result v1

    .line 1072
    .local v1, "attrCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1073
    invoke-virtual {p1, v2}, Lnu/xom/Element;->getAttribute(I)Lnu/xom/Attribute;

    move-result-object v3

    .line 1074
    .local v3, "attr":Lnu/xom/Attribute;
    invoke-virtual {v3}, Lnu/xom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    .line 1075
    .local v4, "attrname":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTypeHintsEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "class"

    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "type"

    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1078
    goto :goto_3

    .line 1080
    :cond_4
    invoke-virtual {v3}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1081
    .local v5, "attrvalue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->removeNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v6, v7}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    .end local v3    # "attr":Lnu/xom/Attribute;
    .end local v4    # "attrname":Ljava/lang/String;
    .end local v5    # "attrvalue":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1086
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1}, Lnu/xom/ParentNode;->getChildCount()I

    move-result v2

    .line 1087
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_9

    .line 1088
    invoke-virtual {p1, v3}, Lnu/xom/ParentNode;->getChild(I)Lnu/xom/Node;

    move-result-object v4

    .line 1089
    .local v4, "child":Lnu/xom/Node;
    instance-of v5, v4, Lnu/xom/Text;

    if-eqz v5, :cond_7

    .line 1090
    move-object v5, v4

    check-cast v5, Lnu/xom/Text;

    .line 1091
    .local v5, "text":Lnu/xom/Text;
    invoke-virtual {v5}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1092
    invoke-virtual {v5}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lnet/sf/json/xml/XMLSerializer;->trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#text"

    invoke-direct {p0, v0, v7, v6}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1094
    .end local v5    # "text":Lnu/xom/Text;
    :cond_7
    instance-of v5, v4, Lnu/xom/Element;

    if-eqz v5, :cond_8

    .line 1095
    move-object v5, v4

    check-cast v5, Lnu/xom/Element;

    invoke-direct {p0, v0, v5, p2}, Lnet/sf/json/xml/XMLSerializer;->setValue(Lnet/sf/json/JSONObject;Lnu/xom/Element;Ljava/lang/String;)V

    goto :goto_6

    .line 1094
    :cond_8
    :goto_5
    nop

    .line 1087
    .end local v4    # "child":Lnu/xom/Node;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1099
    .end local v3    # "i":I
    :cond_9
    return-object v0
.end method

.method private removeNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1103
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isRemoveNamespacePrefixFromElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1105
    .local v0, "colon":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1

    .line 1107
    .end local v0    # "colon":I
    :cond_1
    return-object p1
.end method

.method private setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1111
    invoke-virtual {p1, p2}, Lnet/sf/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    invoke-virtual {p1, p2, p3}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 1113
    invoke-virtual {p1, p2}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1114
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Lnet/sf/json/JSONArray;

    if-eqz v1, :cond_0

    .line 1115
    move-object v1, v0

    check-cast v1, Lnet/sf/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/sf/json/JSONArray;->setExpandElements(Z)V

    .line 1117
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1118
    :cond_1
    invoke-virtual {p1, p2, p3}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    .line 1120
    :goto_0
    return-void
.end method

.method private setValue(Lnet/sf/json/JSONArray;Lnu/xom/Element;Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonArray"    # Lnet/sf/json/JSONArray;
    .param p2, "element"    # Lnu/xom/Element;
    .param p3, "defaultType"    # Ljava/lang/String;

    .line 1123
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->getClass(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "clazz":Ljava/lang/String;
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->getType(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v1, v2

    .line 1127
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->hasNamespaces(Lnu/xom/Element;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lnet/sf/json/xml/XMLSerializer;->skipNamespaces:Z

    if-nez v2, :cond_1

    .line 1128
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processElement(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1129
    return-void

    .line 1130
    :cond_1
    invoke-virtual {p2}, Lnu/xom/Element;->getAttributeCount()I

    move-result v2

    const-string v4, ","

    const-string v5, "params"

    if-lez v2, :cond_3

    .line 1131
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->isFunction(Lnu/xom/Element;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v2

    .line 1133
    .local v2, "paramsAttribute":Lnu/xom/Attribute;
    const/4 v3, 0x0

    .line 1134
    .local v3, "params":[Ljava/lang/String;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1135
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v2}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1136
    new-instance v4, Lnet/sf/json/JSONFunction;

    invoke-direct {v4, v3, v5}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1137
    return-void

    .line 1139
    .end local v2    # "paramsAttribute":Lnu/xom/Attribute;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processElement(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1140
    return-void

    .line 1144
    :cond_3
    const/4 v2, 0x0

    .line 1145
    .local v2, "classProcessed":Z
    if-eqz v0, :cond_5

    .line 1146
    const-string v6, "array"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 1147
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v6

    invoke-virtual {p1, v6}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1148
    const/4 v2, 0x1

    goto :goto_1

    .line 1149
    :cond_4
    const-string v6, "object"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 1150
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1151
    const/4 v2, 0x1

    .line 1154
    :cond_5
    :goto_1
    if-nez v2, :cond_f

    .line 1155
    const-string v6, "boolean"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 1156
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    goto/16 :goto_3

    .line 1157
    :cond_6
    const-string v6, "number"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 1160
    :try_start_0
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1161
    :catch_0
    move-exception v3

    .line 1162
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1163
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    goto/16 :goto_3

    .line 1164
    :cond_7
    const-string v6, "integer"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 1165
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    goto/16 :goto_3

    .line 1166
    :cond_8
    const-string v6, "float"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 1167
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    goto/16 :goto_3

    .line 1168
    :cond_9
    const-string v6, "function"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 1169
    const/4 v3, 0x0

    .line 1170
    .local v3, "params":[Ljava/lang/String;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 1171
    .local v6, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v5

    .line 1172
    .local v5, "paramsAttribute":Lnu/xom/Attribute;
    if-eqz v5, :cond_a

    .line 1173
    invoke-virtual {v5}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1175
    :cond_a
    new-instance v4, Lnet/sf/json/JSONFunction;

    invoke-direct {v4, v3, v6}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .end local v3    # "params":[Ljava/lang/String;
    .end local v5    # "paramsAttribute":Lnu/xom/Attribute;
    .end local v6    # "text":Ljava/lang/String;
    goto :goto_3

    .line 1176
    :cond_b
    const-string v6, "string"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f

    .line 1178
    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v5

    .line 1179
    .restart local v5    # "paramsAttribute":Lnu/xom/Attribute;
    if-eqz v5, :cond_c

    .line 1180
    const/4 v3, 0x0

    .line 1181
    .restart local v3    # "params":[Ljava/lang/String;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 1182
    .restart local v6    # "text":Ljava/lang/String;
    invoke-virtual {v5}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1183
    new-instance v4, Lnet/sf/json/JSONFunction;

    invoke-direct {v4, v3, v6}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    .line 1184
    .end local v3    # "params":[Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    goto :goto_3

    .line 1185
    :cond_c
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lnet/sf/json/xml/XMLSerializer;->isArray(Lnu/xom/Element;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1186
    invoke-direct {p0, p2, p3}, Lnet/sf/json/xml/XMLSerializer;->processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    goto :goto_3

    .line 1187
    :cond_d
    invoke-direct {p0, p2, v4}, Lnet/sf/json/xml/XMLSerializer;->isObject(Lnu/xom/Element;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1188
    invoke-direct {p0, p2, p3}, Lnet/sf/json/xml/XMLSerializer;->processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/Object;)Lnet/sf/json/JSONArray;

    goto :goto_3

    .line 1191
    :cond_e
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/sf/json/JSONArray;->element(Ljava/lang/String;)Lnet/sf/json/JSONArray;

    nop

    .line 1196
    .end local v5    # "paramsAttribute":Lnu/xom/Attribute;
    :cond_f
    :goto_3
    return-void
.end method

.method private setValue(Lnet/sf/json/JSONObject;Lnu/xom/Element;Ljava/lang/String;)V
    .locals 9
    .param p1, "jsonObject"    # Lnet/sf/json/JSONObject;
    .param p2, "element"    # Lnu/xom/Element;
    .param p3, "defaultType"    # Ljava/lang/String;

    .line 1199
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->getClass(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "clazz":Ljava/lang/String;
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->getType(Lnu/xom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v1, v2

    .line 1205
    invoke-virtual {p2}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->removeNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->hasNamespaces(Lnu/xom/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lnet/sf/json/xml/XMLSerializer;->skipNamespaces:Z

    if-nez v3, :cond_1

    .line 1207
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processElement(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1209
    return-void

    .line 1210
    :cond_1
    invoke-virtual {p2}, Lnu/xom/Element;->getAttributeCount()I

    move-result v3

    const-string v4, ","

    const-string v5, "params"

    if-lez v3, :cond_2

    .line 1211
    invoke-direct {p0, p2}, Lnet/sf/json/xml/XMLSerializer;->isFunction(Lnu/xom/Element;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1212
    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v3

    .line 1213
    .local v3, "paramsAttribute":Lnu/xom/Attribute;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v3}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, "params":[Ljava/lang/String;
    new-instance v6, Lnet/sf/json/JSONFunction;

    invoke-direct {v6, v4, v5}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v6}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    return-void

    .line 1224
    .end local v3    # "paramsAttribute":Lnu/xom/Attribute;
    .end local v4    # "params":[Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 1225
    .local v3, "classProcessed":Z
    if-eqz v0, :cond_4

    .line 1226
    const-string v6, "array"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 1227
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1228
    const/4 v3, 0x1

    goto :goto_1

    .line 1229
    :cond_3
    const-string v6, "object"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 1230
    invoke-direct {p0, p2, v1}, Lnet/sf/json/xml/XMLSerializer;->processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p1, v2, v6}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1232
    const/4 v3, 0x1

    .line 1235
    :cond_4
    :goto_1
    if-nez v3, :cond_e

    .line 1236
    const-string v6, "boolean"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 1237
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1238
    :cond_5
    const-string v6, "number"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 1241
    :try_start_0
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1242
    :catch_0
    move-exception v4

    .line 1243
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1244
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    goto/16 :goto_3

    .line 1245
    :cond_6
    const-string v6, "integer"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 1246
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1247
    :cond_7
    const-string v6, "float"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 1248
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1249
    :cond_8
    const-string v6, "function"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    .line 1250
    const/4 v6, 0x0

    .line 1251
    .local v6, "params":[Ljava/lang/String;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1252
    .local v7, "text":Ljava/lang/String;
    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v5

    .line 1253
    .local v5, "paramsAttribute":Lnu/xom/Attribute;
    if-eqz v5, :cond_9

    .line 1254
    invoke-virtual {v5}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1256
    :cond_9
    new-instance v4, Lnet/sf/json/JSONFunction;

    invoke-direct {v4, v6, v7}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v5    # "paramsAttribute":Lnu/xom/Attribute;
    .end local v6    # "params":[Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    goto :goto_3

    .line 1257
    :cond_a
    const-string v6, "string"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e

    .line 1259
    invoke-direct {p0, v5}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lnu/xom/Element;->getAttribute(Ljava/lang/String;)Lnu/xom/Attribute;

    move-result-object v5

    .line 1260
    .restart local v5    # "paramsAttribute":Lnu/xom/Attribute;
    if-eqz v5, :cond_b

    .line 1261
    const/4 v6, 0x0

    .line 1262
    .restart local v6    # "params":[Ljava/lang/String;
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1263
    .restart local v7    # "text":Ljava/lang/String;
    invoke-virtual {v5}, Lnu/xom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1264
    .end local v6    # "params":[Ljava/lang/String;
    .local v4, "params":[Ljava/lang/String;
    new-instance v6, Lnet/sf/json/JSONFunction;

    invoke-direct {v6, v4, v7}, Lnet/sf/json/JSONFunction;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v6}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1265
    .end local v4    # "params":[Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    goto :goto_3

    .line 1266
    :cond_b
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4}, Lnet/sf/json/xml/XMLSerializer;->isArray(Lnu/xom/Element;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1267
    invoke-direct {p0, p2, p3}, Lnet/sf/json/xml/XMLSerializer;->processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1268
    :cond_c
    invoke-direct {p0, p2, v4}, Lnet/sf/json/xml/XMLSerializer;->isObject(Lnu/xom/Element;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1269
    invoke-direct {p0, p2, p3}, Lnet/sf/json/xml/XMLSerializer;->processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lnet/sf/json/xml/XMLSerializer;->simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 1272
    :cond_d
    invoke-virtual {p2}, Lnu/xom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->setOrAccumulate(Lnet/sf/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    nop

    .line 1277
    .end local v5    # "paramsAttribute":Lnu/xom/Attribute;
    :cond_e
    :goto_3
    return-void
.end method

.method private simplifyValue(Lnet/sf/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "parent"    # Lnet/sf/json/JSONObject;
    .param p2, "json"    # Ljava/lang/Object;

    .line 1280
    instance-of v0, p2, Lnet/sf/json/JSONObject;

    if-eqz v0, :cond_2

    .line 1281
    move-object v0, p2

    check-cast v0, Lnet/sf/json/JSONObject;

    .line 1282
    .local v0, "object":Lnet/sf/json/JSONObject;
    if-eqz p1, :cond_1

    .line 1284
    invoke-virtual {p1}, Lnet/sf/json/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1285
    .local v1, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1287
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1288
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1289
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "@xmlns"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Lnet/sf/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-virtual {v0, v3}, Lnet/sf/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1292
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1294
    .end local v1    # "entries":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Lnet/sf/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1295
    invoke-virtual {v0, v1}, Lnet/sf/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1298
    .end local v0    # "object":Lnet/sf/json/JSONObject;
    :cond_2
    return-object p2
.end method

.method private trimSpaceFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1301
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->isTrimSpaces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_0
    return-object p1
.end method

.method private writeDocument(Lnu/xom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "doc"    # Lnu/xom/Document;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 1307
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1309
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    if-nez p2, :cond_0

    :try_start_0
    new-instance v1, Lnet/sf/json/xml/XMLSerializer$XomSerializer;

    invoke-direct {v1, p0, v0}, Lnet/sf/json/xml/XMLSerializer$XomSerializer;-><init>(Lnet/sf/json/xml/XMLSerializer;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/json/xml/XMLSerializer$XomSerializer;

    invoke-direct {v1, p0, v0, p2}, Lnet/sf/json/xml/XMLSerializer$XomSerializer;-><init>(Lnet/sf/json/xml/XMLSerializer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1311
    .local v1, "serializer":Lnet/sf/json/xml/XMLSerializer$XomSerializer;
    :goto_0
    invoke-virtual {v1, p1}, Lnu/xom/Serializer;->write(Lnu/xom/Document;)V

    .line 1312
    invoke-virtual {v1}, Lnu/xom/Serializer;->getEncoding()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p2, v2

    .line 1315
    .end local v1    # "serializer":Lnet/sf/json/xml/XMLSerializer$XomSerializer;
    nop

    .line 1317
    const/4 v1, 0x0

    .line 1319
    .local v1, "str":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 1322
    nop

    .line 1323
    return-object v1

    .line 1320
    :catch_0
    move-exception v2

    .line 1321
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lnet/sf/json/JSONException;

    invoke-direct {v3, v2}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1313
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 1314
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/xml/XMLSerializer;->addNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public addNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;

    .line 165
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    if-nez p1, :cond_1

    .line 169
    const-string p1, ""

    .line 171
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 175
    .local v0, "nameSpaces":Ljava/util/Map;
    if-nez v0, :cond_3

    .line 176
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object v0, v1

    .line 177
    iget-object v1, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v0    # "nameSpaces":Ljava/util/Map;
    :goto_0
    return-void
.end method

.method public clearNamespaces()V
    .locals 1

    .line 187
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    return-void
.end method

.method public clearNamespaces(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 199
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    return-void
.end method

.method public getArrayName()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->arrayName:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandableProperties()[Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->expandableProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootName:Ljava/lang/String;

    return-object v0
.end method

.method public isForceTopLevelObject()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->forceTopLevelObject:Z

    return v0
.end method

.method public isNamespaceLenient()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespaceLenient:Z

    return v0
.end method

.method public isRemoveNamespacePrefixFromElements()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->removeNamespacePrefixFromElements:Z

    return v0
.end method

.method public isSkipNamespaces()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->skipNamespaces:Z

    return v0
.end method

.method public isSkipWhitespace()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->skipWhitespace:Z

    return v0
.end method

.method public isTrimSpaces()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->trimSpaces:Z

    return v0
.end method

.method public isTypeHintsCompatibility()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->typeHintsCompatibility:Z

    return v0
.end method

.method public isTypeHintsEnabled()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lnet/sf/json/xml/XMLSerializer;->typeHintsEnabled:Z

    return v0
.end method

.method public read(Ljava/lang/String;)Lnet/sf/json/JSON;
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "json":Lnet/sf/json/JSON;
    :try_start_0
    new-instance v1, Lnu/xom/Builder;

    invoke-direct {v1}, Lnu/xom/Builder;-><init>()V

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnu/xom/Builder;->build(Ljava/io/Reader;)Lnu/xom/Document;

    move-result-object v1

    .line 310
    .local v1, "doc":Lnu/xom/Document;
    invoke-virtual {v1}, Lnu/xom/Document;->getRootElement()Lnu/xom/Element;

    move-result-object v2

    .line 311
    .local v2, "root":Lnu/xom/Element;
    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->isNullObject(Lnu/xom/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v3

    return-object v3

    .line 314
    :cond_0
    const-string v3, "string"

    invoke-direct {p0, v2, v3}, Lnet/sf/json/xml/XMLSerializer;->getType(Lnu/xom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "defaultType":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->isArray(Lnu/xom/Element;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-direct {p0, v2, v3}, Lnet/sf/json/xml/XMLSerializer;->processArrayElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v4

    move-object v0, v4

    .line 317
    iget-boolean v4, p0, Lnet/sf/json/xml/XMLSerializer;->forceTopLevelObject:Z

    if-eqz v4, :cond_2

    .line 318
    invoke-virtual {v2}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->removeNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Lnet/sf/json/JSONObject;

    invoke-direct {v5}, Lnet/sf/json/JSONObject;-><init>()V

    invoke-virtual {v5, v4, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v5

    move-object v0, v5

    .line 320
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0, v2, v3}, Lnet/sf/json/xml/XMLSerializer;->processObjectElement(Lnu/xom/Element;Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v4

    move-object v0, v4

    .line 323
    iget-boolean v4, p0, Lnet/sf/json/xml/XMLSerializer;->forceTopLevelObject:Z

    if-eqz v4, :cond_2

    .line 324
    invoke-virtual {v2}, Lnu/xom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->removeNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4    # "key":Ljava/lang/String;
    new-instance v5, Lnet/sf/json/JSONObject;

    invoke-direct {v5}, Lnet/sf/json/JSONObject;-><init>()V

    invoke-virtual {v5, v4, v0}, Lnet/sf/json/JSONObject;->element(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Lnet/sf/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 332
    .end local v1    # "doc":Lnu/xom/Document;
    .end local v2    # "root":Lnu/xom/Element;
    .end local v3    # "defaultType":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 333
    return-object v0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lnet/sf/json/JSONException;

    invoke-direct {v2, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 328
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 329
    .local v1, "jsone":Lnet/sf/json/JSONException;
    throw v1
.end method

.method public readFromFile(Ljava/io/File;)Lnet/sf/json/JSON;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 345
    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->readFromStream(Ljava/io/InputStream;)Lnet/sf/json/JSON;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 352
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "File is a directory"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Can\'t read input file"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "File is null"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFromFile(Ljava/lang/String;)Lnet/sf/json/JSON;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 370
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/json/xml/XMLSerializer;->readFromStream(Ljava/io/InputStream;)Lnet/sf/json/JSON;

    move-result-object v0

    return-object v0
.end method

.method public readFromStream(Ljava/io/InputStream;)Lnet/sf/json/JSON;
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 385
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v0, "xml":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 387
    .local v1, "in":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 388
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->read(Ljava/lang/String;)Lnet/sf/json/JSON;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 392
    .end local v0    # "xml":Ljava/lang/StringBuffer;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeNamespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/xml/XMLSerializer;->removeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public removeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;

    .line 415
    if-nez p1, :cond_0

    .line 416
    const-string p1, ""

    .line 418
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 422
    .local v0, "nameSpaces":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .end local v0    # "nameSpaces":Ljava/util/Map;
    :goto_0
    return-void
.end method

.method public setArrayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "arrayName"    # Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "a"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->arrayName:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setElementName(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 439
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "e"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->elementName:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setExpandableProperties([Ljava/lang/String;)V
    .locals 1
    .param p1, "expandableProperties"    # [Ljava/lang/String;

    .line 446
    if-nez p1, :cond_0

    sget-object v0, Lnet/sf/json/xml/XMLSerializer;->EMPTY_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->expandableProperties:[Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setForceTopLevelObject(Z)V
    .locals 0
    .param p1, "forceTopLevelObject"    # Z

    .line 450
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->forceTopLevelObject:Z

    .line 451
    return-void
.end method

.method public setNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/json/xml/XMLSerializer;->setNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "elementName"    # Ljava/lang/String;

    .line 474
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    if-nez p1, :cond_1

    .line 478
    const-string p1, ""

    .line 480
    :cond_1
    invoke-static {p3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 482
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootNamespace:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 484
    :cond_2
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 485
    .local v0, "nameSpaces":Ljava/util/Map;
    if-nez v0, :cond_3

    .line 486
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object v0, v1

    .line 487
    iget-object v1, p0, Lnet/sf/json/xml/XMLSerializer;->namespacesPerElement:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 490
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v0    # "nameSpaces":Ljava/util/Map;
    :goto_0
    return-void
.end method

.method public setNamespaceLenient(Z)V
    .locals 0
    .param p1, "namespaceLenient"    # Z

    .line 498
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->namespaceLenient:Z

    .line 499
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 1
    .param p1, "objectName"    # Ljava/lang/String;

    .line 506
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->objectName:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setRemoveNamespacePrefixFromElements(Z)V
    .locals 0
    .param p1, "removeNamespacePrefixFromElements"    # Z

    .line 514
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->removeNamespacePrefixFromElements:Z

    .line 515
    return-void
.end method

.method public setRootName(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootName"    # Ljava/lang/String;

    .line 521
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer;->rootName:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setSkipNamespaces(Z)V
    .locals 0
    .param p1, "skipNamespaces"    # Z

    .line 529
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->skipNamespaces:Z

    .line 530
    return-void
.end method

.method public setSkipWhitespace(Z)V
    .locals 0
    .param p1, "skipWhitespace"    # Z

    .line 536
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->skipWhitespace:Z

    .line 537
    return-void
.end method

.method public setTrimSpaces(Z)V
    .locals 0
    .param p1, "trimSpaces"    # Z

    .line 544
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->trimSpaces:Z

    .line 545
    return-void
.end method

.method public setTypeHintsCompatibility(Z)V
    .locals 0
    .param p1, "typeHintsCompatibility"    # Z

    .line 551
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->typeHintsCompatibility:Z

    .line 552
    return-void
.end method

.method public setTypeHintsEnabled(Z)V
    .locals 0
    .param p1, "typeHintsEnabled"    # Z

    .line 558
    iput-boolean p1, p0, Lnet/sf/json/xml/XMLSerializer;->typeHintsEnabled:Z

    .line 559
    return-void
.end method

.method public write(Lnet/sf/json/JSON;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Lnet/sf/json/JSON;

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/json/xml/XMLSerializer;->write(Lnet/sf/json/JSON;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lnet/sf/json/JSON;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "json"    # Lnet/sf/json/JSON;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 584
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/json/JSONNull;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    const-string v2, "null"

    if-eqz v0, :cond_1

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "root":Lnu/xom/Element;
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getRootName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getObjectName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getRootName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {p0, v3}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v0

    .line 588
    new-instance v3, Lnu/xom/Attribute;

    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    .line 589
    new-instance v1, Lnu/xom/Document;

    invoke-direct {v1, v0}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    .line 590
    .local v1, "doc":Lnu/xom/Document;
    invoke-direct {p0, v1, p2}, Lnet/sf/json/xml/XMLSerializer;->writeDocument(Lnu/xom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 591
    .end local v0    # "root":Lnu/xom/Element;
    .end local v1    # "doc":Lnu/xom/Document;
    :cond_1
    instance-of v0, p1, Lnet/sf/json/JSONArray;

    if-eqz v0, :cond_3

    .line 592
    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONArray;

    .line 593
    .local v0, "jsonArray":Lnet/sf/json/JSONArray;
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getRootName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getArrayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getRootName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/json/xml/XMLSerializer;->expandableProperties:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lnet/sf/json/xml/XMLSerializer;->processJSONArray(Lnet/sf/json/JSONArray;Lnu/xom/Element;[Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v1

    .line 596
    .local v1, "root":Lnu/xom/Element;
    new-instance v2, Lnu/xom/Document;

    invoke-direct {v2, v1}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    .line 597
    .local v2, "doc":Lnu/xom/Document;
    invoke-direct {p0, v2, p2}, Lnet/sf/json/xml/XMLSerializer;->writeDocument(Lnu/xom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 599
    .end local v0    # "jsonArray":Lnet/sf/json/JSONArray;
    .end local v1    # "root":Lnu/xom/Element;
    .end local v2    # "doc":Lnu/xom/Document;
    :cond_3
    move-object v0, p1

    check-cast v0, Lnet/sf/json/JSONObject;

    .line 600
    .local v0, "jsonObject":Lnet/sf/json/JSONObject;
    const/4 v3, 0x0

    .line 601
    .local v3, "root":Lnu/xom/Element;
    invoke-virtual {v0}, Lnet/sf/json/JSONObject;->isNullObject()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 602
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getObjectName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v3

    .line 603
    new-instance v4, Lnu/xom/Attribute;

    invoke-direct {p0, v2}, Lnet/sf/json/xml/XMLSerializer;->addJsonPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    goto :goto_3

    .line 605
    :cond_4
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getRootName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getObjectName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lnet/sf/json/xml/XMLSerializer;->getRootName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v1}, Lnet/sf/json/xml/XMLSerializer;->newElement(Ljava/lang/String;)Lnu/xom/Element;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/json/xml/XMLSerializer;->expandableProperties:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v2, v4}, Lnet/sf/json/xml/XMLSerializer;->processJSONObject(Lnet/sf/json/JSONObject;Lnu/xom/Element;[Ljava/lang/String;Z)Lnu/xom/Element;

    move-result-object v3

    .line 609
    :goto_3
    new-instance v1, Lnu/xom/Document;

    invoke-direct {v1, v3}, Lnu/xom/Document;-><init>(Lnu/xom/Element;)V

    .line 610
    .local v1, "doc":Lnu/xom/Document;
    invoke-direct {p0, v1, p2}, Lnet/sf/json/xml/XMLSerializer;->writeDocument(Lnu/xom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
