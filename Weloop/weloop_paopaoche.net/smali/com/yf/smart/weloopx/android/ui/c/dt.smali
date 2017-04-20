.class Lcom/yf/smart/weloopx/android/ui/c/dt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dr;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dr;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dt;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Watchface;

    .line 79
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dt;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/dr;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->a(Landroid/app/FragmentManager;Lcom/yf/smart/weloopx/data/models/Watchface;)V

    .line 80
    return-void
.end method
