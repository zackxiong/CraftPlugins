.class Lcom/yf/smart/weloopx/android/ui/widget/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/i;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/i;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/k;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/k;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/i;->d(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 124
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    .line 125
    if-eqz v0, :cond_0

    if-gtz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/16 v3, 0xf0

    .line 130
    mul-int/2addr v2, v3

    div-int v1, v2, v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.map.baidu.com/staticimage?width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&center="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&markers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&zoom=16&markerStyles=-1,http://v3.weloop.cn/fileServer/dj2h.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LabelView url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/k;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/i;->f(Lcom/yf/smart/weloopx/android/ui/widget/i;)Lcom/b/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/widget/k;->a:Lcom/yf/smart/weloopx/android/ui/widget/i;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/widget/i;->e(Lcom/yf/smart/weloopx/android/ui/widget/i;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method
