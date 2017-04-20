.class Landroid/support/v7/internal/widget/s$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/s;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/s;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Landroid/support/v7/internal/widget/s$a;->a:Landroid/support/v7/internal/widget/s;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/s;Landroid/support/v7/internal/widget/t;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/s$a;-><init>(Landroid/support/v7/internal/widget/s;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$a;->a:Landroid/support/v7/internal/widget/s;

    invoke-static {v0}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$a;->a:Landroid/support/v7/internal/widget/s;

    invoke-static {v0}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/s$c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s$c;->b()Landroid/support/v7/app/a$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 551
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 556
    if-nez p2, :cond_0

    .line 557
    iget-object v1, p0, Landroid/support/v7/internal/widget/s$a;->a:Landroid/support/v7/internal/widget/s;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/s$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/a$b;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;Landroid/support/v7/app/a$b;Z)Landroid/support/v7/internal/widget/s$c;

    move-result-object p2

    .line 561
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 559
    check-cast v0, Landroid/support/v7/internal/widget/s$c;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/s$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/a$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s$c;->a(Landroid/support/v7/app/a$b;)V

    goto :goto_0
.end method
