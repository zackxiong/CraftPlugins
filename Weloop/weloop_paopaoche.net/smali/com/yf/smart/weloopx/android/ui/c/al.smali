.class Lcom/yf/smart/weloopx/android/ui/c/al;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ak;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ak;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/al;->a:Lcom/yf/smart/weloopx/android/ui/c/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/al;->a:Lcom/yf/smart/weloopx/android/ui/c/ak;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ak;->b()V

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/al;->a:Lcom/yf/smart/weloopx/android/ui/c/ak;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ak;->b()V

    .line 39
    :cond_0
    return-void
.end method
