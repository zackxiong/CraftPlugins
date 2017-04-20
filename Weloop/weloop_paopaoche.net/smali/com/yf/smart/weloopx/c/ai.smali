.class Lcom/yf/smart/weloopx/c/ai;
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
    .line 808
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ai;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ai;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->l(Lcom/yf/smart/weloopx/c/x;)V

    .line 812
    return-void
.end method
