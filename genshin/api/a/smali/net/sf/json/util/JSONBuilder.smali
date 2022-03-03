.class public Lnet/sf/json/util/JSONBuilder;
.super Ljava/lang/Object;
.source "JSONBuilder.java"


# static fields
.field private static final MAXDEPTH:I = 0x14


# instance fields
.field private comma:Z

.field protected mode:C

.field private stack:[C

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "w"    # Ljava/io/Writer;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    .line 95
    const/16 v1, 0x69

    iput-char v1, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    .line 96
    const/16 v1, 0x14

    new-array v1, v1, [C

    iput-object v1, p0, Lnet/sf/json/util/JSONBuilder;->stack:[C

    .line 97
    iput v0, p0, Lnet/sf/json/util/JSONBuilder;->top:I

    .line 98
    iput-object p1, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    .line 99
    return-void
.end method

.method private append(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 109
    if-eqz p1, :cond_4

    .line 112
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    const/16 v1, 0x61

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Value out of sequence."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    .line 115
    iget-object v0, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 117
    :cond_2
    iget-object v0, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    if-ne v0, v2, :cond_3

    .line 122
    const/16 v0, 0x6b

    iput-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    .line 124
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    .line 125
    return-object p0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Null pointer"

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private end(CC)Lnet/sf/json/util/JSONBuilder;
    .locals 2
    .param p1, "m"    # C
    .param p2, "c"    # C

    .line 159
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    if-eq v0, p1, :cond_1

    .line 160
    new-instance v0, Lnet/sf/json/JSONException;

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    const-string v1, "Misplaced endObject."

    goto :goto_0

    :cond_0
    const-string v1, "Misplaced endArray."

    :goto_0
    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lnet/sf/json/util/JSONBuilder;->pop(C)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    nop

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    .line 169
    return-object p0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 3
    .param p1, "c"    # C

    .line 255
    iget v0, p0, Lnet/sf/json/util/JSONBuilder;->top:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lnet/sf/json/util/JSONBuilder;->stack:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    if-ne v2, p1, :cond_1

    .line 258
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/json/util/JSONBuilder;->top:I

    .line 259
    if-nez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    :goto_0
    iput-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    .line 260
    return-void

    .line 256
    :cond_1
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Nesting error."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(C)V
    .locals 2
    .param p1, "c"    # C

    .line 269
    iget v0, p0, Lnet/sf/json/util/JSONBuilder;->top:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lnet/sf/json/util/JSONBuilder;->stack:[C

    aput-char p1, v1, v0

    .line 273
    iput-char p1, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    .line 274
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/json/util/JSONBuilder;->top:I

    .line 275
    return-void

    .line 270
    :cond_0
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public array()Lnet/sf/json/util/JSONBuilder;
    .locals 3

    .line 141
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    const/16 v1, 0x61

    const/16 v2, 0x69

    if-eq v0, v2, :cond_1

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lnet/sf/json/util/JSONBuilder;->push(C)V

    .line 143
    const-string v0, "["

    invoke-direct {p0, v0}, Lnet/sf/json/util/JSONBuilder;->append(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    .line 145
    return-object p0
.end method

.method public endArray()Lnet/sf/json/util/JSONBuilder;
    .locals 2

    .line 180
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lnet/sf/json/util/JSONBuilder;->end(CC)Lnet/sf/json/util/JSONBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lnet/sf/json/util/JSONBuilder;
    .locals 2

    .line 191
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lnet/sf/json/util/JSONBuilder;->end(CC)Lnet/sf/json/util/JSONBuilder;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 204
    if-eqz p1, :cond_2

    .line 207
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_1

    .line 209
    :try_start_0
    iget-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 212
    :cond_0
    iget-object v0, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lnet/sf/json/util/JSONBuilder;->writer:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    .line 215
    const/16 v0, 0x6f

    iput-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-object p0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lnet/sf/json/JSONException;

    invoke-direct {v1, v0}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Misplaced key."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object()Lnet/sf/json/util/JSONBuilder;
    .locals 3

    .line 235
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    const/16 v1, 0x6f

    const/16 v2, 0x69

    if-ne v0, v2, :cond_0

    .line 236
    iput-char v1, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    .line 238
    :cond_0
    iget-char v0, p0, Lnet/sf/json/util/JSONBuilder;->mode:C

    if-eq v0, v1, :cond_2

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Lnet/sf/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lnet/sf/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    :goto_0
    const-string v0, "{"

    invoke-direct {p0, v0}, Lnet/sf/json/util/JSONBuilder;->append(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;

    .line 240
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lnet/sf/json/util/JSONBuilder;->push(C)V

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/json/util/JSONBuilder;->comma:Z

    .line 242
    return-object p0
.end method

.method public value(D)Lnet/sf/json/util/JSONBuilder;
    .locals 1
    .param p1, "d"    # D

    .line 297
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lnet/sf/json/util/JSONBuilder;->value(Ljava/lang/Object;)Lnet/sf/json/util/JSONBuilder;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lnet/sf/json/util/JSONBuilder;
    .locals 1
    .param p1, "l"    # J

    .line 308
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/json/util/JSONBuilder;->append(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lnet/sf/json/util/JSONBuilder;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 321
    invoke-static {p1}, Lnet/sf/json/util/JSONUtils;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/json/util/JSONBuilder;->append(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lnet/sf/json/util/JSONBuilder;
    .locals 1
    .param p1, "b"    # Z

    .line 286
    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-direct {p0, v0}, Lnet/sf/json/util/JSONBuilder;->append(Ljava/lang/String;)Lnet/sf/json/util/JSONBuilder;

    move-result-object v0

    return-object v0
.end method
