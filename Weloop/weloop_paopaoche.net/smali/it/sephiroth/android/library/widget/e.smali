.class Lit/sephiroth/android/library/widget/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView$j;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView$j;II)V
    .locals 0

    .prologue
    .line 3990
    iput-object p1, p0, Lit/sephiroth/android/library/widget/e;->c:Lit/sephiroth/android/library/widget/AbsHListView$j;

    iput p2, p0, Lit/sephiroth/android/library/widget/e;->a:I

    iput p3, p0, Lit/sephiroth/android/library/widget/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3994
    iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->c:Lit/sephiroth/android/library/widget/AbsHListView$j;

    iget v1, p0, Lit/sephiroth/android/library/widget/e;->a:I

    iget v2, p0, Lit/sephiroth/android/library/widget/e;->b:I

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView$j;->a(II)V

    .line 3995
    return-void
.end method
