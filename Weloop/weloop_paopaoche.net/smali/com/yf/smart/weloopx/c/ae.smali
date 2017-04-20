.class Lcom/yf/smart/weloopx/c/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/ad;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/ad;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ae;->a:Lcom/yf/smart/weloopx/c/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ae;->a:Lcom/yf/smart/weloopx/c/ad;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/ad;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->g(Lcom/yf/smart/weloopx/c/x;)V

    .line 670
    return-void
.end method
