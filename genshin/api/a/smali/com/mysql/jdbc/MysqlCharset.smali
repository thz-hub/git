.class Lcom/mysql/jdbc/MysqlCharset;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# instance fields
.field public final charsetName:Ljava/lang/String;

.field public final javaEncodingsUc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public major:I

.field public final mblen:I

.field public minor:I

.field public final priority:I

.field public subminor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 7
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "mblen"    # I
    .param p3, "priority"    # I
    .param p4, "javaEncodings"    # [Ljava/lang/String;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    .line 836
    const/4 v0, 0x4

    iput v0, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    .line 837
    const/4 v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    .line 838
    const/4 v1, 0x0

    iput v1, p0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    .line 853
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 854
    iput p2, p0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    .line 855
    iput p3, p0, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    .line 857
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_2

    .line 858
    aget-object v2, p4, v1

    .line 860
    .local v2, "encoding":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 861
    .local v3, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v4

    .line 864
    .local v4, "als":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 865
    .local v5, "ali":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 866
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 873
    .end local v3    # "cs":Ljava/nio/charset/Charset;
    .end local v4    # "als":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "ali":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    goto :goto_2

    .line 868
    :catch_0
    move-exception v3

    .line 870
    .local v3, "e":Ljava/lang/Exception;
    if-ne p2, v0, :cond_1

    .line 871
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    .line 857
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 877
    if-le p2, v0, :cond_3

    .line 878
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    goto :goto_3

    .line 880
    :cond_3
    const-string v0, "Cp1252"

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlCharset;->addEncodingMapping(Ljava/lang/String;)V

    .line 883
    :cond_4
    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;II)V
    .locals 0
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "mblen"    # I
    .param p3, "priority"    # I
    .param p4, "javaEncodings"    # [Ljava/lang/String;
    .param p5, "major"    # I
    .param p6, "minor"    # I

    .line 894
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 895
    iput p5, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    .line 896
    iput p6, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    .line 897
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[Ljava/lang/String;III)V
    .locals 0
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "mblen"    # I
    .param p3, "priority"    # I
    .param p4, "javaEncodings"    # [Ljava/lang/String;
    .param p5, "major"    # I
    .param p6, "minor"    # I
    .param p7, "subminor"    # I

    .line 900
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 901
    iput p5, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    .line 902
    iput p6, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    .line 903
    iput p7, p0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    .line 904
    return-void
.end method

.method private addEncodingMapping(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 886
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "encodingUc":Ljava/lang/String;
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_0
    return-void
.end method


# virtual methods
.method getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "javaEncoding"    # Ljava/lang/String;

    .line 932
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    return-object p1

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method isOkayForVersion(Lcom/mysql/jdbc/Connection;)Z
    .locals 3
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 921
    iget v0, p0, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v1, p0, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v2, p0, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    invoke-interface {p1, v0, v1, v2}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .local v0, "asString":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, "charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, ",mblen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget v1, p0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 916
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
