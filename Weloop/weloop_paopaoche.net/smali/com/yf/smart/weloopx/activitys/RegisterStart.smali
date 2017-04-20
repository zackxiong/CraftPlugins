.class public Lcom/yf/smart/weloopx/activitys/RegisterStart;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d010e
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d010d
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d010f
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0110
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/yf/smart/weloopx/g/d;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 22
    const-string v0, "RegisterStart"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->e:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterStart;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/RegisterStart;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->b:Lcom/yf/smart/weloopx/d/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0d010c

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->a:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/r;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/r;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterStart;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/s;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/s;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterStart;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/t;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/t;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterStart;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->d:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/u;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/u;-><init>(Lcom/yf/smart/weloopx/activitys/RegisterStart;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->requestWindowFeature(I)Z

    .line 39
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->setContentView(I)V

    .line 41
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 42
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->f:Lcom/yf/smart/weloopx/g/d;

    .line 45
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->a()V

    .line 46
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/app/a;->b()V

    .line 47
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onResume()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->g:Z

    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->f:Lcom/yf/smart/weloopx/g/d;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/RegisterStart;->f:Lcom/yf/smart/weloopx/g/d;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method
