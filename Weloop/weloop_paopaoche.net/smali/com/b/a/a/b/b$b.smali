.class public Lcom/b/a/a/b/b$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/b/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/b/a/a/b/b;Ljava/lang/String;Lcom/b/a/a/c;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lcom/b/a/a/b/b$b;->a:Lcom/b/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p2, p0, Lcom/b/a/a/b/b$b;->b:Ljava/lang/String;

    .line 463
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/b/a/a/b/b$b;->c:Ljava/lang/String;

    .line 464
    return-void

    .line 463
    :cond_0
    invoke-virtual {p3}, Lcom/b/a/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/b/a/a/b/b;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/b/c;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/b/b$b;-><init>(Lcom/b/a/a/b/b;Ljava/lang/String;Lcom/b/a/a/c;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 468
    if-ne p0, p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    instance-of v2, p1, Lcom/b/a/a/b/b$b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 471
    :cond_2
    check-cast p1, Lcom/b/a/a/b/b$b;

    .line 473
    iget-object v2, p0, Lcom/b/a/a/b/b$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/a/b/b$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 475
    :cond_3
    iget-object v1, p0, Lcom/b/a/a/b/b$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/b/a/a/b/b$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/b/a/a/b/b$b;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/b/a/a/b/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/b/a/a/b/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
