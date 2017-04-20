.class Lcom/yf/smart/weloopx/android/ui/c/au;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/as;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/as;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/au;->a:Lcom/yf/smart/weloopx/android/ui/c/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
