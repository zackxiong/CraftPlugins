.class Lcom/yf/smart/weloopx/android/ui/activities/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/aj$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/h$a;

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/h;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/h;Lcom/yf/smart/weloopx/android/ui/activities/h$a;I)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->c:Lcom/yf/smart/weloopx/android/ui/activities/h;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->a:Lcom/yf/smart/weloopx/android/ui/activities/h$a;

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "AlarmClockBaseActivity\u8bbe\u7f6enaozhong\u5f00\u59cb"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->a:Lcom/yf/smart/weloopx/android/ui/activities/h$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->a()V

    .line 105
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "AlarmClockBaseActivity \u8bbe\u7f6enaozhong\u8d85\u65f6"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->a:Lcom/yf/smart/weloopx/android/ui/activities/h$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->c()V

    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->c:Lcom/yf/smart/weloopx/android/ui/activities/h;

    const v1, 0x7f07024f

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/h;->b(I)V

    .line 99
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->a:Lcom/yf/smart/weloopx/android/ui/activities/h$a;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->b:I

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->a(I)V

    .line 110
    const-string v0, "AlarmClockBaseActivity \u8bbe\u7f6enaozhong\u7ed3\u675f"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->c:Lcom/yf/smart/weloopx/android/ui/activities/h;

    const v1, 0x7f07024e

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/h;->b(I)V

    .line 113
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->a:Lcom/yf/smart/weloopx/android/ui/activities/h$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/h$a;->b()V

    .line 118
    const-string v0, "AlarmClockBaseActivity"

    const-string v1, "\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/j;->c:Lcom/yf/smart/weloopx/android/ui/activities/h;

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/h;->b(I)V

    .line 120
    return-void
.end method
