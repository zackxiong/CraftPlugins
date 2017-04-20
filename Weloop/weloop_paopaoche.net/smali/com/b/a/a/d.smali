.class public Lcom/b/a/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/d$1;,
        Lcom/b/a/a/d$a;
    }
.end annotation


# static fields
.field private static final h:Lcom/b/a/e/f;

.field private static final i:Lcom/b/a/e/f;

.field private static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/b/a/a/c/b;

.field private g:Lcom/b/a/a/b/b;

.field private j:J

.field private k:I

.field private l:I

.field private m:Lcom/b/a/b/a;

.field private n:Lcom/b/a/a/a;

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/b/a/e/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/b/a/e/f;-><init>(I)V

    sput-object v0, Lcom/b/a/a/d;->h:Lcom/b/a/e/f;

    .line 54
    new-instance v0, Lcom/b/a/e/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/b/a/e/f;-><init>(I)V

    sput-object v0, Lcom/b/a/a/d;->i:Lcom/b/a/e/f;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/b/a/a/d;->p:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x3a98

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/b/a/a/d;->b:I

    .line 44
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/b/a/a/d;->c:I

    .line 46
    iput-boolean v1, p0, Lcom/b/a/a/d;->d:Z

    .line 47
    iput-boolean v1, p0, Lcom/b/a/a/d;->e:Z

    .line 56
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/b/a/a/d;->j:J

    .line 57
    iput v2, p0, Lcom/b/a/a/d;->k:I

    .line 58
    iput v2, p0, Lcom/b/a/a/d;->l:I

    .line 72
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/b/a/a/d;->o:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/b/a/a/d;->a:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/b/a/a/d;->n()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/d;)Lcom/b/a/a/a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/b/a/a/d;->n:Lcom/b/a/a/a;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/b/a/a/d;
    .locals 3

    .prologue
    .line 80
    const-class v1, Lcom/b/a/a/d;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "xBitmapCache"

    invoke-static {p0, v0}, Lcom/b/a/f/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    sget-object v0, Lcom/b/a/a/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/b/a/a/d;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    monitor-exit v1

    return-object v0

    .line 87
    :cond_1
    :try_start_1
    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    sget-object v2, Lcom/b/a/a/d;->p:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/b/a/a/d$a;

    invoke-direct {v0, p0, v5}, Lcom/b/a/a/d$a;-><init>(Lcom/b/a/a/d;Lcom/b/a/a/d$1;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/b/a/a/d$a;->e([Ljava/lang/Object;)Lcom/b/a/e/c;

    .line 95
    new-instance v0, Lcom/b/a/a/d$a;

    invoke-direct {v0, p0, v5}, Lcom/b/a/a/d$a;-><init>(Lcom/b/a/a/d;Lcom/b/a/a/d$1;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/b/a/a/d$a;->e([Ljava/lang/Object;)Lcom/b/a/e/c;

    .line 96
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/b/a/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/b/a/a/c/b;
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/b/a/a/c/a;

    invoke-direct {v0}, Lcom/b/a/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    iget-object v1, p0, Lcom/b/a/a/d;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/b/a/a/c/b;->a(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    invoke-virtual {p0}, Lcom/b/a/a/d;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/c/b;->a(J)V

    .line 108
    iget-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    invoke-virtual {p0}, Lcom/b/a/a/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c/b;->a(I)V

    .line 109
    iget-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    invoke-virtual {p0}, Lcom/b/a/a/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c/b;->b(I)V

    .line 110
    iget-object v0, p0, Lcom/b/a/a/d;->f:Lcom/b/a/a/c/b;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/b/a/a/d;->j:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/b/a/a/d;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/b/a/a/d;->l:I

    return v0
.end method

.method public f()Lcom/b/a/a/b/b;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/b/a/a/d;->g:Lcom/b/a/a/b/b;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/b/a/a/b/b;

    invoke-direct {v0, p0}, Lcom/b/a/a/b/b;-><init>(Lcom/b/a/a/d;)V

    iput-object v0, p0, Lcom/b/a/a/d;->g:Lcom/b/a/a/b/b;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d;->g:Lcom/b/a/a/b/b;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/b/a/a/d;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/b/a/a/d;->c:I

    return v0
.end method

.method public i()Lcom/b/a/e/f;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/b/a/a/d;->h:Lcom/b/a/e/f;

    return-object v0
.end method

.method public j()Lcom/b/a/e/f;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/b/a/a/d;->i:Lcom/b/a/e/f;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/b/a/a/d;->d:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/b/a/a/d;->e:Z

    return v0
.end method

.method public m()Lcom/b/a/b/a;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/b/a/a/d;->m:Lcom/b/a/b/a;

    return-object v0
.end method
