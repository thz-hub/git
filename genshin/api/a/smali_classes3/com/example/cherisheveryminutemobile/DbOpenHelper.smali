.class public Lcom/example/cherisheveryminutemobile/DbOpenHelper;
.super Ljava/lang/Object;
.source "DbOpenHelper.java"


# static fields
.field private static final CLS:Ljava/lang/String; = "com.mysql.jdbc.Driver"

.field private static PWD:Ljava/lang/String; = null

.field private static final URL:Ljava/lang/String; = "jdbc:mysql://150.158.171.225:3306/resinandroid?characterEncoding=utf-8&useSSL=true"

.field private static final USER:Ljava/lang/String; = "androidresin"

.field public static conn:Ljava/sql/Connection;

.field public static pStmt:Ljava/sql/PreparedStatement;

.field public static rs:Ljava/sql/ResultSet;

.field public static stmt:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "456321"

    sput-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->PWD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAll()V
    .locals 2

    .line 43
    :try_start_0
    sget-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->rs:Ljava/sql/ResultSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 45
    sput-object v1, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->rs:Ljava/sql/ResultSet;

    .line 47
    :cond_0
    sget-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->stmt:Ljava/sql/Statement;

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 49
    sput-object v1, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->stmt:Ljava/sql/Statement;

    .line 51
    :cond_1
    sget-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->pStmt:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 53
    sput-object v1, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->pStmt:Ljava/sql/PreparedStatement;

    .line 55
    :cond_2
    sget-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->conn:Ljava/sql/Connection;

    if-eqz v0, :cond_3

    .line 56
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 57
    sput-object v1, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->conn:Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_3
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getConnection()V
    .locals 3

    .line 31
    :try_start_0
    const-string v0, "com.mysql.jdbc.Driver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    const-string v0, "bd77f47b20bc1a360ff5e362cb9ad4e9"

    sput-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->PWD:Ljava/lang/String;

    .line 34
    const-string v1, "jdbc:mysql://150.158.171.225:3306/resinandroid?characterEncoding=utf-8&useSSL=true"

    const-string v2, "androidresin"

    invoke-static {v1, v2, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    sput-object v0, Lcom/example/cherisheveryminutemobile/DbOpenHelper;->conn:Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
