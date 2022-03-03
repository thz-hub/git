.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;
.super Ljava/lang/Object;
.source "ConnectionPropertiesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlMap"
.end annotation


# instance fields
.field protected alpha:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected ordered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionPropertiesImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionPropertiesImpl;)V
    .locals 0

    .line 1424
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->this$0:Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    .line 1426
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    return-void
.end method
