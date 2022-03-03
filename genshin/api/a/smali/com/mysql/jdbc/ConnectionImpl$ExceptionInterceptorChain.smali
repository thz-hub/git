.class public Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/ExceptionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExceptionInterceptorChain"
.end annotation


# instance fields
.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/String;)V
    .locals 2
    .param p2, "interceptorClasses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v1, "Connection.BadExceptionInterceptor"

    invoke-static {p1, v0, p2, v1, p0}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->interceptors:Ljava/util/List;

    .line 141
    return-void
.end method


# virtual methods
.method addRingZero(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lcom/mysql/jdbc/ExceptionInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->interceptors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->interceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-interface {v1}, Lcom/mysql/jdbc/ExceptionInterceptor;->destroy()V

    goto :goto_0

    .line 168
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    return-void
.end method

.method public getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 2
    .param p1, "conn"    # Lcom/mysql/jdbc/Connection;
    .param p2, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->interceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ExceptionInterceptor;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    goto :goto_0

    .line 178
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    return-void
.end method

.method public interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 3
    .param p1, "sqlEx"    # Ljava/sql/SQLException;
    .param p2, "conn"    # Lcom/mysql/jdbc/Connection;

    .line 148
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->interceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ExceptionInterceptor;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-interface {v1, p1, v2}, Lcom/mysql/jdbc/ExceptionInterceptor;->interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    goto :goto_0

    .line 156
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mysql/jdbc/Extension;>;"
    :cond_0
    return-object p1
.end method
