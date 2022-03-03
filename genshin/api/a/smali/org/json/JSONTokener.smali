.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private index:I

.field private lastChar:C

.field private reader:Ljava/io/Reader;

.field private useLastChar:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    iput-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 58
    iput v0, p0, Lorg/json/JSONTokener;->index:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 69
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "c"    # C

    .line 94
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 95
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 97
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 98
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 100
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 101
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 103
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lorg/json/JSONTokener;->useLastChar:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/json/JSONTokener;->index:I

    if-lez v0, :cond_0

    .line 81
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->index:I

    .line 82
    iput-boolean v1, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public more()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 114
    .local v0, "nextChar":C
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method public next()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lorg/json/JSONTokener;->useLastChar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    iput-boolean v1, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 130
    iget-char v0, p0, Lorg/json/JSONTokener;->lastChar:C

    if-eqz v0, :cond_0

    .line 131
    iget v1, p0, Lorg/json/JSONTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->index:I

    .line 133
    :cond_0
    return v0

    .line 137
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v0, "c":I
    nop

    .line 142
    if-gtz v0, :cond_2

    .line 143
    iput-char v1, p0, Lorg/json/JSONTokener;->lastChar:C

    .line 144
    return v1

    .line 146
    :cond_2
    iget v1, p0, Lorg/json/JSONTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->index:I

    .line 147
    int-to-char v1, v0

    iput-char v1, p0, Lorg/json/JSONTokener;->lastChar:C

    .line 148
    return v1

    .line 138
    .end local v0    # "c":I
    :catch_0
    move-exception v0

    .line 139
    .local v0, "exc":Ljava/io/IOException;
    .local v1, "c":I
    new-instance v2, Lorg/json/JSONException;

    invoke-direct {v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 161
    .local v0, "n":C
    if-ne v0, p1, :cond_0

    .line 165
    return v0

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public next(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 179
    if-nez p1, :cond_0

    .line 180
    const-string v0, ""

    return-object v0

    .line 183
    :cond_0
    new-array v0, p1, [C

    .line 184
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 186
    .local v1, "pos":I
    iget-boolean v2, p0, Lorg/json/JSONTokener;->useLastChar:Z

    if-eqz v2, :cond_1

    .line 187
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/json/JSONTokener;->useLastChar:Z

    .line 188
    iget-char v3, p0, Lorg/json/JSONTokener;->lastChar:C

    aput-char v3, v0, v2

    .line 189
    const/4 v1, 0x1

    .line 194
    :cond_1
    :goto_0
    if-ge v1, p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    sub-int v3, p1, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 195
    add-int/2addr v1, v3

    goto :goto_0

    .line 197
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 198
    .local v2, "exc":Ljava/io/IOException;
    new-instance v3, Lorg/json/JSONException;

    invoke-direct {v3, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 199
    .end local v2    # "exc":Ljava/io/IOException;
    :cond_2
    nop

    .line 200
    iget v2, p0, Lorg/json/JSONTokener;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/json/JSONTokener;->index:I

    .line 202
    if-lt v1, p1, :cond_3

    .line 206
    add-int/lit8 v2, p1, -0x1

    aget-char v2, v0, v2

    iput-char v2, p0, Lorg/json/JSONTokener;->lastChar:C

    .line 207
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 203
    :cond_3
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 218
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 219
    .local v0, "c":C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 222
    .end local v0    # "c":C
    :cond_0
    goto :goto_0

    .line 220
    .restart local v0    # "c":C
    :cond_1
    :goto_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 242
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 276
    if-ne v1, p1, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 248
    :sswitch_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 249
    const/16 v2, 0x10

    sparse-switch v1, :sswitch_data_1

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    goto :goto_0

    .line 269
    :sswitch_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    goto :goto_0

    .line 266
    :sswitch_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 267
    goto :goto_0

    .line 254
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    goto :goto_0

    .line 263
    :sswitch_4
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    goto :goto_0

    .line 257
    :sswitch_5
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    goto :goto_0

    .line 260
    :sswitch_6
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    goto :goto_0

    .line 251
    :sswitch_7
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    goto :goto_0

    .line 246
    :sswitch_8
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 279
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 295
    .local v1, "c":C
    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    .end local v1    # "c":C
    goto :goto_0

    .line 296
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 297
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 299
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    .line 317
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

    .line 324
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 319
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 322
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v0

    .line 340
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 362
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 345
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 346
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    return-object v1

    .line 349
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 350
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    return-object v1

    .line 343
    :sswitch_2
    invoke-virtual {p0, v0}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 363
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "s":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 373
    invoke-static {v2}, Lorg/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 371
    :cond_1
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v3

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x28 -> :sswitch_1
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 4
    .param p1, "to"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lorg/json/JSONTokener;->index:I

    .line 388
    .local v1, "startIndex":I
    iget-object v2, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/io/Reader;->mark(I)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 392
    :try_start_1
    iget-object v2, p0, Lorg/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->reset()V

    .line 393
    iput v1, p0, Lorg/json/JSONTokener;->index:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    return v0

    .line 397
    .end local v1    # "startIndex":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 396
    .restart local v1    # "startIndex":I
    :cond_1
    if-ne v0, p1, :cond_0

    .line 399
    .end local v1    # "startIndex":I
    nop

    .line 401
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 402
    return v0

    .line 397
    .end local v0    # "c":C
    :catch_1
    move-exception v1

    .line 398
    .restart local v0    # "c":C
    .local v1, "exc":Ljava/io/IOException;
    :goto_0
    new-instance v2, Lorg/json/JSONException;

    invoke-direct {v2, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 412
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
