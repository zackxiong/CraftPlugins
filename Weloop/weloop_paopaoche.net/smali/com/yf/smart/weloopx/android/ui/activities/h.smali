.class public Lcom/yf/smart/weloopx/android/ui/activities/h;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field protected final j:I

.field protected final k:I

.field protected final l:I

.field protected m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

.field protected n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

.field protected o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

.field protected p:[B

.field protected q:Landroid/graphics/Typeface;

.field protected r:Lcom/yf/smart/weloopx/data/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 27
    const-string v0, "AlarmClockBaseActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->a:Ljava/lang/String;

    .line 29
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->j:I

    .line 30
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->k:I

    .line 31
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->l:I

    .line 38
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->p:[B

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Lcom/yf/smart/weloopx/android/ui/activities/h$a;II)V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->b()V

    .line 78
    const-string v0, "\u8bbe\u5907\u672a\u8fde\u63a5"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->e(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->b()V

    .line 83
    const-string v0, "\u8bbe\u5907\u8fde\u63a5\u4e2d"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    invoke-interface {p1}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->b()V

    .line 88
    const-string v0, "\u8bbe\u5907\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmClockBaseActivity 3. \u5c06\u8981\u540c\u6b65\u7684alarmData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->p:[B

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/yf/gattlib/client/b/aj;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/j;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/h;Lcom/yf/smart/weloopx/android/ui/activities/h$a;I)V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->p:[B

    invoke-direct {v0, v1, v2, p3}, Lcom/yf/gattlib/client/b/aj;-><init>(Lcom/yf/gattlib/client/b/aj$a;[BI)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/aj;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method

.method protected a(Lcom/yf/smart/weloopx/data/models/AlarmHolder;[BLjava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yf/smart/weloopx/data/models/AlarmHolder;",
            "[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 131
    iget-boolean v0, p1, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mIsSet:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 147
    :cond_0
    const/16 v0, 0xf

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 149
    packed-switch p4, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x7

    if-ge v1, v0, :cond_0

    .line 137
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    mul-int/lit8 v0, v1, 0x2

    iget v2, p1, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mHour:I

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 139
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v2, p1, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mMinute:I

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 136
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 141
    :cond_2
    mul-int/lit8 v0, v1, 0x2

    aput-byte v3, p2, v0

    .line 142
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput-byte v3, p2, v0

    goto :goto_2

    .line 151
    :pswitch_0
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->b([B)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->c([B)V

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->d([B)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(ZI)V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v1

    .line 174
    const/16 v0, 0xe

    new-array v0, v0, [B

    .line 175
    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 176
    packed-switch p2, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 178
    :pswitch_0
    if-eqz p1, :cond_0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->b([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->p:[B

    goto :goto_1

    .line 182
    :pswitch_1
    if-eqz p1, :cond_1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->c([B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->p:[B

    goto :goto_2

    .line 187
    :pswitch_2
    if-eqz p1, :cond_2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->d([B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->p:[B

    goto :goto_3

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/i;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/i;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/h;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/h;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/h;->q:Landroid/graphics/Typeface;

    .line 59
    return-void
.end method
