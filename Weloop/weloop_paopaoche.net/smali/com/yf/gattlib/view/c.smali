.class public Lcom/yf/gattlib/view/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/yf/gattlib/view/c;->b:I

    .line 11
    iput p2, p0, Lcom/yf/gattlib/view/c;->a:I

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yf/gattlib/view/c;->a:I

    return v0
.end method
