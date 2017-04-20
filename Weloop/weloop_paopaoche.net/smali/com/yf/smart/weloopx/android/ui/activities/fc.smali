.class Lcom/yf/smart/weloopx/android/ui/activities/fc;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fc;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fc;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0xfa8

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Landroid/app/FragmentManager;IIZLjava/lang/String;Z)V

    .line 334
    return-void
.end method
