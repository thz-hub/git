.class public Lcom/mysql/jdbc/DocsConnectionPropsHelper;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "DocsConnectionPropsHelper.java"


# static fields
.field static final serialVersionUID:J = -0x15f00e2e88057f96L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lcom/mysql/jdbc/DocsConnectionPropsHelper;

    invoke-direct {v1}, Lcom/mysql/jdbc/DocsConnectionPropsHelper;-><init>()V

    invoke-virtual {v1}, Lcom/mysql/jdbc/DocsConnectionPropsHelper;->exposeAsXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    return-void
.end method
