.class Lit/sephiroth/android/library/widget/AbsHListView$n;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field private a:I

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .prologue
    .line 2477
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$n;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V
    .locals 0

    .prologue
    .line 2477
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$n;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$n;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$n;->a:I

    .line 2483
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 2486
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$n;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$n;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;)I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$n;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
