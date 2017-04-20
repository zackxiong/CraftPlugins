.class Lcom/yf/smart/weloopx/android/ui/c/ap;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/am;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/am;Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->b:Lcom/yf/smart/weloopx/android/ui/c/am;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->a:Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->b:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->b:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->a:Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;

    iget v1, v1, Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;->code:I

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->a:Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;

    iget-object v2, v2, Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;->msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/am$a;->a(ILjava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ap;->b:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->b()V

    .line 138
    return-void
.end method
