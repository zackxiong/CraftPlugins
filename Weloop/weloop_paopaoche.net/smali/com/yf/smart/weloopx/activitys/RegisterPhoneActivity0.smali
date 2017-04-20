.class public Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0102
    .end annotation
.end field

.field b:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0103
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0101
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/yf/smart/weloopx/g/d;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->j:Z

    .line 47
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->k:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    .line 71
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "OPEN_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    .line 74
    const-string v1, "PHONE_NUM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    .line 75
    const-string v1, "IS_INIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->j:Z

    .line 76
    const-string v1, "IS_BIND_OLD_PHONE_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->k:Z

    .line 77
    const-string v1, "NICK_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->l:Ljava/lang/String;

    .line 78
    const-string v1, "SEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->m:Ljava/lang/String;

    .line 79
    const-string v1, "HEAD_PIC_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->n:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flagType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f:I

    .line 83
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(I)V

    .line 187
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5c06\u8981\u7ed1\u5b9a\u7684openId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u624b\u673a\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5bc6\u7801 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 143
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 144
    const-string v2, "openId"

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "pwd"

    invoke-virtual {v1, v2, v0}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 148
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->E()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/activitys/j;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/j;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 192
    const-class v1, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 193
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setOpenId(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setMobile(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 198
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->j:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v1, "IS_INIT"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->startActivity(Landroid/content/Intent;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->finish()V

    .line 208
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 86
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0d00ff

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/UserData2;)V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &&&&& doFinishRegister Save user info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 269
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 272
    const-string v1, "set_target"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->startActivity(Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->finish()V

    .line 275
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 279
    const v0, 0x7f070217

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(I)V

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 283
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(I)V

    .line 263
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    new-instance v1, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Lcom/yf/smart/weloopx/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccount(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setPwd(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setCheckCode(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/UserData;->setUserType(I)V

    .line 238
    :goto_1
    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/UserData;->setClientType(I)V

    .line 240
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 241
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/activitys/k;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/activitys/k;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/q;)V

    goto/16 :goto_0

    .line 236
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setUserType(I)V

    goto :goto_1
.end method

.method public b(Lcom/yf/smart/weloopx/data/models/UserData2;)V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yf/smart/weloopx/data/models/UserData2;->setMobile(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u7f6e\u5bc6\u7801\u6210\u529f isBindOldPhoneAccount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 348
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->i:Lcom/yf/smart/weloopx/g/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 350
    const-class v1, Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 351
    const-string v1, "IS_BIND_OLD_PHONE_ACCOUNT"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "wechatBindOldPhone"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->startActivity(Landroid/content/Intent;)V

    .line 359
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->finish()V

    .line 360
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(I)V

    .line 342
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_2
    new-instance v1, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Lcom/yf/smart/weloopx/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccount(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setPwd(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setCheckCode(Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setUserType(I)V

    .line 318
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setClientType(I)V

    .line 320
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 321
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/activitys/l;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/activitys/l;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/r;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->k:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->e()V

    goto :goto_0

    .line 106
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->f:I

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->b()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->c()V

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->finish()V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ff -> :sswitch_1
        0x7f0d0104 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->setContentView(I)V

    .line 63
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 64
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->d()V

    .line 65
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;->a()V

    .line 66
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 67
    return-void
.end method
