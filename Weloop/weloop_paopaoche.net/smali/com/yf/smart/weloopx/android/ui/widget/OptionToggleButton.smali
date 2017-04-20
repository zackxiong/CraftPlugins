.class public Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
.super Landroid/widget/ToggleButton;
.source "ProGuard"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a:Z

    .line 20
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a:Z

    .line 15
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a()V

    .line 16
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/widget/n;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/n;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)V

    invoke-super {p0, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->b:Z

    return v0
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->d:Z

    .line 69
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->d:Z

    .line 71
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->d:Z

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->b:Z

    .line 33
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedFromCode(Z)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->b:Z

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 39
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 63
    return-void
.end method
