.class Lcom/yf/smart/weloopx/view/a$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/a;

.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yf/smart/weloopx/view/a;Landroid/app/ProgressDialog;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/a$a;->a:Lcom/yf/smart/weloopx/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/yf/smart/weloopx/view/a$a;->b:Landroid/app/ProgressDialog;

    .line 285
    iput-object p3, p0, Lcom/yf/smart/weloopx/view/a$a;->c:Ljava/lang/Runnable;

    .line 286
    iput-object p4, p0, Lcom/yf/smart/weloopx/view/a$a;->d:Landroid/os/Handler;

    .line 287
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/a$a;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a$a;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/a$a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/a$a;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a$a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/view/f;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/f;-><init>(Lcom/yf/smart/weloopx/view/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void

    .line 293
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/view/a$a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/yf/smart/weloopx/view/f;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/view/f;-><init>(Lcom/yf/smart/weloopx/view/a$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
