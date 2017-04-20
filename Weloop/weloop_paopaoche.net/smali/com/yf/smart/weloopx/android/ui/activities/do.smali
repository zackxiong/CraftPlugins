.class Lcom/yf/smart/weloopx/android/ui/activities/do;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/c$b;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/do;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/client/c;I)V
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 710
    invoke-virtual {p1, p0}, Lcom/yf/gattlib/client/c;->b(Lcom/yf/gattlib/client/c$b;)V

    .line 711
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/do;->a:Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->m(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 713
    :cond_0
    return-void
.end method
