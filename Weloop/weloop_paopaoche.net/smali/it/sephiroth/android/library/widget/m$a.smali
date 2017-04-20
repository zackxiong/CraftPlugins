.class Lit/sephiroth/android/library/widget/m$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/m$1;)V
    .locals 0

    .prologue
    .line 2768
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2782
    iget v0, p0, Lit/sephiroth/android/library/widget/m$a;->a:I

    return v0
.end method

.method a(II)V
    .locals 0

    .prologue
    .line 2777
    iput p1, p0, Lit/sephiroth/android/library/widget/m$a;->a:I

    .line 2778
    iput p2, p0, Lit/sephiroth/android/library/widget/m$a;->b:I

    .line 2779
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2786
    iget v0, p0, Lit/sephiroth/android/library/widget/m$a;->b:I

    return v0
.end method
