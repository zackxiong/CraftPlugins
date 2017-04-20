.class public Lcom/yf/smart/weloopx/android/ui/c/dm;
.super Lcom/yf/smart/weloopx/android/ui/c/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/dm$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/data/models/Watchface;

.field private c:Lcom/yf/smart/weloopx/android/ui/c/dm$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dm;)Lcom/yf/smart/weloopx/android/ui/c/dm$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->c:Lcom/yf/smart/weloopx/android/ui/c/dm$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;Lcom/yf/smart/weloopx/data/models/Watchface;)V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v1, "1"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/Watchface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dm;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/dm;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->setArguments(Landroid/os/Bundle;)V

    .line 32
    const-string v0, "wdf"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 33
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/dm;)Lcom/yf/smart/weloopx/data/models/Watchface;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->b()Lcom/b/a/a;

    move-result-object v1

    const v2, 0x7f0d02d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchfaceImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 53
    const v1, 0x7f0d0250

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 54
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f07025a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    const v1, 0x7f0d02d1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 59
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f070258

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/Watchface;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 63
    const v1, 0x7f0d02d2

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 64
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f070259

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/Watchface;->getDownloadCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 69
    const v1, 0x7f0d0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/dn;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/dn;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dm;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f0d02cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/do;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/do;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dm;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v0
.end method

.method protected a(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/a;->a(Landroid/app/Dialog;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->setCancelable(Z)V

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/a;->onAttach(Landroid/app/Activity;)V

    .line 41
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Watchface;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    .line 42
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/dm$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dm;->c:Lcom/yf/smart/weloopx/android/ui/c/dm$a;

    .line 43
    return-void
.end method
