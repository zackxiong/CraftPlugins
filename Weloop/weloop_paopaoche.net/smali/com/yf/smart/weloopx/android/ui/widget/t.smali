.class public abstract Lcom/yf/smart/weloopx/android/ui/widget/t;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:[Landroid/graphics/PointF;

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/t;->b:Landroid/graphics/Paint;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
.end method

.method public a([Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/t;->a:[Landroid/graphics/PointF;

    .line 32
    return-void
.end method

.method public b()[Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/t;->a:[Landroid/graphics/PointF;

    return-object v0
.end method

.method public c()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/t;->b:Landroid/graphics/Paint;

    return-object v0
.end method
