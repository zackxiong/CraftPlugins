.class final Landroid/support/v4/app/z;
.super Landroid/transition/Transition$EpicenterCallback;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/support/v4/app/w$a;

.field private b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/w$a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Landroid/support/v4/app/z;->a:Landroid/support/v4/app/w$a;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/z;->a:Landroid/support/v4/app/w$a;

    iget-object v0, v0, Landroid/support/v4/app/w$a;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/support/v4/app/z;->a:Landroid/support/v4/app/w$a;

    iget-object v0, v0, Landroid/support/v4/app/w$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/w;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/graphics/Rect;

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/graphics/Rect;

    return-object v0
.end method
