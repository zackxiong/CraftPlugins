.class public Lcom/yf/smart/weloopx/android/ui/widget/o;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;
    .locals 2

    .prologue
    .line 18
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/o;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;-><init>()V

    .line 19
    const v0, 0x7f0d016c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0d016d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f0d02c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0d028e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->d:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0d016b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->e:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f0d020d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0d02ca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 27
    return-object v1
.end method

.method public static a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    return-object v0
.end method
