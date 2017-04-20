.class public abstract Lcom/yf/gattlib/m/a/a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/m/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/m/a/a;->b:Landroid/os/Handler;

    .line 22
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yf/gattlib/m/a/b;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/m/a/b;

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/m/a/b;)Z
    .locals 4

    .prologue
    .line 67
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/m/a/b;

    .line 72
    iget v1, p1, Lcom/yf/gattlib/m/a/b;->b:I

    iput v1, v0, Lcom/yf/gattlib/m/a/b;->b:I

    .line 73
    iget-wide v2, p1, Lcom/yf/gattlib/m/a/b;->c:J

    iput-wide v2, v0, Lcom/yf/gattlib/m/a/b;->c:J

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yf/gattlib/m/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method
