.class Lcom/yf/smart/weloopx/test/ui/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/baidu/mapapi/map/BaiduMap;

.field final synthetic c:Lcom/yf/smart/weloopx/test/ui/TestActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/test/ui/TestActivity;Landroid/widget/ImageView;Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yf/smart/weloopx/test/ui/a;->c:Lcom/yf/smart/weloopx/test/ui/TestActivity;

    iput-object p2, p0, Lcom/yf/smart/weloopx/test/ui/a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/yf/smart/weloopx/test/ui/a;->b:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/test/ui/a;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/smart/weloopx/test/ui/b;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/test/ui/b;-><init>(Lcom/yf/smart/weloopx/test/ui/a;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method
