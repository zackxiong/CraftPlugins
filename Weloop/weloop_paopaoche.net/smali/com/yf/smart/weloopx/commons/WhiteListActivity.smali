.class public Lcom/yf/smart/weloopx/commons/WhiteListActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/commons/WhiteListActivity$1;,
        Lcom/yf/smart/weloopx/commons/WhiteListActivity$b;,
        Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/commons/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

.field private e:Lcom/yf/smart/weloopx/commons/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->c:Ljava/util/List;

    .line 51
    invoke-static {}, Lcom/yf/gattlib/db/WhiteApp;->obtainAllWhiteApp()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/WhiteApp;

    .line 53
    iget-object v2, v0, Lcom/yf/gattlib/db/WhiteApp;->pkg:Ljava/lang/String;

    .line 54
    invoke-static {p0, v2}, Lcom/yf/smart/weloopx/commons/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loadWhiteAppList2, app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/yf/gattlib/db/WhiteApp;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/yf/gattlib/db/WhiteApp;->id:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->e:Lcom/yf/smart/weloopx/commons/h;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/commons/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/yf/smart/weloopx/commons/b;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/commons/b;-><init>()V

    .line 59
    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/commons/b;->b(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/commons/b;->a(Ljava/lang/String;)V

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/commons/b;->a(Z)V

    .line 62
    iget-object v2, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p1}, Lcom/yf/gattlib/db/WhiteApp;->removeWhiteApp(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v1, "com.yf.gattlib.intent.action.ACTION_UPDATE_WHITE_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 73
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x7dd

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    return-void
.end method

.method public back(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->finish()V

    .line 166
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    const/16 v0, 0x7de

    if-ne v0, p2, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a()V

    .line 174
    new-instance v0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity;Lcom/yf/smart/weloopx/commons/WhiteListActivity$1;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->d:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->d:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->requestWindowFeature(I)Z

    .line 38
    const v0, 0x7f0300ba

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->setContentView(I)V

    .line 40
    new-instance v0, Lcom/yf/smart/weloopx/commons/h;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/commons/h;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->e:Lcom/yf/smart/weloopx/commons/h;

    .line 41
    invoke-direct {p0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a()V

    .line 42
    const v0, 0x7f0d02e0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->b:Landroid/widget/ListView;

    .line 43
    new-instance v0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity;Lcom/yf/smart/weloopx/commons/WhiteListActivity$1;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->d:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->d:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method
