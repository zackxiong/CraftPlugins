.class public Lcom/b/a/d/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static c:J

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/b/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/b/g",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/b/a/d/a;->c:J

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/b/a/d/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    sget-object v0, Lcom/b/a/d/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    invoke-virtual {v1}, Lcom/b/a/d/b/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 48
    const v0, 0x19000

    const-wide/32 v2, 0xea60

    invoke-direct {p0, v0, v2, v3}, Lcom/b/a/d/a;-><init>(IJ)V

    .line 49
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x19000

    iput v0, p0, Lcom/b/a/d/a;->b:I

    .line 52
    iput p1, p0, Lcom/b/a/d/a;->b:I

    .line 53
    sput-wide p2, Lcom/b/a/d/a;->c:J

    .line 55
    new-instance v0, Lcom/b/a/d/b;

    iget v1, p0, Lcom/b/a/d/a;->b:I

    invoke-direct {v0, p0, v1}, Lcom/b/a/d/b;-><init>(Lcom/b/a/d/a;I)V

    iput-object v0, p0, Lcom/b/a/d/a;->a:Lcom/b/a/b/g;

    .line 62
    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 73
    sget-wide v0, Lcom/b/a/d/a;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/d/a;->a:Lcom/b/a/b/g;

    invoke-virtual {v0, p1}, Lcom/b/a/b/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/a;->a:Lcom/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/b/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return v1

    .line 104
    :cond_0
    sget-object v0, Lcom/b/a/d/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 105
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method
