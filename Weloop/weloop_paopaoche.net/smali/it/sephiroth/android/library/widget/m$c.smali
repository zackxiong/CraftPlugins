.class Lit/sephiroth/android/library/widget/m$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/m;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/m;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lit/sephiroth/android/library/widget/m$c;->a:Lit/sephiroth/android/library/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/m;Lit/sephiroth/android/library/widget/m$1;)V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/m$c;-><init>(Lit/sephiroth/android/library/widget/m;)V

    return-void
.end method


# virtual methods
.method public a(II)Lit/sephiroth/android/library/widget/m$c;
    .locals 0

    .prologue
    .line 1086
    iput p1, p0, Lit/sephiroth/android/library/widget/m$c;->b:I

    .line 1087
    iput p2, p0, Lit/sephiroth/android/library/widget/m$c;->c:I

    .line 1088
    return-object p0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Lit/sephiroth/android/library/widget/m$c;->a:Lit/sephiroth/android/library/widget/m;

    iget v1, p0, Lit/sephiroth/android/library/widget/m$c;->b:I

    iget v2, p0, Lit/sephiroth/android/library/widget/m$c;->c:I

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/m;->f(II)V

    .line 1094
    return-void
.end method
