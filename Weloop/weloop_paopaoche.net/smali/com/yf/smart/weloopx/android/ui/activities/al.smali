.class Lcom/yf/smart/weloopx/android/ui/activities/al;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->c()B

    move-result v0

    .line 1102
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    const v3, 0x7f070253

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->l(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V

    .line 1103
    new-instance v1, Lcom/yf/gattlib/client/b/as;

    invoke-direct {v1, p2, v0}, Lcom/yf/gattlib/client/b/as;-><init>(ZB)V

    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/am;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/am;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/al;)V

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/b/as;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 1127
    return-void
.end method
