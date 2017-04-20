.class public Landroid/widget/YFRemoteViews$c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/widget/YFRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews;)V
    .locals 0

    .prologue
    .line 1492
    iput-object p1, p0, Landroid/widget/YFRemoteViews$c;->b:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1494
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/YFRemoteViews$c;->a:I

    .line 1495
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1498
    iget v0, p0, Landroid/widget/YFRemoteViews$c;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/YFRemoteViews$c;->a:I

    .line 1499
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1507
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 1510
    if-eqz v1, :cond_0

    .line 1511
    sget-object v2, Landroid/widget/YFRemoteViews$1;->a:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1524
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/YFRemoteViews$c;->a(I)V

    .line 1525
    return-void

    .line 1513
    :pswitch_1
    const/4 v0, 0x1

    .line 1514
    goto :goto_0

    .line 1517
    :pswitch_2
    const/4 v0, 0x2

    .line 1518
    goto :goto_0

    .line 1511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1502
    iget v0, p0, Landroid/widget/YFRemoteViews$c;->a:I

    return v0
.end method
