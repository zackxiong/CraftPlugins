.class public abstract Lcom/yf/smart/weloopx/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/yf/smart/weloopx/b/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a;->b:Ljava/util/List;

    .line 39
    sput-object p0, Lcom/yf/smart/weloopx/b/a;->a:Lcom/yf/smart/weloopx/b/a;

    .line 40
    return-void
.end method

.method public static a()Lcom/yf/smart/weloopx/b/a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/yf/smart/weloopx/b/a;->a:Lcom/yf/smart/weloopx/b/a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(D)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILcom/yf/smart/weloopx/b/b/n;)V
.end method

.method public abstract a(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/BongDownloadParams;Lcom/yf/smart/weloopx/b/b/l;)V
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/BongUploadParams;Lcom/yf/smart/weloopx/b/b/b;)V
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V
.end method

.method public abstract a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/c;)V
.end method

.method public abstract a(Ljava/lang/String;ILcom/yf/smart/weloopx/b/b/s;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/i;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/Activity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()I
.end method

.method public abstract b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;
.end method

.method public abstract b(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
.end method

.method public abstract c(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/SleepStatistics;
.end method
