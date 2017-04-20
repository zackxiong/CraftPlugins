.class public Lcom/yf/smart/weloopx/android/ui/a/j;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/a/j$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/yf/smart/weloopx/data/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const-string v0, "FriendSearchAdapter"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->a:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/yf/smart/weloopx/data/h;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->f:Lcom/yf/smart/weloopx/data/h;

    .line 48
    invoke-static {p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->create(Landroid/content/Context;)Lcom/yf/gattlib/http/afinal/FinalBitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->e:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    .line 161
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 162
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 167
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getType()Ljava/lang/String;

    move-result-object v3

    .line 168
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 169
    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getRequestnickname()Ljava/lang/String;

    move-result-object v1

    .line 170
    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getRequestheadPic()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 177
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getState()Ljava/lang/String;

    move-result-object v3

    .line 178
    if-nez v3, :cond_1

    const-string v3, "-1"

    .line 179
    :cond_1
    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 180
    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v9, 0x7f07005d

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    :cond_2
    :goto_3
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 183
    if-eqz v5, :cond_7

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v5, 0x7f070036

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v5, v2

    move v2, v4

    .line 186
    :goto_5
    const-string v9, "2"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 187
    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v3, 0x7f0701df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " userID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", toUserID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isMyBeRequest = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", nickName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 193
    const-string v3, "content"

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "isMyBeRequest"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v2, "nickName"

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "photoUrl"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object v6

    .line 169
    :cond_3
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getTonickname()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 170
    :cond_4
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToheadPic()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 171
    :cond_5
    const-string v9, "2"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string v1, ""

    goto/16 :goto_2

    .line 180
    :cond_6
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v9, 0x7f070202

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 183
    :cond_7
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v5, 0x7f070060

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 187
    :cond_8
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v3, 0x7f07005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_9
    move v4, v2

    move-object v2, v5

    goto/16 :goto_6

    :cond_a
    move v10, v5

    move-object v5, v2

    move v2, v10

    goto/16 :goto_5
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setState(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->f:Lcom/yf/smart/weloopx/data/h;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/h;->a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Z

    .line 274
    return-void
.end method

.method private a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 255
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/j;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/j;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/j;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 11

    .prologue
    .line 203
    new-instance v7, Lcom/b/a/d/d;

    invoke-direct {v7}, Lcom/b/a/d/d;-><init>()V

    .line 204
    const-string v0, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "requestUserId"

    invoke-virtual {v7, v0, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "acceptFlag"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v8, Lcom/b/a/b;

    invoke-direct {v8}, Lcom/b/a/b;-><init>()V

    .line 208
    sget-object v9, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/f/m;->v()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/l;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object v5, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/yf/smart/weloopx/android/ui/a/l;-><init>(Lcom/yf/smart/weloopx/android/ui/a/j;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v8, v9, v10, v7, v0}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 241
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 262
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v2, 0x7f070106

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    const v2, 0x7f0701fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 267
    :cond_1
    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 261
    nop

    :array_0
    .array-data 4
        0x7f020112
        0x7f020114
        0x7f020113
    .end array-data
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/a/j;)Lcom/yf/smart/weloopx/data/h;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->f:Lcom/yf/smart/weloopx/data/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/j;->notifyDataSetChanged()V

    .line 61
    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->c:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    .line 94
    if-nez p2, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030086

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/a/j$a;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lcom/yf/smart/weloopx/android/ui/a/j$a;-><init>(Lcom/yf/smart/weloopx/android/ui/a/k;)V

    .line 98
    const v2, 0x7f0d025c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/yf/smart/weloopx/android/ui/a/j$a;->a:Landroid/widget/ImageView;

    .line 99
    const v2, 0x7f0d0260

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/yf/smart/weloopx/android/ui/a/j$a;->b:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0d025e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/yf/smart/weloopx/android/ui/a/j$a;->c:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0d025d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/yf/smart/weloopx/android/ui/a/j$a;->d:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0d025f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v3, Lcom/yf/smart/weloopx/android/ui/a/j$a;->e:Landroid/widget/Button;

    .line 103
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v9, v3

    .line 107
    :goto_0
    invoke-virtual {v8}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getRequestUserId()Ljava/lang/String;

    move-result-object v11

    .line 108
    invoke-virtual {v8}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v12

    .line 109
    invoke-virtual {v8}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getMsgTime()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v8}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getType()Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 112
    const-string v5, "2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 113
    const-string v5, "3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TYPE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v4, :cond_6

    .line 117
    const-string v3, "2015-"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 118
    const/4 v3, 0x0

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 122
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Ljava/util/HashMap;

    move-result-object v5

    .line 123
    const-string v2, "isMyBeRequest"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 124
    const-string v2, "nickName"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 125
    const-string v2, "content"

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 127
    if-eqz v4, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    iget-object v3, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->a:Landroid/widget/ImageView;

    const-string v4, "photoUrl"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->e:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->e:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 129
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->b:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->c:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    if-eqz v13, :cond_1

    .line 133
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 134
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->b:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    if-eqz v14, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->d:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    iget-object v3, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->e:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yf/smart/weloopx/android/ui/a/j;->e:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->display(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 139
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_2
    iget-object v2, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->d:Landroid/widget/TextView;

    if-eqz v15, :cond_4

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v3, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->e:Landroid/widget/Button;

    if-eqz v15, :cond_5

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v10, v9, Lcom/yf/smart/weloopx/android/ui/a/j$a;->e:Landroid/widget/Button;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/a/k;

    move-object/from16 v3, p0

    move v4, v15

    move-object v5, v11

    move-object v6, v12

    move-object v7, v9

    move/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/yf/smart/weloopx/android/ui/a/k;-><init>(Lcom/yf/smart/weloopx/android/ui/a/j;ZLjava/lang/String;Ljava/lang/String;Lcom/yf/smart/weloopx/android/ui/a/j$a;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;I)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-object p2

    .line 105
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/android/ui/a/j$a;

    move-object v9, v2

    goto/16 :goto_0

    .line 143
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 145
    :cond_5
    const/16 v2, 0x8

    goto :goto_3

    :cond_6
    move-object v10, v2

    goto/16 :goto_1
.end method
