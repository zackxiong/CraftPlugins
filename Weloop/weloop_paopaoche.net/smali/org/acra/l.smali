.class Lorg/acra/l;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;

.field private final synthetic b:Lorg/acra/x;

.field private final synthetic c:Z

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/x;ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/acra/l;->a:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/l;->b:Lorg/acra/x;

    iput-boolean p3, p0, Lorg/acra/l;->c:Z

    iput-object p4, p0, Lorg/acra/l;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/acra/l;->e:Z

    .line 711
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting for Toast + worker..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    invoke-static {}, Lorg/acra/ErrorReporter;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/acra/l;->b:Lorg/acra/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/l;->b:Lorg/acra/x;

    invoke-virtual {v0}, Lorg/acra/x;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    :cond_0
    iget-boolean v0, p0, Lorg/acra/l;->c:Z

    if-eqz v0, :cond_1

    .line 731
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to create DIALOG from #handleException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lorg/acra/l;->a:Lorg/acra/ErrorReporter;

    iget-object v1, p0, Lorg/acra/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;)V

    .line 735
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wait for Toast + worker ended. Kill Application ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/acra/l;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-boolean v0, p0, Lorg/acra/l;->e:Z

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lorg/acra/l;->a:Lorg/acra/ErrorReporter;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->b(Lorg/acra/ErrorReporter;)V

    .line 740
    :cond_2
    return-void

    .line 720
    :cond_3
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
