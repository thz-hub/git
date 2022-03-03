.class Lcom/mysql/jdbc/Util$RandStructcture;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RandStructcture"
.end annotation


# instance fields
.field maxValue:J

.field maxValueDbl:D

.field seed1:J

.field seed2:J

.field final synthetic this$0:Lcom/mysql/jdbc/Util;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/Util;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mysql/jdbc/Util$RandStructcture;->this$0:Lcom/mysql/jdbc/Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
