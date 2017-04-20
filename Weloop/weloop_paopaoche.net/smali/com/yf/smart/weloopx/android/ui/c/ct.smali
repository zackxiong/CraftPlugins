.class Lcom/yf/smart/weloopx/android/ui/c/ct;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/cs;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/cs;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->t:Lcom/yf/smart/weloopx/android/ui/c/co$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/c/co$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/co;->a(Lcom/yf/smart/weloopx/android/ui/c/co;)I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 168
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/CenterHListView;->setCenterItemLeft(I)V

    .line 169
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/co;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->d()V

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/co;->d()V

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/co;->a(Lcom/yf/smart/weloopx/android/ui/c/co;)I

    move-result v0

    div-int/lit8 v0, v0, 0x22

    .line 174
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/CenterHListView;->setCenterItemLeft(I)V

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/co;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->d()V

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ct;->a:Lcom/yf/smart/weloopx/android/ui/c/cs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/cs;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/co;->b()V

    goto :goto_0
.end method
