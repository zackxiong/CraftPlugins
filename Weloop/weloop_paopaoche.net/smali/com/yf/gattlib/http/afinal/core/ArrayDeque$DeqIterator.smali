.class Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/core/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)V
    .locals 1

    .prologue
    .line 584
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$200(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    .line 594
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$300(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->fence:I

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;Lcom/yf/gattlib/http/afinal/core/ArrayDeque$1;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;-><init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 607
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->fence:I

    if-ne v0, v1, :cond_0

    .line 608
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    aget-object v0, v0, v1

    .line 612
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$300(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 613
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 614
    :cond_2
    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    iput v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->lastRet:I

    .line 615
    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    .line 616
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->lastRet:I

    # invokes: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$500(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->cursor:I

    .line 624
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$300(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->fence:I

    .line 626
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;->lastRet:I

    .line 627
    return-void
.end method
