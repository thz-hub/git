.class public Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResponseParser.java"


# instance fields
.field elNames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "thisElement":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 128
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Member;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Member;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    :cond_0
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->appendString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    :cond_1
    const-string v1, "i4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 134
    :cond_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBoolean(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :cond_3
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->appendString(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_4
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDouble(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_5
    const-string v1, "dateTime.iso8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDateTime(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_6
    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 143
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBase64([B)V

    goto :goto_1

    .line 133
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setInt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "thisElement":Ljava/lang/String;
    :cond_8
    :goto_1
    nop

    .line 149
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "thisElement":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 77
    const-string v1, "methodResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    iput-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    goto/16 :goto_1

    .line 79
    :cond_0
    const-string v1, "params"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 81
    .local v1, "pms":Lcom/mysql/fabric/xmlrpc/base/Params;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 82
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V

    .line 83
    .end local v1    # "pms":Lcom/mysql/fabric/xmlrpc/base/Params;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    goto/16 :goto_1

    :cond_1
    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Param;

    .line 85
    .local v1, "p":Lcom/mysql/fabric/xmlrpc/base/Param;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 86
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/Params;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    .line 87
    .end local v1    # "p":Lcom/mysql/fabric/xmlrpc/base/Param;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/Params;
    goto/16 :goto_1

    :cond_2
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 89
    .local v1, "v":Lcom/mysql/fabric/xmlrpc/base/Value;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "parent":Ljava/lang/Object;
    instance-of v3, v2, Lcom/mysql/fabric/xmlrpc/base/Data;

    if-eqz v3, :cond_3

    .line 91
    move-object v3, v2

    check-cast v3, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-virtual {v3, v1}, Lcom/mysql/fabric/xmlrpc/base/Data;->addValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 92
    :cond_3
    instance-of v3, v2, Lcom/mysql/fabric/xmlrpc/base/Param;

    if-eqz v3, :cond_4

    .line 93
    move-object v3, v2

    check-cast v3, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-virtual {v3, v1}, Lcom/mysql/fabric/xmlrpc/base/Param;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 94
    :cond_4
    instance-of v3, v2, Lcom/mysql/fabric/xmlrpc/base/Member;

    if-eqz v3, :cond_5

    .line 95
    move-object v3, v2

    check-cast v3, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {v3, v1}, Lcom/mysql/fabric/xmlrpc/base/Member;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto :goto_0

    .line 96
    :cond_5
    instance-of v3, v2, Lcom/mysql/fabric/xmlrpc/base/Fault;

    if-eqz v3, :cond_6

    .line 97
    move-object v3, v2

    check-cast v3, Lcom/mysql/fabric/xmlrpc/base/Fault;

    invoke-virtual {v3, v1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    .line 99
    .end local v1    # "v":Lcom/mysql/fabric/xmlrpc/base/Value;
    .end local v2    # "parent":Ljava/lang/Object;
    :cond_6
    :goto_0
    goto/16 :goto_1

    :cond_7
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Array;

    .line 101
    .local v1, "a":Lcom/mysql/fabric/xmlrpc/base/Array;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 102
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/Value;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V

    .line 103
    .end local v1    # "a":Lcom/mysql/fabric/xmlrpc/base/Array;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/Value;
    goto :goto_1

    :cond_8
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 104
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Data;

    .line 105
    .local v1, "d":Lcom/mysql/fabric/xmlrpc/base/Data;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Array;

    .line 106
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/Array;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/Array;->setData(Lcom/mysql/fabric/xmlrpc/base/Data;)V

    .line 107
    .end local v1    # "d":Lcom/mysql/fabric/xmlrpc/base/Data;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/Array;
    goto :goto_1

    :cond_9
    const-string v1, "struct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 108
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    .line 109
    .local v1, "s":Lcom/mysql/fabric/xmlrpc/base/Struct;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 110
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/Value;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V

    .line 111
    .end local v1    # "s":Lcom/mysql/fabric/xmlrpc/base/Struct;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/Value;
    goto :goto_1

    :cond_a
    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Member;

    .line 113
    .local v1, "m":Lcom/mysql/fabric/xmlrpc/base/Member;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/Struct;

    .line 114
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/Struct;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/Struct;->addMember(Lcom/mysql/fabric/xmlrpc/base/Member;)V

    .end local v1    # "m":Lcom/mysql/fabric/xmlrpc/base/Member;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/Struct;
    goto :goto_1

    .line 115
    :cond_b
    const-string v1, "fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 116
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Fault;

    .line 117
    .local v1, "f":Lcom/mysql/fabric/xmlrpc/base/Fault;
    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 118
    .local v2, "parent":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    invoke-virtual {v2, v1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->setFault(Lcom/mysql/fabric/xmlrpc/base/Fault;)V

    nop

    .line 121
    .end local v1    # "f":Lcom/mysql/fabric/xmlrpc/base/Fault;
    .end local v2    # "parent":Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    :cond_c
    :goto_1
    return-void
.end method

.method public getMethodResponse()Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 47
    move-object v0, p3

    .line 48
    .local v0, "thisElement":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 49
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "methodResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 53
    :cond_0
    const-string v1, "params"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Params;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Params;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 55
    :cond_1
    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 57
    :cond_2
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_3
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Array;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_4
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Data;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_5
    const-string v1, "struct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Struct;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_6
    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 66
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Member;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_7
    const-string v1, "fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 68
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/Fault;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/Fault;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_8
    :goto_0
    return-void
.end method
