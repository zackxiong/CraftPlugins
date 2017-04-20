.class Lcom/yf/smart/weloopx/android/ui/c/cp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lit/sephiroth/android/library/widget/CenterHListView$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/co;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/co;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cp;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;I)V
    .locals 1

    .prologue
    .line 139
    if-ltz p2, :cond_0

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cp;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-virtual {v0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/co;->a(Landroid/widget/ListAdapter;I)V

    .line 142
    :cond_0
    return-void
.end method
