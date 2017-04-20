.class public Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Z


# instance fields
.field b:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d021a
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0219
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

.field private l:Lcom/yf/smart/weloopx/g/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 44
    const-string v0, "WXEntryActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u5fae\u4fe1\u5feb\u901f\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 209
    sparse-switch p1, :sswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 211
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handleOperation\u4e2d\u5904\u7406\u767b\u5f55,\u4e4b\u540e\u6267\u884c\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handleOperation\u4e2d\u5904\u7406\u6ce8\u518c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u59cb\u6267\u884c\u624b\u673a\u53f7\u7ed1\u5b9a\u5fae\u4fe1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;I)V

    .line 224
    invoke-direct {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->c()V

    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x9c4400 -> :sswitch_1
        0x9c6b11 -> :sswitch_0
        0x9c9222 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;-><init>(Landroid/os/Bundle;)V

    .line 121
    iget v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 128
    :pswitch_1
    const v0, 0x7f0702cf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 124
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_3
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_4
    const v0, 0x7f0702cd

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.weixin.qq.com/sns/oauth2/access_token?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/app/WeLoopApplication;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/app/WeLoopApplication;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&grant_type=authorization_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1. \u7ec4\u88c5\u8bf7\u6c42\u83b7\u5f97accessToken\u7684Url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 150
    new-instance v2, Lcom/b/a/b;

    invoke-direct {v2}, Lcom/b/a/b;-><init>()V

    .line 151
    sget-object v3, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    new-instance v4, Lcom/yf/smart/weloopx/dist/wxapi/a;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/dist/wxapi/a;-><init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 181
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.weixin.qq.com/sns/userinfo?access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&openid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 312
    new-instance v2, Lcom/b/a/b;

    invoke-direct {v2}, Lcom/b/a/b;-><init>()V

    .line 313
    sget-object v3, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    new-instance v4, Lcom/yf/smart/weloopx/dist/wxapi/c;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/dist/wxapi/c;-><init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 352
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/g/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    .line 107
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->c(Landroid/content/Context;)I

    .line 108
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g:I

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;I)V

    .line 110
    iget v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g:I

    const v1, 0x9cb933

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f070051

    .line 185
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f()V

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 188
    const-class v1, Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/WeChatModel;

    iput-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3. \u5fae\u4fe1\u6388\u6743\u7ed3\u679c openId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4. \u9009\u62e9\u533a\u54ea\u91cc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g:I

    if-eqz v0, :cond_1

    .line 197
    iget v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->g:I

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)Lcom/yf/smart/weloopx/data/models/WeChatModel;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    .prologue
    .line 363
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 364
    const-string v1, "openId"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "checkCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "mobile"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v2, p0}, Lcom/yf/smart/weloopx/g/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7ed1\u5b9a\u7684openId  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u624b\u673a\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 368
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 369
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->C()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/dist/wxapi/d;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/dist/wxapi/d;-><init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 414
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->h(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 240
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 241
    const-string v1, "openId"

    invoke-virtual {v0, v1, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 244
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->D()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/dist/wxapi/b;

    invoke-direct {v4, p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/b;-><init>(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 305
    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 357
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    .line 359
    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 417
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 418
    const-class v1, Lcom/yf/smart/weloopx/data/models/UserData2;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserData2;

    .line 419
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setOpenId(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData2;->setMobile(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->l:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/g/d;->a(Lcom/yf/smart/weloopx/data/models/UserData2;)V

    .line 423
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    .line 424
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 456
    :goto_0
    return-void

    .line 430
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/Login;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    const-string v1, "wechatBindOldPhone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6211\u8981\u53bb\u7ed1\u5b9a\u8001\u8d26\u53f7\u4e86 openId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    const-string v1, "OPEN_ID"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->k:Lcom/yf/smart/weloopx/data/models/WeChatModel;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/WeChatModel;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "WECHAT_LOGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    const-string v1, "IS_BIND_PHONE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string v1, "IS_INIT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string v1, "NICK_NAME"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v1, "SEX"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v1, "HEAD_PIC_URL"

    iget-object v2, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 453
    :sswitch_2
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    goto/16 :goto_0

    .line 428
    :sswitch_data_0
    .sparse-switch
        0x7f0d017d -> :sswitch_2
        0x7f0d0219 -> :sswitch_1
        0x7f0d021a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->setContentView(I)V

    .line 69
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 70
    invoke-direct {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->b()V

    .line 71
    invoke-direct {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a()V

    .line 72
    const-string v0, "\u8d26\u53f7\u9a8c\u8bc1\u4e2d.."

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->d(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate\u7684\u5904\u7406"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->finish()V

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onNewIntent\u7684\u5904\u7406"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/dist/wxapi/WXEntryActivity;->a(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
