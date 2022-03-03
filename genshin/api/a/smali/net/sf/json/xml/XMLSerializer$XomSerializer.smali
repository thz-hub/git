.class Lnet/sf/json/xml/XMLSerializer$XomSerializer;
.super Lnu/xom/Serializer;
.source "XMLSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/xml/XMLSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XomSerializer"
.end annotation


# instance fields
.field private final synthetic this$0:Lnet/sf/json/xml/XMLSerializer;


# direct methods
.method public constructor <init>(Lnet/sf/json/xml/XMLSerializer;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 1361
    invoke-direct {p0, p2}, Lnu/xom/Serializer;-><init>(Ljava/io/OutputStream;)V

    .line 1360
    iput-object p1, p0, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->this$0:Lnet/sf/json/xml/XMLSerializer;

    .line 1362
    return-void
.end method

.method public constructor <init>(Lnet/sf/json/xml/XMLSerializer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1365
    invoke-direct {p0, p2, p3}, Lnu/xom/Serializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1364
    iput-object p1, p0, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->this$0:Lnet/sf/json/xml/XMLSerializer;

    .line 1366
    return-void
.end method

.method private writeTagBeginning(Lnet/sf/json/xml/XMLSerializer$CustomElement;)V
    .locals 1
    .param p1, "element"    # Lnet/sf/json/xml/XMLSerializer$CustomElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1416
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p1}, Lnet/sf/json/xml/XMLSerializer$CustomElement;->getQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeAttributes(Lnu/xom/Element;)V

    .line 1419
    invoke-virtual {p0, p1}, Lnu/xom/Serializer;->writeNamespaceDeclarations(Lnu/xom/Element;)V

    .line 1420
    return-void
.end method


# virtual methods
.method protected write(Lnu/xom/Text;)V
    .locals 5
    .param p1, "text"    # Lnu/xom/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    invoke-virtual {p1}, Lnu/xom/Text;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1370
    .local v0, "value":Ljava/lang/String;
    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]]>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1371
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1372
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1373
    invoke-virtual {p0, v1}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p0, v2}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 1377
    :cond_0
    invoke-super {p0, p1}, Lnu/xom/Serializer;->write(Lnu/xom/Text;)V

    .line 1379
    :goto_0
    return-void
.end method

.method protected writeEmptyElementTag(Lnu/xom/Element;)V
    .locals 1
    .param p1, "element"    # Lnu/xom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1382
    instance-of v0, p1, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->this$0:Lnet/sf/json/xml/XMLSerializer;

    invoke-virtual {v0}, Lnet/sf/json/xml/XMLSerializer;->isNamespaceLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    move-object v0, p1

    check-cast v0, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->writeTagBeginning(Lnet/sf/json/xml/XMLSerializer$CustomElement;)V

    .line 1384
    const-string v0, "/>"

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 1386
    :cond_0
    invoke-super {p0, p1}, Lnu/xom/Serializer;->writeEmptyElementTag(Lnu/xom/Element;)V

    .line 1388
    :goto_0
    return-void
.end method

.method protected writeEndTag(Lnu/xom/Element;)V
    .locals 1
    .param p1, "element"    # Lnu/xom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    instance-of v0, p1, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->this$0:Lnet/sf/json/xml/XMLSerializer;

    invoke-virtual {v0}, Lnet/sf/json/xml/XMLSerializer;->isNamespaceLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    .line 1393
    move-object v0, p1

    check-cast v0, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    invoke-virtual {v0}, Lnet/sf/json/xml/XMLSerializer$CustomElement;->getQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    .line 1394
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 1396
    :cond_0
    invoke-super {p0, p1}, Lnu/xom/Serializer;->writeEndTag(Lnu/xom/Element;)V

    .line 1398
    :goto_0
    return-void
.end method

.method protected writeNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1402
    invoke-super {p0, p1, p2}, Lnu/xom/Serializer;->writeNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_0
    return-void
.end method

.method protected writeStartTag(Lnu/xom/Element;)V
    .locals 1
    .param p1, "element"    # Lnu/xom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1407
    instance-of v0, p1, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->this$0:Lnet/sf/json/xml/XMLSerializer;

    invoke-virtual {v0}, Lnet/sf/json/xml/XMLSerializer;->isNamespaceLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    move-object v0, p1

    check-cast v0, Lnet/sf/json/xml/XMLSerializer$CustomElement;

    invoke-direct {p0, v0}, Lnet/sf/json/xml/XMLSerializer$XomSerializer;->writeTagBeginning(Lnet/sf/json/xml/XMLSerializer$CustomElement;)V

    .line 1409
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lnu/xom/Serializer;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 1411
    :cond_0
    invoke-super {p0, p1}, Lnu/xom/Serializer;->writeStartTag(Lnu/xom/Element;)V

    .line 1413
    :goto_0
    return-void
.end method
