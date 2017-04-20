.class Lcom/yf/smart/weloopx/test/ui/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/test/ui/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/test/ui/a;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yf/smart/weloopx/test/ui/b;->a:Lcom/yf/smart/weloopx/test/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/test/ui/b;->a:Lcom/yf/smart/weloopx/test/ui/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/test/ui/a;->b:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v1, Lcom/yf/smart/weloopx/test/ui/c;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/test/ui/c;-><init>(Lcom/yf/smart/weloopx/test/ui/b;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->snapshot(Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V

    .line 103
    return-void
.end method
