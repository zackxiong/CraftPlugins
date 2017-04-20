.class public Lcom/yf/smart/weloopx/android/ui/c/ae;
.super Lcom/yf/gattlib/view/a;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yf/gattlib/view/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ae;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->a:I

    return v0
.end method

.method public static a(I)Lcom/yf/smart/weloopx/android/ui/c/ae;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/ae;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/ae;-><init>()V

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v2, "KEY_CONTENT_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ae;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/ae;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->c:I

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/ae;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->d:I

    return v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ae;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    const v0, 0x7f0d01a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->e:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 36
    const v0, 0x7f0d014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/af;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/af;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ae;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0d01a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/ag;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/ag;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ae;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/yf/gattlib/view/c;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->a:I

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->b:I

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/view/c;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/ae;->a(Lcom/yf/gattlib/view/c;)V

    .line 67
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ae;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    const-string v1, "KEY_CONTENT_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->e:I

    .line 57
    const-string v1, "KEY_EVENT_SOURCE_ID"

    const v2, 0x9000

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->a:I

    .line 58
    const-string v1, "KEY_EVENT_CANCEL"

    const v2, 0x9001

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->b:I

    .line 59
    const-string v1, "KEY_EVENT_BTN_OK"

    const v2, 0x9002

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->c:I

    .line 60
    const-string v1, "KEY_EVENT_CANCEL"

    const v2, 0x9003

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ae;->d:I

    .line 61
    invoke-super {p0, p1}, Lcom/yf/gattlib/view/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
