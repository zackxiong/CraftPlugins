.class Lcom/yf/smart/weloopx/android/ui/c/cs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/lib/a/d;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/co;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/co;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ct;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/ct;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cs;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/co;->a(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
