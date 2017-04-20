.class public Lcom/yf/gattlib/notification/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/notification/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/yf/gattlib/notification/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/notification/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/d;->b:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 3

    .prologue
    .line 19
    .line 20
    iget-object v0, p0, Lcom/yf/gattlib/notification/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/notification/k;

    .line 21
    invoke-static {p1}, Lcom/yf/gattlib/notification/e;->b(Lcom/yf/gattlib/notification/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    return-object p1

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/yf/gattlib/notification/e;->a(Lcom/yf/gattlib/notification/e;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    :cond_2
    invoke-interface {v0, p1}, Lcom/yf/gattlib/notification/k;->a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Lcom/yf/gattlib/notification/k;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/yf/gattlib/notification/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
