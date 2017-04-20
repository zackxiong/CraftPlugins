.class public Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
.super Lcom/handmark/pulltorefresh/library/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$b;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/d",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/d;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$a;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$b;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    :goto_0
    sget v1, Lcom/yf/ui/R$id;->gridview:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 63
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$a;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$h;->a:Lcom/handmark/pulltorefresh/library/e$h;

    return-object v0
.end method
