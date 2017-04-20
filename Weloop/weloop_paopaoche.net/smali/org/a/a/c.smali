.class public Lorg/a/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/a/a/d/a;


# static fields
.field static h:Ljava/lang/Class;

.field private static final i:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected volatile b:Lorg/a/a/i;

.field protected volatile c:Lorg/a/a/c;

.field protected d:Ljava/util/ResourceBundle;

.field protected e:Lorg/a/a/d/i;

.field f:Lorg/a/a/b/b;

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/a/a/c;->h:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.a.a.c"

    invoke-static {v0}, Lorg/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/c;->h:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/a/a/c;->i:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lorg/a/a/c;->h:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/c;->g:Z

    .line 145
    iput-object p1, p0, Lorg/a/a/c;->a:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 3

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/c;->b()Ljava/util/Enumeration;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a;

    .line 227
    instance-of v2, v0, Lorg/a/a/d/a;

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v0}, Lorg/a/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lorg/a/a/c;->e:Lorg/a/a/d/i;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lorg/a/a/d/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    sget-object v0, Lorg/a/a/i;->e:Lorg/a/a/i;

    invoke-virtual {p0}, Lorg/a/a/c;->c()Lorg/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/o;->a(Lorg/a/a/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    sget-object v0, Lorg/a/a/c;->i:Ljava/lang/String;

    sget-object v1, Lorg/a/a/i;->e:Lorg/a/a/i;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/a/a/c;->a(Ljava/lang/String;Lorg/a/a/o;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lorg/a/a/o;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 388
    new-instance v0, Lorg/a/a/d/j;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/a/a/d/j;-><init>(Ljava/lang/String;Lorg/a/a/c;Lorg/a/a/o;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/a/a/c;->a(Lorg/a/a/d/j;)V

    .line 389
    return-void
.end method

.method public a(Ljava/util/ResourceBundle;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lorg/a/a/c;->d:Ljava/util/ResourceBundle;

    .line 955
    return-void
.end method

.method public declared-synchronized a(Lorg/a/a/a;)V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lorg/a/a/b/b;

    invoke-direct {v0}, Lorg/a/a/b/b;-><init>()V

    iput-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    invoke-virtual {v0, p1}, Lorg/a/a/b/b;->a(Lorg/a/a/a;)V

    .line 162
    iget-object v0, p0, Lorg/a/a/c;->e:Lorg/a/a/d/i;

    invoke-interface {v0, p0, p1}, Lorg/a/a/d/i;->a(Lorg/a/a/c;Lorg/a/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lorg/a/a/d/i;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lorg/a/a/c;->e:Lorg/a/a/d/i;

    .line 913
    return-void
.end method

.method public a(Lorg/a/a/d/j;)V
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x0

    move-object v1, p0

    .line 199
    :goto_0
    if-eqz v1, :cond_1

    .line 201
    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, v1, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, v1, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    invoke-virtual {v2, p1}, Lorg/a/a/b/b;->a(Lorg/a/a/d/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 205
    :cond_0
    iget-boolean v2, v1, Lorg/a/a/c;->g:Z

    if-nez v2, :cond_3

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_1
    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lorg/a/a/c;->e:Lorg/a/a/d/i;

    invoke-interface {v0, p0}, Lorg/a/a/d/i;->a(Lorg/a/a/c;)V

    .line 214
    :cond_2
    return-void

    .line 208
    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v1, v1, Lorg/a/a/c;->c:Lorg/a/a/c;

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Lorg/a/a/i;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lorg/a/a/c;->b:Lorg/a/a/i;

    .line 929
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 904
    iput-boolean p1, p0, Lorg/a/a/c;->g:Z

    .line 905
    return-void
.end method

.method public declared-synchronized b()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Lorg/a/a/b/i;->a()Lorg/a/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 412
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    invoke-virtual {v0}, Lorg/a/a/b/b;->a()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lorg/a/a/i;
    .locals 1

    .prologue
    .line 439
    :goto_0
    if-eqz p0, :cond_1

    .line 440
    iget-object v0, p0, Lorg/a/a/c;->b:Lorg/a/a/i;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/a/a/c;->b:Lorg/a/a/i;

    .line 443
    :goto_1
    return-object v0

    .line 439
    :cond_0
    iget-object p0, p0, Lorg/a/a/c;->c:Lorg/a/a/c;

    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()Lorg/a/a/d/i;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/a/a/c;->e:Lorg/a/a/d/i;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lorg/a/a/i;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/a/a/c;->b:Lorg/a/a/i;

    return-object v0
.end method

.method public declared-synchronized g()V
    .locals 1

    .prologue
    .line 867
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;

    invoke-virtual {v0}, Lorg/a/a/b/b;->b()V

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/c;->f:Lorg/a/a/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    :cond_0
    monitor-exit p0

    return-void

    .line 867
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
