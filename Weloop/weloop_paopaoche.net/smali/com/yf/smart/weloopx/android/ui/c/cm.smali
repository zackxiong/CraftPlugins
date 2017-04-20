.class Lcom/yf/smart/weloopx/android/ui/c/cm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cm;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cm;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->a(Lcom/yf/smart/weloopx/android/ui/c/ck;)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cm;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ck;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
