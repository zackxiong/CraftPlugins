.class public abstract Lcom/yf/gattlib/view/a;
.super Lcom/yf/gattlib/view/b;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/gattlib/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yf/gattlib/view/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 15
    const-string v1, "KEY_CONTENT_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/view/a;->a:I

    .line 16
    invoke-super {p0, p1}, Lcom/yf/gattlib/view/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
