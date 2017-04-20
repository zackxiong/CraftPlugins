.class public Lcom/yf/smart/weloopx/android/ui/c/ah;
.super Lcom/yf/smart/weloopx/android/ui/c/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/ah$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/yf/smart/weloopx/android/ui/c/ah$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->b:Z

    .line 27
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->c:Z

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ah;)Lcom/yf/smart/weloopx/android/ui/c/ah$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->i:Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    return-object v0
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v1, "ConfirmFragment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->setArguments(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "ConfirmFragment"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 41
    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "ConfirmFragment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->setArguments(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "ConfirmFragment"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 63
    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v1, "ConfirmFragment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v1, "2"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v1, "3"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;-><init>()V

    .line 106
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->setArguments(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "ConfirmFragment"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 108
    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v1, "ConfirmFragment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "1"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v1, "cancel"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "ok"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;-><init>()V

    .line 73
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->setArguments(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "ConfirmFragment"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 75
    return-void
.end method

.method public static a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v1, "ConfirmFragment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "1"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v1, "cancel"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "ok"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "4"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;-><init>()V

    .line 93
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->setArguments(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "ConfirmFragment"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/ah;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/ah;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/ah;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->c:Z

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x8

    .line 136
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 137
    const-string v0, "ConfirmFragment"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->h:Ljava/lang/String;

    .line 138
    const-string v0, "message"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->e:Ljava/lang/String;

    .line 139
    const-string v0, "1"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    if-nez v0, :cond_8

    .line 141
    const v0, 0x7f03004b

    move v1, v0

    .line 145
    :goto_0
    const-string v0, "2"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 146
    const-string v0, "3"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 147
    const-string v0, "4"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->c:Z

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConfirmFragment  isChangeSwitch = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->c:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 150
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->i:Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    const v0, 0x7f0d01a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    const v5, 0x7f0d01a9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 158
    if-eqz v0, :cond_2

    .line 159
    if-nez v3, :cond_6

    .line 160
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_2
    :goto_1
    const v0, 0x7f0d01a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    if-eqz v0, :cond_3

    .line 179
    if-nez v4, :cond_7

    .line 180
    if-nez v4, :cond_3

    .line 181
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    if-nez v3, :cond_5

    .line 204
    :cond_4
    const v0, 0x7f0d017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_5

    .line 206
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_5
    const v0, 0x7f0d00a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->d:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 212
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->e()V

    .line 213
    return-object v1

    .line 162
    :cond_6
    const-string v6, "ok"

    const-string v7, "\u786e\u8ba4"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->g:Ljava/lang/String;

    .line 163
    iget-object v6, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v6, Lcom/yf/smart/weloopx/android/ui/c/ai;

    invoke-direct {v6, p0}, Lcom/yf/smart/weloopx/android/ui/c/ai;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ah;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 186
    :cond_7
    const-string v5, "cancel"

    const-string v6, "\u8fd4\u56de"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->f:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/c/aj;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/c/aj;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ah;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->dismiss()V

    .line 230
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->onDetach()V

    .line 241
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->i:Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->i:Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ah;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ah$a;->a(Ljava/lang/String;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/a;->onStop()V

    .line 236
    return-void
.end method
