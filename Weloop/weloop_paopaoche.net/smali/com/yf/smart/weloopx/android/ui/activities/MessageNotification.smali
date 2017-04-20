.class public Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/yf/smart/weloopx/b/b/o;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00f0
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/yf/smart/weloopx/android/ui/a/j;

.field private i:Lcom/yf/smart/weloopx/data/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 48
    const-string v0, "MessageNotification"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 197
    const-class v1, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;

    .line 198
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i:Lcom/yf/smart/weloopx/data/h;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/data/h;->a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i:Lcom/yf/smart/weloopx/data/h;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/h;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    .line 200
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    const v0, 0x7f07018a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e(Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->j()V

    .line 205
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 246
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 247
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    const v0, 0x7f030041

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 250
    const v0, 0x7f0d017c

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 251
    if-eqz p3, :cond_0

    .line 252
    const v3, 0x7f070238

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_0
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/ef;

    invoke-direct {v3, p0, p2, p3, v1}, Lcom/yf/smart/weloopx/android/ui/activities/ef;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;ZLandroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v0, 0x7f0d017b

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v0, 0x7f0d017a

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 268
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/eg;

    invoke-direct {v3, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/eg;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v0, 0x7f0d0177

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    const v0, 0x7f0d0175

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    const v0, 0x7f0d0176

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    return-void

    .line 254
    :cond_0
    const v3, 0x7f070126

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 291
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    if-eqz p3, :cond_0

    const-string v0, "\u5220\u9664\u4e2d..."

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 294
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 295
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "requestUserId"

    invoke-virtual {v0, v1, p2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 299
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->w()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/eh;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/activities/eh;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 343
    return-void

    .line 291
    :cond_0
    const-string v0, "\u5ffd\u7565\u4e2d"

    goto :goto_0
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getState()Ljava/lang/String;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    const-string v0, "-1"

    .line 228
    :cond_0
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 231
    :goto_0
    return v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getRequestUserId()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)I
    .locals 5

    .prologue
    .line 431
    const/16 v1, 0xfa7

    .line 432
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getState()Ljava/lang/String;

    move-result-object v0

    .line 435
    if-nez v0, :cond_0

    const-string v0, "-1"

    .line 437
    :cond_0
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xfa9

    .line 441
    :cond_1
    :goto_0
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xfa4

    .line 445
    :cond_2
    :goto_1
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 446
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xfa5

    .line 448
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5904\u7406\u4e4b\u540e\u4f20\u9012\u7684\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 449
    return v0

    .line 438
    :cond_3
    const/16 v1, 0xfa1

    goto :goto_0

    .line 442
    :cond_4
    const/16 v1, 0xfa3

    goto :goto_1

    .line 446
    :cond_5
    const/16 v0, 0xfa6

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Lcom/yf/smart/weloopx/android/ui/a/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h:Lcom/yf/smart/weloopx/android/ui/a/j;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Lcom/yf/smart/weloopx/data/h;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i:Lcom/yf/smart/weloopx/data/h;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->c:Landroid/widget/TextView;

    const v1, 0x7f070175

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->a:Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/e$b;)V

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->f:Landroid/widget/ListView;

    .line 119
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/yf/smart/weloopx/data/h;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i:Lcom/yf/smart/weloopx/data/h;

    .line 123
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h()V

    .line 124
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i:Lcom/yf/smart/weloopx/data/h;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/h;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/j;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/a/j;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h:Lcom/yf/smart/weloopx/android/ui/a/j;

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h:Lcom/yf/smart/weloopx/android/ui/a/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 149
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 150
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 152
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->t()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/ed;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ed;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 193
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ee;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ee;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 209
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 349
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 350
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 352
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->z()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/ei;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ei;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 381
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a5\u6536\u5230\u597d\u53cb\u540c\u610f\u7684\u6570\u636e\u5237\u65b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i()V

    .line 456
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 139
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->finish()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->requestWindowFeature(I)Z

    .line 71
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->setContentView(I)V

    .line 72
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 74
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->d(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->d()V

    .line 76
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e()V

    .line 77
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->b()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onDestroy()V

    .line 109
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a()V

    .line 110
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h:Lcom/yf/smart/weloopx/android/ui/a/j;

    invoke-virtual {v1, p3}, Lcom/yf/smart/weloopx/android/ui/a/j;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    move-object v7, v0

    .line 388
    invoke-virtual {v7}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getType()Ljava/lang/String;

    move-result-object v8

    .line 390
    const-string v1, "2"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u662f\u63d0\u9192\u6d88\u606f\uff0c\u6240\u4ee5\u4e0d\u80fd\u70b9\u51fb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string v1, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    invoke-direct {p0, v7}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->b(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u6d88\u606f\u901a\u77e5\u4e2d\u7684 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u540d\u5b57 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v7}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->c(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)I

    move-result v3

    const/4 v4, 0x1

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Landroid/app/FragmentManager;IIZLjava/lang/String;Z)V

    .line 399
    :cond_2
    const-string v1, "3"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6267\u884c\u8df3\u8f6c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 401
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    const-string v2, "URL"

    invoke-virtual {v7}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Maybe get userID failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 413
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->h:Lcom/yf/smart/weloopx/android/ui/a/j;

    invoke-virtual {v0, p3}, Lcom/yf/smart/weloopx/android/ui/a/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    .line 414
    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v3

    .line 417
    :cond_1
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 421
    const v1, 0x7f070136

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Ljava/lang/String;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;Z)V

    goto :goto_0

    .line 423
    :cond_2
    const v1, 0x7f070139

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->a(Ljava/lang/String;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;Z)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 460
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->startActivity(Landroid/content/Intent;)V

    .line 463
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->finish()V

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onPause()V

    .line 99
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onRestart()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->i()V

    .line 84
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onStart()V

    .line 89
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onStop()V

    .line 104
    return-void
.end method
