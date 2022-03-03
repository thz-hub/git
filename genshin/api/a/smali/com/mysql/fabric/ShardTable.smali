.class public Lcom/mysql/fabric/ShardTable;
.super Ljava/lang/Object;
.source "ShardTable.java"


# instance fields
.field private column:Ljava/lang/String;

.field private database:Ljava/lang/String;

.field private table:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "database"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "column"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mysql/fabric/ShardTable;->database:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/mysql/fabric/ShardTable;->table:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/mysql/fabric/ShardTable;->column:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mysql/fabric/ShardTable;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mysql/fabric/ShardTable;->database:Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mysql/fabric/ShardTable;->table:Ljava/lang/String;

    return-object v0
.end method
