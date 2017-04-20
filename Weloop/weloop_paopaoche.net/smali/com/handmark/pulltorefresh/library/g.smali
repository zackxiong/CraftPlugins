.class Lcom/handmark/pulltorefresh/library/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/e;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/e;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/e;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e;->requestLayout()V

    .line 900
    return-void
.end method
