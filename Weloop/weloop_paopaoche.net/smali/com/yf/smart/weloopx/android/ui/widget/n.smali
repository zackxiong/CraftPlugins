.class Lcom/yf/smart/weloopx/android/ui/widget/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/n;->a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/n;->a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/n;->a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->b(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/n;->a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->c(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/n;->a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->d(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/n;->a:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->c(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method
