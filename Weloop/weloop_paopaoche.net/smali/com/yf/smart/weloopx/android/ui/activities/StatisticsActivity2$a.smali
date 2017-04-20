.class Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;
.super Landroid/support/v13/app/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

.field private b:[Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    .line 108
    invoke-direct {p0, p2}, Landroid/support/v13/app/d;-><init>(Landroid/app/FragmentManager;)V

    .line 109
    invoke-static {p1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Fragment;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->b:[Landroid/app/Fragment;

    .line 110
    return-void
.end method


# virtual methods
.method public a(I)Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->b:[Landroid/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->b:[Landroid/app/Fragment;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->a(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$b;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    aput-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->b:[Landroid/app/Fragment;

    aget-object v0, v0, p1

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;->b(Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2$a;->b:[Landroid/app/Fragment;

    array-length v0, v0

    return v0
.end method
