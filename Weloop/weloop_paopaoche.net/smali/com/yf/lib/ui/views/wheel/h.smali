.class Lcom/yf/lib/ui/views/wheel/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/lib/ui/views/wheel/f$b;


# instance fields
.field final synthetic a:Lcom/yf/lib/ui/views/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;Z)Z

    .line 222
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a()V

    .line 223
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0, p1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;I)V

    .line 229
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->getHeight()I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v1, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Lcom/yf/lib/ui/views/wheel/WheelView;I)I

    .line 232
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Lcom/yf/lib/ui/views/wheel/WheelView;)Lcom/yf/lib/ui/views/wheel/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/f;->a()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    neg-int v0, v0

    invoke-static {v1, v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Lcom/yf/lib/ui/views/wheel/WheelView;I)I

    .line 235
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Lcom/yf/lib/ui/views/wheel/WheelView;)Lcom/yf/lib/ui/views/wheel/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/f;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->c(Lcom/yf/lib/ui/views/wheel/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->b()V

    .line 243
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;Z)Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Lcom/yf/lib/ui/views/wheel/WheelView;I)I

    .line 247
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->invalidate()V

    .line 248
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/WheelView;->b(Lcom/yf/lib/ui/views/wheel/WheelView;)Lcom/yf/lib/ui/views/wheel/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/h;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Lcom/yf/lib/ui/views/wheel/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/lib/ui/views/wheel/f;->a(II)V

    .line 255
    :cond_0
    return-void
.end method
