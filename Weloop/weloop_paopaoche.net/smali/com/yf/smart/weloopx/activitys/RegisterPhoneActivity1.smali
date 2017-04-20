.class public Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0109
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d010a
    .end annotation
.end field

.field c:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0107
    .end annotation
.end field

.field d:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0108
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d010b
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/yf/smart/weloopx/view/l;

.field private p:Lcom/yf/smart/weloopx/g/d;

.field private q:Lcom/yf/smart/weloopx/data/models/UserData;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Landroid/view/View;

.field private w:Ljava/io/File;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 57
    const-string v0, "RegisterPhoneActivity1"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->h:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->j:Ljava/lang/String;

    .line 60
    const-string v0, "IS_WEIXIN_LOGIN"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->k:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->l:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->m:Z

    .line 63
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->n:Z

    .line 71
    new-instance v0, Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/UserData;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->t:Z

    .line 317
    new-instance v0, Lcom/yf/smart/weloopx/activitys/n;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/activitys/n;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->x:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/yf/smart/weloopx/activitys/m;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/activitys/m;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->n:Z

    .line 300
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 306
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 307
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    .line 308
    if-eqz v1, :cond_0

    .line 311
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->p:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 312
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;I)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->h()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 472
    :cond_0
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 473
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->j:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/yf/smart/weloopx/activitys/q;

    invoke-direct {v5, p0}, Lcom/yf/smart/weloopx/activitys/q;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/b/a/d/a/d;)Lcom/b/a/d/c;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Lcom/yf/smart/weloopx/data/models/UserData;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 109
    new-instance v2, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->p:Lcom/yf/smart/weloopx/g/d;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->j:Ljava/lang/String;

    .line 112
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    .line 113
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 116
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_3

    .line 122
    const-string v3, "IS_INIT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->t:Z

    .line 123
    const-string v3, "set_target"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->m:Z

    .line 124
    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->l:Z

    .line 125
    const-string v3, "NICK_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->r:Ljava/lang/String;

    .line 126
    const-string v3, "SEX"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 128
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iput v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setSex(I)V

    .line 131
    :cond_2
    const-string v0, "HEAD_PIC_URL"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b(Ljava/lang/String;)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getSex()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 initData SEX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 138
    return-void

    :cond_4
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->a()Lcom/b/a/a;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserData;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getHeadPicAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserData;->getHeadPicAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->k:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    const-string v1, "output"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->o:Lcom/yf/smart/weloopx/view/l;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->o:Lcom/yf/smart/weloopx/view/l;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/l;->dismiss()V

    .line 345
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i()V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->j:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->o:Lcom/yf/smart/weloopx/view/l;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->o:Lcom/yf/smart/weloopx/view/l;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/l;->dismiss()V

    .line 353
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 435
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->u:Landroid/view/View;

    .line 143
    new-instance v0, Lcom/yf/smart/weloopx/view/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->x:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/view/l;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->o:Lcom/yf/smart/weloopx/view/l;

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->g:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->m:Z

    if-nez v0, :cond_2

    const v0, 0x7f0700e9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 \u521d\u59cb\u5316\u7684initView sex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(I)V

    .line 159
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "96"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 \u5fae\u4fe1\u4f20\u9012\u8fc7\u6765\u7684\u56fe\u7247\u4fe1\u606f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void

    .line 150
    :cond_2
    const v0, 0x7f070213

    goto/16 :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/yf/smart/weloopx/activitys/p;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/activitys/p;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/p;->start()V

    .line 466
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterPhoneActivity1 log file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 274
    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterPhoneActivity1 \u8d70\u8fd9\u91cc1---\u76f8\u518c\u9009\u62e9\u56fe\u7247 path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 280
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v2, "path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v1, v6}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 285
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/ImageCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v1, "path"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterPhoneActivity1 \u8d70\u8fd9\u91cc2---\u62cd\u7167\u9009\u62e9\u56fe\u7247 path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 288
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0, v0, v6}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->e(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b(I)V

    .line 431
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegisterPhoneActivity1 \u63d0\u4ea4\u8d44\u6599 isRegister = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSetHeadPic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 364
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->n:Z

    if-nez v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b(I)V

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "RegisterPhoneActivity1"

    invoke-static {v2, v3, v4}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 383
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    .line 384
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    iget v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/UserData;->setSex(I)V

    .line 385
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/data/models/UserData;->setNickname(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccessToken(Ljava/lang/String;)V

    .line 390
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->n:Z

    if-eqz v2, :cond_4

    .line 391
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/UserData;->setHeadPic(Ljava/io/File;)V

    .line 396
    :goto_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    new-instance v4, Lcom/yf/smart/weloopx/activitys/o;

    invoke-direct {v4, p0, v0, v1}, Lcom/yf/smart/weloopx/activitys/o;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/a;)V

    goto/16 :goto_0

    .line 393
    :cond_4
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/UserData;->setHeadPic(Ljava/io/File;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    .line 249
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->w:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 253
    :pswitch_2
    if-eqz p3, :cond_0

    .line 254
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 259
    :pswitch_3
    if-eqz p3, :cond_0

    .line 260
    invoke-direct {p0, p3}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 186
    :sswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->q:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getHeadPicAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->finish()V

    goto :goto_0

    .line 197
    :sswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->o:Lcom/yf/smart/weloopx/view/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->u:Landroid/view/View;

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/yf/smart/weloopx/view/l;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 201
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(I)V

    .line 202
    iput v3, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    goto :goto_0

    .line 206
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(I)V

    .line 207
    iput v1, p0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->i:I

    goto :goto_0

    .line 211
    :sswitch_4
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b()V

    goto :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x7f0d0107 -> :sswitch_1
        0x7f0d0109 -> :sswitch_2
        0x7f0d010a -> :sswitch_3
        0x7f0d010b -> :sswitch_4
        0x7f0d017d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->requestWindowFeature(I)Z

    .line 98
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->setContentView(I)V

    .line 99
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 101
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->c()V

    .line 102
    const v0, 0x7f0702b2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a()V

    .line 104
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->d()V

    .line 105
    return-void
.end method
