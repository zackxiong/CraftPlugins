.class Lit/sephiroth/android/library/widget/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView$j;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$j;I)V
    .locals 0

    .prologue
    .line 3936
    iput-object p1, p0, Lit/sephiroth/android/library/widget/d;->b:Lit/sephiroth/android/library/widget/AbsHListView$j;

    iput p2, p0, Lit/sephiroth/android/library/widget/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3940
    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->b:Lit/sephiroth/android/library/widget/AbsHListView$j;

    iget v1, p0, Lit/sephiroth/android/library/widget/d;->a:I

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a(I)V

    .line 3941
    return-void
.end method
