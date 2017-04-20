.class public Lcom/yf/smart/weloopx/activitys/Login;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00eb
    .end annotation
.end field

.field b:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00ec
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00ed
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00ee
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/yf/smart/weloopx/data/EncryptUtil;

.field private q:Lcom/yf/smart/weloopx/g/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 45
    const-string v0, "Login"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->h:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->o:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/yf/smart/weloopx/data/EncryptUtil;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/EncryptUtil;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->p:Lcom/yf/smart/weloopx/data/EncryptUtil;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/Login;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/Login;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/Login;I)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/Login;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/activitys/Login;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    const-string v1, "LOGIN_SUCCESS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v1, "login_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "login_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/app/a;->b()V

    .line 142
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/Login;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    .line 103
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    const-string v1, "wechatBindOldPhone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    .line 106
    const-string v1, "OPEN_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->j:Ljava/lang/String;

    .line 107
    const-string v1, "NICK_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->m:Ljava/lang/String;

    .line 108
    const-string v1, "SEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->n:Ljava/lang/String;

    .line 109
    const-string v1, "HEAD_PIC_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->o:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/Login;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 354
    const-class v1, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 355
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->j:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->startActivity(Landroid/content/Intent;)V

    .line 360
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 361
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v1, "jumpType"

    const-string v2, "forgetPwd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "IS_BIND_OLD_PHONE_ACCOUNT"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/Login;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->e()V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/Login;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->b(I)V

    .line 233
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->k:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->p:Lcom/yf/smart/weloopx/data/EncryptUtil;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/EncryptUtil;->keyString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->p:Lcom/yf/smart/weloopx/data/EncryptUtil;

    new-instance v2, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/Login;->k:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Lcom/yf/smart/weloopx/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yf/smart/weloopx/data/EncryptUtil;->getEncryptStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v2, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    .line 198
    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccount(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/Login;->p:Lcom/yf/smart/weloopx/data/EncryptUtil;

    iget-object v4, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/yf/smart/weloopx/data/EncryptUtil;->getEncryptStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/UserData;->setEncryptedAccount(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setPwd(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setClientType(I)V

    .line 202
    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/data/models/UserData;->setAppKey(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/activitys/a;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/a;-><init>(Lcom/yf/smart/weloopx/activitys/Login;)V

    invoke-virtual {v0, v2, v1}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/j;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/Login;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/yf/smart/weloopx/activitys/c;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/activitys/c;-><init>(Lcom/yf/smart/weloopx/activitys/Login;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/Login;->e(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    const-string v0, "\u5bc6\u7801\u548c\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->e(Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 304
    :cond_1
    new-instance v1, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5c06\u8981\u7ed1\u5b9a\u7684openId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u624b\u673a\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

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

    .line 306
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 307
    const-string v2, "openId"

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/Login;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "pwd"

    invoke-virtual {v1, v2, v0}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 311
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->H()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/activitys/d;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/d;-><init>(Lcom/yf/smart/weloopx/activitys/Login;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070069

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->a:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070131

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->b:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    if-eqz v0, :cond_3

    const v0, 0x7f07012f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->d:Landroid/widget/Button;

    const v1, 0x7f07015c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->g:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "lastInputAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    :cond_0
    return-void

    .line 117
    :cond_1
    const v0, 0x7f070153

    goto :goto_0

    .line 118
    :cond_2
    const v0, 0x7f0701a6

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_3
    const v0, 0x7f0701a2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    :cond_4
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/UserData2;)V
    .locals 5

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u624b\u673a\u53f7\u767b\u5f55\u4e4b\u540e\u4fdd\u5b58\u7528\u6237\u4fe1\u606f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/Login;->i:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/UserData2;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->q:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 246
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->e()V

    .line 283
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v1

    if-gtz v1, :cond_2

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->e()V

    goto :goto_0

    .line 263
    :cond_2
    new-instance v1, Lcom/yf/gattlib/client/b/aq;

    new-instance v2, Lcom/yf/smart/weloopx/activitys/b;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/activitys/b;-><init>(Lcom/yf/smart/weloopx/activitys/Login;)V

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v4

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yf/gattlib/client/b/aq;-><init>(Lcom/yf/gattlib/client/b/aq$a;III)V

    invoke-virtual {v1}, Lcom/yf/gattlib/client/b/aq;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f070154

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->b(I)V

    .line 147
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->a(Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->finish()V

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 155
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->finish()V

    goto :goto_0

    .line 159
    :sswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->c()V

    goto :goto_0

    .line 163
    :sswitch_2
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/Login;->l:Z

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->d()V

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->h()V

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ed -> :sswitch_2
        0x7f0d017d -> :sswitch_0
        0x7f0d017e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->requestWindowFeature(I)Z

    .line 74
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 77
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 78
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/Login;->b()V

    .line 79
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->a()V

    .line 80
    const v0, 0x7f070156

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/Login;->d(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/Login;->finish()V

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
