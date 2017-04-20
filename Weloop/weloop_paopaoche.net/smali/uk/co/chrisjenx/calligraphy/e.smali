.class Luk/co/chrisjenx/calligraphy/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Luk/co/chrisjenx/calligraphy/c;


# direct methods
.method constructor <init>(Luk/co/chrisjenx/calligraphy/c;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/e;->c:Luk/co/chrisjenx/calligraphy/c;

    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/e;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Luk/co/chrisjenx/calligraphy/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 184
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 189
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/e;->c:Luk/co/chrisjenx/calligraphy/c;

    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Luk/co/chrisjenx/calligraphy/e;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
