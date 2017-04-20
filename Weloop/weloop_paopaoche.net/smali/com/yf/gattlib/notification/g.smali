.class public Lcom/yf/gattlib/notification/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# instance fields
.field private a:Lcom/yf/gattlib/notification/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/yf/gattlib/notification/l;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/l;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/g;->a:Lcom/yf/gattlib/notification/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 2

    .prologue
    .line 7
    iget v0, p1, Lcom/yf/gattlib/notification/e;->e:I

    if-nez v0, :cond_1

    .line 15
    :cond_0
    :goto_0
    return-object p1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/notification/g;->a:Lcom/yf/gattlib/notification/l;

    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/l;->a(Lcom/yf/gattlib/notification/m;)I

    move-result v0

    .line 12
    iget v1, p1, Lcom/yf/gattlib/notification/e;->e:I

    if-eq v0, v1, :cond_0

    .line 13
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    goto :goto_0
.end method
