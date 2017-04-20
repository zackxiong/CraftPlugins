.class Lcom/yf/gattlib/notification/c$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/notification/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/notification/c;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/notification/c;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yf/gattlib/notification/c$b;->a:Lcom/yf/gattlib/notification/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/notification/c;Lcom/yf/gattlib/notification/c$1;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/yf/gattlib/notification/c$b;-><init>(Lcom/yf/gattlib/notification/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;Lcom/yf/gattlib/notification/NotificationContent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    new-instance v2, Landroid/widget/YFHtcRemoteViews;

    invoke-direct {v2, v0}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 147
    const-string v1, ""

    .line 148
    iget-object v0, v2, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFHtcRemoteViews$Action;

    .line 149
    instance-of v3, v0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;

    if-eqz v3, :cond_0

    .line 153
    check-cast v0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;

    .line 154
    const-string v3, "setText"

    iget-object v4, v0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "setFormat"

    iget-object v4, v0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    :cond_1
    iget-object v3, v0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 159
    iget-object v0, v0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    iget-object v3, p2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 166
    iput-object v0, p2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 175
    goto :goto_0

    .line 168
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 176
    :cond_3
    iget-object v0, p2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 177
    iput-object v1, p2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 179
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
