.class Lit/sephiroth/android/library/widget/h$f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/h;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/h;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lit/sephiroth/android/library/widget/h$f;->a:Lit/sephiroth/android/library/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/h;Lit/sephiroth/android/library/widget/h$1;)V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/h$f;-><init>(Lit/sephiroth/android/library/widget/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$f;->a:Lit/sephiroth/android/library/widget/h;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/h;->aj:Z

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$f;->a:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$f;->a:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/h;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$f;->a:Lit/sephiroth/android/library/widget/h;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/h;->b(Lit/sephiroth/android/library/widget/h;)V

    .line 891
    iget-object v0, p0, Lit/sephiroth/android/library/widget/h$f;->a:Lit/sephiroth/android/library/widget/h;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/h;->c(Lit/sephiroth/android/library/widget/h;)V

    goto :goto_0
.end method
