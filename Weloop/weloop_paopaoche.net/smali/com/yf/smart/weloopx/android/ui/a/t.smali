.class Lcom/yf/smart/weloopx/android/ui/a/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/s;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/t;->b:Lcom/yf/smart/weloopx/android/ui/a/s;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/t;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/t;->b:Lcom/yf/smart/weloopx/android/ui/a/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/t;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s;Ljava/util/List;)Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/t;->b:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
