.class public Lit/sephiroth/android/library/widget/AbsHListView$a;
.super Lit/sephiroth/android/library/widget/h$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/h",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.b;"
    }
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .prologue
    .line 5353
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$a;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/h$b;-><init>(Lit/sephiroth/android/library/widget/h;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 5360
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h$b;->onChanged()V

    .line 5361
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 5368
    invoke-super {p0}, Lit/sephiroth/android/library/widget/h$b;->onInvalidated()V

    .line 5369
    return-void
.end method
