.class Lcom/mysql/jdbc/WatchableOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "WatchableOutputStream.java"


# instance fields
.field private watcher:Lcom/mysql/jdbc/OutputStreamWatcher;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 42
    iget-object v0, p0, Lcom/mysql/jdbc/WatchableOutputStream;->watcher:Lcom/mysql/jdbc/OutputStreamWatcher;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0}, Lcom/mysql/jdbc/OutputStreamWatcher;->streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V
    .locals 0
    .param p1, "watcher"    # Lcom/mysql/jdbc/OutputStreamWatcher;

    .line 51
    iput-object p1, p0, Lcom/mysql/jdbc/WatchableOutputStream;->watcher:Lcom/mysql/jdbc/OutputStreamWatcher;

    .line 52
    return-void
.end method
