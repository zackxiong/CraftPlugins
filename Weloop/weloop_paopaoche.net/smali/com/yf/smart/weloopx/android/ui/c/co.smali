.class public abstract Lcom/yf/smart/weloopx/android/ui/c/co;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/co$a;
    }
.end annotation


# instance fields
.field a:Lit/sephiroth/android/library/widget/CenterHListView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/SeekBar;

.field j:Landroid/widget/ProgressBar;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field protected t:Lcom/yf/smart/weloopx/android/ui/c/co$a;

.field protected u:Lcom/yf/smart/weloopx/android/ui/a/s;

.field protected v:Lcom/yf/smart/weloopx/android/ui/a/s;

.field protected w:Lcom/yf/smart/weloopx/android/ui/a/s$a;

.field private x:I

.field private y:Lit/sephiroth/android/library/widget/CenterHListView$a;

.field private z:Lcom/yf/lib/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 135
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cp;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/cp;-><init>(Lcom/yf/smart/weloopx/android/ui/c/co;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->y:Lit/sephiroth/android/library/widget/CenterHListView$a;

    .line 145
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cq;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/cq;-><init>(Lcom/yf/smart/weloopx/android/ui/c/co;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->w:Lcom/yf/smart/weloopx/android/ui/a/s$a;

    .line 160
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/cs;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/cs;-><init>(Lcom/yf/smart/weloopx/android/ui/c/co;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->z:Lcom/yf/lib/a/d;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/co;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->x:I

    return v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f0d0131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/CenterHListView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    .line 89
    const v0, 0x7f0d0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->b:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0d0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->c:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0d0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->d:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0d0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->e:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0d013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->f:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0d0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->g:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0d0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->h:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0d0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->i:Landroid/widget/SeekBar;

    .line 97
    const v0, 0x7f0d013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->j:Landroid/widget/ProgressBar;

    .line 99
    const v0, 0x7f0d0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->k:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f0d012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->l:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f0d0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->m:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0d0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->n:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0d0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->o:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0d012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->p:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0d012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->q:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0d012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->r:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0d0130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->s:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/co;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->j:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 119
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->y:Lit/sephiroth/android/library/widget/CenterHListView$a;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->setOnCenterItemListener(Lit/sephiroth/android/library/widget/CenterHListView$a;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroid/widget/ListAdapter;I)V
.end method

.method protected abstract b()V
.end method

.method protected abstract d()V
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/co;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/c/co$a;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->t:Lcom/yf/smart/weloopx/android/ui/c/co$a;

    .line 67
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/co;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 68
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->x:I

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 75
    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/co;->a(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/co;->a()V

    .line 78
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->t:Lcom/yf/smart/weloopx/android/ui/c/co$a;

    invoke-interface {v1}, Lcom/yf/smart/weloopx/android/ui/c/co$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->v:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/CenterHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    :goto_0
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v1

    const-string v2, "statistics_changed"

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->z:Lcom/yf/lib/a/d;

    invoke-virtual {v1, v2, v3}, Lcom/yf/lib/a/b;->a(Ljava/lang/String;Lcom/yf/lib/a/d;)V

    .line 84
    return-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->u:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/CenterHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/yf/lib/a/b;->a()Lcom/yf/lib/a/b;

    move-result-object v0

    const-string v1, "statistics_changed"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/co;->z:Lcom/yf/lib/a/d;

    invoke-virtual {v0, v1, v2}, Lcom/yf/lib/a/b;->b(Ljava/lang/String;Lcom/yf/lib/a/d;)V

    .line 127
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroyView()V

    .line 128
    return-void
.end method
