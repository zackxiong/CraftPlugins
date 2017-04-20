.class Lcom/yf/smart/weloopx/android/ui/c/bb;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ba;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bb;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bb;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/bb;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;

    move-result-object v1

    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/bb;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Lcom/yf/smart/weloopx/android/ui/c/ba;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ba;->a(Lcom/yf/smart/weloopx/android/ui/c/ba;Lcom/yf/smart/weloopx/data/models/DailyGain;Ljava/util/List;)V

    .line 180
    const-string v0, "OneDailyFragment onActivityDataListener \u6807\u7b7e\u754c\u9762\u5df2\u66f4\u65b0 "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 181
    return-void
.end method
