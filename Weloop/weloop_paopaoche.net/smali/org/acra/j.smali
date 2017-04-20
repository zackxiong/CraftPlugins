.class Lorg/acra/j;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/acra/j;->a:Lorg/acra/ErrorReporter;

    .line 633
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 643
    iget-object v0, p0, Lorg/acra/j;->a:Lorg/acra/ErrorReporter;

    invoke-static {v0}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->C()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/acra/e/i;->a(Landroid/content/Context;II)V

    .line 644
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 645
    return-void
.end method
