.class Lcom/yf/smart/weloopx/c/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/z;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/z;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;I)I

    .line 286
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/z;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->d(Lcom/yf/smart/weloopx/c/x;)V

    .line 287
    return-void
.end method
