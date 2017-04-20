.class public Lcom/yf/smart/weloopx/d/d;
.super Lcom/yf/smart/weloopx/d/a;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
