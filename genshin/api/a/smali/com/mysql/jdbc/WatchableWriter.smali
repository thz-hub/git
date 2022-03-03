.class Lcom/mysql/jdbc/WatchableWriter;
.super Ljava/io/CharArrayWriter;
.source "WatchableWriter.java"


# instance fields
.field private watcher:Lcom/mysql/jdbc/WriterWatcher;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/io/CharArrayWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 39
    invoke-super {p0}, Ljava/io/CharArrayWriter;->close()V

    .line 42
    iget-object v0, p0, Lcom/mysql/jdbc/WatchableWriter;->watcher:Lcom/mysql/jdbc/WriterWatcher;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0}, Lcom/mysql/jdbc/WriterWatcher;->writerClosed(Lcom/mysql/jdbc/WatchableWriter;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setWatcher(Lcom/mysql/jdbc/WriterWatcher;)V
    .locals 0
    .param p1, "watcher"    # Lcom/mysql/jdbc/WriterWatcher;

    .line 51
    iput-object p1, p0, Lcom/mysql/jdbc/WatchableWriter;->watcher:Lcom/mysql/jdbc/WriterWatcher;

    .line 52
    return-void
.end method
