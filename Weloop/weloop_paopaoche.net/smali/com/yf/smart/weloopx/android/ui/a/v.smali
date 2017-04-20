.class Lcom/yf/smart/weloopx/android/ui/a/v;
.super Landroid/content/AsyncTaskLoader;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yf/smart/weloopx/android/ui/b/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/a/u;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/u;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/v;->a:Lcom/yf/smart/weloopx/android/ui/a/u;

    invoke-direct {p0, p2}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 113
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/n;->h(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 105
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/v;->a:Lcom/yf/smart/weloopx/android/ui/a/u;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v2

    .line 113
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/v;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/v;->forceLoad()V

    .line 119
    return-void
.end method
