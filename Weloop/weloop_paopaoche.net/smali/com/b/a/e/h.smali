.class public Lcom/b/a/e/h;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/b/a/e/b;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/e/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/e/b;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    sget-object p1, Lcom/b/a/e/b;->d:Lcom/b/a/e/b;

    :cond_0
    iput-object p1, p0, Lcom/b/a/e/h;->a:Lcom/b/a/e/b;

    .line 15
    iput-object p2, p0, Lcom/b/a/e/h;->b:Ljava/lang/Object;

    .line 16
    return-void
.end method
