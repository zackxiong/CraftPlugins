.class Lit/sephiroth/android/library/widget/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/CenterHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/CenterHListView;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/CenterHListView;->a(Lit/sephiroth/android/library/widget/CenterHListView;)I

    move-result v1

    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->a(Lit/sephiroth/android/library/widget/CenterHListView;I)I

    .line 45
    iget-object v0, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/CenterHListView;->b(Lit/sephiroth/android/library/widget/CenterHListView;)Lit/sephiroth/android/library/widget/CenterHListView$a;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, v1, Lit/sephiroth/android/library/widget/CenterHListView;->j:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/i;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/CenterHListView;->a(Lit/sephiroth/android/library/widget/CenterHListView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lit/sephiroth/android/library/widget/CenterHListView$a;->a(Landroid/widget/ListAdapter;I)V

    .line 47
    return-void
.end method
