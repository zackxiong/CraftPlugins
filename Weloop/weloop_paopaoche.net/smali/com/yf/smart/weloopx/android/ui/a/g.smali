.class public Lcom/yf/smart/weloopx/android/ui/a/g;
.super Landroid/support/v13/app/d;
.source "ProGuard"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v13/app/d;-><init>(Landroid/app/FragmentManager;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    const v1, 0x7f0200c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v13/app/d;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/yf/smart/weloopx/android/ui/c/bi;->a(III)Lcom/yf/smart/weloopx/android/ui/c/bi;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
