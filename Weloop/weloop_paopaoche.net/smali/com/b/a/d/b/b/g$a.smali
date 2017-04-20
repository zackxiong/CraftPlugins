.class public Lcom/b/a/d/b/b/g$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/d/b/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/b/a/d/b/b/g$a;


# instance fields
.field public b:Lcom/b/a/d/a/e;

.field public c:J

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/b/a/d/b/b/g$a;

    invoke-direct {v0}, Lcom/b/a/d/b/b/g$a;-><init>()V

    sput-object v0, Lcom/b/a/d/b/b/g$a;->a:Lcom/b/a/d/b/b/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/d/b/b/g$a;->b:Lcom/b/a/d/a/e;

    .line 50
    iput-wide v2, p0, Lcom/b/a/d/b/b/g$a;->c:J

    .line 51
    iput-wide v2, p0, Lcom/b/a/d/b/b/g$a;->d:J

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 7

    .prologue
    .line 58
    iget-object v0, p0, Lcom/b/a/d/b/b/g$a;->b:Lcom/b/a/d/a/e;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/b/a/d/b/b/g$a;->b:Lcom/b/a/d/a/e;

    iget-wide v2, p0, Lcom/b/a/d/b/b/g$a;->c:J

    iget-wide v4, p0, Lcom/b/a/d/b/b/g$a;->d:J

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/b/a/d/a/e;->a(JJZ)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
