.class public final enum Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
.super Ljava/lang/Enum;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ProcedureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

.field public static final enum FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

.field public static final enum PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 615
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    const-string v1, "PROCEDURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    new-instance v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    const-string v3, "FUNCTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    .line 614
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 614
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 614
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    return-object v0
.end method

.method public static final values()[Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;
    .locals 1

    .line 614
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    return-object v0
.end method
