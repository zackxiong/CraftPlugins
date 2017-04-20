.class Lcom/yf/lib/ui/views/wheel/i;
.super Landroid/database/DataSetObserver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/lib/ui/views/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/yf/lib/ui/views/wheel/i;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/i;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Z)V

    .line 299
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/i;->a:Lcom/yf/lib/ui/views/wheel/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yf/lib/ui/views/wheel/WheelView;->a(Z)V

    .line 304
    return-void
.end method
