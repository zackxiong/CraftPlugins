.class public abstract Lcom/yf/smart/weloopx/b/b/k;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yf/smart/weloopx/data/models/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/b/k;->d()Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/yf/smart/weloopx/b/b/k;->a(Lcom/yf/smart/weloopx/data/models/UserData;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public final a(Lcom/b/a/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/b/k;->d()Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/k;->a(Lcom/yf/smart/weloopx/data/models/UserData;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/b/k;->d()Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v1

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yf/smart/weloopx/b/b/k;->a(Lcom/yf/smart/weloopx/data/models/UserData;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/UserData;)V
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/UserData;Ljava/lang/String;)V
.end method

.method public d()Lcom/yf/smart/weloopx/data/models/UserData;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/b/k;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    return-object v0
.end method
