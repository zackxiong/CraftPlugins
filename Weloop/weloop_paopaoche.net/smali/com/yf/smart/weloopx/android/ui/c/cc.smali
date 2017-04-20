.class public Lcom/yf/smart/weloopx/android/ui/c/cc;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/cc$a;
    }
.end annotation


# instance fields
.field private b:B

.field private c:Lcom/yf/smart/weloopx/android/ui/c/cc$a;

.field private d:Lcom/yf/gattlib/client/b/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 50
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cd;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/cd;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cc;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->d:Lcom/yf/gattlib/client/b/a/c;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/cc;)Lcom/yf/smart/weloopx/android/ui/c/cc$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->c:Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;B)V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v1, "reversal"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 24
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/cc;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/cc;-><init>()V

    .line 25
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->setArguments(Landroid/os/Bundle;)V

    .line 26
    const-string v0, "reversal"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 27
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/cc;)B
    .locals 1

    .prologue
    .line 18
    iget-byte v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->b:B

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f070253

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->d(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/yf/gattlib/client/b/ah;

    iget-byte v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->b:B

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/ah;-><init>(B)V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->d:Lcom/yf/gattlib/client/b/a/c;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ah;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 48
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->c:Lcom/yf/smart/weloopx/android/ui/c/cc$a;

    .line 40
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reversal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cc;->b:B

    .line 41
    const-string v0, "BaseDialogFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/cc;->e()V

    .line 43
    return-void
.end method
