.class public abstract Lcom/yf/smart/weloopx/android/ui/a/s;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/a/s$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/LoaderManager;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yf/smart/weloopx/android/ui/a/s$a;

.field private e:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->c:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->a:Landroid/app/LoaderManager;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->e:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/s;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/s;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/a/s;)Lcom/yf/smart/weloopx/android/ui/a/s$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->d:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/a/s;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Lcom/yf/smart/weloopx/android/ui/a/s$a;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->d:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    .line 59
    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->e:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/a/t;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/android/ui/a/t;-><init>(Lcom/yf/smart/weloopx/android/ui/a/s;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->a:Landroid/app/LoaderManager;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/s;->a()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Lcom/yf/smart/weloopx/android/ui/a/u;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/a/u;-><init>(Lcom/yf/smart/weloopx/android/ui/a/s;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 141
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->a:Landroid/app/LoaderManager;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/a/s;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 145
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method
