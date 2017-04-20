.class Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;
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
    name = "DescendingIterator"
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
    .line 630
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$300(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    .line 637
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$200(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->fence:I

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;Lcom/yf/gattlib/http/afinal/core/ArrayDeque$1;)V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;-><init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->fence:I

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
    .line 645
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->fence:I

    if-ne v0, v1, :cond_0

    .line 646
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 647
    :cond_0
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    .line 648
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v0, v1

    .line 649
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$200(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 650
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 651
    :cond_2
    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->lastRet:I

    .line 652
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 656
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->lastRet:I

    # invokes: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$500(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->cursor:I

    .line 660
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->this$0:Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    # getter for: Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->access$200(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->fence:I

    .line 662
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;->lastRet:I

    .line 663
    return-void
.end method
