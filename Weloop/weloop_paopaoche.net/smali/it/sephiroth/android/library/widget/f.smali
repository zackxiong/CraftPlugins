.class Lit/sephiroth/android/library/widget/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lit/sephiroth/android/library/widget/AbsHListView$j;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$j;III)V
    .locals 0

    .prologue
    .line 4070
    iput-object p1, p0, Lit/sephiroth/android/library/widget/f;->d:Lit/sephiroth/android/library/widget/AbsHListView$j;

    iput p2, p0, Lit/sephiroth/android/library/widget/f;->a:I

    iput p3, p0, Lit/sephiroth/android/library/widget/f;->b:I

    iput p4, p0, Lit/sephiroth/android/library/widget/f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4074
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->d:Lit/sephiroth/android/library/widget/AbsHListView$j;

    iget v1, p0, Lit/sephiroth/android/library/widget/f;->a:I

    iget v2, p0, Lit/sephiroth/android/library/widget/f;->b:I

    iget v3, p0, Lit/sephiroth/android/library/widget/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a(III)V

    .line 4075
    return-void
.end method
