.class public Lcom/yf/smart/weloopx/android/ui/a/f;
.super Landroid/support/v13/app/d;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v13/app/d;-><init>(Landroid/app/FragmentManager;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x2

    return v0
.end method

.method public a(I)Landroid/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const-string v2, "DailyFragmentAdapter"

    const-string v3, " getItem() "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/f;->b()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit8 v3, v2, -0x1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DailyFragmentAdapter getItem dayIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 34
    neg-int v2, v3

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/f;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4, v2, v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Ljava/lang/String;ZZ)Lcom/yf/smart/weloopx/android/ui/c/ba;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/d;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/ba;

    .line 64
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/a/f;->b:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DailyFragmentAdapter happenDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ba;->b(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 50
    const-string v0, "DailyFragmentAdapter"

    const-string v1, " getCount() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/a;->b()I

    move-result v0

    .line 52
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/a/f;->a:I

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DailyFragmentAdapter count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/a/f;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 54
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/a/f;->a:I

    .line 56
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/f;->c()V

    .line 58
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/a/f;->a:I

    return v0
.end method

.method public b(I)J
    .locals 3

    .prologue
    .line 40
    const-string v0, "DailyFragmentAdapter"

    const-string v1, " getItemId() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/f;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/a/f;->b:I

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DailyFragmentAdapter getItemId dayIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WatchDateUtil.getDateString ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v0, v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
