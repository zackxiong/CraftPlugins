.class Luk/co/chrisjenx/calligraphy/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Luk/co/chrisjenx/calligraphy/d;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/d;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/c;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Luk/co/chrisjenx/calligraphy/c;->b:I

    .line 118
    return-void
.end method

.method protected static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Luk/co/chrisjenx/calligraphy/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static a(Landroid/widget/TextView;)[I
    .locals 5

    .prologue
    const v4, 0x10102ce

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 49
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/c;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    aput v4, v1, v3

    .line 51
    const v0, 0x10102f8

    aput v0, v1, v2

    .line 56
    :cond_0
    :goto_0
    aget v0, v1, v3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 58
    sget-object v0, Luk/co/chrisjenx/calligraphy/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Luk/co/chrisjenx/calligraphy/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    aput v0, v1, v3

    .line 62
    :cond_1
    return-object v1

    .line 52
    :cond_2
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/c;->c(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    aput v4, v1, v3

    .line 54
    const v0, 0x10102f9

    aput v0, v1, v2

    goto :goto_0

    .line 58
    :cond_3
    const v0, 0x1010034

    goto :goto_1

    .line 47
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected static b(Landroid/widget/TextView;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "action_bar_title"

    invoke-static {p0, v0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 76
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Landroid/widget/TextView;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "action_bar_subtitle"

    invoke-static {p0, v0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-static {p0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 92
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 130
    if-eqz p1, :cond_0

    sget v0, Luk/co/chrisjenx/calligraphy/R$id;->calligraphy_tag_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Luk/co/chrisjenx/calligraphy/c;->b(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    sget v0, Luk/co/chrisjenx/calligraphy/R$id;->calligraphy_tag_id:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    :cond_0
    return-object p1
.end method

.method b(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 142
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/k;->b(Landroid/graphics/Typeface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Luk/co/chrisjenx/calligraphy/c;->b:I

    invoke-static {p2, p3, v0}, Luk/co/chrisjenx/calligraphy/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget v0, p0, Luk/co/chrisjenx/calligraphy/c;->b:I

    invoke-static {p2, p3, v0}, Luk/co/chrisjenx/calligraphy/h;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget v0, p0, Luk/co/chrisjenx/calligraphy/c;->b:I

    invoke-static {p2, p3, v0}, Luk/co/chrisjenx/calligraphy/h;->c(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, p1

    .line 163
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/widget/TextView;)[I

    move-result-object v0

    .line 164
    aget v1, v0, v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    .line 165
    aget v1, v0, v2

    aget v0, v0, v3

    iget v4, p0, Luk/co/chrisjenx/calligraphy/c;->b:I

    invoke-static {p2, v1, v0, v4}, Luk/co/chrisjenx/calligraphy/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 171
    :goto_1
    const-string v0, "action_bar_title"

    invoke-static {p1, v0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action_bar_subtitle"

    invoke-static {p1, v0}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    move-object v0, p1

    .line 173
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Luk/co/chrisjenx/calligraphy/a;->a()Luk/co/chrisjenx/calligraphy/a;

    move-result-object v3

    invoke-static {p2, v0, v3, v1, v2}, Luk/co/chrisjenx/calligraphy/h;->a(Landroid/content/Context;Landroid/widget/TextView;Luk/co/chrisjenx/calligraphy/a;Ljava/lang/String;Z)V

    .line 178
    :cond_6
    invoke-static {}, Luk/co/chrisjenx/calligraphy/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Luk/co/chrisjenx/calligraphy/e;

    invoke-direct {v1, p0, p1, p2}, Luk/co/chrisjenx/calligraphy/e;-><init>(Luk/co/chrisjenx/calligraphy/c;Landroid/view/ViewGroup;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 167
    :cond_7
    aget v0, v0, v2

    iget v1, p0, Luk/co/chrisjenx/calligraphy/c;->b:I

    invoke-static {p2, v0, v1}, Luk/co/chrisjenx/calligraphy/h;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method
