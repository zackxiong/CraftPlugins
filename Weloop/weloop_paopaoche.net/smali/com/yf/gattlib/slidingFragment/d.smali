.class Lcom/yf/gattlib/slidingFragment/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/slidingFragment/a$a;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/slidingFragment/SlidingMenu;


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 237
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/d;->a:Lcom/yf/gattlib/slidingFragment/SlidingMenu;

    invoke-static {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->a(Lcom/yf/gattlib/slidingFragment/SlidingMenu;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/d;->a:Lcom/yf/gattlib/slidingFragment/SlidingMenu;

    invoke-static {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->a(Lcom/yf/gattlib/slidingFragment/SlidingMenu;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$d;->a()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/d;->a:Lcom/yf/gattlib/slidingFragment/SlidingMenu;

    invoke-static {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b(Lcom/yf/gattlib/slidingFragment/SlidingMenu;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/d;->a:Lcom/yf/gattlib/slidingFragment/SlidingMenu;

    invoke-static {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu;->b(Lcom/yf/gattlib/slidingFragment/SlidingMenu;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$b;->a()V

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
