.class Lcom/b/a/b/c$a$a;
.super Ljava/io/FilterOutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/c$a;


# direct methods
.method private constructor <init>(Lcom/b/a/b/c$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/b/a/b/c$a$a;->a:Lcom/b/a/b/c$a;

    .line 924
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/b/c$a;Ljava/io/OutputStream;Lcom/b/a/b/d;)V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/c$a$a;-><init>(Lcom/b/a/b/c$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->a:Lcom/b/a/b/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a/b/c$a;->a(Lcom/b/a/b/c$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->a:Lcom/b/a/b/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a/b/c$a;->a(Lcom/b/a/b/c$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->a:Lcom/b/a/b/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a/b/c$a;->a(Lcom/b/a/b/c$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    iget-object v0, p0, Lcom/b/a/b/c$a$a;->a:Lcom/b/a/b/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a/b/c$a;->a(Lcom/b/a/b/c$a;Z)Z

    goto :goto_0
.end method
