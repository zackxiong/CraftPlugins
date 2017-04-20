.class Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;
.super Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheExecutecTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yf/gattlib/http/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_CLEAR:I = 0x1

.field public static final MESSAGE_CLEAR_DISK:I = 0x3

.field public static final MESSAGE_CLEAR_KEY:I = 0x4

.field public static final MESSAGE_CLEAR_KEY_IN_DISK:I = 0x5

.field public static final MESSAGE_CLOSE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;Lcom/yf/gattlib/http/afinal/FinalBitmap$1;)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;-><init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 686
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 695
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 712
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 697
    :pswitch_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearCacheInternalInBackgroud()V
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$200(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V

    goto :goto_0

    .line 700
    :pswitch_1
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->closeCacheInternalInBackgroud()V
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$300(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearDiskCacheInBackgroud()V
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$400(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V

    goto :goto_0

    .line 706
    :pswitch_3
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearCacheInBackgroud(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$500(Lcom/yf/gattlib/http/afinal/FinalBitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :pswitch_4
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$CacheExecutecTask;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/yf/gattlib/http/afinal/FinalBitmap;->clearDiskCacheInBackgroud(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/FinalBitmap;->access$600(Lcom/yf/gattlib/http/afinal/FinalBitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
