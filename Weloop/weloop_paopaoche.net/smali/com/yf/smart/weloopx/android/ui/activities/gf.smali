.class Lcom/yf/smart/weloopx/android/ui/activities/gf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/android/ui/a/s$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gf;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/android/ui/a/s;I)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gf;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f:Lit/sephiroth/android/library/widget/CenterHListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/gg;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gg;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/gf;)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method
