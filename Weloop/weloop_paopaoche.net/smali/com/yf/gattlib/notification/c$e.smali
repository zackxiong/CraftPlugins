.class Lcom/yf/gattlib/notification/c$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/notification/c;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/notification/c;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/yf/gattlib/notification/c$e;->a:Lcom/yf/gattlib/notification/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/notification/c;Lcom/yf/gattlib/notification/c$1;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/yf/gattlib/notification/c$e;-><init>(Lcom/yf/gattlib/notification/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RemoteViews;Lcom/yf/gattlib/notification/NotificationContent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 308
    new-instance v2, Landroid/widget/YFRemoteViews3;

    invoke-direct {v2, v0}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;)V

    .line 310
    const-string v1, ""

    .line 311
    iget-object v0, v2, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews3$Action;

    .line 312
    instance-of v3, v0, Landroid/widget/YFRemoteViews3$ReflectionAction;

    if-eqz v3, :cond_0

    .line 316
    check-cast v0, Landroid/widget/YFRemoteViews3$ReflectionAction;

    .line 317
    const-string v3, "setText"

    iget-object v4, v0, Landroid/widget/YFRemoteViews3$ReflectionAction;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "setFormat"

    iget-object v4, v0, Landroid/widget/YFRemoteViews3$ReflectionAction;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 318
    :cond_1
    iget-object v3, v0, Landroid/widget/YFRemoteViews3$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 322
    iget-object v0, v0, Landroid/widget/YFRemoteViews3$ReflectionAction;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    iget-object v3, p2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 329
    iput-object v0, p2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 338
    goto :goto_0

    .line 331
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 333
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

    .line 339
    :cond_3
    iget-object v0, p2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 340
    iput-object v1, p2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 342
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
