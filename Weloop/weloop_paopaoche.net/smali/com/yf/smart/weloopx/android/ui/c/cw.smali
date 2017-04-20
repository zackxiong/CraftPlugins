.class public Lcom/yf/smart/weloopx/android/ui/c/cw;
.super Lcom/yf/smart/weloopx/android/ui/c/j;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/cw$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/android/ui/c/cw$a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "happen_date"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/cw;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    const-string v0, "synchronizing data"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 49
    return-object v1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/cw;)Lcom/yf/smart/weloopx/android/ui/c/cw$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cw;->b:Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/c/cz;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .prologue
    .line 109
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/cy;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/cy;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cw;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/u;)V

    .line 141
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 173
    sget v0, Lcom/yf/smart/weloopx/c/x;->a:I

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncDataFragment currentState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/yf/smart/weloopx/c/x;->a:I

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 175
    sget v0, Lcom/yf/smart/weloopx/c/x;->a:I

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->d(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cw;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "happen_date"

    const-string v2, "2015-01-01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cw;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cw;->b:Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    .line 61
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->e()V

    .line 63
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/j;->onCancel(Landroid/content/DialogInterface;)V

    .line 185
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 68
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/j;->onDetach()V

    .line 69
    return-void
.end method

.method public onSyncDataExitEvent(Lcom/yf/smart/weloopx/event/SyncDataExitEvent;)V
    .locals 1
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/yf/smart/weloopx/c/x;->a:I

    .line 74
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cx;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/cx;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cw;Lcom/yf/smart/weloopx/event/SyncDataExitEvent;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public onSyncDataProgressEvent(Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;)V
    .locals 3
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cw;->b:Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    iget v1, p1, Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;->sumSteps:I

    iget v2, p1, Lcom/yf/smart/weloopx/event/SyncDataProgressEvent;->curStep:I

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cw$a;->a(II)V

    .line 101
    return-void
.end method

.method public onSyncDataUploadingMsgEvent(Lcom/yf/smart/weloopx/event/SyncDataUploadingMsgEvent;)V
    .locals 1
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 104
    iget v0, p1, Lcom/yf/smart/weloopx/event/SyncDataUploadingMsgEvent;->msgId:I

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->d(Ljava/lang/String;)V

    .line 105
    return-void
.end method
