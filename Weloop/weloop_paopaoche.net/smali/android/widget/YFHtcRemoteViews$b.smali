.class public Landroid/widget/YFHtcRemoteViews$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;)V
    .locals 0

    .prologue
    .line 1616
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$b;->b:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1618
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$b;->a:I

    .line 1619
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1622
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$b;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$b;->a:I

    .line 1623
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1631
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 1634
    if-eqz v1, :cond_0

    .line 1635
    sget-object v2, Landroid/widget/YFHtcRemoteViews$1;->a:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1648
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/YFHtcRemoteViews$b;->a(I)V

    .line 1649
    return-void

    .line 1637
    :pswitch_1
    const/4 v0, 0x1

    .line 1638
    goto :goto_0

    .line 1641
    :pswitch_2
    const/4 v0, 0x2

    .line 1642
    goto :goto_0

    .line 1635
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
    .line 1626
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$b;->a:I

    return v0
.end method
