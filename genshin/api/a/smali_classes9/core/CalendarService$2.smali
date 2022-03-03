.class Lcore/CalendarService$2;
.super Ljava/util/TimerTask;
.source "CalendarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcore/CalendarService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcore/CalendarService;


# direct methods
.method constructor <init>(Lcore/CalendarService;)V
    .locals 0
    .param p1, "this$0"    # Lcore/CalendarService;

    .line 86
    iput-object p1, p0, Lcore/CalendarService$2;->this$0:Lcore/CalendarService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcore/CalendarService$2;->this$0:Lcore/CalendarService;

    invoke-static {v0}, Lcore/CalendarService;->access$000(Lcore/CalendarService;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
