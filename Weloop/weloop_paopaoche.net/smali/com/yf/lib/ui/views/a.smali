.class Lcom/yf/lib/ui/views/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/lib/ui/views/OptionToggleButton;


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/OptionToggleButton;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/lib/ui/views/a;->a:Lcom/yf/lib/ui/views/OptionToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/lib/ui/views/a;->a:Lcom/yf/lib/ui/views/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/lib/ui/views/OptionToggleButton;->a(Lcom/yf/lib/ui/views/OptionToggleButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/a;->a:Lcom/yf/lib/ui/views/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/lib/ui/views/OptionToggleButton;->b(Lcom/yf/lib/ui/views/OptionToggleButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/a;->a:Lcom/yf/lib/ui/views/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/lib/ui/views/OptionToggleButton;->c(Lcom/yf/lib/ui/views/OptionToggleButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/ui/views/a;->a:Lcom/yf/lib/ui/views/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/lib/ui/views/OptionToggleButton;->d(Lcom/yf/lib/ui/views/OptionToggleButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/yf/lib/ui/views/a;->a:Lcom/yf/lib/ui/views/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/lib/ui/views/OptionToggleButton;->c(Lcom/yf/lib/ui/views/OptionToggleButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method
