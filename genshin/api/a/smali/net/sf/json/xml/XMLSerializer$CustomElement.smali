.class Lnet/sf/json/xml/XMLSerializer$CustomElement;
.super Lnu/xom/Element;
.source "XMLSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/xml/XMLSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomElement"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1346
    invoke-static {p1}, Lnet/sf/json/xml/XMLSerializer$CustomElement;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    .line 1347
    invoke-static {p1}, Lnet/sf/json/xml/XMLSerializer$CustomElement;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/json/xml/XMLSerializer$CustomElement;->prefix:Ljava/lang/String;

    .line 1348
    return-void
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1328
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1329
    .local v0, "colon":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1330
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1332
    :cond_0
    return-object p0
.end method

.method private static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1336
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1337
    .local v0, "colon":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1338
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1340
    :cond_0
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public final getQName()Ljava/lang/String;
    .locals 2

    .line 1351
    iget-object v0, p0, Lnet/sf/json/xml/XMLSerializer$CustomElement;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    invoke-virtual {p0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1354
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnet/sf/json/xml/XMLSerializer$CustomElement;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
