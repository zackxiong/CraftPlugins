.class Lcom/yf/smart/weloopx/android/ui/widget/s;
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
    .line 197
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/s;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/s;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/s;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->d(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(I)V

    .line 202
    return-void
.end method
