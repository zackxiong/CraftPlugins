.class public Lcom/alimama/mobile/csdk/umupdate/a/k;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimama/mobile/csdk/umupdate/a/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/update/net/a;

.field private d:Lcom/alimama/mobile/csdk/umupdate/b/d;

.field private e:Lcom/alimama/mobile/csdk/umupdate/models/Promoter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alimama/mobile/csdk/umupdate/models/Promoter;Lcom/alimama/mobile/csdk/umupdate/b/d$a;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->b:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->e:Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 28
    invoke-virtual {p2}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a()Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->d:Lcom/alimama/mobile/csdk/umupdate/b/d;

    .line 29
    new-instance v0, Lcom/umeng/update/net/a;

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "xp"

    iget-object v3, p1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->l:Ljava/lang/String;

    iget-object v4, p1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->q:Ljava/lang/String;

    new-instance v5, Lcom/alimama/mobile/csdk/umupdate/a/k$a;

    invoke-direct {v5, p0}, Lcom/alimama/mobile/csdk/umupdate/a/k$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/a/k;)V

    invoke-direct/range {v0 .. v5}, Lcom/umeng/update/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/net/d;)V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->c:Lcom/umeng/update/net/a;

    .line 33
    invoke-virtual {p2, v6}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a()Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->c:Lcom/umeng/update/net/a;

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/umeng/update/net/a;->a([Ljava/lang/String;)V

    .line 38
    sget-boolean v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->f:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->c:Lcom/umeng/update/net/a;

    invoke-virtual {v0, v6}, Lcom/umeng/update/net/a;->a(Z)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->c:Lcom/umeng/update/net/a;

    invoke-virtual {v0, v7}, Lcom/umeng/update/net/a;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alimama/mobile/csdk/umupdate/a/k;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->e:Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    return-object v0
.end method

.method static synthetic b(Lcom/alimama/mobile/csdk/umupdate/a/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alimama/mobile/csdk/umupdate/a/k;)Lcom/alimama/mobile/csdk/umupdate/b/d;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->d:Lcom/alimama/mobile/csdk/umupdate/b/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/k;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "start Download."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k;->c:Lcom/umeng/update/net/a;

    invoke-virtual {v0}, Lcom/umeng/update/net/a;->a()V

    .line 48
    return-void
.end method
