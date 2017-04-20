.class public Lcom/yf/gattlib/http/afinal/core/ArrayDeque;
.super Lcom/yf/gattlib/http/afinal/core/AbstractCollection;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/http/afinal/core/Deque;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/core/ArrayDeque$1;,
        Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;,
        Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yf/gattlib/http/afinal/core/AbstractCollection",
        "<TE;>;",
        "Lcom/yf/gattlib/http/afinal/core/Deque",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient head:I

.field private transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AbstractCollection;-><init>()V

    .line 167
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AbstractCollection;-><init>()V

    .line 177
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->allocateElements(I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AbstractCollection;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->allocateElements(I)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 193
    return-void
.end method

.method static synthetic access$200(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    return v0
.end method

.method static synthetic access$300(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    return v0
.end method

.method static synthetic access$400(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;I)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2

    .prologue
    .line 104
    const/16 v0, 0x8

    .line 107
    if-lt p1, v0, :cond_0

    .line 109
    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    .line 110
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 111
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 112
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 113
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    if-gez v0, :cond_0

    .line 117
    ushr-int/lit8 v0, v0, 0x1

    .line 119
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 120
    return-void
.end method

.method private checkInvariants()V
    .locals 3

    .prologue
    .line 492
    sget-boolean v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 493
    :cond_0
    sget-boolean v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 496
    :cond_1
    sget-boolean v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 497
    :cond_4
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_0
    :goto_0
    return-object p1

    .line 153
    :cond_1
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-le v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    .line 155
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private delete(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 510
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->checkInvariants()V

    .line 511
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 512
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 513
    iget v4, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 514
    iget v5, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    .line 515
    sub-int v6, p1, v4

    and-int/2addr v6, v3

    .line 516
    sub-int v7, v5, p1

    and-int/2addr v7, v3

    .line 519
    sub-int v8, v5, v4

    and-int/2addr v8, v3

    if-lt v6, v8, :cond_0

    .line 520
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 523
    :cond_0
    if-ge v6, v7, :cond_2

    .line 524
    if-gt v4, p1, :cond_1

    .line 525
    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    :goto_0
    const/4 v1, 0x0

    aput-object v1, v2, v4

    .line 532
    add-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 544
    :goto_1
    return v0

    .line 527
    :cond_1
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    aget-object v1, v2, v3

    aput-object v1, v2, v0

    .line 529
    add-int/lit8 v1, v4, 0x1

    sub-int v5, v3, v4

    invoke-static {v2, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 535
    :cond_2
    if-ge p1, v5, :cond_3

    .line 536
    add-int/lit8 v0, p1, 0x1

    invoke-static {v2, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    :goto_2
    move v0, v1

    .line 544
    goto :goto_1

    .line 539
    :cond_3
    add-int/lit8 v4, p1, 0x1

    sub-int v6, v3, p1

    invoke-static {v2, v4, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    aget-object v4, v2, v0

    aput-object v4, v2, v3

    .line 541
    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    sget-boolean v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 130
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v0

    .line 131
    sub-int v3, v2, v1

    .line 132
    shl-int/lit8 v0, v2, 0x1

    .line 133
    if-gez v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v4, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v4, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v4, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 139
    iput v5, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 140
    iput v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    .line 141
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 838
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 841
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 842
    invoke-direct {p0, v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->allocateElements(I)V

    .line 843
    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 844
    iput v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    .line 847
    :goto_0
    if-ge v0, v1, :cond_0

    .line 848
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 821
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 824
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 827
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 828
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    :goto_0
    iget v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 830
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 209
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->doubleCapacity()V

    .line 211
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 225
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->doubleCapacity()V

    .line 227
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 710
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 711
    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    .line 712
    if-eq v0, v1, :cond_1

    .line 713
    const/4 v2, 0x0

    iput v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    iput v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 715
    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 717
    :cond_0
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 718
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    .line 719
    if-ne v0, v1, :cond_0

    .line 721
    :cond_1
    return-void
.end method

.method public clone()Lcom/yf/gattlib/http/afinal/core/ArrayDeque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yf/gattlib/http/afinal/core/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 799
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    .line 800
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/http/afinal/core/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    return-object v0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->clone()Lcom/yf/gattlib/http/afinal/core/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 675
    if-nez p1, :cond_0

    move v0, v1

    .line 685
    :goto_0
    return v0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 678
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 680
    :goto_1
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 681
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 685
    goto :goto_0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DescendingIterator;-><init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;Lcom/yf/gattlib/http/afinal/core/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    aget-object v0, v0, v1

    .line 298
    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 300
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 308
    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 310
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque$DeqIterator;-><init>(Lcom/yf/gattlib/http/afinal/core/ArrayDeque;Lcom/yf/gattlib/http/afinal/core/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    iget v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 275
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 276
    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 279
    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    move-object v0, v1

    .line 280
    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 284
    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v1

    .line 285
    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 286
    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 289
    iput v2, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    move-object v0, v1

    .line 290
    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 260
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    if-nez p1, :cond_0

    move v0, v1

    .line 346
    :goto_0
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 337
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    .line 339
    :goto_1
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 340
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->delete(I)Z

    .line 342
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 346
    goto :goto_0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 270
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 362
    if-nez p1, :cond_0

    move v0, v1

    .line 374
    :goto_0
    return v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 365
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 367
    :goto_1
    iget-object v3, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 368
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->delete(I)Z

    .line 370
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :cond_1
    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->tail:I

    iget v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->size()I

    move-result v1

    .line 780
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 781
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 783
    :goto_0
    invoke-direct {p0, v0}, Lcom/yf/gattlib/http/afinal/core/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 784
    array-length v2, v0

    if-le v2, v1, :cond_0

    .line 785
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 786
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method
