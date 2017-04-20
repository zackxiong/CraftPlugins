.class Lc/a/d$b;
.super Landroid/os/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lc/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc/a/d;

.field private b:Lc/a/e;

.field private c:Lc/a/d$a;


# direct methods
.method public constructor <init>(Lc/a/d;Lc/a/e;Lc/a/d$a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc/a/d$b;->a:Lc/a/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    iput-object p2, p0, Lc/a/d$b;->b:Lc/a/e;

    .line 77
    iput-object p3, p0, Lc/a/d$b;->c:Lc/a/d$a;

    .line 78
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lc/a/f$a;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lc/a/d$b;->a:Lc/a/d;

    iget-object v1, p0, Lc/a/d$b;->b:Lc/a/e;

    invoke-virtual {v0, v1}, Lc/a/d;->a(Lc/a/e;)Lc/a/f$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lc/a/f$a;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc/a/d$b;->c:Lc/a/d$a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lc/a/d$b;->c:Lc/a/d$a;

    invoke-interface {v0, p1}, Lc/a/d$a;->a(Lc/a/f$a;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lc/a/d$b;->a([Ljava/lang/Integer;)Lc/a/f$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lc/a/f$a;

    invoke-virtual {p0, p1}, Lc/a/d$b;->a(Lc/a/f$a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc/a/d$b;->c:Lc/a/d$a;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc/a/d$b;->c:Lc/a/d$a;

    invoke-interface {v0}, Lc/a/d$a;->a()V

    .line 84
    :cond_0
    return-void
.end method
