.class public Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/a/n$a;


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

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0113
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field e:Landroid/widget/ListView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0114
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RemindersModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yf/smart/weloopx/android/ui/a/n;

.field private h:Lcom/yf/smart/weloopx/data/i;

.field private i:Lcom/yf/gattlib/c/c;

.field private final j:I

.field private final k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/16 v0, 0x38e4

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->j:I

    .line 55
    const/16 v0, 0x38e5

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->k:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    .line 57
    const-string v0, "RemindersActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->m:Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/fs;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fs;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->n:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;)Lcom/yf/smart/weloopx/android/ui/a/n;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    return-void
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v1, "state"

    const-string v2, "edit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "year"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "month"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u51c6\u5907\u4f20\u9012\u7684month = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 185
    const-string v1, "day"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "hour"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getHour()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "min"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "msg"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/16 v1, 0x38e5

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {p2}, Lcom/yf/gattlib/p/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e8b\u9879\u63d0\u9192\u8bbe\u7f6e\u5b8c\u6210\u540e\uff0c\u7b2c\u4e00\u4e2a\u7ecf\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5fae\u5999\u4e4b\u540e\u5f00\u59cb\u53d1\u9001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->i:Lcom/yf/gattlib/c/c;

    const-string v1, "REMINDER_NUM"

    invoke-virtual {v0, v1, v6}, Lcom/yf/gattlib/c/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.reminder.push"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v4, "NOTIFICATION_MSG"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v4, "NOTIFICATION_TIME"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/high16 v4, 0x10000000

    invoke-static {p0, v0, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 160
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->h:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/i;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->f:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/a/n;->a(Z)V

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/n;->a(Ljava/util/List;)V

    .line 136
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0700e6

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 77
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0701e1

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->i:Lcom/yf/gattlib/c/c;

    .line 88
    new-instance v0, Lcom/yf/smart/weloopx/data/i;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->h:Lcom/yf/smart/weloopx/data/i;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->f:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->h:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/i;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->f:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/n;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/yf/smart/weloopx/android/ui/a/n;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yf/smart/weloopx/android/ui/a/n$a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/n;->a(Z)V

    .line 93
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->h:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/i;->c()Lcom/yf/smart/weloopx/data/models/RemindersModel;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6700\u8fd1\u7684\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDateAndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDateAndTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const-string v1, "state"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/16 v1, 0x38e4

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    .line 195
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    const v2, 0x7f0700e6

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    move v2, v1

    .line 201
    :goto_2
    if-ge v2, v3, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    if-nez v0, :cond_3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewChild\u662fnull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a:Landroid/widget/Button;

    const v2, 0x7f0700ff

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 207
    :cond_3
    const v4, 0x7f0d0173

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 208
    iget-boolean v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    if-eqz v4, :cond_4

    .line 209
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 211
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a(Z)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5220\u9664\u4e4b\u540e\u91cd\u65b0\u6267\u884c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.start.app.run.reminder"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a(Z)V

    .line 118
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->d()V

    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 99
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->finish()V

    goto :goto_0

    .line 102
    :sswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->g:Lcom/yf/smart/weloopx/android/ui/a/n;

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->l:Z

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/n;->a(Z)V

    .line 103
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->f()V

    goto :goto_0

    .line 107
    :sswitch_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->e()V

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0113 -> :sswitch_2
        0x7f0d017d -> :sswitch_0
        0x7f0d017e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->requestWindowFeature(I)Z

    .line 63
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 65
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->c()V

    .line 66
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->b()V

    .line 67
    return-void
.end method
