.class public Lcom/yf/lib/notification/views/YFRemoteViews2$c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;)V
    .locals 0

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1590
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a:I

    .line 1591
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1594
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a:I

    .line 1595
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1603
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 1606
    if-eqz v1, :cond_0

    .line 1607
    sget-object v2, Lcom/yf/lib/notification/views/YFRemoteViews2$1;->a:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1620
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a(I)V

    .line 1621
    return-void

    .line 1609
    :pswitch_1
    const/4 v0, 0x1

    .line 1610
    goto :goto_0

    .line 1613
    :pswitch_2
    const/4 v0, 0x2

    .line 1614
    goto :goto_0

    .line 1607
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
    .line 1598
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a:I

    return v0
.end method
