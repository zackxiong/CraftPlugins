.class public Lcom/yf/lib/ui/fragments/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "ProGuard"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/ui/fragments/FragmentTabHost$1;,
        Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;,
        Lcom/yf/lib/ui/fragments/FragmentTabHost$a;,
        Lcom/yf/lib/ui/fragments/FragmentTabHost$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/lib/ui/fragments/FragmentTabHost$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/FragmentManager;

.field private e:I

.field private f:Landroid/widget/TabHost$OnTabChangeListener;

.field private g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 105
    invoke-direct {p0, p1, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    .line 303
    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->b(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 301
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 307
    :cond_0
    if-nez v1, :cond_1

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab known for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    if-eq v0, v1, :cond_5

    .line 311
    if-nez p2, :cond_2

    .line 312
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 319
    :cond_3
    if-eqz v1, :cond_4

    .line 320
    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_6

    .line 321
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->c(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->d(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 323
    iget v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->e:I

    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v2

    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->b(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 329
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    .line 331
    :cond_5
    return-object p2

    .line 325
    :cond_6
    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 187
    iget v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->e:I

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    .line 188
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const v2, 0x1020013

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 125
    invoke-virtual {p0, v2}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 128
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v1, Landroid/widget/TabWidget;

    invoke-direct {v1, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setId(I)V

    .line 134
    invoke-virtual {v1, v5}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 135
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 140
    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 141
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    .line 144
    iget-object v2, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->e:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 145
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->e:I

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Landroid/content/Context;)V

    .line 171
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 172
    iput-object p1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->c:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    .line 174
    iput p3, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->e:I

    .line 175
    invoke-direct {p0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a()V

    .line 176
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 180
    invoke-virtual {p0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->setId(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/yf/lib/ui/fragments/FragmentTabHost$a;

    iget-object v1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 202
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    invoke-direct {v1, v0, p2, p3}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 206
    iget-boolean v2, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->h:Z

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 211
    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 213
    invoke-static {v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 214
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0, p1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 220
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 226
    invoke-virtual {p0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    .line 230
    const/4 v1, 0x0

    .line 231
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    .line 233
    iget-object v4, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->b(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 234
    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->b(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    iput-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->g:Lcom/yf/lib/ui/fragments/FragmentTabHost$b;

    .line 231
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 243
    :cond_1
    if-nez v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 246
    :cond_2
    invoke-static {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 253
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->h:Z

    .line 254
    invoke-direct {p0, v3, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_4

    .line 257
    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_2
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 263
    :cond_4
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->h:Z

    .line 269
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 281
    check-cast p1, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;

    .line 282
    invoke-virtual {p1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 283
    iget-object v0, p1, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 275
    invoke-virtual {p0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;->a:Ljava/lang/String;

    .line 276
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->h:Z

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 297
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    .line 198
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
