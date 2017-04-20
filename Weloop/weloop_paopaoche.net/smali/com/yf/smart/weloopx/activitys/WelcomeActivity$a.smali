.class Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;
.super Landroid/support/v13/app/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/activitys/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/WelcomeActivity;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yf/smart/weloopx/activitys/WelcomeActivity;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;->a:Lcom/yf/smart/weloopx/activitys/WelcomeActivity;

    .line 77
    invoke-direct {p0, p2}, Landroid/support/v13/app/d;-><init>(Landroid/app/FragmentManager;)V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;->b:Landroid/util/SparseArray;

    .line 78
    return-void
.end method


# virtual methods
.method public a(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a(I)Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/d;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 86
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/d;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x3

    return v0
.end method

.method public d(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method
