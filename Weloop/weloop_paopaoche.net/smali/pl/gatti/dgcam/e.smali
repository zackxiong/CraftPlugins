.class Lpl/gatti/dgcam/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpl/gatti/dgcam/DgCamActivity;


# direct methods
.method constructor <init>(Lpl/gatti/dgcam/DgCamActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lpl/gatti/dgcam/e;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lpl/gatti/dgcam/e;->a:Lpl/gatti/dgcam/DgCamActivity;

    invoke-virtual {v0}, Lpl/gatti/dgcam/DgCamActivity;->finish()V

    .line 132
    return-void
.end method
