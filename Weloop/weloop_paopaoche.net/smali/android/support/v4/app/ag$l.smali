.class Landroid/support/v4/app/ag$l;
.super Landroid/support/v4/app/ag$i;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Landroid/support/v4/app/ag$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ag$d;)Landroid/app/Notification;
    .locals 13

    .prologue
    .line 567
    iget-object v0, p1, Landroid/support/v4/app/ag$d;->a:Landroid/content/Context;

    iget-object v1, p1, Landroid/support/v4/app/ag$d;->B:Landroid/app/Notification;

    iget-object v2, p1, Landroid/support/v4/app/ag$d;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ag$d;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ag$d;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/ag$d;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Landroid/support/v4/app/ag$d;->i:I

    iget-object v7, p1, Landroid/support/v4/app/ag$d;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Landroid/support/v4/app/ag$d;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/ag$d;->g:Landroid/graphics/Bitmap;

    iget v10, p1, Landroid/support/v4/app/ag$d;->o:I

    iget v11, p1, Landroid/support/v4/app/ag$d;->p:I

    iget-boolean v12, p1, Landroid/support/v4/app/ag$d;->q:Z

    invoke-static/range {v0 .. v12}, Landroid/support/v4/app/an;->add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method