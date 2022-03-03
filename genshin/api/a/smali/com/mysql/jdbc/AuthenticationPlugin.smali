.class public interface abstract Lcom/mysql/jdbc/AuthenticationPlugin;
.super Ljava/lang/Object;
.source "AuthenticationPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/Extension;


# virtual methods
.method public abstract getProtocolPluginName()Ljava/lang/String;
.end method

.method public abstract isReusable()Z
.end method

.method public abstract nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Buffer;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract requiresConfidentiality()Z
.end method

.method public abstract reset()V
.end method

.method public abstract setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
.end method
