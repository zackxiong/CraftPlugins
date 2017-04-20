.class Lcom/yf/smart/weloopx/android/ui/c/ds;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/e$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/e$d",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dr;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dr;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ds;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/e;Lcom/handmark/pulltorefresh/library/e$j;Lcom/handmark/pulltorefresh/library/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<",
            "Landroid/widget/GridView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/e$j;",
            "Lcom/handmark/pulltorefresh/library/e$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->c:Lcom/handmark/pulltorefresh/library/e$j;

    if-ne v0, p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ds;->a:Lcom/yf/smart/weloopx/android/ui/c/dr;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->a(Lcom/yf/smart/weloopx/android/ui/c/dr;)V

    .line 70
    :cond_0
    return-void
.end method
