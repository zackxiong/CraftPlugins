.class public Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/f/j$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/yf/smart/weloopx/f/j;

.field private d:Z

.field private e:Landroid/widget/EditText;

.field private f:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-class v0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->a:Ljava/lang/String;

    .line 28
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->b:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->d:Z

    return-void
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->finish()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const v5, 0x7f0c0116

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 71
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 72
    const v0, 0x7f030095

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 73
    const v0, 0x7f0d01a8

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0d01a7

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    const v4, 0x7f0d00a3

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/hd;

    invoke-direct {v2, p0, p2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/hd;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/he;

    invoke-direct {v0, p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/he;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/hf;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/hf;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/yf/smart/weloopx/f/j;

    invoke-direct {v0, p0, p0}, Lcom/yf/smart/weloopx/f/j;-><init>(Landroid/content/Context;Lcom/yf/smart/weloopx/f/j$a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->c:Lcom/yf/smart/weloopx/f/j;

    .line 66
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->d:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->finish()V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->c:Lcom/yf/smart/weloopx/f/j;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/f/j;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0d02bf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0d02bd

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0d02c1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->e:Landroid/widget/EditText;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->f:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Upload log file msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->d:Z

    .line 126
    const v0, 0x7f0702b3

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->b(I)V

    .line 127
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->finish()V

    .line 128
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070207

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/az;->a(Landroid/app/FragmentManager;Ljava/lang/String;Z)Landroid/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->f:Landroid/app/DialogFragment;

    .line 112
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->f:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 117
    const v0, 0x7f0702b1

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->b(I)V

    .line 118
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->f()V

    goto :goto_0

    .line 149
    :pswitch_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->e()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f0d02bd
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f0300ab

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->a()V

    .line 40
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->d()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UploadLogActivity;->e()V

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
