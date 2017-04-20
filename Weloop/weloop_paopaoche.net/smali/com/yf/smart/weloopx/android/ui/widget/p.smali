.class Lcom/yf/smart/weloopx/android/ui/widget/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->getScrollX()I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I

    move-result v1

    rem-int v1, v0, v1

    .line 155
    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 160
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/p;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->scrollTo(II)V

    goto :goto_0
.end method
