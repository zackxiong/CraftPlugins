.class public Lcom/yf/smart/weloopx/activitys/ResetPassword;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/activitys/ResetPassword$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0115
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0104
    .end annotation
.end field

.field c:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00eb
    .end annotation
.end field

.field d:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f7
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0116
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00fd
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final l:I

.field private m:I

.field private n:Lcom/yf/smart/weloopx/activitys/ResetPassword$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Lcom/yf/smart/weloopx/g/d;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->j:Ljava/lang/String;

    .line 66
    const v0, 0x1d4c0

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->k:I

    .line 67
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->l:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->m:I

    .line 69
    new-instance v0, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;

    const-wide/32 v2, 0x1d4c0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;-><init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;JJ)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->n:Lcom/yf/smart/weloopx/activitys/ResetPassword$a;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->o:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    .line 73
    iput-boolean v6, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    .line 74
    iput-boolean v6, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->r:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->w:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->y:Ljava/lang/String;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "jumpType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->o:Ljava/lang/String;

    .line 100
    const-string v0, "OPEN_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    .line 101
    const-string v0, "NICK_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->t:Ljava/lang/String;

    .line 102
    const-string v0, "SEX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->u:Ljava/lang/String;

    .line 103
    const-string v0, "HEAD_PIC_URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->w:Ljava/lang/String;

    .line 104
    const-string v0, "IS_INIT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    .line 105
    const-string v0, "IS_BIND_OLD_PHONE_ACCOUNT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->r:Z

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a5\u6536\u5230\u7684\u5934\u50cf\u5730\u5740 =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u6027\u522b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/ResetPassword;I)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    .line 254
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 257
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/ResetPassword;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->m:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d(Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g:Landroid/widget/TextView;

    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f:Landroid/widget/Button;

    const v1, 0x7f070127

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/v;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/v;-><init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->o:Ljava/lang/String;

    const-string v2, "forgetPwd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07015c

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_1
    const v0, 0x7f0701e6

    goto :goto_1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 370
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 371
    const-class v1, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 372
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setOpenId(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setMobile(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 377
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData2;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 379
    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 380
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "PHONE_NUM"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v1, "IS_INIT"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->startActivity(Landroid/content/Intent;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->finish()V

    .line 389
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    .line 305
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccount(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setCheckCode(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v2, 0x7f070088

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 269
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/activitys/y;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/activitys/y;-><init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/d;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    .line 367
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    :cond_1
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 320
    const-string v1, "openId"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "mobile"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed1\u5b9a\u7684openId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u624b\u673a\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 325
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->G()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/activitys/z;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/z;-><init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    .line 444
    :goto_0
    return-void

    .line 396
    :cond_0
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 397
    const-string v1, "openId"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "clientType"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "userType"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "channelId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "deviceToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "longitude"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "latitude"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 405
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->f()V

    .line 407
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->B()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/activitys/aa;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/aa;-><init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto :goto_0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/activitys/ResetPassword;)Lcom/yf/smart/weloopx/g/d;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    .line 202
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->n:Lcom/yf/smart/weloopx/activitys/ResetPassword$a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword$a;->start()Landroid/os/CountDownTimer;

    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f070111

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 176
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->x:Ljava/lang/String;

    const-string v2, "2"

    new-instance v3, Lcom/yf/smart/weloopx/activitys/w;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/activitys/w;-><init>(Lcom/yf/smart/weloopx/activitys/ResetPassword;)V

    iget-boolean v4, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/h;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 209
    :sswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->s:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const v0, 0x7f07017e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const v0, 0x7f0701b2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a()V

    goto :goto_0

    .line 221
    :sswitch_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->finish()V

    goto :goto_0

    .line 225
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v1, "IS_WEIXIN_LOGIN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v1, "set_target"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :sswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const v0, 0x7f0701b8

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(I)V

    goto :goto_0

    .line 239
    :cond_2
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    if-nez v0, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->c()V

    goto :goto_0

    .line 242
    :cond_3
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->d()V

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x7f0d0104 -> :sswitch_3
        0x7f0d0115 -> :sswitch_0
        0x7f0d017d -> :sswitch_1
        0x7f0d017e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->requestWindowFeature(I)Z

    .line 85
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->setContentView(I)V

    .line 86
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->a(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b()V

    .line 90
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/ResetPassword;->q:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->e()V

    .line 93
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 94
    return-void
.end method
