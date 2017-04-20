.class Lorg/acra/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/acra/c/a/a/a/a;


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/acra/i;->a:Lorg/acra/ErrorReporter;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 150
    instance-of v0, p1, Lorg/acra/CrashReportDialog;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/acra/i;->a:Lorg/acra/ErrorReporter;

    invoke-static {v0, p1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/ErrorReporter;Landroid/app/Activity;)V

    .line 156
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
