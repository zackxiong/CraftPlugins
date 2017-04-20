.class public abstract Lcom/yf/smart/weloopx/b/b/g;
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
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    .line 19
    const-string v0, "GetUserProfileCallback"

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/b/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p2}, Lcom/yf/smart/weloopx/b/b/g;->b(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final a(Lcom/b/a/d/e;)V
    .locals 3
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
    .line 24
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v2, Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    .line 27
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/g;->a(Lcom/yf/smart/weloopx/data/models/UserProfileResult;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/b/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a(Lcom/yf/smart/weloopx/data/models/UserProfileResult;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method
