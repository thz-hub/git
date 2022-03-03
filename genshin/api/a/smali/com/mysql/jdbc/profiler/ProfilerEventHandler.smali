.class public interface abstract Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
.super Ljava/lang/Object;
.source "ProfilerEventHandler.java"

# interfaces
.implements Lcom/mysql/jdbc/Extension;


# virtual methods
.method public abstract consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
.end method

.method public abstract processEvent(BLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;JLjava/lang/Throwable;Ljava/lang/String;)V
.end method
