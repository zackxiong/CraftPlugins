.class Lcom/yf/smart/weloopx/android/ui/c/cz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/yf/smart/weloopx/android/ui/c/cw;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/cw;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->d:Lcom/yf/smart/weloopx/android/ui/c/cw;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->a:I

    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->a:I

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->b:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->d:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a_(Ljava/lang/String;)V

    .line 159
    :cond_1
    const-string v1, "SyncDataFragment"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->d:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;)Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->d:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->a(Lcom/yf/smart/weloopx/android/ui/c/cw;)Lcom/yf/smart/weloopx/android/ui/c/cw$a;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->a:I

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/cw$a;->a(ILjava/lang/String;)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cz;->d:Lcom/yf/smart/weloopx/android/ui/c/cw;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/cw;->b()V

    .line 167
    return-void
.end method
