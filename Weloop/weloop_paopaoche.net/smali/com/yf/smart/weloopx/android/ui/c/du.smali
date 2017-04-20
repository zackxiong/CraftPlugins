.class Lcom/yf/smart/weloopx/android/ui/c/du;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/dr;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dr;Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/du;->b:Lcom/yf/smart/weloopx/android/ui/c/dr;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/du;->a:Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/du;->b:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->b(Lcom/yf/smart/weloopx/android/ui/c/dr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/du;->b:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->b(Lcom/yf/smart/weloopx/android/ui/c/dr;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/du;->a:Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/WatchfaceListResult;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/du;->b:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->c(Lcom/yf/smart/weloopx/android/ui/c/dr;)Lcom/yf/smart/weloopx/android/ui/c/dr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr$a;->notifyDataSetChanged()V

    .line 117
    return-void
.end method
