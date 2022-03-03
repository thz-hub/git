.class public Lcom/mysql/jdbc/CachedResultSetMetaData;
.super Ljava/lang/Object;
.source "CachedResultSetMetaData.java"


# instance fields
.field columnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fields:[Lcom/mysql/jdbc/Field;

.field fullColumnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field metadata:Ljava/sql/ResultSetMetaData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    .line 36
    iput-object v0, p0, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getColumnNameToIndex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    return-object v0
.end method

.method public getFields()[Lcom/mysql/jdbc/Field;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    return-object v0
.end method

.method public getFullColumnNameToIndex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Ljava/sql/ResultSetMetaData;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mysql/jdbc/CachedResultSetMetaData;->metadata:Ljava/sql/ResultSetMetaData;

    return-object v0
.end method
