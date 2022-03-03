.class public Lorg/json/XMLTokener;
.super Lorg/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 45
    sget-object v1, Lorg/json/XML;->AMP:Ljava/lang/Character;

    const-string v2, "amp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lorg/json/XML;->APOS:Ljava/lang/Character;

    const-string v2, "apos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    const-string v2, "gt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lorg/json/XML;->LT:Ljava/lang/Character;

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    const-string v2, "quot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 71
    .local v1, "c":C
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    .line 76
    .local v2, "i":I
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 72
    .end local v2    # "i":I
    :cond_1
    const-string v2, "Unclosed CDATA"

    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 98
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 99
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_5

    .line 100
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    return-object v1

    .line 103
    :cond_0
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 104
    sget-object v1, Lorg/json/XML;->LT:Ljava/lang/Character;

    return-object v1

    .line 106
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1
    if-eq v0, v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 112
    :cond_2
    const/16 v3, 0x26

    if-ne v0, v3, :cond_3

    .line 113
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    :goto_2
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    goto :goto_1

    .line 109
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    goto :goto_0
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v1

    .line 133
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    .line 136
    nop

    .line 141
    .end local v1    # "c":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lorg/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, "e":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 138
    .end local v2    # "e":Ljava/lang/Object;
    .local v1, "c":C
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing \';\' in XML entity: &"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 134
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    .end local v1    # "c":C
    goto :goto_0
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 161
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    .local v1, "q":C
    goto :goto_1

    .line 176
    .end local v1    # "q":C
    :sswitch_0
    sget-object v1, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    return-object v1

    .line 168
    :sswitch_1
    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    return-object v1

    .line 172
    :sswitch_2
    sget-object v1, Lorg/json/XML;->EQ:Ljava/lang/Character;

    return-object v1

    .line 166
    :sswitch_3
    sget-object v1, Lorg/json/XML;->LT:Ljava/lang/Character;

    return-object v1

    .line 170
    :sswitch_4
    sget-object v1, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-object v1

    .line 179
    :sswitch_5
    move v1, v0

    .line 181
    .restart local v1    # "q":C
    :cond_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 182
    if-eqz v0, :cond_1

    .line 185
    if-ne v0, v1, :cond_0

    .line 186
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 183
    :cond_1
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 174
    .end local v1    # "q":C
    :sswitch_6
    sget-object v1, Lorg/json/XML;->BANG:Ljava/lang/Character;

    return-object v1

    .line 164
    :sswitch_7
    const-string v1, "Misshaped meta tag"

    invoke-virtual {p0, v1}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 191
    .restart local v1    # "q":C
    :goto_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 192
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 195
    :cond_2
    sparse-switch v0, :sswitch_data_1

    .line 206
    goto :goto_1

    .line 205
    :sswitch_8
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 206
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 161
    .end local v1    # "q":C
    :cond_3
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 226
    :goto_0
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 227
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 228
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    .local v1, "q":C
    const/4 v2, 0x0

    .line 268
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    goto :goto_2

    .line 242
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_0
    sget-object v1, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    return-object v1

    .line 234
    :sswitch_1
    sget-object v1, Lorg/json/XML;->GT:Ljava/lang/Character;

    return-object v1

    .line 238
    :sswitch_2
    sget-object v1, Lorg/json/XML;->EQ:Ljava/lang/Character;

    return-object v1

    .line 232
    :sswitch_3
    const-string v1, "Misplaced \'<\'"

    invoke-virtual {p0, v1}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 236
    :sswitch_4
    sget-object v1, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-object v1

    .line 248
    :sswitch_5
    move v1, v0

    .line 249
    .restart local v1    # "q":C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 252
    if-eqz v0, :cond_2

    .line 255
    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    :cond_0
    const/16 v3, 0x26

    if-ne v0, v3, :cond_1

    .line 259
    invoke-virtual {p0, v0}, Lorg/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 253
    :cond_2
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 240
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_6
    sget-object v1, Lorg/json/XML;->BANG:Ljava/lang/Character;

    return-object v1

    .line 230
    :sswitch_7
    const-string v1, "Misshaped element"

    invoke-virtual {p0, v1}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 270
    .restart local v1    # "q":C
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 272
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 275
    :cond_3
    sparse-switch v0, :sswitch_data_1

    .line 290
    goto :goto_2

    :sswitch_8
    const-string v3, "Bad character in a name"

    invoke-virtual {p0, v3}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    .line 285
    :sswitch_9
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 277
    :sswitch_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 227
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x21 -> :sswitch_9
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_9
        0x3c -> :sswitch_8
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 9
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 310
    .local v1, "n":I
    new-array v2, v1, [C

    .line 317
    .local v2, "circle":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v5

    .line 319
    .local v5, "c":C
    if-nez v5, :cond_0

    .line 320
    return v4

    .line 322
    :cond_0
    aput-char v5, v2, v3

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v5    # "c":C
    :cond_1
    :goto_1
    move v5, v0

    .line 329
    .local v5, "j":I
    const/4 v6, 0x1

    .line 333
    .local v6, "b":Z
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 334
    aget-char v7, v2, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 335
    const/4 v6, 0x0

    .line 336
    goto :goto_3

    .line 338
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 339
    if-lt v5, v1, :cond_3

    .line 340
    sub-int/2addr v5, v1

    .line 333
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 346
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 347
    const/4 v4, 0x1

    return v4

    .line 352
    :cond_5
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v7

    .line 353
    .local v7, "c":C
    if-nez v7, :cond_6

    .line 354
    return v4

    .line 360
    :cond_6
    aput-char v7, v2, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    .line 362
    if-lt v0, v1, :cond_7

    .line 363
    sub-int/2addr v0, v1

    goto :goto_1

    .line 362
    :cond_7
    goto :goto_1
.end method
