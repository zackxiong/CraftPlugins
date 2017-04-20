.class Lcom/yf/smart/weloopx/android/ui/activities/gg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/gf;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/gf;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gg;->a:Lcom/yf/smart/weloopx/android/ui/activities/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gg;->a:Lcom/yf/smart/weloopx/android/ui/activities/gf;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/gf;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f:Lit/sephiroth/android/library/widget/CenterHListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setActionUp(Z)V

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gg;->a:Lcom/yf/smart/weloopx/android/ui/activities/gf;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/gf;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->f:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gg;->a:Lcom/yf/smart/weloopx/android/ui/activities/gf;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/gf;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity;)Lcom/yf/smart/weloopx/android/ui/a/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setSelectionInt(I)V

    .line 146
    return-void
.end method
