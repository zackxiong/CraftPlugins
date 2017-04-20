.class public Lcom/yf/smart/weloopx/commons/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yf/smart/weloopx/commons/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/b;->a:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/commons/b;->b:Z

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/commons/b;->c:Z

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/commons/b;)I
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/commons/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/commons/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/b;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/commons/b;->b:Z

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/b;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/commons/b;->b:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/yf/smart/weloopx/commons/b;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/commons/b;->a(Lcom/yf/smart/weloopx/commons/b;)I

    move-result v0

    return v0
.end method
