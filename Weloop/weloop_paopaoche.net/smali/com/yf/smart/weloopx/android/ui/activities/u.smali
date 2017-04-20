.class Lcom/yf/smart/weloopx/android/ui/activities/u;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savedPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/Set;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 98
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 99
    aget-object v3, v0, v1

    .line 100
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v4, v3}, Lcom/yf/gattlib/p/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 101
    if-nez v4, :cond_1

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v5}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v4}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;I)I

    goto :goto_1

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/u;->a:Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/ChoiceMediaPlayerActivity;)V

    .line 110
    return-void
.end method
