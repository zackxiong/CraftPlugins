.class public Lcom/yf/smart/weloopx/android/ui/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

.field private b:Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

.field private c:Lcom/yf/smart/weloopx/data/models/SleepStatistics;

.field private d:Lcom/yf/smart/weloopx/data/models/SleepStatistics;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->g:I

    .line 44
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/CalorieStatistics;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->a:Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    .line 52
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/SleepStatistics;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->c:Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->i:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->e:Ljava/util/List;

    .line 84
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/yf/smart/weloopx/data/models/CalorieStatistics;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->b:Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    .line 60
    return-void
.end method

.method public b(Lcom/yf/smart/weloopx/data/models/SleepStatistics;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->d:Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->h:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->f:Ljava/util/List;

    .line 92
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->g:I

    return v0
.end method

.method public d()Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->a:Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    return-object v0
.end method

.method public e()Lcom/yf/smart/weloopx/data/models/CalorieStatistics;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->b:Lcom/yf/smart/weloopx/data/models/CalorieStatistics;

    return-object v0
.end method

.method public f()Lcom/yf/smart/weloopx/data/models/SleepStatistics;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->c:Lcom/yf/smart/weloopx/data/models/SleepStatistics;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b/a;->f:Ljava/util/List;

    return-object v0
.end method
