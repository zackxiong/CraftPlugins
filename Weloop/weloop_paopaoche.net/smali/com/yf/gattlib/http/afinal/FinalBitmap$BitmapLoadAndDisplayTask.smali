.class Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
.super Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoadAndDisplayTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yf/gattlib/http/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private final displayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isCircle:Z

.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/view/View;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;Z)V
    .locals 1

    .prologue
    .line 729
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;-><init>()V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCircle:Z

    .line 730
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 731
    iput-object p3, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    .line 732
    iput-boolean p4, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCircle:Z

    .line 733
    return-void
.end method

.method static synthetic access$100(Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/view/View;
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 803
    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->getBitmapTaskFromImageView(Landroid/view/View;)Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1400(Landroid/view/View;)Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;

    move-result-object v1

    .line 805
    if-ne p0, v1, :cond_0

    .line 809
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 737
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->data:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 739
    const/4 v0, 0x0

    .line 741
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$700(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 742
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWork:Z
    invoke-static {v3}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$800(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 744
    :try_start_1
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$700(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v3

    goto :goto_0

    .line 748
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 750
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->getAttachedImageView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$900(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 752
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->processBitmap(Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1000(Lcom/yf/gattlib/http/afinal/FinalBitmap;Ljava/lang/String;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 755
    :cond_1
    if-eqz v0, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->getAttachedImageView()Landroid/view/View;

    move-result-object v2

    .line 757
    iget-boolean v3, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCircle:Z

    if-eqz v3, :cond_2

    .line 759
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->createCircleImage(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;
    invoke-static {v3, v0, v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1100(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 761
    :cond_2
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mImageCache:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;
    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1200(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapCache;->addToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 764
    :cond_3
    return-object v0

    .line 748
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 790
    invoke-super {p0, p1}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$700(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$700(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 793
    monitor-exit v1

    .line 794
    return-void

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 721
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mExitTasksEarly:Z
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$900(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    const/4 p1, 0x0

    .line 774
    :cond_1
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->getAttachedImageView()Landroid/view/View;

    move-result-object v0

    .line 775
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 776
    iget-boolean v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->isCircle:Z

    if-eqz v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->createCircleImage(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;
    invoke-static {v1, p1, v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1100(Lcom/yf/gattlib/http/afinal/FinalBitmap;Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 780
    :cond_2
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1300(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->displayer:Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-interface {v1, v0, p1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;->loadCompletedisplay(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)V

    .line 786
    :cond_3
    :goto_0
    return-void

    .line 782
    :cond_4
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 783
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # getter for: Lcom/yf/gattlib/http/afinal/FinalBitmap;->mConfig:Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$1300(Lcom/yf/gattlib/http/afinal/FinalBitmap;)Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/yf/gattlib/http/afinal/FinalBitmap$FinalBitmapConfig;->displayer:Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->displayConfig:Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;

    invoke-virtual {v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getLoadfailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;->loadFailDisplay(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 721
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$BitmapLoadAndDisplayTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
