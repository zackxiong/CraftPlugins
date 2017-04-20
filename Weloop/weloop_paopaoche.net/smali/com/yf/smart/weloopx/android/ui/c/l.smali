.class public Lcom/yf/smart/weloopx/android/ui/c/l;
.super Lcom/yf/smart/weloopx/android/ui/c/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/l$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yf/smart/weloopx/data/models/Watchface;

.field private c:Lcom/yf/gattlib/c/c;

.field private d:Landroid/widget/TextView;

.field private e:[Landroid/widget/ImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/dd/processbutton/iml/SubmitProcessButton;

.field private i:Lcom/dd/processbutton/iml/SubmitProcessButton;

.field private j:Lcom/yf/smart/weloopx/b/b;

.field private k:Landroid/os/Handler;

.field private l:Lcom/yf/gattlib/d/b$a;

.field private m:Lcom/yf/gattlib/client/b/c/a;

.field private n:I

.field private o:Landroid/view/View$OnClickListener;

.field private p:I

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/c/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;-><init>()V

    .line 84
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/m;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/m;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->l:Lcom/yf/gattlib/d/b$a;

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->n:I

    .line 346
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/ab;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/ab;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->o:Landroid/view/View$OnClickListener;

    .line 462
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/o;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/o;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->q:Ljava/lang/Runnable;

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    .line 489
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/l;)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->m()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/l;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->n:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/l;Lcom/yf/gattlib/client/b/c/a;)Lcom/yf/gattlib/client/b/c/a;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->m:Lcom/yf/gattlib/client/b/c/a;

    return-object p1
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/yf/smart/weloopx/android/ui/c/l;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;-><init>()V

    .line 51
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->setArguments(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "cwf"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 53
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 366
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v3, v2, v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 367
    goto :goto_1

    .line 369
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/l;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/l;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/l;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/l;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->f()V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ffff"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->h()V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->j()V

    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;

    .line 151
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/c/l;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->n:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->i:Lcom/dd/processbutton/iml/SubmitProcessButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->d:Landroid/widget/TextView;

    const v2, 0x7f0700df

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setActivated(Z)V

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setEnabled(Z)V

    move v0, v1

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/c/l;)Lcom/dd/processbutton/iml/SubmitProcessButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;

    iget v0, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->b:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 171
    :goto_0
    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 190
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 170
    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;

    iget v0, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->b:I

    if-eq v0, v2, :cond_4

    :cond_3
    move v0, v2

    .line 179
    :goto_2
    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 178
    goto :goto_2

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private h()V
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(I)V

    .line 206
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->dismiss()V

    .line 235
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchfaceBinURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseDialogFragment \u8868\u76d8\u7684\u4e0b\u8f7d\u5730\u5740 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xx.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c/s;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/c/s;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto :goto_0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/t;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/t;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setEnabled(Z)V

    .line 245
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/c/l;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/c/l;)Lcom/yf/smart/weloopx/data/models/Watchface;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 250
    new-instance v0, Lcom/yf/gattlib/client/b/c/c;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->m:Lcom/yf/gattlib/client/b/c/a;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/u;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/u;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-static {}, Lcom/yf/gattlib/c/e;->a()I

    move-result v3

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->m()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yf/gattlib/client/b/c/c;-><init>(Lcom/yf/gattlib/client/b/c/b;Lcom/yf/gattlib/client/b/c/c$a;II)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/c/c;->f()Lcom/yf/gattlib/client/b/e;

    .line 323
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/c/l;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 326
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 327
    const-string v1, "ids"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/Watchface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 329
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->q()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/c/aa;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/c/aa;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 343
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 355
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->k()V

    return-void
.end method

.method private m()I
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    :goto_1
    return v0

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->o()V

    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->r:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/yf/gattlib/client/b/o;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ac;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/ac;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/o;-><init>(Lcom/yf/gattlib/client/b/o$a;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/o;->f()Lcom/yf/gattlib/client/b/e;

    .line 431
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 434
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->b(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->g()V

    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/n;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/n;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->q()V

    return-void
.end method

.method static synthetic q(Lcom/yf/smart/weloopx/android/ui/c/l;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->f:Landroid/view/View;

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->p:I

    .line 459
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method static synthetic r(Lcom/yf/smart/weloopx/android/ui/c/l;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/yf/smart/weloopx/android/ui/c/l;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->p:I

    return v0
.end method

.method static synthetic t(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->p()V

    return-void
.end method

.method static synthetic u(Lcom/yf/smart/weloopx/android/ui/c/l;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->p:I

    return v0
.end method

.method static synthetic v(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->q:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030046

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    const v0, 0x7f0d018e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->f:Landroid/view/View;

    .line 103
    const v0, 0x7f0d0190

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->g:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v0, 0x7f0d0064

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->d:Landroid/widget/TextView;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    .line 109
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    const v0, 0x7f0d0192

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v1

    .line 110
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    const/4 v4, 0x1

    const v0, 0x7f0d0193

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v4

    .line 111
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    const/4 v4, 0x2

    const v0, 0x7f0d0194

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v4

    .line 112
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->e:[Landroid/widget/ImageView;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v1, v3, v0

    .line 113
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->l()V

    .line 117
    const v0, 0x7f0d0196

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dd/processbutton/iml/SubmitProcessButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->i:Lcom/dd/processbutton/iml/SubmitProcessButton;

    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->i:Lcom/dd/processbutton/iml/SubmitProcessButton;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/q;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/q;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f0d0197

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dd/processbutton/iml/SubmitProcessButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->h:Lcom/dd/processbutton/iml/SubmitProcessButton;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/r;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/r;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->n()V

    .line 145
    return-object v2
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->b()V

    .line 81
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->j:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->l:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Lcom/yf/gattlib/d/b$a;)V

    .line 82
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/a;->onAttach(Landroid/app/Activity;)V

    .line 70
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->c:Lcom/yf/gattlib/c/c;

    .line 71
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/l;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/Watchface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->b:Lcom/yf/smart/weloopx/data/models/Watchface;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->k:Landroid/os/Handler;

    .line 74
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->j:Lcom/yf/smart/weloopx/b/b;

    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->j:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/l;->l:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 76
    return-void
.end method
