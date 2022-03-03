.class public Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
.super Ljava/lang/Object;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ServerPreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindValue"
.end annotation


# instance fields
.field public bindLength:J

.field public boundBeforeExecutionNum:J

.field public bufferType:I

.field public calendar:Ljava/util/Calendar;

.field public doubleBinding:D

.field public floatBinding:F

.field public isLongData:Z

.field public isNull:Z

.field public isSet:Z

.field public longBinding:J

.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 119
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 2
    .param p1, "copyMe"    # Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 122
    iget-object v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 123
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 124
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 125
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 126
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 127
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 128
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 129
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 130
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 131
    iget-object v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    .line 132
    return-void
.end method


# virtual methods
.method getBoundLength()J
    .locals 7

    .line 195
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    return-wide v1

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v0, :cond_1

    .line 200
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    return-wide v0

    .line 203
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const-wide/16 v3, 0x8

    const-wide/16 v5, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 235
    return-wide v1

    .line 218
    :sswitch_0
    const-wide/16 v0, 0x9

    return-wide v0

    .line 220
    :sswitch_1
    const-wide/16 v0, 0x7

    return-wide v0

    .line 212
    :sswitch_2
    return-wide v3

    .line 223
    :sswitch_3
    const-wide/16 v0, 0xb

    return-wide v0

    .line 216
    :sswitch_4
    return-wide v3

    .line 214
    :sswitch_5
    return-wide v5

    .line 210
    :sswitch_6
    return-wide v5

    .line 208
    :sswitch_7
    const-wide/16 v0, 0x2

    return-wide v0

    .line 206
    :sswitch_8
    const-wide/16 v0, 0x1

    return-wide v0

    .line 229
    :sswitch_9
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 230
    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 232
    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_3
        0xf -> :sswitch_9
        0xf6 -> :sswitch_9
        0xfd -> :sswitch_9
        0xfe -> :sswitch_9
    .end sparse-switch
.end method

.method reset()V
    .locals 4

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 136
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 138
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 140
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 142
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 144
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->calendar:Ljava/util/Calendar;

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "quoteIfNeeded"    # Z

    .line 153
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "\' STREAM DATA \'"

    return-object v0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "NULL"

    return-object v0

    .line 161
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const-string v1, "\'"

    sparse-switch v0, :sswitch_data_0

    .line 184
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    instance-of v2, v0, [B

    if-eqz v2, :cond_3

    .line 185
    const-string v0, "byte data"

    return-object v0

    .line 178
    :sswitch_0
    if-eqz p1, :cond_2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :sswitch_1
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :sswitch_2
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :sswitch_3
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_3
    if-eqz p1, :cond_4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xf -> :sswitch_0
        0xfd -> :sswitch_0
        0xfe -> :sswitch_0
    .end sparse-switch
.end method
