.class public Lorg/acra/c/a/a/a/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/acra/c/a/a/a/a;


# static fields
.field private static final a:Lorg/acra/c/a/a/a/d;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/acra/c/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/acra/c/a/a/a/d;

    invoke-direct {v0}, Lorg/acra/c/a/a/a/d;-><init>()V

    sput-object v0, Lorg/acra/c/a/a/a/d;->a:Lorg/acra/c/a/a/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/c/a/a/a/d;->b:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static a()Lorg/acra/c/a/a/a/d;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/acra/c/a/a/a/d;->a:Lorg/acra/c/a/a/a/d;

    return-object v0
.end method

.method private b()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lorg/acra/c/a/a/a/d;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v2, p0, Lorg/acra/c/a/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 67
    iget-object v0, p0, Lorg/acra/c/a/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 65
    :cond_0
    monitor-exit v1

    .line 70
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 91
    :cond_0
    return-void

    .line 87
    :cond_1
    aget-object v0, v2, v1

    .line 88
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->a(Landroid/app/Activity;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 81
    :cond_0
    return-void

    .line 77
    :cond_1
    aget-object v0, v2, v1

    .line 78
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1, p2}, Lorg/acra/c/a/a/a/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(Lorg/acra/c/a/a/a/a;)V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lorg/acra/c/a/a/a/d;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/acra/c/a/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v1

    .line 55
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_0

    .line 97
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 101
    :cond_0
    return-void

    .line 97
    :cond_1
    aget-object v0, v2, v1

    .line 98
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->b(Landroid/app/Activity;)V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_0

    .line 127
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 131
    :cond_0
    return-void

    .line 127
    :cond_1
    aget-object v0, v2, v1

    .line 128
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1, p2}, Lorg/acra/c/a/a/a/a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    aget-object v0, v2, v1

    .line 108
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->c(Landroid/app/Activity;)V

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 117
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 121
    :cond_0
    return-void

    .line 117
    :cond_1
    aget-object v0, v2, v1

    .line 118
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->d(Landroid/app/Activity;)V

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/acra/c/a/a/a/d;->b()[Ljava/lang/Object;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_0

    .line 137
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 141
    :cond_0
    return-void

    .line 137
    :cond_1
    aget-object v0, v2, v1

    .line 138
    check-cast v0, Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->e(Landroid/app/Activity;)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
