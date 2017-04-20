.class public Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;
    }
.end annotation


# instance fields
.field private A:Lcom/yf/smart/weloopx/g/d;

.field public final a:Ljava/lang/String;

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00fc
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f6
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f8
    .end annotation
.end field

.field e:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00eb
    .end annotation
.end field

.field f:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f7
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00fa
    .end annotation
.end field

.field h:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field i:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00fb
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f9
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00fd
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->n:I

    .line 57
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->o:Z

    .line 58
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    .line 59
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->q:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->u:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->y:Ljava/lang/String;

    .line 429
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;I)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Lcom/yf/smart/weloopx/g/d;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;I)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 255
    const-class v1, Lcom/yf/smart/weloopx/data/models/VerifyCodeModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/VerifyCodeModel;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/VerifyCodeModel;->getVerifyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->u:Ljava/lang/String;

    .line 259
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->n:I

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 108
    const/16 v1, 0x3e8

    .line 109
    const v2, 0x1d4c0

    .line 110
    new-instance v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;

    int-to-long v2, v2

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;JJ)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->z:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;

    .line 111
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    .line 112
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "OPEN_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    .line 115
    const-string v1, "WECHAT_LOGIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->o:Z

    .line 116
    const-string v1, "IS_BIND_PHONE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    .line 117
    const-string v1, "IS_INIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->q:Z

    .line 118
    const-string v1, "NICK_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->w:Ljava/lang/String;

    .line 119
    const-string v1, "SEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->x:Ljava/lang/String;

    .line 120
    const-string v1, "HEAD_PIC_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->y:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0a\u4e2a\u754c\u9762\u4f20\u9012\u8fc7\u6765\u7684openid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWeChatLogin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBindPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headPicUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->q:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->j()V

    .line 133
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;I)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 137
    new-instance v0, Landroid/text/SpannableString;

    const-string v3, "\u300a\u9690\u79c1\u6761\u6b3e\u53ca\u670d\u52a1\u534f\u8bae\u300b"

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v3, Landroid/text/style/URLSpan;

    const-string v4, "http://weloop.cn/privacypolicy.html"

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 140
    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->j:Landroid/widget/TextView;

    const v3, 0x7f0701dd

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->l:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->j:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    if-eqz v0, :cond_4

    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/e;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/e;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void

    .line 150
    :cond_2
    const v0, 0x7f070238

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 152
    goto :goto_1

    .line 157
    :cond_4
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private e()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const v0, 0x7f0701a7

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity0;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "PHONE_NUM"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, "IS_INIT"

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 412
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 413
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 414
    const-class v2, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 415
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/models/UserData2;->setOpenId(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 419
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData2;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-class v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 424
    :goto_0
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 425
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/app/a;->b()V

    .line 426
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 427
    return-void

    .line 422
    :cond_0
    const-class v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;)V

    .line 353
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    const v1, 0x9c4400

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;I)V

    .line 354
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->finish()V

    .line 355
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    .line 409
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const v0, 0x7f0701b1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 370
    const-string v1, "openId"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "checkCode"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "mobile"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed1\u5b9a\u7684openId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u9a8c\u8bc1\u7801= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u624b\u673a\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u8bf7\u6c42\u5730\u5740 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/f/m;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 375
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->C()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/activitys/h;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/h;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto/16 :goto_0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    .line 504
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 460
    const-string v1, "openId"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "clientType"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "userType"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "channelId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "deviceToken"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "longitude"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "latitude"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 468
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f()V

    .line 469
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->B()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/activitys/i;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/i;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    .line 250
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->z:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity$a;->start()Landroid/os/CountDownTimer;

    .line 222
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f070203

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 224
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    const-string v3, "1"

    new-instance v4, Lcom/yf/smart/weloopx/activitys/f;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/activitys/f;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/h;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->o:Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 265
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    .line 317
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const v0, 0x7f0701b1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccount(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setCheckCode(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v2, 0x7f0701c5

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 287
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/activitys/g;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/activitys/g;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/d;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 176
    :sswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->A:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const v0, 0x7f07017e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b(I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->a()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->finish()V

    goto :goto_0

    .line 188
    :sswitch_2
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->o:Z

    if-nez v0, :cond_2

    .line 189
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->p:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->e()V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->b()V

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->i()V

    goto :goto_0

    .line 202
    :sswitch_3
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->h()V

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00f6 -> :sswitch_0
        0x7f0d00f8 -> :sswitch_2
        0x7f0d00fc -> :sswitch_3
        0x7f0d017d -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->requestWindowFeature(I)Z

    .line 98
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->setContentView(I)V

    .line 100
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 101
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c()V

    .line 102
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d()V

    .line 103
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->d(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 509
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onResume()V

    .line 510
    const v0, 0x7f070203

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 512
    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_0
    return-void
.end method
