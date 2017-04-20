.class Lcom/yf/smart/weloopx/android/ui/activities/gh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lit/sephiroth/android/library/widget/CenterHListView$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gh;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;I)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gh;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gh;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gh;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;I)V

    goto :goto_0
.end method
