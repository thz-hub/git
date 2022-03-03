.class public Lcom/mysql/jdbc/util/PropertiesDocGenerator;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "PropertiesDocGenerator.java"


# static fields
.field static final serialVersionUID:J = -0x43949c78a93f4d17L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lcom/mysql/jdbc/util/PropertiesDocGenerator;

    invoke-direct {v1}, Lcom/mysql/jdbc/util/PropertiesDocGenerator;-><init>()V

    invoke-virtual {v1}, Lcom/mysql/jdbc/util/PropertiesDocGenerator;->exposeAsXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    return-void
.end method
