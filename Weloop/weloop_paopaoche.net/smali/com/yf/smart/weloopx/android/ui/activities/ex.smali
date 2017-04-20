.class Lcom/yf/smart/weloopx/android/ui/activities/ex;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ex;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 850
    if-eqz p2, :cond_0

    .line 851
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ex;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "auto_sync"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ex;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    const v3, 0x7f070053

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/el;->b(Lcom/yf/smart/weloopx/android/ui/activities/el;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004d

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 857
    :goto_0
    return-void

    .line 853
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_AUTO_SYNC_DATA"

    invoke-virtual {v0, v1, v5}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 854
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ex;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->p(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 855
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->e()V

    goto :goto_0
.end method
