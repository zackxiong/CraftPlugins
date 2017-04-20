.class Lorg/acra/k;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/acra/k;->a:Lorg/acra/ErrorReporter;

    .line 680
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v6, 0x0

    .line 684
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 685
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 686
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 687
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 688
    const-wide/16 v0, 0x0

    .line 689
    :goto_0
    cmp-long v0, v0, v8

    if-ltz v0, :cond_0

    .line 699
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/acra/ErrorReporter;->c(Z)V

    .line 700
    return-void

    .line 692
    :cond_0
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 697
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    sub-long/2addr v0, v4

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for Toast to end."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
