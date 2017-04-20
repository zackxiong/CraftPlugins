.class public Lcom/yf/smart/weloopx/android/ui/activities/di;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ba$a;


# static fields
.field public static e:Z


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field d:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0180
    .end annotation
.end field

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/view/View;

.field private h:Lcom/yf/smart/weloopx/g/d;

.field private i:Z

.field private j:Lcom/yf/smart/weloopx/android/ui/a/f;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/di;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->i:Z

    .line 224
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dk;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dk;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/di;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/di;)Lcom/yf/smart/weloopx/android/ui/a/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->j:Lcom/yf/smart/weloopx/android/ui/a/f;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/di;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ag;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 198
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 77
    const-string v0, "GoalFragment onAttach"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->h:Lcom/yf/smart/weloopx/g/d;

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 204
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/StatisticsActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_IS_HAVE_NEW_RUNNING_TRAIN"

    invoke-virtual {v0, v1, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.download.upload.locationinfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v1, "yyyy-MM-dd"

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v2, "DATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "IS_CUR_DATE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->startActivity(Landroid/content/Intent;)V

    .line 219
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d017d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->k:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 88
    const-string v0, "GoalFragment onCreateView()"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 89
    const v0, 0x7f030071

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->g:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->g:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/b/a/e;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 91
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    const v2, 0x7f020075

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->h:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v2, v3, v4}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setWidth(I)V

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->b:Landroid/widget/Button;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/f;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/f;-><init>(Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->j:Lcom/yf/smart/weloopx/android/ui/a/f;

    .line 103
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->g:Landroid/view/View;

    const v1, 0x7f0d0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->j:Lcom/yf/smart/weloopx/android/ui/a/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ag;)V

    .line 105
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ag;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 107
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    const-string v1, "com.yf.weloopx.runtrain.new"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->g:Landroid/view/View;

    return-object v0

    .line 91
    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroy()V

    .line 172
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 120
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroyView()V

    .line 121
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDetach()V

    .line 161
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onNewDayEvent(Lcom/yf/smart/weloopx/event/a;)V
    .locals 1
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dj;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dj;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/di;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/di;->a(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 144
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 145
    const-string v0, "GoalFragment onResume()"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->i:Z

    .line 148
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->a:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->i:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->d:Landroid/view/View;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v3

    const-string v4, "KEY_IS_HAVE_NEW_RUNNING_TRAIN"

    invoke-virtual {v3, v4, v1}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->i:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/di;->k:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/a;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 156
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 148
    goto :goto_0

    :cond_2
    move v1, v2

    .line 149
    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onStart()V

    .line 177
    const-string v0, "GoalFragment onStart"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 178
    return-void
.end method
