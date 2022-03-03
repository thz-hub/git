.class public LUI/Activity_Update;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Activity_Update.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, LUI/Activity_Update;->setContentView(I)V

    .line 15
    return-void
.end method
