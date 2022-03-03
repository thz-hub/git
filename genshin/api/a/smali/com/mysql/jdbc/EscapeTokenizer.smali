.class public Lcom/mysql/jdbc/EscapeTokenizer;
.super Ljava/lang/Object;
.source "EscapeTokenizer.java"


# static fields
.field private static final CHR_BEGIN_TOKEN:C = '{'

.field private static final CHR_COMMENT:C = '-'

.field private static final CHR_CR:C = '\r'

.field private static final CHR_DBL_QUOTE:C = '\"'

.field private static final CHR_END_TOKEN:C = '}'

.field private static final CHR_ESCAPE:C = '\\'

.field private static final CHR_LF:C = '\n'

.field private static final CHR_SGL_QUOTE:C = '\''

.field private static final CHR_VARIABLE:C = '@'


# instance fields
.field private bracesLevel:I

.field private emittingEscapeCode:Z

.field private inQuotes:Z

.field private pos:I

.field private quoteChar:C

.field private sawVariableUse:Z

.field private source:Ljava/lang/String;

.field private sourceLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    .line 42
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 44
    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 45
    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    .line 46
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 47
    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    .line 48
    iput-char v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    .line 59
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized hasMoreTokens()Z
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 68
    .end local p0    # "this":Lcom/mysql/jdbc/EscapeTokenizer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextToken()Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "tokenBuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 80
    .local v1, "backslashEscape":Z
    iget-boolean v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iput-boolean v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 86
    .end local p0    # "this":Lcom/mysql/jdbc/EscapeTokenizer;
    :cond_0
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v2, v4, :cond_10

    .line 87
    iget-object v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 90
    .local v2, "c":C
    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    if-nez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    .line 93
    goto/16 :goto_4

    .line 97
    :cond_2
    const/16 v4, 0x27

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-ne v2, v4, :cond_6

    :cond_3
    if-nez v1, :cond_6

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-boolean v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    if-eqz v4, :cond_5

    .line 100
    iget-char v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    if-ne v2, v4, :cond_f

    .line 102
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v6, v7, :cond_4

    iget-object v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    if-ne v4, v6, :cond_4

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto/16 :goto_4

    .line 106
    :cond_4
    iput-boolean v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    goto/16 :goto_4

    .line 110
    :cond_5
    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    .line 111
    iput-char v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    .line 113
    goto/16 :goto_4

    .line 117
    :cond_6
    const/16 v4, 0xa

    if-eq v2, v4, :cond_e

    const/16 v6, 0xd

    if-ne v2, v6, :cond_7

    goto/16 :goto_3

    .line 123
    :cond_7
    iget-boolean v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    if-nez v7, :cond_d

    if-nez v1, :cond_d

    .line 125
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_9

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    iget v8, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iget v10, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v9, v10, :cond_f

    iget-object v9, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_f

    .line 130
    :goto_2
    iget v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v8, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v7, v8, :cond_8

    if-eq v2, v4, :cond_8

    if-eq v2, v6, :cond_8

    .line 131
    iget-object v8, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v2, v7

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 134
    :cond_8
    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto :goto_4

    .line 140
    :cond_9
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_b

    .line 141
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 142
    if-ne v4, v5, :cond_a

    .line 143
    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 144
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 147
    :cond_a
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    goto :goto_4

    .line 152
    :cond_b
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_c

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 155
    if-nez v4, :cond_f

    .line 156
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 163
    :cond_c
    const/16 v4, 0x40

    if-ne v2, v4, :cond_d

    .line 164
    :try_start_2
    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    .line 168
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const/4 v1, 0x0

    goto :goto_4

    .line 118
    :cond_e
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    const/4 v1, 0x0

    .line 120
    nop

    .line 86
    .end local v2    # "c":C
    :cond_f
    :goto_4
    iget v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto/16 :goto_0

    .line 172
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 76
    .end local v0    # "tokenBuf":Ljava/lang/StringBuilder;
    .end local v1    # "backslashEscape":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sawVariableUse()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    return v0
.end method
