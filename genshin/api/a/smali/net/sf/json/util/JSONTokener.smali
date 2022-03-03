.class public Lnet/sf/json/util/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private myIndex:I

.field private mySource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_0
    const-string p1, ""

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    .local v0, "first":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 81
    .local v1, "last":C
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_2

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    const-string v2, "Found starting \'[\' but missing \']\' at the end."

    invoke-virtual {p0, v2}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v2

    throw v2

    .line 84
    :cond_2
    :goto_1
    const/16 v2, 0x7b

    if-ne v0, v2, :cond_4

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 85
    :cond_3
    const-string v2, "Found starting \'{\' but missing \'}\' at the end."

    invoke-virtual {p0, v2}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v2

    throw v2

    .line 88
    .end local v0    # "first":C
    .end local v1    # "last":C
    :cond_4
    :goto_2
    iput-object p1, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "c"    # C

    .line 44
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 45
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 47
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 48
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 50
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 51
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 53
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public back()V
    .locals 1

    .line 97
    iget v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    if-lez v0, :cond_0

    .line 98
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 100
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .line 103
    iget-object v0, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    iget v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "str":Ljava/lang/String;
    invoke-static {p1}, Lnet/sf/json/regexp/RegexpUtils;->getMatcher(Ljava/lang/String;)Lnet/sf/json/regexp/RegexpMatcher;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/sf/json/regexp/RegexpMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public more()Z
    .locals 2

    .line 122
    iget v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    iget-object v1, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()C
    .locals 2

    .line 131
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->more()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    iget v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "c":C
    iget v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 134
    return v0

    .line 136
    .end local v0    # "c":C
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C

    .line 148
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v0

    .line 149
    .local v0, "n":C
    if-ne v0, p1, :cond_0

    .line 152
    return v0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    .line 164
    iget v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 165
    .local v0, "i":I
    add-int v1, v0, p1

    .line 166
    .local v1, "j":I
    iget-object v2, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 169
    iget v2, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 170
    iget-object v2, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 167
    :cond_0
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public nextClean()C
    .locals 5

    .line 182
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v0

    .line 183
    .local v0, "c":C
    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    .line 184
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 205
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 206
    return v3

    .line 187
    :cond_0
    :sswitch_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v0

    .line 188
    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_0

    .line 189
    goto :goto_2

    .line 192
    :cond_1
    :goto_1
    :sswitch_1
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v0

    .line 193
    if-eqz v0, :cond_3

    .line 196
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 198
    goto :goto_2

    .line 200
    :cond_2
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    goto :goto_1

    .line 194
    :cond_3
    const-string v1, "Unclosed comment."

    invoke-virtual {p0, v1}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v1

    throw v1

    .line 208
    :cond_4
    const/16 v3, 0x23

    if-ne v0, v3, :cond_6

    .line 210
    :cond_5
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v0

    .line 211
    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_5

    goto :goto_2

    .line 212
    :cond_6
    if-eqz v0, :cond_8

    const/16 v1, 0x20

    if-le v0, v1, :cond_7

    goto :goto_3

    .line 215
    .end local v0    # "c":C
    :cond_7
    :goto_2
    goto :goto_0

    .line 213
    .restart local v0    # "c":C
    :cond_8
    :goto_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .param p1, "quote"    # C

    .line 230
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v1

    .line 233
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 267
    if-ne v1, p1, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 239
    :sswitch_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v1

    .line 240
    const/16 v2, 0x10

    sparse-switch v1, :sswitch_data_1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 265
    goto :goto_0

    .line 260
    :sswitch_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lnet/sf/json/util/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    goto :goto_0

    .line 257
    :sswitch_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lnet/sf/json/util/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    goto :goto_0

    .line 245
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    goto :goto_0

    .line 254
    :sswitch_4
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    goto :goto_0

    .line 248
    :sswitch_5
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    goto :goto_0

    .line 251
    :sswitch_6
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    goto :goto_0

    .line 242
    :sswitch_7
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    goto :goto_0

    .line 237
    :sswitch_8
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v2

    throw v2

    .line 270
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0xa -> :sswitch_8
        0xd -> :sswitch_8
        0x5c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_7
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x78 -> :sswitch_1
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # C

    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v1

    .line 286
    .local v1, "c":C
    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    .end local v1    # "c":C
    goto :goto_0

    .line 287
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 288
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 290
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "delimiters"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v1

    .line 309
    .local v1, "c":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 310
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 311
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 313
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 1

    .line 328
    new-instance v0, Lnet/sf/json/JsonConfig;

    invoke-direct {v0}, Lnet/sf/json/JsonConfig;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/json/util/JSONTokener;->nextValue(Lnet/sf/json/JsonConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextValue(Lnet/sf/json/JsonConfig;)Ljava/lang/Object;
    .locals 8
    .param p1, "jsonConfig"    # Lnet/sf/json/JsonConfig;

    .line 339
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->nextClean()C

    move-result v0

    .line 342
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 363
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v1, "sb":Ljava/lang/StringBuffer;
    move v2, v0

    .local v2, "b":C
    goto :goto_0

    .line 347
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "b":C
    :sswitch_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 348
    invoke-static {p0, p1}, Lnet/sf/json/JSONObject;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 350
    :sswitch_1
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 351
    invoke-static {p0, p1}, Lnet/sf/json/JSONArray;->fromObject(Ljava/lang/Object;Lnet/sf/json/JsonConfig;)Lnet/sf/json/JSONArray;

    move-result-object v1

    return-object v1

    .line 345
    :sswitch_2
    invoke-virtual {p0, v0}, Lnet/sf/json/util/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 365
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    .restart local v2    # "b":C
    :goto_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 366
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 380
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v4

    .line 383
    :cond_1
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v4

    .line 386
    :cond_2
    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p1}, Lnet/sf/json/JsonConfig;->isJavascriptCompliant()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "undefined"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    .line 399
    :cond_3
    const/16 v4, 0x30

    if-lt v2, v4, :cond_4

    const/16 v5, 0x39

    if-le v2, v5, :cond_8

    :cond_4
    const/16 v5, 0x2e

    if-eq v2, v5, :cond_8

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_8

    const/16 v5, 0x2b

    if-ne v2, v5, :cond_5

    goto :goto_2

    .line 423
    :cond_5
    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->isFunctionHeader(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Lnet/sf/json/util/JSONUtils;->isFunction(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 426
    :cond_6
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->peek()C

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 435
    return-object v3

    .line 432
    :sswitch_3
    new-instance v4, Lnet/sf/json/JSONException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unquotted string \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    :cond_7
    :goto_1
    return-object v3

    .line 400
    :cond_8
    :goto_2
    if-ne v2, v4, :cond_b

    .line 401
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_a

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x78

    if-eq v6, v7, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x58

    if-ne v4, v6, :cond_a

    .line 403
    :cond_9
    :try_start_0
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 404
    :catch_0
    move-exception v4

    .line 406
    goto :goto_3

    .line 409
    :cond_a
    :try_start_1
    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 410
    :catch_1
    move-exception v4

    .line 417
    :cond_b
    :goto_3
    :try_start_2
    invoke-static {v3}, Lorg/apache/commons/lang/math/NumberUtils;->createNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    .line 418
    :catch_2
    move-exception v4

    .line 419
    .local v4, "e":Ljava/lang/Exception;
    return-object v3

    .line 388
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    invoke-static {}, Lnet/sf/json/JSONNull;->getInstance()Lnet/sf/json/JSONNull;

    move-result-object v4

    return-object v4

    .line 378
    :cond_d
    const-string v4, "Missing value."

    invoke-virtual {p0, v4}, Lnet/sf/json/util/JSONTokener;->syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;

    move-result-object v4

    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_3
        0x5b -> :sswitch_3
        0x5d -> :sswitch_3
        0x7b -> :sswitch_3
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method public peek()C
    .locals 2

    .line 444
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->more()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    iget v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 446
    .local v0, "c":C
    return v0

    .line 448
    .end local v0    # "c":C
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 453
    return-void
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    iget v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 463
    if-gez v0, :cond_0

    .line 464
    iget-object v0, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 468
    :goto_0
    return-void
.end method

.method public skipTo(C)C
    .locals 2
    .param p1, "to"    # C

    .line 480
    iget v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 482
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->next()C

    move-result v1

    .line 483
    .local v1, "c":C
    if-nez v1, :cond_0

    .line 484
    iput v0, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    .line 485
    return v1

    .line 487
    :cond_0
    if-ne v1, p1, :cond_1

    .line 488
    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->back()V

    .line 489
    return v1

    .line 487
    :cond_1
    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lnet/sf/json/JSONException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 499
    new-instance v0, Lnet/sf/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnet/sf/json/util/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lnet/sf/json/util/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/sf/json/util/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
