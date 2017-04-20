.class public Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/f/d$a;
.implements Lcom/yf/smart/weloopx/f/d$b;


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/app/NotificationManager;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/yf/smart/weloopx/data/i;

.field private i:Lcom/yf/gattlib/c/c;

.field private j:Lcom/yf/smart/weloopx/f/d;

.field private k:Lcom/yf/smart/weloopx/data/f;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const-string v0, "ReminderReceiver"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->e:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->a:Z

    .line 55
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->l:Ljava/lang/String;

    .line 56
    const-string v0, "     "

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->m:Ljava/lang/String;

    .line 57
    const-string v0, "com.yf.smart.push.msg"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->n:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->i:Lcom/yf/gattlib/c/c;

    .line 92
    new-instance v0, Lcom/yf/smart/weloopx/data/i;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->h:Lcom/yf/smart/weloopx/data/i;

    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g:Ljava/lang/String;

    .line 96
    const-string v1, "IS_CUR_DATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->a:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g:Ljava/lang/String;

    .line 101
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {p2}, Lcom/yf/gattlib/p/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->i:Lcom/yf/gattlib/c/c;

    const-string v1, "REMINDER_NUM"

    invoke-virtual {v0, v1, v6}, Lcom/yf/gattlib/c/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.reminder.push"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    const-string v4, "NOTIFICATION_MSG"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v4, "NOTIFICATION_TIME"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v4, v0, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->i:Lcom/yf/gattlib/c/c;

    const-string v1, "REMINDER_NUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    const-string v2, "NOTIFICATION_MSG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f:Ljava/lang/String;

    .line 135
    const-string v2, "NOTIFICATION_TIME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->e:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->h:Lcom/yf/smart/weloopx/data/i;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/data/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f()V

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->c:Landroid/app/NotificationManager;

    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    const-class v3, Lcom/yf/smart/weloopx/android/ui/activities/SplashScreenActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 146
    new-instance v2, Landroid/support/v4/app/ag$d;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/ag$d;-><init>(Landroid/content/Context;)V

    .line 147
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ag$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag$d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ag$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ag$d;

    move-result-object v3

    const v4, 0x7f0200d8

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ag$d;->a(I)Landroid/support/v4/app/ag$d;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ag$d;->b(I)Landroid/support/v4/app/ag$d;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/ag$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ag$d;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ag$d;->a(Z)Landroid/support/v4/app/ag$d;

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->c:Landroid/app/NotificationManager;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Landroid/support/v4/app/ag$d;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->i:Lcom/yf/gattlib/c/c;

    const-string v2, "REMINDER_NUM"

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 156
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a5\u6536\u5230\u5e7f\u64ad\uff0c\u5f00\u59cb\u4e0b\u8f7d\u4f4d\u7f6e\u4fe1\u606fReeceiver and start download trajecty info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 106
    const-string v0, " \u63a5\u6536\u5230\u5e7f\u64ad\uff0c\u5f00\u59cb\u4e0b\u8f7d\u4f4d\u7f6e\u4fe1\u606fReeceiver and start download trajecty info "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/yf/smart/weloopx/data/f;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->k:Lcom/yf/smart/weloopx/data/f;

    .line 108
    new-instance v0, Lcom/yf/smart/weloopx/f/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/f/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->j:Lcom/yf/smart/weloopx/f/d;

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->j:Lcom/yf/smart/weloopx/f/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->a:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d$a;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->k:Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/f;->a()Ljava/util/List;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u672a\u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u7684\u65e5\u671f\u6709: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u672a\u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u7684\u65e5\u671f\u6709: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->j:Lcom/yf/smart/weloopx/f/d;

    invoke-virtual {v2, p0, v0}, Lcom/yf/smart/weloopx/f/d;->a(Lcom/yf/smart/weloopx/f/d$b;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->h:Lcom/yf/smart/weloopx/data/i;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/data/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->h:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/i;->c()Lcom/yf/smart/weloopx/data/models/RemindersModel;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDateAndTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/yf/smart/weloopx/data/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/l;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/l;->d(Ljava/lang/String;)V

    .line 247
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0b\u8f7d\u8f68\u8ff9\u4fe1\u606fonDownloadStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0b\u8f7d\u8f68\u8ff9\u4fe1\u606fonDownloadFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0b\u8f7d\u8f68\u8ff9\u4fe1\u606fonDownloadSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->e()V

    .line 213
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606fonUploadFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606fonUploadStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u6210\u529fonUploadSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 233
    const-string v0, " \u4e0a\u4f20\u8f68\u8ff9\u4fe1\u606f\u6210\u529fonUploadSuccess "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->k:Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/f;->b(Ljava/lang/String;)Z

    .line 241
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d:Landroid/content/Context;

    .line 67
    invoke-direct {p0, p2}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->a(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "android.download.upload.locationinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->d()V

    .line 72
    :cond_0
    const-string v1, "android.reminder.push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-direct {p0, p2}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b(Landroid/content/Intent;)V

    .line 75
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    :cond_2
    const-string v1, "android.start.app.run.reminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->f()V

    .line 83
    :cond_3
    const-string v1, "com.yf.smart.push.msg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a5\u6536\u5230\u53d1\u6d88\u606f\u7684\u5e7f\u64ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/broadcasts/ReminderReceiver;->g()V

    .line 88
    :cond_4
    return-void
.end method
