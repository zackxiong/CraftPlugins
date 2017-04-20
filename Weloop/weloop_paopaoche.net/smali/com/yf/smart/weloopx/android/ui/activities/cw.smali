.class Lcom/yf/smart/weloopx/android/ui/activities/cw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 7

    .prologue
    const v6, 0x7f070047

    const v5, 0x7f070045

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)Z

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, p3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I

    .line 176
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;II)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 179
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 180
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 181
    if-gtz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->h(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0, p3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I

    .line 190
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;II)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->i(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 193
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)[B

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 194
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 195
    if-gtz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :goto_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->k(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cw;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->g(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
