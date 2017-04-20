.class Lcom/todddavies/components/progressbar/a;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/todddavies/components/progressbar/ProgressWheel2;


# direct methods
.method constructor <init>(Lcom/todddavies/components/progressbar/ProgressWheel2;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-virtual {v0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->invalidate()V

    .line 82
    iget-object v0, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    iget-boolean v0, v0, Lcom/todddavies/components/progressbar/ProgressWheel2;->b:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    iget v1, v0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    iget-object v2, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-static {v2}, Lcom/todddavies/components/progressbar/ProgressWheel2;->a(Lcom/todddavies/components/progressbar/ProgressWheel2;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    .line 84
    iget-object v0, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    iget v0, v0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    iput v4, v0, Lcom/todddavies/components/progressbar/ProgressWheel2;->a:I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-static {v0}, Lcom/todddavies/components/progressbar/ProgressWheel2;->c(Lcom/todddavies/components/progressbar/ProgressWheel2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/todddavies/components/progressbar/a;->a:Lcom/todddavies/components/progressbar/ProgressWheel2;

    invoke-static {v1}, Lcom/todddavies/components/progressbar/ProgressWheel2;->b(Lcom/todddavies/components/progressbar/ProgressWheel2;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    :cond_1
    return-void
.end method
