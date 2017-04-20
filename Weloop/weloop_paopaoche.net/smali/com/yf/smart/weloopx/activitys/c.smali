.class Lcom/yf/smart/weloopx/activitys/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/Login;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/Login;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/c;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/c;->a:Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/Login;->f()V

    .line 290
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/c;->a:Lcom/yf/smart/weloopx/activitys/Login;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/activitys/Login;->a(Lcom/yf/smart/weloopx/activitys/Login;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method
