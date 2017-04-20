.class public Lcom/yf/smart/weloopx/android/ui/a/m;
.super Landroid/support/v13/app/d;
.source "ProGuard"


# instance fields
.field a:Landroid/app/FragmentManager;

.field b:Lcom/yf/smart/weloopx/android/ui/c/bl;

.field c:Lcom/yf/smart/weloopx/android/ui/c/bt;

.field d:[Landroid/app/Fragment;

.field e:[Z


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v13/app/d;-><init>(Landroid/app/FragmentManager;)V

    .line 20
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->e:[Z

    .line 24
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->a:Landroid/app/FragmentManager;

    .line 25
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a()Lcom/yf/smart/weloopx/android/ui/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    .line 26
    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/bt;->a(I)Lcom/yf/smart/weloopx/android/ui/c/bt;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->c:Lcom/yf/smart/weloopx/android/ui/c/bt;

    .line 27
    new-array v0, v1, [Landroid/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->c:Lcom/yf/smart/weloopx/android/ui/c/bt;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->b:Lcom/yf/smart/weloopx/android/ui/c/bl;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->d:[Landroid/app/Fragment;

    .line 28
    return-void

    .line 20
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public a(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->d:[Landroid/app/Fragment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/d;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 46
    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->e:[Z

    aget-boolean v2, v2, p2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->a:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->d:[Landroid/app/Fragment;

    aget-object v0, v0, p2

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 58
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 59
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 62
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/m;->e:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

    .line 65
    :cond_0
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    return v0
.end method
