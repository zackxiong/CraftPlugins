.class Landroid/support/v4/app/ag$m;
.super Landroid/support/v4/app/ag$i;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Landroid/support/v4/app/ag$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ag$d;)Landroid/app/Notification;
    .locals 23

    .prologue
    .line 577
    new-instance v1, Landroid/support/v4/app/ao$a;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ag$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ag$d;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ag$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/ag$d;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/ag$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ag$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/ag$d;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/ag$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ag$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ag$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/ag$d;->o:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ag$d;->p:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/ag$d;->q:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ag$d;->l:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ag$d;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ag$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ag$d;->v:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ag$d;->x:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ag$d;->r:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ag$d;->s:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ag$d;->t:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v1 .. v22}, Landroid/support/v4/app/ao$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 583
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ag$d;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/ae;Ljava/util/ArrayList;)V

    .line 584
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ag$d;->m:Landroid/support/v4/app/ag$o;

    invoke-static {v1, v2}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/af;Landroid/support/v4/app/ag$o;)V

    .line 585
    invoke-virtual {v1}, Landroid/support/v4/app/ao$a;->b()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
