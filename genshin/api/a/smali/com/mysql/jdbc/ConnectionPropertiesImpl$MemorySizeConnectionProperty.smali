.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemorySizeConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66043ac986b89270L


# instance fields
.field private valueAsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "propertyNameToSet"    # Ljava/lang/String;
    .param p2, "defaultValueToSet"    # I
    .param p3, "lowerBoundToSet"    # I
    .param p4, "upperBoundToSet"    # I
    .param p5, "descriptionToSet"    # Ljava/lang/String;
    .param p6, "sinceVersionToSet"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;
    .param p8, "orderInCategory"    # I

    .line 497
    invoke-direct/range {p0 .. p8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    return-void
.end method


# virtual methods
.method getValueAsString()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->valueAsString:Ljava/lang/String;

    return-object v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 3
    .param p1, "extractedValue"    # Ljava/lang/String;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->valueAsString:Ljava/lang/String;

    .line 503
    const/4 v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 505
    if-eqz p1, :cond_6

    .line 506
    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const-string v1, "K"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "kb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Kb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "kB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "KB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 511
    :cond_0
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "M"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Mb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    const-string v0, "g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "G"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Gb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 519
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, "indexOfG":I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 513
    .end local v0    # "indexOfG":I
    :cond_3
    :goto_0
    const/high16 v1, 0x100000

    iput v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 514
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 515
    .local v0, "indexOfM":I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 516
    .end local v0    # "indexOfM":I
    :cond_4
    goto :goto_2

    .line 508
    :cond_5
    :goto_1
    const/16 v1, 0x400

    iput v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    .line 509
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, "indexOfK":I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 524
    .end local v0    # "indexOfK":I
    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 525
    return-void
.end method

.method setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "exceptionInterceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 529
    return-void
.end method
