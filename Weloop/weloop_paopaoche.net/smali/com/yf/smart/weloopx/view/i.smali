.class Lcom/yf/smart/weloopx/view/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/k;

.field final synthetic b:Z

.field final synthetic c:Lcom/yf/smart/weloopx/view/h;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/h;Lcom/yf/smart/weloopx/view/k;Z)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/i;->c:Lcom/yf/smart/weloopx/view/h;

    iput-object p2, p0, Lcom/yf/smart/weloopx/view/i;->a:Lcom/yf/smart/weloopx/view/k;

    iput-boolean p3, p0, Lcom/yf/smart/weloopx/view/i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/i;->c:Lcom/yf/smart/weloopx/view/h;

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/i;->a:Lcom/yf/smart/weloopx/view/k;

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/view/i;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/view/h;->a(Lcom/yf/smart/weloopx/view/k;Z)V

    .line 164
    return-void
.end method
