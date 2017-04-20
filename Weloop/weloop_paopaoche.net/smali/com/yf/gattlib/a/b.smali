.class public final Lcom/yf/gattlib/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Lcom/yf/gattlib/f/b;

.field private d:Lcom/yf/gattlib/server/android/b;

.field private e:Lcom/yf/gattlib/h/h;

.field private f:Lcom/yf/gattlib/o/a;

.field private g:Lcom/yf/gattlib/i/a;

.field private h:Lcom/yf/gattlib/g/a;

.field private i:Landroid/os/Handler;

.field private j:Lcom/yf/gattlib/c/b;

.field private k:Lcom/yf/gattlib/client/a/a/b;

.field private l:Lcom/yf/gattlib/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/a/b;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static final a()Lcom/yf/gattlib/a/b;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/yf/gattlib/a/b$a;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yf/gattlib/a/b;->b:Landroid/app/Application;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->i:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/yf/gattlib/c/c;

    invoke-direct {v0, p1}, Lcom/yf/gattlib/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->l:Lcom/yf/gattlib/c/c;

    .line 55
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Context;)V

    .line 56
    invoke-static {p1}, Lcom/roscopeco/ormdroid/ORMDroidApplication;->initialize(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/yf/gattlib/notification/o;->a()V

    .line 58
    return-void
.end method

.method public a(Lcom/yf/gattlib/c/b;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/yf/gattlib/a/b;->a:Ljava/lang/String;

    const-string v1, "init gatt app"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/yf/gattlib/a/b;->j:Lcom/yf/gattlib/c/b;

    .line 64
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->l:Lcom/yf/gattlib/c/c;

    invoke-interface {p1, v0}, Lcom/yf/gattlib/c/b;->a(Lcom/yf/gattlib/c/c;)V

    .line 65
    new-instance v0, Lcom/yf/gattlib/f/b;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/f/b;-><init>(Lcom/yf/gattlib/a/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->c:Lcom/yf/gattlib/f/b;

    .line 66
    new-instance v0, Lcom/yf/gattlib/server/android/b;

    invoke-direct {v0}, Lcom/yf/gattlib/server/android/b;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->d:Lcom/yf/gattlib/server/android/b;

    .line 67
    new-instance v0, Lcom/yf/gattlib/h/h;

    invoke-direct {v0}, Lcom/yf/gattlib/h/h;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->e:Lcom/yf/gattlib/h/h;

    .line 68
    new-instance v0, Lcom/yf/gattlib/i/a;

    invoke-direct {v0}, Lcom/yf/gattlib/i/a;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->g:Lcom/yf/gattlib/i/a;

    .line 69
    new-instance v0, Lcom/yf/gattlib/g/a;

    invoke-direct {v0}, Lcom/yf/gattlib/g/a;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->h:Lcom/yf/gattlib/g/a;

    .line 70
    new-instance v0, Lcom/yf/gattlib/o/a;

    invoke-direct {v0}, Lcom/yf/gattlib/o/a;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->f:Lcom/yf/gattlib/o/a;

    .line 71
    new-instance v0, Lcom/yf/gattlib/client/a/a/a;

    invoke-direct {v0}, Lcom/yf/gattlib/client/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/b;->k:Lcom/yf/gattlib/client/a/a/b;

    .line 73
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "anti disturb begin"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "anti disturb end"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/app/Application;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->b:Landroid/app/Application;

    return-object v0
.end method

.method public e()Lcom/yf/gattlib/a/a;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/yf/gattlib/f/b;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->c:Lcom/yf/gattlib/f/b;

    return-object v0
.end method

.method public g()Lcom/yf/gattlib/server/android/b;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->d:Lcom/yf/gattlib/server/android/b;

    return-object v0
.end method

.method public h()Lcom/yf/gattlib/h/h;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->e:Lcom/yf/gattlib/h/h;

    return-object v0
.end method

.method public i()Lcom/yf/gattlib/i/a;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->g:Lcom/yf/gattlib/i/a;

    return-object v0
.end method

.method public j()Lcom/yf/gattlib/g/a;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->h:Lcom/yf/gattlib/g/a;

    return-object v0
.end method

.method public k()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public l()Lcom/yf/gattlib/c/b;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->j:Lcom/yf/gattlib/c/b;

    return-object v0
.end method

.method public m()Z
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/yf/gattlib/a/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/yf/gattlib/a/c;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/a/c;-><init>(Lcom/yf/gattlib/a/b;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/yf/gattlib/c/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lcom/yf/gattlib/o/a;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->f:Lcom/yf/gattlib/o/a;

    return-object v0
.end method

.method public p()Lcom/yf/gattlib/client/a/a/b;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->k:Lcom/yf/gattlib/client/a/a/b;

    return-object v0
.end method

.method public q()Lcom/yf/gattlib/c/c;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yf/gattlib/a/b;->l:Lcom/yf/gattlib/c/c;

    return-object v0
.end method
