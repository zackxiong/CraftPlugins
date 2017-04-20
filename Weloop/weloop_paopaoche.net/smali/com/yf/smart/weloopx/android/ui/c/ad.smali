.class Lcom/yf/smart/weloopx/android/ui/c/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ac;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ac;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ad;->a:Lcom/yf/smart/weloopx/android/ui/c/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ad;->a:Lcom/yf/smart/weloopx/android/ui/c/ac;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->o(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 415
    return-void
.end method
