.class public Lorg/gjt/mm/mysql/Driver;
.super Lcom/mysql/jdbc/Driver;
.source "Driver.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/mysql/jdbc/Driver;-><init>()V

    .line 40
    return-void
.end method
