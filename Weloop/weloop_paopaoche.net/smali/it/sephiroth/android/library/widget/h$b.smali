.class Lit/sephiroth/android/library/widget/h$b;
.super Landroid/database/DataSetObserver;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/Parcelable;

.field final synthetic b:Lit/sephiroth/android/library/widget/h;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/h;)V
    .locals 1

    .prologue
    .line 808
    iput-object p1, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/h;->aj:Z

    .line 818
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget v1, v1, Lit/sephiroth/android/library/widget/h;->ao:I

    iput v1, v0, Lit/sephiroth/android/library/widget/h;->ap:I

    .line 819
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/h;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/h;->ao:I

    .line 824
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget v0, v0, Lit/sephiroth/android/library/widget/h;->ap:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget v0, v0, Lit/sephiroth/android/library/widget/h;->ao:I

    if-lez v0, :cond_0

    .line 829
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/h$b;->a:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/h;->a(Lit/sephiroth/android/library/widget/h;Landroid/os/Parcelable;)V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->a:Landroid/os/Parcelable;

    .line 837
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->t()V

    .line 838
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->requestLayout()V

    .line 839
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->x()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 846
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/h;->aj:Z

    .line 848
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/h;->a(Lit/sephiroth/android/library/widget/h;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->a:Landroid/os/Parcelable;

    .line 855
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iget v1, v1, Lit/sephiroth/android/library/widget/h;->ao:I

    iput v1, v0, Lit/sephiroth/android/library/widget/h;->ap:I

    .line 856
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iput v3, v0, Lit/sephiroth/android/library/widget/h;->ao:I

    .line 857
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iput v2, v0, Lit/sephiroth/android/library/widget/h;->am:I

    .line 858
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iput-wide v4, v0, Lit/sephiroth/android/library/widget/h;->an:J

    .line 859
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iput v2, v0, Lit/sephiroth/android/library/widget/h;->ak:I

    .line 860
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iput-wide v4, v0, Lit/sephiroth/android/library/widget/h;->al:J

    .line 861
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/h;->ad:Z

    .line 863
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->t()V

    .line 864
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$b;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->requestLayout()V

    .line 865
    return-void
.end method
