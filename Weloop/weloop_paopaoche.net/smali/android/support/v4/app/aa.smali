.class final Landroid/support/v4/app/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/transition/Transition;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Landroid/transition/Transition;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroid/transition/Transition;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Ljava/util/Map;

.field final synthetic j:Ljava/util/ArrayList;

.field final synthetic k:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Landroid/support/v4/app/aa;->a:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v4/app/aa;->b:Landroid/transition/Transition;

    iput-object p3, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/aa;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/aa;->e:Landroid/transition/Transition;

    iput-object p6, p0, Landroid/support/v4/app/aa;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/aa;->g:Landroid/transition/Transition;

    iput-object p8, p0, Landroid/support/v4/app/aa;->h:Ljava/util/ArrayList;

    iput-object p9, p0, Landroid/support/v4/app/aa;->i:Ljava/util/Map;

    iput-object p10, p0, Landroid/support/v4/app/aa;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/aa;->k:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Landroid/support/v4/app/aa;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 285
    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/aa;->b:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/aa;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/transition/Transition;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Landroid/support/v4/app/aa;->e:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/aa;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 292
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aa;->g:Landroid/transition/Transition;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Landroid/support/v4/app/aa;->g:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/aa;->h:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 295
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/aa;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/aa;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 301
    :goto_1
    if-ge v1, v3, :cond_4

    .line 302
    iget-object v4, p0, Landroid/support/v4/app/aa;->k:Landroid/transition/Transition;

    iget-object v0, p0, Landroid/support/v4/app/aa;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v4, v0, v2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 301
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aa;->k:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/v4/app/aa;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 305
    const/4 v0, 0x1

    return v0
.end method
